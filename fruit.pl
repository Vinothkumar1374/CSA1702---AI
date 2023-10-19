% Define facts about fruits and their colors.
fruit_color(apple, red).
fruit_color(banana, yellow).
fruit_color(grape, purple).
fruit_color(orange, orange).
fruit_color(strawberry, red).
fruit_color(blueberry, blue).
fruit_color(cherry, red).
fruit_color(pineapple, yellow).
fruit_color(lemon, yellow).
fruit_color(kiwi, green).
fruit_color(watermelon, green).

% Define a rule to query the color of a fruit.
find_fruit_color(Fruit, Color) :- fruit_color(Fruit, Color).

% Example query:
% To find the color of an apple, you can run:
% find_fruit_color(apple, Color).
