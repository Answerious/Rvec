#test_arr = [[7.0, 21.5, 92.25, 443.375], [21.5, 92.25, 443.375, 2279.0625], [92.25, 443.375, 2279.0625, 12207.59375], [443.375, 2279.0625, 12207.59375, 67181.390625]]
#test_arr = [[1.0,2.0,3.0],[3.0,2.0,3.0],[1.0,2.0,2.0]]
#test_arr = [[1.0,2.0],[3.0,4.0]]
#test_arr = [[1.0,2.0,3.0,4.0,5.0],[7.0,8.0,9.0,10.0,11.0],[6.0,5.0,4.0,3.0,2.0],[1.0,11.0,10.0,9.0,8.0],[7.0,6.0,4.0,5.0,3.0]]
#test_arr = [[2.0,1.0,0.0,1.0,2.0],[-1.0,3.0,2.0,1.0,1.0],[-1.0,2.0,3.0,1.0,-1.0],[2.0,0.0,0.0,3.0,0.0],[2.0,0.0,3.0,1.0,-1.0]]

require_relative 'matrixmulti'

def func_5x5_det(given_arr)
    a11=given_arr[0][0] and a12=given_arr[0][1] and a13=given_arr[0][2] and a14=given_arr[0][3] and a15=given_arr[0][4]
    a21=given_arr[1][0] and a22=given_arr[1][1] and a23=given_arr[1][2] and a24=given_arr[1][3] and a25=given_arr[1][4]
    a31=given_arr[2][0] and a32=given_arr[2][1] and a33=given_arr[2][2] and a34=given_arr[2][3] and a35=given_arr[2][4]
    a41=given_arr[3][0] and a42=given_arr[3][1] and a43=given_arr[3][2] and a44=given_arr[3][3] and a45=given_arr[3][4]
    a51=given_arr[4][0] and a52=given_arr[4][1] and a53=given_arr[4][2] and a54=given_arr[4][3] and a55=given_arr[4][4]

    det = 0 and det1 = [a15*a24*a33*a42*a51-a14*a25*a33*a42*a51-a15*a23*a34*a42*a51 +    
    a13*a25*a34*a42*a51+a14*a23*a35*a42*a51-a13*a24*a35*a42*a51 -      
    a15*a24*a32*a43*a51+a14*a25*a32*a43*a51+a15*a22*a34*a43*a51 -       
    a12*a25*a34*a43*a51-a14*a22*a35*a43*a51+a12*a24*a35*a43*a51 +     
    a15*a23*a32*a44*a51-a13*a25*a32*a44*a51-a15*a22*a33*a44*a51 +       
    a12*a25*a33*a44*a51+a13*a22*a35*a44*a51-a12*a23*a35*a44*a51 -       
    a14*a23*a32*a45*a51+a13*a24*a32*a45*a51+a14*a22*a33*a45*a51 -       
    a12*a24*a33*a45*a51-a13*a22*a34*a45*a51+a12*a23*a34*a45*a51 -       
    a15*a24*a33*a41*a52+a14*a25*a33*a41*a52+a15*a23*a34*a41*a52 -       
    a13*a25*a34*a41*a52-a14*a23*a35*a41*a52+a13*a24*a35*a41*a52 +       
    a15*a24*a31*a43*a52-a14*a25*a31*a43*a52-a15*a21*a34*a43*a52 +   
    a11*a25*a34*a43*a52+a14*a21*a35*a43*a52-a11*a24*a35*a43*a52 -       
    a15*a23*a31*a44*a52+a13*a25*a31*a44*a52+a15*a21*a33*a44*a52 -       
    a11*a25*a33*a44*a52-a13*a21*a35*a44*a52+a11*a23*a35*a44*a52 +       
    a14*a23*a31*a45*a52-a13*a24*a31*a45*a52-a14*a21*a33*a45*a52 +       
    a11*a24*a33*a45*a52+a13*a21*a34*a45*a52-a11*a23*a34*a45*a52 +       
    a15*a24*a32*a41*a53-a14*a25*a32*a41*a53-a15*a22*a34*a41*a53 +       
    a12*a25*a34*a41*a53+a14*a22*a35*a41*a53-a12*a24*a35*a41*a53 -       
    a15*a24*a31*a42*a53+a14*a25*a31*a42*a53+a15*a21*a34*a42*a53 -       
    a11*a25*a34*a42*a53-a14*a21*a35*a42*a53+a11*a24*a35*a42*a53 +       
    a15*a22*a31*a44*a53-a12*a25*a31*a44*a53-a15*a21*a32*a44*a53 +       
    a11*a25*a32*a44*a53+a12*a21*a35*a44*a53-a11*a22*a35*a44*a53 -       
    a14*a22*a31*a45*a53+a12*a24*a31*a45*a53+a14*a21*a32*a45*a53 -       
    a11*a24*a32*a45*a53-a12*a21*a34*a45*a53+a11*a22*a34*a45*a53 -       
    a15*a23*a32*a41*a54+a13*a25*a32*a41*a54+a15*a22*a33*a41*a54 -       
    a12*a25*a33*a41*a54-a13*a22*a35*a41*a54+a12*a23*a35*a41*a54 +       
    a15*a23*a31*a42*a54-a13*a25*a31*a42*a54-a15*a21*a33*a42*a54 +       
    a11*a25*a33*a42*a54+a13*a21*a35*a42*a54-a11*a23*a35*a42*a54 -       
    a15*a22*a31*a43*a54+a12*a25*a31*a43*a54+a15*a21*a32*a43*a54 -       
    a11*a25*a32*a43*a54-a12*a21*a35*a43*a54+a11*a22*a35*a43*a54 +       
    a13*a22*a31*a45*a54-a12*a23*a31*a45*a54-a13*a21*a32*a45*a54 +       
    a11*a23*a32*a45*a54+a12*a21*a33*a45*a54-a11*a22*a33*a45*a54 +       
    a14*a23*a32*a41*a55-a13*a24*a32*a41*a55-a14*a22*a33*a41*a55 +       
    a12*a24*a33*a41*a55+a13*a22*a34*a41*a55-a12*a23*a34*a41*a55 -       
    a14*a23*a31*a42*a55+a13*a24*a31*a42*a55+a14*a21*a33*a42*a55 -       
    a11*a24*a33*a42*a55-a13*a21*a34*a42*a55+a11*a23*a34*a42*a55 +       
    a14*a22*a31*a43*a55-a12*a24*a31*a43*a55-a14*a21*a32*a43*a55 +       
    a11*a24*a32*a43*a55+a12*a21*a34*a43*a55-a11*a22*a34*a43*a55 -       
    a13*a22*a31*a44*a55+a12*a23*a31*a44*a55+a13*a21*a32*a44*a55 -       
    a11*a23*a32*a44*a55-a12*a21*a33*a44*a55+a11*a22*a33*a44*a55]
    det1.each{|ele| det = ele}

    return det
