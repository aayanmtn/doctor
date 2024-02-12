// ignore_for_file: must_be_immutable

part of 'search_medicines_bloc.dart';

/// Represents the state of SearchMedicines in the application.
class SearchMedicinesState extends Equatable {
  SearchMedicinesState({
    this.searchController,
    this.searchMedicinesModelObj,
  });

  TextEditingController? searchController;

  SearchMedicinesModel? searchMedicinesModelObj;

  @override
  List<Object?> get props => [
        searchController,
        searchMedicinesModelObj,
      ];
  SearchMedicinesState copyWith({
    TextEditingController? searchController,
    SearchMedicinesModel? searchMedicinesModelObj,
  }) {
    return SearchMedicinesState(
      searchController: searchController ?? this.searchController,
      searchMedicinesModelObj:
          searchMedicinesModelObj ?? this.searchMedicinesModelObj,
    );
  }
}
