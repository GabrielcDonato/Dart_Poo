// META DATAS ( annotations ) são todas aquelas classes que
// iniciam com @.
import 'dart:mirrors';

import 'fazer.dart';
import 'pessoa.dart';

void main() {
  var p1 = Pessoa();

  // InstanceMirror instanceMirror = reflect(p1);
  var instanceMirror = reflect(p1);

  // ClassMirror classMirror = instanceMirror.type;
  var classMirror = instanceMirror.type;

// O metaData traz para mim todas as anotações que temos na classe.
  classMirror.metadata.forEach(print);

  print(instanceMirror);

  classMirror.metadata.forEach(
    (anotacao) {
      var instanceAnnotation = anotacao.reflectee;

      if (instanceAnnotation is Fazer) {
        print("CLASS!!!!");
        print('Quem: ${instanceAnnotation.quem}');
        print('O que: ${instanceAnnotation.oque}');
      }
    },
  );

  classMirror.declarations.values.forEach(
    (element) {
      if (element is VariableMirror) {
        element.metadata.forEach(
          (anotacao) {
            var instanceAnnotation = anotacao.reflectee;

            if (instanceAnnotation is Fazer) {
              print('VARIAVEIS!!!!');
              print('Quem: ${instanceAnnotation.quem}');
              print('O que: ${instanceAnnotation.oque}');
            }
          },
        );
      } else if (element is MethodMirror) {
        element.metadata.forEach(
          (anotacao) {
            var instanceAnnotation = anotacao.reflectee;

            if (instanceAnnotation is Fazer) {
              print('METODOS!!!!');
              print('Quem: ${instanceAnnotation.quem}');
              print('O que: ${instanceAnnotation.oque}');
            }
          },
        );
      }
    },
  );
}
