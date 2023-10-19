% Define facts about foods and their suitability for diabetes.
suitable_for_diabetes(vegetables).
suitable_for_diabetes(fruits).
suitable_for_diabetes(lean_proteins).
suitable_for_diabetes(whole_grains).

avoid_for_diabetes(sugar).
avoid_for_diabetes(sweets).
avoid_for_diabetes(soda).
avoid_for_diabetes(white_bread).
avoid_for_diabetes(processed_foods).

% Define rules for suggesting a diet for diabetes.
diet_suggestion(Disease, Diet) :-
    Disease = diabetes,
    findall(Food, suitable_for_diabetes(Food), SuitableFoods),
    findall(Food, avoid_for_diabetes(Food), AvoidFoods),
    append(SuitableFoods, AvoidFoods, Diet).

% Example queries:
% To get a diet suggestion for diabetes, you can run:
% diet_suggestion(diabetes, Diet).

% To get a list of suitable foods for diabetes, you can run:
% findall(Food, suitable_for_diabetes(Food), SuitableFoods).

% To get a list of foods to avoid for diabetes, you can run:
% findall(Food, avoid_for_diabetes(Food), AvoidFoods).
