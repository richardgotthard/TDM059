function ut=samplaner(in)
%% LAB1, TASK3
%% Samplar ner en bild till halva storleken i varje led
%
% Sampla ner originalbilden, in, till halva storleken i varje led genom att
% ta medelvärdet av varje 2x2 område i inbilden (in) och sparar värdet som ett pixelvärd
% i den nedsamplade bilden (ut).
% Observera att inbilden (in) är tänkt att vara normaliserad mellan 0 coh
% 1.
%% Who has done it:
%
% Author: Marcus Frankelius, marfr808
% Co-author: Richard Gotthard, Ricgo595
%
%% Syntax of the function
%      Input arguments:
%           in: the original input grayscale image of type double scaled
%               between 0 and 1
%      Output arguments:
%            ut: The down-sampled image
%
% You MUST NEVER change the first line
%
%% Basic version control (in case you need more than one attempt)
%
% Version: 1
% Date: today
%
% Gives a history of your submission to Lisam.
% Version and date for this function have to be updated before each
% submission to Lisam (in case you need more than one attempt)

% Vi hade skrivit en annan l�sning f�rst som inneh�ll tv� if-satser. Det
% var den koden vi f�rklarade l�ngst ner i dokumentet. Men vi blev os�kra
% p� om det fungerade korrekt vilket gjorde att vi skrev om koden
% men gl�mde �ndra f�rklaringen. Vi har nu f�rklarat denna kod l�ngst ned.

% Vi har nu korrigerat s� att man kan l�sa in bilder som har b�de udda och
% j�mna rader eller kolumner. Nedan f�rklaras hur detta g�r till.
% Koden har testats och ger inga errors, se svarsdokumentet till
% laborationen f�r att se resultatet av bilden. 
% 
%
%% General rules
%
% 1) Don't change the structure of the template by removing %% lines
%
% 2) Document what you are doing using comments
%
% 3) Before submitting make the code readable by using automatic indentation
%       ctrl-a / ctrl-i
%
% 4) your code should work for any given input arguments, if they are
%    fulfilling the conditions specified in the syntax of the function
%
% 5) Often you must do something else between the given commands in the
%       template
%
%% Here starts your code.
% Write the appropriate MATLAB commands right after each comment below.
%
%% Figuring out the number of rows and columns of the input image
%
% Since your code is supposed to an image of any size, you are suppsed
% to find the size of the image. Use the function size in MATLAB.
%
[rad, kolumn] = size(in); % rad and kolumn are supposed to be the number of rows
    % and columns in the original image.
%
%% Create counters
% Probably you might need to create two counters, if you are going to use
% two nested for loops. The counters are incremented inside the loops.
%
rad_counter = 1; % Row counter

kolumn_counter = 1; % Column counter
%
%% Two nested for-loops
% I dessa 2 if-satser kollar vi om rad eller kolumn �r udda eller inte

% rem-funktionen eller "Remainder after division" kollar om en rad �r udda.
% Om raden �r udda, s� f�rskjuter vi tillbaka en rad.
if rem(rad,2) == 1
rad = rad-1; %rad-1 g�r att vi f�rskjuter tillbaka en rad.
end

%Denna funktion g�r samma som ovanst�ende fast p� kolumnen. If-satsen
%kollar om kolumnen �r udda. Om den �r udda f�rkjuter vi tillbaka till en
%j�mn rad med "kolumn-1". 
if rem(kolumn,2) == 1
kolumn = kolumn-1;      
end       
    
for i= 1:2:rad
    for j= 1:2:kolumn
        ut(rad_counter,kolumn_counter) = (in(i,j) + in(i+1,j) + in(i,j+1) + in(i+1,j+1))/4;
        kolumn_counter = kolumn_counter+1;
        % here you have to figure out how to vary the variables i and j.
        % One way is to increment them by 2 in each loop, in order to address every
        % second row and column in the original image (in). You can use
        % your created counters to address a position in the down-sampled
        % image (ut). Don't forget to increment your counters inside the loops, but be
        % careful with that. One of your counters has to be set to 1 again
        % after each loop, otherwise your code will be very slow and the
        % result will not be of the intended size.
        
    end
    kolumn_counter = 1;
    rad_counter = rad_counter +1;
end
    
%     for i = 1:2:rad
%         for j = 1:2:kolumn
%             
%             medel = (in(i,j)+in(i,j+1)+in(i+1,j)+in(i+1,j+1))/4; 
%             
%             ut(rad_counter,kolumn_counter) = double(medel);
%             kolumn_counter = kolumn_counter + 1;
%         end
%        kolumn_counter = 1;
%        rad_counter = rad_counter + 1;
%     end
%for i= ..
    %for j= ..
        % here you have to figure out how to vary the variables i and j.
        % One way is to increment them by 2 in each loop, in order to address every
        % second row and column in the original image (in). You can use
        % your created counters to address a position in the down-sampled
        % image (ut). Don't forget to increment your counters inside the loops, but be
        % careful with that. One of your counters has to be set to 1 again
        % after each loop, otherwise your code will be very slow and the
        % result will not be of the intended size.
        
    %end
%end
%
%% Test your code
% Notice that your code has to work for a gray scale image of any size.
% For example the image mygray (from assigment 5.1 in part 2) is 280x420 pixels. Your
% result after running this code should be a down-sampled version of this
% image, that is it should look like mygray but be of size 140x210.
% Notice that your input image (in) is supposed to be normalized between 0 and
% 1, so don't forget to do that before you call this function.
% Test your code on at least on pne image, where either the row number or
% the column number is an odd integer (for example kvarn_udda.tif). Explain how your code handle
% images whos number of rows/columns are odd: 

% Som tidigare n�mt s� anv�nder vi tv� if-satser f�r att kolla om en rad
% eller kolumn �r udda eller inte. Om s� �r fallet s� f�rskjuter vi
% tillbaka en rad (rad-1) eller kolumn (kolumn-1). Detta utf�rst eftersom
% vi vill ha enbart j�mna rader och kolumner i v�ra for-loopar.

%
%