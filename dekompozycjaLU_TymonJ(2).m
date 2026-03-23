function dekompozycjaLU
    %inicjalizuję zmienne wg danych z zadania
    A = [4.780 3.230 -7.480 -4.780; 0.000 5.580 3.290 2.380; -5.780 8.180 -8.870 2.610; -5.430 -3.530 -2.690 -2.470];
    B = [-19.670; -54.750; -93.790; 21.920];
    
    %wektor wynikowy
    X = [0; 0; 0; 0];
    %wektor pomocniczy
    Y = [0; 0; 0; 0];
    %macierz dolnotrójkątna
    L = [0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0];
    %macierz górnotrójkątna
    U = [0 0 0 0; 0 0 0 0; 0 0 0 0; 0 0 0 0];
    
    %metoda Crouta
    for i = 1:4
        U(i,i) = 1;
        L(i,1) = A(i,1);        
    end  

    for i = 2:4
        U(1,i) = A(1,i)/L(1,1);
        L(i,2) = A(i,2) - L(i,1)*U(1,2);
    end    

    for i = 3:4
        U(2,i) = (A(2,i)-L(2,1)*U(1,i))/L(2,2);
        L(i,3) = A(i,3)-L(i,1)*U(1,3)-L(i,2)*U(2,3);
    end

    U(3,4) = (A(3,4)-L(3,1)*U(1,4)-L(3,2)*U(2,4))/L(3,3);

    L(4,4) = A(4,4)-L(4,1)*U(1,4)-L(4,2)*U(2,4)-L(4,3)*U(3,4);
    
    %wektor Y:
    Y(1) = B(1)/L(1,1);
    Y(2) = (B(2)-L(2,1)*Y(1))/L(2,2);
    Y(3) = (B(3)-L(3,1)*Y(1)-L(3,2)*Y(2))/L(3,3);
    Y(4) = (B(4)-L(4,1)*Y(1)-L(4,2)*Y(2)-L(4,3)*Y(3))/L(4,4);
    
    %wektor X:
    X(4) = Y(4);
    X(3) = Y(3)-U(3,4)*X(4);
    X(2) = Y(2)-U(2,4)*X(4)-U(2,3)*X(3);
    X(1) = Y(1)-U(1,4)*X(4)-U(1,3)*X(3)-U(1,2)*X(2);
    
    disp('Wektor wynikowy:');
    disp(X);
    disp('Sprawdzenie:');
    disp('A*X:');
    disp(A*X);
    disp('B:');
    disp(B);
end