end

def func_4x4_det(given_arr)
    det = 0 and det1 = [
    given_arr[0][0]*given_arr[1][1]*given_arr[2][2]*given_arr[3][3] +
    given_arr[0][0]*given_arr[1][2]*given_arr[2][3]*given_arr[3][1] + 
    given_arr[0][0]*given_arr[1][3]*given_arr[2][1]*given_arr[3][2] +
    given_arr[0][1]*given_arr[1][0]*given_arr[2][3]*given_arr[3][2] + 
    given_arr[0][1]*given_arr[1][2]*given_arr[2][0]*given_arr[3][3] + 
    given_arr[0][1]*given_arr[1][3]*given_arr[2][2]*given_arr[3][0] +
    given_arr[0][2]*given_arr[1][0]*given_arr[2][1]*given_arr[3][3] + 
    given_arr[0][2]*given_arr[1][1]*given_arr[2][3]*given_arr[3][0] + 
    given_arr[0][2]*given_arr[1][3]*given_arr[2][0]*given_arr[3][1] +
    given_arr[0][3]*given_arr[1][0]*given_arr[2][2]*given_arr[3][1] + 
    given_arr[0][3]*given_arr[1][1]*given_arr[2][0]*given_arr[3][2] + 
    given_arr[0][3]*given_arr[1][2]*given_arr[2][1]*given_arr[3][0] - 
    given_arr[0][0]*given_arr[1][1]*given_arr[2][3]*given_arr[3][2] - 
    given_arr[0][0]*given_arr[1][2]*given_arr[2][1]*given_arr[3][3] - 
    given_arr[0][0]*given_arr[1][3]*given_arr[2][2]*given_arr[3][1] -
    given_arr[0][1]*given_arr[1][0]*given_arr[2][2]*given_arr[3][3] - 
    given_arr[0][1]*given_arr[1][2]*given_arr[2][3]*given_arr[3][0] - 
    given_arr[0][1]*given_arr[1][3]*given_arr[2][0]*given_arr[3][2] -
    given_arr[0][2]*given_arr[1][0]*given_arr[2][3]*given_arr[3][1] - 
    given_arr[0][2]*given_arr[1][1]*given_arr[2][0]*given_arr[3][3] - 
    given_arr[0][2]*given_arr[1][3]*given_arr[2][1]*given_arr[3][0] -
    given_arr[0][3]*given_arr[1][0]*given_arr[2][1]*given_arr[3][2] - 
    given_arr[0][3]*given_arr[1][1]*given_arr[2][2]*given_arr[3][0] - 
    given_arr[0][3]*given_arr[1][2]*given_arr[2][0]*given_arr[3][1]]
    det1.each{|ele| det = ele}

    return det
end

def func_3x3_det(given_arr)
    det = 0 and det1 = [given_arr[0][0]*given_arr[1][1]*given_arr[2][2] +
    given_arr[1][0]*given_arr[2][1]*given_arr[0][2] + 
    given_arr[2][0]*given_arr[0][1]*given_arr[1][2] - 
    given_arr[0][0]*given_arr[2][1]*given_arr[1][2] - 
    given_arr[2][0]*given_arr[1][1]*given_arr[0][2] -
    given_arr[1][0]*given_arr[0][1]*given_arr[2][2]]
    det1.each{|ele| det = ele}

    return det
end

