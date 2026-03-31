% -------------------------------
% Career Knowledge Base
% -------------------------------

% -------------------------------
% Career Knowledge Base (Expanded)
% -------------------------------

% Coding Careers
career(software_engineer, coding, high, analytical).
career(web_developer, coding, medium, creative).
career(data_scientist, coding, high, analytical).
career(machine_learning_engineer, coding, high, analytical).
career(app_developer, coding, medium, creative).
career(cyber_security_analyst, coding, high, analytical).
career(full_stack_developer, coding, medium, creative).
career(frontend_developer, coding, medium, creative).
career(backend_developer, coding, medium, analytical).
career(cloud_engineer, coding, high, analytical).
career(blockchain_developer, coding, high, analytical).
career(ai_engineer, coding, high, analytical).
career(testing_engineer, coding, low, analytical).
career(embedded_systems_engineer, coding, high, practical).

% Design Careers
career(ui_ux_designer, design, medium, creative).
career(graphic_designer, design, low, creative).
career(animation_designer, design, medium, creative).
career(game_designer, design, high, creative).
career(product_designer, design, medium, creative).

% Business Careers
career(business_analyst, business, medium, analytical).
career(marketing_manager, business, low, creative).
career(entrepreneur, business, high, practical).
career(financial_analyst, business, high, analytical).
career(sales_manager, business, medium, practical).

% Research Careers
career(research_scientist, research, high, analytical).
career(academic_researcher, research, high, analytical).
career(data_researcher, research, medium, analytical).

% Mixed / Practical Careers
career(project_manager, business, medium, practical).
career(consultant, business, high, analytical).
career(teacher, research, low, practical).
career(content_creator, design, low, creative).
career(digital_marketer, business, medium, creative).

% Extra Coding / Tech Careers
career(devops_engineer, coding, high, analytical).
career(system_administrator, coding, medium, analytical).
career(game_programmer, coding, high, creative).

% Extra Design Careers
career(fashion_designer, design, medium, creative).
career(interior_designer, design, medium, creative).

% Extra Business Careers
career(human_resource_manager, business, medium, practical).
career(accountant, business, medium, analytical).

% Extra Research / Academic Careers
career(lab_scientist, research, medium, analytical).

% Extra Creative / Mixed Careers
career(journalist, design, medium, creative).
career(event_manager, business, low, practical).
career(social_media_manager, business, low, creative).

% -------------------------------
% VALID INPUTS
% -------------------------------

valid_interest(coding).
valid_interest(design).
valid_interest(business).
valid_interest(research).

valid_skill(low).
valid_skill(medium).
valid_skill(high).

valid_work(creative).
valid_work(analytical).

% -------------------------------
% MENU
% -------------------------------

menu :-
    nl,
    write('===== Career Suggestion System ====='), nl,
    write('1. Get Career Suggestion'), nl,
    write('2. Exit'), nl,
    write('Enter your choice (1 or 2): '), nl,
    read(Choice),
    handle_choice(Choice).

handle_choice(1) :-
    start,
    menu.

handle_choice(2) :-
    write('Exiting program. Goodbye!'), nl.

handle_choice(_) :-
    write('Invalid choice. Try again.'), nl,
    menu.

% -------------------------------
% INPUT WITH VALIDATION
% -------------------------------

get_interest(Interest) :-
    write('Enter interest (coding/design/business/research): '), nl,
    read(I),
    ( valid_interest(I) ->
        Interest = I
    ;
        write('Invalid input. Try again.'), nl,
        get_interest(Interest)
    ).

get_skill(Skill) :-
    write('Enter skill level (low/medium/high): '), nl,
    read(S),
    ( valid_skill(S) ->
        Skill = S
    ;
        write('Invalid input. Try again.'), nl,
        get_skill(Skill)
    ).

get_work(Work) :-
    write('Enter work type (creative/analytical): '), nl,
    read(W),
    ( valid_work(W) ->
        Work = W
    ;
        write('Invalid input. Try again.'), nl,
        get_work(Work)
    ).

% -------------------------------
% START SYSTEM
% -------------------------------

start :-
    nl,
    write('--- Enter Your Details ---'), nl,
    get_interest(Interest),
    get_skill(Skill),
    get_work(Work),
    suggest(Interest, Skill, Work).

% -------------------------------
% SUGGEST CAREERS
% -------------------------------

suggest(Interest, Skill, Work) :-
    career(Career, Interest, Skill, Work),
    write('Suggested Career: '), write(Career), nl,
    fail.

suggest(Interest, Skill, Work) :-
    \+ career(_, Interest, Skill, Work),
    write('No exact match found. Try different inputs.'), nl.

suggest(_, _, _) :-
    write('--- End of Suggestions ---'), nl.
