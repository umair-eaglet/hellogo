package helloworld
import "testing"

func testLucknumber(t *testing.T){
  //Lucky number should not be greater than random seed
  if luckynumber(7) > 7 {
    t.Fail()
  }
}