def func_2x2_det(given_arr)
    cono = given_arr[0][0]*given_arr[1][1] - given_arr[0][1]*given_arr[1][0]
    if cono !=0 then det = cono else det = 1 end
    return det
end

def func_inverse5x5(given_arr)
    deta = func_5x5_det(given_arr)

    a11=given_arr[0][0] and a12=given_arr[0][1] and a13=given_arr[0][2] and a14=given_arr[0][3] and a15=given_arr[0][4]
    a21=given_arr[1][0] and a22=given_arr[1][1] and a23=given_arr[1][2] and a24=given_arr[1][3] and a25=given_arr[1][4]
    a31=given_arr[2][0] and a32=given_arr[2][1] and a33=given_arr[2][2] and a34=given_arr[2][3] and a35=given_arr[2][4]
    a41=given_arr[3][0] and a42=given_arr[3][1] and a43=given_arr[3][2] and a44=given_arr[3][3] and a45=given_arr[3][4]
    a51=given_arr[4][0] and a52=given_arr[4][1] and a53=given_arr[4][2] and a54=given_arr[4][3] and a55=given_arr[4][4]

    b11 = a25*a34*a43*a52-a24*a35*a43*a52-a25*a33*a44*a52+      
         a23*a35*a44*a52+a24*a33*a45*a52-a23*a34*a45*a52-a25*a34*a42*a53+   
         a24*a35*a42*a53+a25*a32*a44*a53-a22*a35*a44*a53-a24*a32*a45*a53+   
         a22*a34*a45*a53+a25*a33*a42*a54-a23*a35*a42*a54-a25*a32*a43*a54+   
         a22*a35*a43*a54+a23*a32*a45*a54-a22*a33*a45*a54-a24*a33*a42*a55+   
         a23*a34*a42*a55+a24*a32*a43*a55-a22*a34*a43*a55-a23*a32*a44*a55+   
         a22*a33*a44*a55

    b12 = -a15*a34*a43*a52+a14*a35*a43*a52+a15*a33*a44*a52-     
         a13*a35*a44*a52-a14*a33*a45*a52+a13*a34*a45*a52+a15*a34*a42*a53-   
         a14*a35*a42*a53-a15*a32*a44*a53+a12*a35*a44*a53+a14*a32*a45*a53-   
         a12*a34*a45*a53-a15*a33*a42*a54+a13*a35*a42*a54+a15*a32*a43*a54-   
         a12*a35*a43*a54-a13*a32*a45*a54+a12*a33*a45*a54+a14*a33*a42*a55-   
         a13*a34*a42*a55-a14*a32*a43*a55+a12*a34*a43*a55+a13*a32*a44*a55-   
         a12*a33*a44*a55

    b13 = a15*a24*a43*a52-a14*a25*a43*a52-a15*a23*a44*a52+      
         a13*a25*a44*a52+a14*a23*a45*a52-a13*a24*a45*a52-a15*a24*a42*a53+   
         a14*a25*a42*a53+a15*a22*a44*a53-a12*a25*a44*a53-a14*a22*a45*a53+   
         a12*a24*a45*a53+a15*a23*a42*a54-a13*a25*a42*a54-a15*a22*a43*a54+   
         a12*a25*a43*a54+a13*a22*a45*a54-a12*a23*a45*a54-a14*a23*a42*a55+   
         a13*a24*a42*a55+a14*a22*a43*a55-a12*a24*a43*a55-a13*a22*a44*a55+   
         a12*a23*a44*a55

    b14 = -a15*a24*a33*a52+a14*a25*a33*a52+a15*a23*a34*a52-     
         a13*a25*a34*a52-a14*a23*a35*a52+a13*a24*a35*a52+a15*a24*a32*a53-   
         a14*a25*a32*a53-a15*a22*a34*a53+a12*a25*a34*a53+a14*a22*a35*a53-   
         a12*a24*a35*a53-a15*a23*a32*a54+a13*a25*a32*a54+a15*a22*a33*a54-   
         a12*a25*a33*a54-a13*a22*a35*a54+a12*a23*a35*a54+a14*a23*a32*a55-   
         a13*a24*a32*a55-a14*a22*a33*a55+a12*a24*a33*a55+a13*a22*a34*a55-   
         a12*a23*a34*a55

    b15 = a15*a24*a33*a42-a14*a25*a33*a42-a15*a23*a34*a42+      
         a13*a25*a34*a42+a14*a23*a35*a42-a13*a24*a35*a42-a15*a24*a32*a43+   
         a14*a25*a32*a43+a15*a22*a34*a43-a12*a25*a34*a43-a14*a22*a35*a43+   
         a12*a24*a35*a43+a15*a23*a32*a44-a13*a25*a32*a44-a15*a22*a33*a44+   
         a12*a25*a33*a44+a13*a22*a35*a44-a12*a23*a35*a44-a14*a23*a32*a45+   
         a13*a24*a32*a45+a14*a22*a33*a45-a12*a24*a33*a45-a13*a22*a34*a45+   
         a12*a23*a34*a45

    b21 = -a25*a34*a43*a51+a24*a35*a43*a51+a25*a33*a44*a51-     
         a23*a35*a44*a51-a24*a33*a45*a51+a23*a34*a45*a51+a25*a34*a41*a53-   
         a24*a35*a41*a53-a25*a31*a44*a53+a21*a35*a44*a53+a24*a31*a45*a53-   
         a21*a34*a45*a53-a25*a33*a41*a54+a23*a35*a41*a54+a25*a31*a43*a54-   
         a21*a35*a43*a54-a23*a31*a45*a54+a21*a33*a45*a54+a24*a33*a41*a55-   
         a23*a34*a41*a55-a24*a31*a43*a55+a21*a34*a43*a55+a23*a31*a44*a55-   
         a21*a33*a44*a55

    b22 = a15*a34*a43*a51-a14*a35*a43*a51-a15*a33*a44*a51+      
         a13*a35*a44*a51+a14*a33*a45*a51-a13*a34*a45*a51-a15*a34*a41*a53+   
         a14*a35*a41*a53+a15*a31*a44*a53-a11*a35*a44*a53-a14*a31*a45*a53+   
         a11*a34*a45*a53+a15*a33*a41*a54-a13*a35*a41*a54-a15*a31*a43*a54+   
         a11*a35*a43*a54+a13*a31*a45*a54-a11*a33*a45*a54-a14*a33*a41*a55+   
         a13*a34*a41*a55+a14*a31*a43*a55-a11*a34*a43*a55-a13*a31*a44*a55+   
         a11*a33*a44*a55

    b23 = -a15*a24*a43*a51+a14*a25*a43*a51+a15*a23*a44*a51-     
         a13*a25*a44*a51-a14*a23*a45*a51+a13*a24*a45*a51+a15*a24*a41*a53-   
         a14*a25*a41*a53-a15*a21*a44*a53+a11*a25*a44*a53+a14*a21*a45*a53-   
         a11*a24*a45*a53-a15*a23*a41*a54+a13*a25*a41*a54+a15*a21*a43*a54-   
         a11*a25*a43*a54-a13*a21*a45*a54+a11*a23*a45*a54+a14*a23*a41*a55-   
         a13*a24*a41*a55-a14*a21*a43*a55+a11*a24*a43*a55+a13*a21*a44*a55-   
         a11*a23*a44*a55

    b24 = a15*a24*a33*a51-a14*a25*a33*a51-a15*a23*a34*a51+      
         a13*a25*a34*a51+a14*a23*a35*a51-a13*a24*a35*a51-a15*a24*a31*a53+   
         a14*a25*a31*a53+a15*a21*a34*a53-a11*a25*a34*a53-a14*a21*a35*a53+   
         a11*a24*a35*a53+a15*a23*a31*a54-a13*a25*a31*a54-a15*a21*a33*a54+   
         a11*a25*a33*a54+a13*a21*a35*a54-a11*a23*a35*a54-a14*a23*a31*a55+   
         a13*a24*a31*a55+a14*a21*a33*a55-a11*a24*a33*a55-a13*a21*a34*a55+   
         a11*a23*a34*a55

    b25 = -a15*a24*a33*a41+a14*a25*a33*a41+a15*a23*a34*a41-     
         a13*a25*a34*a41-a14*a23*a35*a41+a13*a24*a35*a41+a15*a24*a31*a43-   
         a14*a25*a31*a43-a15*a21*a34*a43+a11*a25*a34*a43+a14*a21*a35*a43-   
         a11*a24*a35*a43-a15*a23*a31*a44+a13*a25*a31*a44+a15*a21*a33*a44-   
         a11*a25*a33*a44-a13*a21*a35*a44+a11*a23*a35*a44+a14*a23*a31*a45-   
         a13*a24*a31*a45-a14*a21*a33*a45+a11*a24*a33*a45+a13*a21*a34*a45-   
         a11*a23*a34*a45

    b31 = a25*a34*a42*a51-a24*a35*a42*a51-a25*a32*a44*a51+      
         a22*a35*a44*a51+a24*a32*a45*a51-a22*a34*a45*a51-a25*a34*a41*a52+   
         a24*a35*a41*a52+a25*a31*a44*a52-a21*a35*a44*a52-a24*a31*a45*a52+   
         a21*a34*a45*a52+a25*a32*a41*a54-a22*a35*a41*a54-a25*a31*a42*a54+   
         a21*a35*a42*a54+a22*a31*a45*a54-a21*a32*a45*a54-a24*a32*a41*a55+   
         a22*a34*a41*a55+a24*a31*a42*a55-a21*a34*a42*a55-a22*a31*a44*a55+   
         a21*a32*a44*a55

    b32 = -a15*a34*a42*a51+a14*a35*a42*a51+a15*a32*a44*a51-     
         a12*a35*a44*a51-a14*a32*a45*a51+a12*a34*a45*a51+a15*a34*a41*a52-   
         a14*a35*a41*a52-a15*a31*a44*a52+a11*a35*a44*a52+a14*a31*a45*a52-   
         a11*a34*a45*a52-a15*a32*a41*a54+a12*a35*a41*a54+a15*a31*a42*a54-   
         a11*a35*a42*a54-a12*a31*a45*a54+a11*a32*a45*a54+a14*a32*a41*a55-   
         a12*a34*a41*a55-a14*a31*a42*a55+a11*a34*a42*a55+a12*a31*a44*a55-   
         a11*a32*a44*a55

    b33 = a15*a24*a42*a51-a14*a25*a42*a51-a15*a22*a44*a51+      
         a12*a25*a44*a51+a14*a22*a45*a51-a12*a24*a45*a51-a15*a24*a41*a52+   
         a14*a25*a41*a52+a15*a21*a44*a52-a11*a25*a44*a52-a14*a21*a45*a52+   
         a11*a24*a45*a52+a15*a22*a41*a54-a12*a25*a41*a54-a15*a21*a42*a54+   
         a11*a25*a42*a54+a12*a21*a45*a54-a11*a22*a45*a54-a14*a22*a41*a55+   
         a12*a24*a41*a55+a14*a21*a42*a55-a11*a24*a42*a55-a12*a21*a44*a55+   
         a11*a22*a44*a55

    b34 = -a15*a24*a32*a51+a14*a25*a32*a51+a15*a22*a34*a51-     
         a12*a25*a34*a51-a14*a22*a35*a51+a12*a24*a35*a51+a15*a24*a31*a52-   
         a14*a25*a31*a52-a15*a21*a34*a52+a11*a25*a34*a52+a14*a21*a35*a52-   
         a11*a24*a35*a52-a15*a22*a31*a54+a12*a25*a31*a54+a15*a21*a32*a54-   
         a11*a25*a32*a54-a12*a21*a35*a54+a11*a22*a35*a54+a14*a22*a31*a55-   
         a12*a24*a31*a55-a14*a21*a32*a55+a11*a24*a32*a55+a12*a21*a34*a55-   
         a11*a22*a34*a55

    b35 = a15*a24*a32*a41-a14*a25*a32*a41-a15*a22*a34*a41+      
         a12*a25*a34*a41+a14*a22*a35*a41-a12*a24*a35*a41-a15*a24*a31*a42+   
         a14*a25*a31*a42+a15*a21*a34*a42-a11*a25*a34*a42-a14*a21*a35*a42+   
         a11*a24*a35*a42+a15*a22*a31*a44-a12*a25*a31*a44-a15*a21*a32*a44+   
         a11*a25*a32*a44+a12*a21*a35*a44-a11*a22*a35*a44-a14*a22*a31*a45+   
         a12*a24*a31*a45+a14*a21*a32*a45-a11*a24*a32*a45-a12*a21*a34*a45+   
         a11*a22*a34*a45

    b41 = -a25*a33*a42*a51+a23*a35*a42*a51+a25*a32*a43*a51-     
         a22*a35*a43*a51-a23*a32*a45*a51+a22*a33*a45*a51+a25*a33*a41*a52-   
         a23*a35*a41*a52-a25*a31*a43*a52+a21*a35*a43*a52+a23*a31*a45*a52-   
         a21*a33*a45*a52-a25*a32*a41*a53+a22*a35*a41*a53+a25*a31*a42*a53-   
         a21*a35*a42*a53-a22*a31*a45*a53+a21*a32*a45*a53+a23*a32*a41*a55-   
         a22*a33*a41*a55-a23*a31*a42*a55+a21*a33*a42*a55+a22*a31*a43*a55-   
         a21*a32*a43*a55

    b42 = a15*a33*a42*a51-a13*a35*a42*a51-a15*a32*a43*a51+      
         a12*a35*a43*a51+a13*a32*a45*a51-a12*a33*a45*a51-a15*a33*a41*a52+   
         a13*a35*a41*a52+a15*a31*a43*a52-a11*a35*a43*a52-a13*a31*a45*a52+   
         a11*a33*a45*a52+a15*a32*a41*a53-a12*a35*a41*a53-a15*a31*a42*a53+   
         a11*a35*a42*a53+a12*a31*a45*a53-a11*a32*a45*a53-a13*a32*a41*a55+   
         a12*a33*a41*a55+a13*a31*a42*a55-a11*a33*a42*a55-a12*a31*a43*a55+   
         a11*a32*a43*a55

    b43 = -a15*a23*a42*a51+a13*a25*a42*a51+a15*a22*a43*a51-     
         a12*a25*a43*a51-a13*a22*a45*a51+a12*a23*a45*a51+a15*a23*a41*a52-   
         a13*a25*a41*a52-a15*a21*a43*a52+a11*a25*a43*a52+a13*a21*a45*a52-   
         a11*a23*a45*a52-a15*a22*a41*a53+a12*a25*a41*a53+a15*a21*a42*a53-   
         a11*a25*a42*a53-a12*a21*a45*a53+a11*a22*a45*a53+a13*a22*a41*a55-   
         a12*a23*a41*a55-a13*a21*a42*a55+a11*a23*a42*a55+a12*a21*a43*a55-   
         a11*a22*a43*a55

    b44 = a15*a23*a32*a51-a13*a25*a32*a51-a15*a22*a33*a51+      
         a12*a25*a33*a51+a13*a22*a35*a51-a12*a23*a35*a51-a15*a23*a31*a52+   
         a13*a25*a31*a52+a15*a21*a33*a52-a11*a25*a33*a52-a13*a21*a35*a52+   
         a11*a23*a35*a52+a15*a22*a31*a53-a12*a25*a31*a53-a15*a21*a32*a53+   
         a11*a25*a32*a53+a12*a21*a35*a53-a11*a22*a35*a53-a13*a22*a31*a55+   
         a12*a23*a31*a55+a13*a21*a32*a55-a11*a23*a32*a55-a12*a21*a33*a55+   
         a11*a22*a33*a55

    b45 = -a15*a23*a32*a41+a13*a25*a32*a41+a15*a22*a33*a41-     
         a12*a25*a33*a41-a13*a22*a35*a41+a12*a23*a35*a41+a15*a23*a31*a42-   
         a13*a25*a31*a42-a15*a21*a33*a42+a11*a25*a33*a42+a13*a21*a35*a42-   
         a11*a23*a35*a42-a15*a22*a31*a43+a12*a25*a31*a43+a15*a21*a32*a43-   
         a11*a25*a32*a43-a12*a21*a35*a43+a11*a22*a35*a43+a13*a22*a31*a45-   
         a12*a23*a31*a45-a13*a21*a32*a45+a11*a23*a32*a45+a12*a21*a33*a45-   
         a11*a22*a33*a45

    b51 = a24*a33*a42*a51-a23*a34*a42*a51-a24*a32*a43*a51+      
         a22*a34*a43*a51+a23*a32*a44*a51-a22*a33*a44*a51-a24*a33*a41*a52+   
         a23*a34*a41*a52+a24*a31*a43*a52-a21*a34*a43*a52-a23*a31*a44*a52+   
         a21*a33*a44*a52+a24*a32*a41*a53-a22*a34*a41*a53-a24*a31*a42*a53+   
         a21*a34*a42*a53+a22*a31*a44*a53-a21*a32*a44*a53-a23*a32*a41*a54+   
         a22*a33*a41*a54+a23*a31*a42*a54-a21*a33*a42*a54-a22*a31*a43*a54+   
         a21*a32*a43*a54

    b52 = -a14*a33*a42*a51+a13*a34*a42*a51+a14*a32*a43*a51-     
         a12*a34*a43*a51-a13*a32*a44*a51+a12*a33*a44*a51+a14*a33*a41*a52-   
         a13*a34*a41*a52-a14*a31*a43*a52+a11*a34*a43*a52+a13*a31*a44*a52-   
         a11*a33*a44*a52-a14*a32*a41*a53+a12*a34*a41*a53+a14*a31*a42*a53-   
         a11*a34*a42*a53-a12*a31*a44*a53+a11*a32*a44*a53+a13*a32*a41*a54-   
         a12*a33*a41*a54-a13*a31*a42*a54+a11*a33*a42*a54+a12*a31*a43*a54-   
         a11*a32*a43*a54

    b53 = a14*a23*a42*a51-a13*a24*a42*a51-a14*a22*a43*a51+      
         a12*a24*a43*a51+a13*a22*a44*a51-a12*a23*a44*a51-a14*a23*a41*a52+   
         a13*a24*a41*a52+a14*a21*a43*a52-a11*a24*a43*a52-a13*a21*a44*a52+   
         a11*a23*a44*a52+a14*a22*a41*a53-a12*a24*a41*a53-a14*a21*a42*a53+   
         a11*a24*a42*a53+a12*a21*a44*a53-a11*a22*a44*a53-a13*a22*a41*a54+   
         a12*a23*a41*a54+a13*a21*a42*a54-a11*a23*a42*a54-a12*a21*a43*a54+   
         a11*a22*a43*a54

    b54 = -a14*a23*a32*a51+a13*a24*a32*a51+a14*a22*a33*a51-     
         a12*a24*a33*a51-a13*a22*a34*a51+a12*a23*a34*a51+a14*a23*a31*a52-   
         a13*a24*a31*a52-a14*a21*a33*a52+a11*a24*a33*a52+a13*a21*a34*a52-   
         a11*a23*a34*a52-a14*a22*a31*a53+a12*a24*a31*a53+a14*a21*a32*a53-   
         a11*a24*a32*a53-a12*a21*a34*a53+a11*a22*a34*a53+a13*a22*a31*a54-   
         a12*a23*a31*a54-a13*a21*a32*a54+a11*a23*a32*a54+a12*a21*a33*a54-   
         a11*a22*a33*a54

    b55 = a14*a23*a32*a41-a13*a24*a32*a41-a14*a22*a33*a41+      
         a12*a24*a33*a41+a13*a22*a34*a41-a12*a23*a34*a41-a14*a23*a31*a42+   
         a13*a24*a31*a42+a14*a21*a33*a42-a11*a24*a33*a42-a13*a21*a34*a42+   
         a11*a23*a34*a42+a14*a22*a31*a43-a12*a24*a31*a43-a14*a21*a32*a43+   
         a11*a24*a32*a43+a12*a21*a34*a43-a11*a22*a34*a43-a13*a22*a31*a44+   
         a12*a23*a31*a44+a13*a21*a32*a44-a11*a23*a32*a44-a12*a21*a33*a44+   
         a11*a22*a33*a44


    return ([[b11/deta, b12/deta, b13/deta, b14/deta, b15/deta],[b21/deta, b22/deta, b23/deta, b24/deta, b25/deta],[b31/deta, b32/deta, b33/deta, b34/deta, b35/deta],[b41/deta, b42/deta, b43/deta, b44/deta, b45/deta],[b51/deta, b52/deta, b53/deta, b54/deta, b55/deta]])
