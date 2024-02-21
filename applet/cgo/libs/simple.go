package libs

/*
int sum(int a,int b)
{
	return a+b;
}
*/
import "C"

func Sum(a, b int) int {
	return int(C.sum(C.int(a), C.int(b)))
}
