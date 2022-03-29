import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:redefined_platform_project/features/tax_type/presentation/blocs/get/get_all_tax_types_bloc.dart';

class TaxTypeList extends StatefulWidget {
  const TaxTypeList({Key? key}) : super(key: key);

  @override
  State<TaxTypeList> createState() => _TaxTypeListState();
}

class _TaxTypeListState extends State<TaxTypeList> {

  @override
  void initState() {
    super.initState();

    BlocProvider.of<GetAllTaxTypesBloc>(context).getAllTaxTypes();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
