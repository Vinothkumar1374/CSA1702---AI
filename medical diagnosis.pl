% Define symptoms for different diseases.
symptom(fever, flu).
symptom(cough, flu).
symptom(sore_throat, flu).
symptom(fatigue, flu).
symptom(fever, cold).
symptom(cough, cold).
symptom(runny_nose, cold).
symptom(headache, migraine).
symptom(nausea, migraine).
symptom(sensitivity_to_light, migraine).
symptom(fever, covid_19).
symptom(cough, covid_19).
symptom(shortness_of_breath, covid_19).

% Define rules for diagnosing diseases based on symptoms.
diagnose(Disease, Symptoms) :-
    findall(Symptom, symptom(Symptom, Disease), DiseaseSymptoms),
    subset(DiseaseSymptoms, Symptoms).

% Define a predicate to check if a person has a disease based on their symptoms.
has_disease(Person, Disease) :-
    symptom(Symptom, Disease),
    ask_symptom(Person, Symptom).

% Example rule for asking the user about symptoms (simplified for the sake of illustration).
ask_symptom(Person, Symptom) :-
    write('Does '), write(Person), write(' have the symptom '), write(Symptom), write('? (yes/no) '),
    read(Answer), Answer = 'yes'.

% Example queries:
% To diagnose a person's disease based on symptoms, you can run:
% has_disease('John', Disease).

% Example facts about specific patients and their symptoms.
% patient('John', [fever, cough, sore_throat]).

% Additional rules and facts can be added to make the program more comprehensive.