end

def func_inverse4x4(given_arr)
    deta = func_4x4_det(given_arr)

    b00 = given_arr[1][1]*given_arr[2][2]*given_arr[3][3] + given_arr[1][2]*given_arr[2][3]*given_arr[3][1] + given_arr[1][3]*given_arr[2][1]*given_arr[3][2] - given_arr[1][1]*given_arr[2][3]*given_arr[3][2] - given_arr[1][2]*given_arr[2][1]*given_arr[3][3] - given_arr[1][3]*given_arr[2][2]*given_arr[3][1]
    b01 = given_arr[0][1]*given_arr[2][3]*given_arr[3][2] + given_arr[0][2]*given_arr[2][1]*given_arr[3][3] + given_arr[0][3]*given_arr[2][2]*given_arr[3][1] - given_arr[0][1]*given_arr[2][2]*given_arr[3][3] - given_arr[0][2]*given_arr[2][3]*given_arr[3][1] - given_arr[0][3]*given_arr[2][1]*given_arr[3][2]
    b02 = given_arr[0][1]*given_arr[1][2]*given_arr[3][3] + given_arr[0][2]*given_arr[1][3]*given_arr[3][1] + given_arr[0][3]*given_arr[1][1]*given_arr[3][2] - given_arr[0][1]*given_arr[1][3]*given_arr[3][2] - given_arr[0][2]*given_arr[1][1]*given_arr[3][3] - given_arr[0][3]*given_arr[1][2]*given_arr[3][1]
    b03 = given_arr[0][1]*given_arr[1][3]*given_arr[2][2] + given_arr[0][2]*given_arr[1][1]*given_arr[2][3] + given_arr[0][3]*given_arr[1][2]*given_arr[2][1] - given_arr[0][1]*given_arr[1][2]*given_arr[2][3] - given_arr[0][2]*given_arr[1][3]*given_arr[2][1] - given_arr[0][3]*given_arr[1][1]*given_arr[2][2]

    b10 = given_arr[1][0]*given_arr[2][3]*given_arr[3][2] + given_arr[1][2]*given_arr[2][0]*given_arr[3][3] + given_arr[1][3]*given_arr[2][2]*given_arr[3][0] - given_arr[1][0]*given_arr[2][2]*given_arr[3][3] - given_arr[1][2]*given_arr[2][3]*given_arr[3][0] - given_arr[1][3]*given_arr[2][0]*given_arr[3][2]
    b11 = given_arr[0][0]*given_arr[2][2]*given_arr[3][3] + given_arr[0][2]*given_arr[2][3]*given_arr[3][0] + given_arr[0][3]*given_arr[2][0]*given_arr[3][2] - given_arr[0][0]*given_arr[2][3]*given_arr[3][2] - given_arr[0][2]*given_arr[2][0]*given_arr[3][3] - given_arr[0][3]*given_arr[2][2]*given_arr[3][0]
    b12 = given_arr[0][0]*given_arr[1][3]*given_arr[3][2] + given_arr[0][2]*given_arr[1][0]*given_arr[3][3] + given_arr[0][3]*given_arr[1][2]*given_arr[3][0] - given_arr[0][0]*given_arr[1][2]*given_arr[3][3] - given_arr[0][2]*given_arr[1][3]*given_arr[3][0] - given_arr[0][3]*given_arr[1][0]*given_arr[3][2]
    b13 = given_arr[0][0]*given_arr[1][2]*given_arr[2][3] + given_arr[0][2]*given_arr[1][3]*given_arr[2][0] + given_arr[0][3]*given_arr[1][0]*given_arr[2][2] - given_arr[0][0]*given_arr[1][3]*given_arr[2][2] - given_arr[0][2]*given_arr[1][0]*given_arr[2][3] - given_arr[0][3]*given_arr[1][2]*given_arr[2][0]

    b20 = given_arr[1][0]*given_arr[2][1]*given_arr[3][3] + given_arr[1][1]*given_arr[2][3]*given_arr[3][0] + given_arr[1][3]*given_arr[2][0]*given_arr[3][1] - given_arr[1][0]*given_arr[2][3]*given_arr[3][1] - given_arr[1][1]*given_arr[2][0]*given_arr[3][3] - given_arr[1][3]*given_arr[2][1]*given_arr[3][0]
    b21 = given_arr[0][0]*given_arr[2][3]*given_arr[3][1] + given_arr[0][1]*given_arr[2][0]*given_arr[3][3] + given_arr[0][3]*given_arr[2][1]*given_arr[3][0] - given_arr[0][0]*given_arr[2][1]*given_arr[3][3] - given_arr[0][1]*given_arr[2][3]*given_arr[3][0] - given_arr[0][3]*given_arr[2][0]*given_arr[3][1]
    b22 = given_arr[0][0]*given_arr[1][1]*given_arr[3][3] + given_arr[0][1]*given_arr[1][3]*given_arr[3][0] + given_arr[0][3]*given_arr[1][0]*given_arr[3][1] - given_arr[0][0]*given_arr[1][3]*given_arr[3][1] - given_arr[0][1]*given_arr[1][0]*given_arr[3][3] - given_arr[0][3]*given_arr[1][1]*given_arr[3][0]
    b23 = given_arr[0][0]*given_arr[1][3]*given_arr[2][1] + given_arr[0][1]*given_arr[1][0]*given_arr[2][3] + given_arr[0][3]*given_arr[1][1]*given_arr[2][0] - given_arr[0][0]*given_arr[1][1]*given_arr[2][3] - given_arr[0][1]*given_arr[1][3]*given_arr[2][0] - given_arr[0][3]*given_arr[1][0]*given_arr[2][1]

    b30 = given_arr[1][0]*given_arr[2][2]*given_arr[3][1] + given_arr[1][1]*given_arr[2][0]*given_arr[3][2] + given_arr[1][2]*given_arr[2][1]*given_arr[3][0] - given_arr[1][0]*given_arr[2][1]*given_arr[3][2] - given_arr[1][1]*given_arr[2][2]*given_arr[3][0] - given_arr[1][2]*given_arr[2][0]*given_arr[3][1]
    b31 = given_arr[0][0]*given_arr[2][1]*given_arr[3][2] + given_arr[0][1]*given_arr[2][2]*given_arr[3][0] + given_arr[0][2]*given_arr[2][0]*given_arr[3][1] - given_arr[0][0]*given_arr[2][2]*given_arr[3][1] - given_arr[0][1]*given_arr[2][0]*given_arr[3][2] - given_arr[0][2]*given_arr[2][1]*given_arr[3][0]
    b32 = given_arr[0][0]*given_arr[1][2]*given_arr[3][1] + given_arr[0][1]*given_arr[1][0]*given_arr[3][2] + given_arr[0][2]*given_arr[1][1]*given_arr[3][0] - given_arr[0][0]*given_arr[1][1]*given_arr[3][2] - given_arr[0][1]*given_arr[1][2]*given_arr[3][0] - given_arr[0][2]*given_arr[1][0]*given_arr[3][1]
    b33 = given_arr[0][0]*given_arr[1][1]*given_arr[2][2] + given_arr[0][1]*given_arr[1][2]*given_arr[2][0] + given_arr[0][2]*given_arr[1][0]*given_arr[2][1] - given_arr[0][0]*given_arr[1][2]*given_arr[2][1] - given_arr[0][1]*given_arr[1][0]*given_arr[2][2] - given_arr[0][2]*given_arr[1][1]*given_arr[2][0]

    return ([[b00/deta, b01/deta, b02/deta, b03/deta], [b10/deta, b11/deta, b12/deta, b13/deta], [b20/deta, b21/deta, b22/deta, b23/deta], [b30/deta, b31/deta, b32/deta, b33/deta]])
