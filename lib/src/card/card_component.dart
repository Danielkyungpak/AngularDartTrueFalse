// Copyright (c) 2017, ibrahimfamily. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'card.dart';
import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';

// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

@Component(
  selector: 'card',
  templateUrl: 'card_component.html',
    directives: const [
    CORE_DIRECTIVES,
    materialDirectives,
  ],
  styleUrls: const ['card_component.css'],
  providers: const [materialProviders],
)
class CardComponent {
  Card card = new Card("What is my name?", ["Daniel", "Andrew", "Brian", "David"], 0);
    
  int answerIndex;

  bool get isCorrect =>
      answerIndex == null ? null : answerIndex == card.answer;
  // Nothing here yet. All logic is in CardComponent.
}
