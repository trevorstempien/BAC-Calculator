%Have user input how many drinks they've had.
d=input('How many standard drinks (12oz beer/seltzer, 5oz wine, 1 shot of 80 proof liquor) have you had?');
%Ask user how long it took them to drink that number of drinks
hrs=input('How many hours have you been drinking for?');
%Ask user their weight
lb=input('How much do you weigh in pounds?');
%ask user sex
sex = menu('What is your biological sex?', 'Male', 'Female');
%Convert sex to constant
if (sex==1)
    r=.68;
end
if (sex==2)
    r=.55;
end
% Calculate BAC
BAC = (((d.*14)./(lb.*453.592)).*100)-(hrs.*0.015);
%Output BAC to user & symptoms
if (0<=BAC) && (BAC<0.02)
    fprintf('Your blood alchohol content is %-5.3f\n', BAC)
    fprintf('Your sober')
end
if (.02<=BAC) && (BAC<.04)
    fprintf('Your blood alchohol content is %-5.3f\n', BAC)
    fprintf('You should be experiencing no loss of coordination, \n but you may be feeing happier and more confident')
end
if (.04<=BAC) && (BAC<.06)
    fprintf('Your blood alchohol content is %-5.3f\n', BAC)
    fprintf('You should be feeling happy, relaxed, and warm. \n Your judgement and memory might be slightly impaired.')
end
if (.06<=BAC) && (BAC<.1)
    fprintf('Your blood alchohol content is %-5.3f\n', BAC)
    fprintf('Your balance, speech, vision, reaction time, and hearing are begining to become impaired. \n Memory, reasoning, judgment, and self control are becoming reduced.')
end
if (.1<=BAC) && (BAC<.13)
    fprintf('Your blood alchohol content is %-5.3f\n', BAC)
    fprintf('Your coordination and judgement are likely severely impaired, \n along with slurred speach, poor balance, reaction time, peripheral vision, and hearing')
end
if (.13<=BAC) && (BAC<.16)
    fprintf('Your blood alchohol content is %-5.3f\n', BAC)
    fprintf('Extreme mental and physical impairment. \n Happy feelings are beginning to fade')
end
if (.16<=BAC) && (BAC<.2)
    fprintf('Your blood alchohol content is %-5.3f\n', BAC)
    fprintf('You are likely feeling unwell and beginning to feel naseaus.')
end
if (.2<=BAC) && (BAC<.25)
    fprintf('Your blood alchohol content is %-5.3f\n', BAC)
    fprintf('Cant walk without help, completely confused. \n feeling very unwell with lots of nausea and likely vomitting. Possible blackout.')
end
if (.25<=BAC) && (BAC<.4)
    fprintf('Your blood alchohol content is %-5.3f\n', BAC)
    fprintf('You are experiencing alchohol poisoning and will probably lose concious. \n a sober friend should probably take you to the hospital.')
end
if (BAC>=.4)
    fprintf('Your blood alchohol content is %-5.3f\n', BAC)
    fprintf('You are likely going into a coma and may die if you do not receive urgent medical car')
end