end

def func_inverse3x3(given_arr)
    deta = func_3x3_det(given_arr)

    b11 = given_arr[1][1]*given_arr[2][2] - given_arr[1][2]*given_arr[2][1]
    b21 = given_arr[1][2]*given_arr[2][0] - given_arr[1][0]*given_arr[2][2]
    b31 = given_arr[1][0]*given_arr[2][1] - given_arr[1][1]*given_arr[2][0]

    b12 = given_arr[0][2]*given_arr[2][1] - given_arr[0][1]*given_arr[2][2]
    b22 = given_arr[0][0]*given_arr[2][2] - given_arr[0][2]*given_arr[2][0]
    b32 = given_arr[0][1]*given_arr[2][0] - given_arr[0][0]*given_arr[2][1]

    b13 = given_arr[0][1]*given_arr[1][2] - given_arr[0][2]*given_arr[1][1]
    b23 = given_arr[0][2]*given_arr[1][0] - given_arr[0][0]*given_arr[1][2]
    b33 = given_arr[0][0]*given_arr[1][1] - given_arr[0][1]*given_arr[1][0]

    return ([[b11/deta, b12/deta, b13/deta],[b21/deta, b22/deta, b23/deta],[b31/deta, b32/deta, b33/deta]])
end

def func_inverse2x2(given_arr)
    deta = func_2x2_det(given_arr)

    b11 = (given_arr[1][1])/deta
    b12 = ((-1)*given_arr[0][1])/deta

    b21 = ((-1)*given_arr[1][0])/deta
    b22 = (given_arr[0][0])/deta

    return ([[b11, b12],[b21, b22]])
end

def func_inverse(given_arr)
    check = func_check_input(given_arr)
    type = func_gather_size(check,given_arr)
    if type == [2, 2] 
        return func_inverse2x2(given_arr)
    elsif type == [3, 3]
        return func_inverse3x3(given_arr)
    elsif type == [4, 4]
        return func_inverse4x4(given_arr)
    elsif type == [5, 5]
        return func_inverse5x5(given_arr)
    else
        return ("Unsupported size")
    end
end
