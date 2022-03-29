import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:redefined_platform_project/features/tax_type/presentation/widgets/tax_type_list.dart';

import '../blocs/get/get_all_tax_types_bloc.dart';

class TaxTypePage extends StatelessWidget {
  const TaxTypePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<GetAllTaxTypesBloc, GetAllTaxTypesState>(
      listener: (context, state) {
        // if(state is GetAllTaxTypesInProgress){
        //   ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Loading')));
        // }
      },
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: BlocBuilder<GetAllTaxTypesBloc, GetAllTaxTypesState>(
              builder: (context, state) {
                if(state is GetAllTaxTypesInProgress){
                  return const CircularProgressIndicator();
                }
                return const TaxTypeList();
              },
            ),
          ),
        ),
      ),
    );
  }
}
