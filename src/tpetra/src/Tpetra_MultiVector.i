/*
 * Copyright 2017-2018, UT-Battelle, LLC
 *
 * SPDX-License-Identifier: BSD-3-Clause
 * License-Filename: LICENSE
 */

// Dependencies
%include "Teuchos_RCP.i"
%import <Teuchos_Comm.i>

%{
#include "Tpetra_MultiVector.hpp"
%}

// Treat array RCP return values as array views (they won't reference count,
// though, of course)
%apply Teuchos::ArrayView<double> { Teuchos::ArrayRCP<double> };
%apply Teuchos::ArrayView<const double> { Teuchos::ArrayRCP<const double> };

// =======================================================================
// Postpone temporarily
// =======================================================================
%ignore Tpetra::MultiVector::MultiVector(const Teuchos::RCP<const map_type>& map,
        const Teuchos::ArrayView<const Teuchos::ArrayView<const Scalar> >&ArrayOfPtrs,
        const size_t NumVectors);                               // needs ArrayView of ArrayView (or alternative)
%ignore Tpetra::MultiVector::MultiVector(const Teuchos::RCP<const map_type>& map,
        const dual_view_type& view, const Teuchos::ArrayView<const size_t>& whichVectors);  // needs Kokkos::DualView; needs Teuchos::ArrayView<size_t>
%ignore Tpetra::MultiVector::MultiVector(const Teuchos::RCP<const map_type>& map,
        const dual_view_type& view,
        const dual_view_type& origView,
        const Teuchos::ArrayView<const size_t>& whichVectors);  // needs Kokkos::DualView; needs Teuchos::ArrayView<size_t>
%ignore Tpetra::MultiVector::MultiVector(const Teuchos::RCP<const map_type>& map,
        const dual_view_type& view);                            // needs Kokkos::DualView
%ignore Tpetra::MultiVector::MultiVector(const Teuchos::RCP<const map_type>& map,
        const typename dual_view_type::t_dev& d_view);          // needs Kokkos::DualView
%ignore Tpetra::MultiVector::MultiVector(const Teuchos::RCP<const map_type>& map,
        const dual_view_type& view, const dual_view_type& origView);    // needs Kokkos::DualView
%ignore Tpetra::MultiVector::assign;
%ignore Tpetra::MultiVector::describe;              // needs Teuchos::FancyOStream
%ignore Tpetra::MultiVector::elementWiseMultiply;   // needs Vector
%ignore Tpetra::MultiVector::get2dCopy;             // needs ArrayView<ArrayView>
%ignore Tpetra::MultiVector::get2dView;             // needs ArrayRCP<ArrayRCP>
%ignore Tpetra::MultiVector::get2dViewNonConst;     // needs ArrayRCP<ArrayRCP>
%ignore Tpetra::MultiVector::getDualView;           // needs Kokkos::DualView
%ignore Tpetra::MultiVector::getLocalView;          // needs Kokkos::View
%ignore Tpetra::MultiVector::getLocalViewHost;      // needs Kokkos::View
%ignore Tpetra::MultiVector::getLocalViewDevice;    // needs Kokkos::View
%ignore Tpetra::MultiVector::getVector;             // needs Tpetra::Vector
%ignore Tpetra::MultiVector::getVectorNonConst;     // needs Tpetra::Vector
%ignore Tpetra::MultiVector::modify;                // templated on device type
%ignore Tpetra::MultiVector::need_sync;             // templated on device type
%ignore Tpetra::MultiVector::scale(const Kokkos::View<const impl_scalar_type*, device_type>& alpha);
%ignore Tpetra::MultiVector::sync;                  // templated on device type
%ignore Tpetra::MultiVector::operator=;
%ignore Tpetra::MultiVector::subCopy(const Teuchos::Range1D &colRng) const; // prefer ArrayView version
%ignore Tpetra::MultiVector::subView(const Teuchos::Range1D &colRng) const; // prefer ArrayView version
%ignore Tpetra::MultiVector::subViewNonConst(const Teuchos::Range1D &colRng); // prefer ArrayView version
%ignore Tpetra::MultiVector::normWeighted;  // deprecated in Tpetra
%ignore Tpetra::deep_copy;
%ignore Tpetra::getMultiVectorWhichVectors;

%extend Tpetra::MultiVector<SC,LO,GO,NO> {
    Teuchos::RCP<Tpetra::MultiVector<SC,LO,GO,NO> > subCopy(std::pair<const size_t*,size_t> cols) const {
      Teuchos::Array<size_t> colsArray(cols.second);
      for (int i = 0; i < colsArray.size(); i++)
        colsArray[i] = cols.first[i]-1;
      return self->subCopy(colsArray);
    }
    Teuchos::RCP<const Tpetra::MultiVector<SC,LO,GO,NO> > subView(std::pair<const size_t*,size_t> cols) const {
      Teuchos::Array<size_t> colsArray(cols.second);
      for (int i = 0; i < colsArray.size(); i++)
        colsArray[i] = cols.first[i]-1;
      return self->subView(colsArray);
    }
    Teuchos::RCP<Tpetra::MultiVector<SC,LO,GO,NO> > subViewNonConst(std::pair<const size_t*,size_t> cols) {
      Teuchos::Array<size_t> colsArray(cols.second);
      for (int i = 0; i < colsArray.size(); i++)
        colsArray[i] = cols.first[i]-1;
      return self->subViewNonConst(colsArray);
    }

    void doImport (const Tpetra::MultiVector<SC,LO,GO,NO> &source, const Tpetra::Import< LO, GO, NO > &importer, CombineMode CM) {
      self->doImport(source, importer, CM);
    }
    void doImport (const Tpetra::MultiVector<SC,LO,GO,NO> &source, const Tpetra::Export< LO, GO, NO > &exporter, CombineMode CM) {
      self->doImport(source, exporter, CM);
    }
    void doExport (const Tpetra::MultiVector<SC,LO,GO,NO> &source, const Tpetra::Export< LO, GO, NO > &exporter, CombineMode CM) {
      self->doExport(source, exporter, CM);
    }
    void doExport (const Tpetra::MultiVector<SC,LO,GO,NO> &source, const Tpetra::Import< LO, GO, NO > &importer, CombineMode CM) {
      self->doExport(source, importer, CM);
    }
}

%ignore Tpetra::MultiVector::subCopy(const Teuchos::ArrayView< const size_t > &cols) const;
%ignore Tpetra::MultiVector::subView(const Teuchos::ArrayView< const size_t > &cols) const;
%ignore Tpetra::MultiVector::subViewNonConst(const Teuchos::ArrayView< const size_t > &cols);

// Fix ±1 issues
// =======================================================================
%typemap(in)  size_t j %{$1 = *$input - 1;%}
%typemap(in)  size_t col %{$1 = *$input - 1;%}
%typemap(in)  int lclRow %{$1 = *$input - 1;%} /* int = LocalOrdinal */

/* Include the multivector *before* the RCP declaration so that
 * SWIG becomes aware of the default template arguments */
%include "Tpetra_MultiVector_decl.hpp"

%teuchos_rcp(Tpetra::MultiVector<SC,LO,GO,NO>)
%template(TpetraMultiVector) Tpetra::MultiVector<SC,LO,GO,NO>;

%clear Teuchos::ArrayRCP<double>;
%clear Teuchos::ArrayRCP<const double>;
