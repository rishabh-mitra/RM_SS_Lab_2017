n1 = [3];
d1 = [1 4];
s1 = tf(n1,d1);
n2 = [2 4];
d2 = [1 2 3];
s2 = tf(n2,d2);

%in cascade
s3 = s1*s2

%in parallel
s4 = s1+s2

%overall tf of feedback connected system (negative)
systf = feedback(s1,s2)

%overall tf of feedback connected system (positive)
systf1 = feedback(s1,s2,+1)