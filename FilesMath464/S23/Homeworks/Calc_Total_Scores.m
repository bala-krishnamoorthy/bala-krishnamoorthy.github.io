% Total scores for Math464 Spring 2023
% Last updated on May 9, 2023

nhw  = 10; % =5 for midterm grades
Proj = 1; % =1 for final grades

HW_WT  = 68;
HW_MAX = 69;
HW_Add =   0;
PJ_WT  = 32;
PJ_ADD =  3.2;

S = load('TableScores.txt');

[m,n]=size(S); 
nstud=m-1;           % first row has max scores

studid=S(2:m,1);     % first column has PassNumbers
maxscores=S(1,2:n);

hw_max = maxscores(1:nhw);
if Proj==1
    pj_max = maxscores(nhw+1); % comment out for midterm
end
  

Fi = [];
Course_Scores=[];
Grades=[];
Grade_Count=zeros(11,1);
LetterGrades=['A ';'A-';'B+';'B ';'B-';'C+';'C ';'C-';'D+';'D ';'F '];

for i=2:nstud+1
    myscores=S(i,2:n);
    my_hw = myscores(1:nhw);

    % my_mt=myscores(nHwParts+1);
    if Proj==1
        my_pj=myscores(nhw+1);
    end

    sbmtd_hw = find(my_hw > 0);
    hw_frac=my_hw(sbmtd_hw)./hw_max(sbmtd_hw);
    [minscore,min_hw]=min(hw_frac);
    min_hw = sbmtd_hw(min_hw);
    if length(sbmtd_hw) > 1
      good_hw=setdiff((1:nhw),min_hw);
    end
    % good_hw=setdiff(sbmtd_hw,min_hw);
    my_hw_frac=sum(my_hw(good_hw))/sum(hw_max(good_hw));
    my_HW_Score=min( HW_WT*my_hw_frac+HW_Add, HW_MAX);
   
    if Proj==1
        my_Total_Score = my_HW_Score + PJ_WT*((my_pj+PJ_ADD)/pj_max);
    end

    %my_Total_Score = 100*(my_HW_Score/HW_WT); % for midterm
    my_Total_Score = min(my_Total_Score,100);

    if Proj==1
        if( my_Total_Score - floor(my_Total_Score) > 0.9)
            my_Total_Score = ceil(my_Total_Score);
        end
    end

    %% grade
    if(my_Total_Score>=92)
        my_grade='A ';
        Grade_Count(1)=Grade_Count(1)+1;
    elseif (my_Total_Score>=88 && my_Total_Score < 92)
        my_grade='A-';
        Grade_Count(2)=Grade_Count(2)+1;
    elseif (my_Total_Score>=83 && my_Total_Score < 88)
        my_grade='B+';
        Grade_Count(3)=Grade_Count(3)+1;
    elseif (my_Total_Score>=78 && my_Total_Score < 83)
        my_grade='B '; 
        Grade_Count(4)=Grade_Count(4)+1;
    elseif (my_Total_Score>=73 && my_Total_Score < 78)
        my_grade='B-';
        Grade_Count(5)=Grade_Count(5)+1;
    elseif (my_Total_Score>=68 && my_Total_Score < 73)
        my_grade='C+'; 
        Grade_Count(6)=Grade_Count(6)+1;
    elseif (my_Total_Score>=63 && my_Total_Score < 68)
        my_grade='C ';
        Grade_Count(7)=Grade_Count(7)+1;
    elseif (my_Total_Score>=58 && my_Total_Score < 63)
        my_grade='C-';   
        Grade_Count(8)=Grade_Count(8)+1;
    elseif (my_Total_Score>=53 && my_Total_Score < 58)
        my_grade='D+'; 
        Grade_Count(9)=Grade_Count(9)+1;
    elseif (my_Total_Score>=45 && my_Total_Score < 53)
        my_grade='D ';
        Grade_Count(10)=Grade_Count(10)+1;
    else
        my_grade='F ';
        Grade_Count(11)=Grade_Count(11)+1;
    end  
            
        
    Course_Scores=[ Course_Scores; [studid(i-1) my_HW_Score my_Total_Score] ];
    Grades=[Grades;my_grade];
end

fdat = fopen('SummaryScores.txt','w');
for i=1:nstud
    fprintf(fdat,'%9d\t%4.1f\t%4.1f\t%c%c\n',Course_Scores(i,1),Course_Scores(i,2),Course_Scores(i,3),Grades(i,:));
end
fclose(fdat);

for j=1:11
    fprintf(1,'%s %3d\n',LetterGrades(j,:),Grade_Count(j));
end

% T = Course_Scores (:,3);
%-sort(-T(find(T<73 & T >= 71)))
%fprintf(1,'%3d\t%9d\t%4.1f\t%4.1f\n',[find(T<73 & T >= 71) Course_Scores(find(T<73 & T >= 71),:)]')

