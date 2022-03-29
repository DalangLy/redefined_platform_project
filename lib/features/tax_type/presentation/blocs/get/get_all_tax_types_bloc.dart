import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:redefined_platform_project/core/domain/entities/entity.dart';
import 'package:redefined_platform_project/core/domain/use_cases/i_get_use_case.dart';
import 'package:redefined_platform_project/core/errors/failure.dart';

part 'get_all_tax_types_event.dart';
part 'get_all_tax_types_state.dart';

class GetAllTaxTypesBloc extends Bloc<GetAllTaxTypesEvent, GetAllTaxTypesState> {
  final IGetUseCase _useCase;
  GetAllTaxTypesBloc(this._useCase) : super(GetAllTaxTypesInitial()) {
    on<GetAllTaxTypesEvent>((event, emit) async{
      if(event is GetAllTaxTypes){
        emit(GetAllTaxTypesInProgress());
        try{
          final List<Entity> data = await _useCase();
          emit(GetAllTaxTypesSuccess(data: data));
        }on Failure catch(e){
          emit(GetAllTaxTypesFailed(message: e.getErrorMessage()));
        }
        catch(e){
          emit(GetAllTaxTypesFailed(message: e.toString()));
        }
      }
    });
  }

  void getAllTaxTypes(){
    add(GetAllTaxTypes());
  }
}
