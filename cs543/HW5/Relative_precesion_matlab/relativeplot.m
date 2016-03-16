% service rate is 10

average = [0.061732696
0.589953215
0.489201334
0.880329156
0.549451961
1.130203843
0.740078529
0.660078529
0.900078529
0.669953215
1.160830411
0.399326647
1.281331665
0.810203843
1.020579783
1.130203843
0.900078529
1.341582292
0.740078529
0.960329156
0.399326647
1.381081038
0.33907602
0.629451961
0.689702588
0.549451961
1.170705097
0.559326647
0.619577274
0.559326647
0.409201334
1.381081038
0.989953215
0.749953215
0.940579783
0.849702588
0.940579783
0.629451961
0.95045447
1.020579783
0.980078529
1.43045447
0.770705097
1.03045447
1.180579783
1.331707606
0.740078529
0.749953215
1.100579783
0.960329156
0.749953215
0.880329156
1.351456979
0.689702588
0.709451961
0.669953215
1.03045447
1.090705097
0.479326647
0.779577274


];

average_08 = [1.070053484
0.876948506
0.750053484
1.294837674
0.846271804
0.833395181
2.26042947
2.0748544
1.118285185
1.320167662
1.014960215
2.309997849
1.145620191
1.916614337
0.744283512
1.335539466
1.414291875
1.633395181
1.126060175
1.542278494
1.622189406
1.688310275
1.086605973
1.152058502
1.020061848
1.25219777
0.830053484
1.260396017
0.46583182
0.649825129
1.764032975
1.1696135
1.225196933
1.776842692
1.294837674
1.221944325
1.121961051
1.258725169
1.726516885
2.10076364
2.167062684
1.758285185
1.667836838
1.32183851
3.246427798
1.508171007
1.609312784
1.3296135
1.270844364
1.054169335
1.215171844
1.371741059
1.531741059
1.221855237
1.779181879
1.300184388
1.860184388
0.621821784
1.901398526
1.108505177


]


for i=1:60
    sum = 0;
    for j=1:i
        
        sum = sum + average(j);
       
  
    end
    newaverage(i) = sum/j;
    stdvalue(i) = std(average(1:j));
    
    
end

for j=1:60
    relativeerror(j) = ((stdvalue(j)*1.96)/sqrt(j))/newaverage(j);
    
end

% relative error for \rho  = 0.8

for i=1:60
    sum = 0;
    for j=1:i
        
        sum = sum + average_08(j);
       
  
    end
    newaverage_08(i) = sum/j;
    stdvalue_08(i) = std(average_08(1:j));
    
    
    
end

for j=1:60
    
      
      relativeerror_08(j) = ((stdvalue_08(j)*1.96)/sqrt(j))/newaverage_08(j);
    
end