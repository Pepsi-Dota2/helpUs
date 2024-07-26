// import 'package:app_fastfood/src/feature/home/domain/entities/number_trivia.dart';
// import 'package:app_fastfood/src/feature/home/domain/repository/number_trivia_repository.dart';
// import 'package:app_fastfood/src/feature/home/domain/usecase/get_concrete_number_trivia.dart';
// import 'package:dartz/dartz.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:mockito/annotations.dart';
// import 'package:mockito/mockito.dart';

// class MockNumberTriviaRepository extends Mock implements NumberTriviaRepository {}

// void main() {
//   GetConcreteNumberTrivia usecase;
//   MockNumberTriviaRepository mockNumberTriviaRepository;

//   setUp(() {
//     mockNumberTriviaRepository = MockNumberTriviaRepository();
//     usecase = GetConcreteNumberTrivia(mockNumberTriviaRepository);
//   });

//   final tNumber = 1;
//   final tNumberTrivia = NumberTrivia(text: "test", number: 1);

//   test("Should get trivia for number from the repository", () async {
//     // arrange
//     when(mockNumberTriviaRepository.getConcreteNumberTrivia(any))
//         .thenAnswer((_) async => Right(tNumberTrivia));
//     // act
//     final result = await usecase.call(number: tNumber);
//     // assert
//     expect(result, Right(tNumberTrivia));
//     verify(mockNumberTriviaRepository.getConcreteNumberTrivia(tNumber));
//     verifyNoMoreInteractions(mockNumberTriviaRepository);
//   });
// }
