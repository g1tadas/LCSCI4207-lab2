import file("lab2-support.arr") as support

#copying in function encryptor 1 from lab-support
import js-file("lab2-compiled") as hidden
fun encryptor1(s :: String) -> String:
  hidden.encryptor3(s)
end
#testing strings
encryptor1("Hello.")
encryptor1("snake")

#copying in function encryptor 2 from lab-support
fun encryptor2(s :: String) -> String:
  hidden.encryptor2(s)
end
#testing strings
encryptor2("Hello.")
encryptor2("snake")

#copying in function encryptor 3 from lab-support
fun encryptor3(s :: String) -> String:
  hidden.encryptor1(s)
end
#testing strings
encryptor3("Hello.")
encryptor3("snake")

#copying in function encryptor 4 from lab-support
fun encryptor4(s :: String) -> String:
  hidden.encryptor4(s)
end
#testing strings
encryptor4("Hello.")
encryptor4("snake")

#copying in function encryptor 5 from lab-support
fun encryptor5(s :: String) -> String:
  hidden.encryptor5(s)
end
#testing strings
encryptor5("Hello.")
encryptor5("snake")

#copying in function encryptor 6 from lab-support
fun encryptor6(s :: String) -> String:
  hidden.encryptor6(s)
end
#testing strings
encryptor6("Hello.")
encryptor6("snake")

#copying in function encryptor 7 from lab-support
fun encryptor7(s :: String) -> Number:
  hidden.encryptor9(s)
end
#testing strings
encryptor7("Hello.")
encryptor7("snake")

#copying in function encryptor 8 from lab-support
fun encryptor8(s :: String) -> String:
  hidden.encryptor8(s)
end
#testing strings
encryptor8("Hello.")
encryptor8("snake")

#copying in function encryptor 9 from lab-support
fun encryptor9(s :: String) -> Number:
  hidden.encryptor7(s)
end
#testing strings
encryptor9("Hello.")
encryptor9("snake")
encryptor9("s")

#copying in function encryptor 10 from lab-support
fun encryptor10(s :: String) -> String:
  hidden.encryptor10(s)
end
#testing strings
encryptor10("Hello.")
encryptor10("snake")

#recreating encryptor 1
fun my-encryptor1(s :: String) -> String:
  doc:"repeats input 5 times"
  string-repeat(s, 5)
end 
#calling encryptor 1
my-encryptor1("Hello.")
#importing test function
fun test-encryptor1(encryptor :: (String -> String)) -> String:
  hidden.test-encryptor3(encryptor)
where:
  test-encryptor1(encryptor1) is "4/4 tests passed!"
end
#calling test function
test-encryptor1(my-encryptor1)

#recreating encryptor 2
fun my-encryptor2(s :: String) -> String:
  doc: "takes first 4 characters and prints"
  string-substring(s, 0, 4)
end
#calling encryptor 2
my-encryptor2("Hello.")
#importing test function
fun test-encryptor2(encryptor :: (String -> String)) -> String:
  hidden.test-encryptor2(encryptor)
where:
  test-encryptor2(encryptor2) is "4/4 tests passed!"
end
#calling test function
test-encryptor2(my-encryptor2)

#recreating encryptor 3
fun my-encryptor3(s :: String) -> String:
  doc: "changes full stop to exclamation mark"
  string-replace(s, ".", "!")
end 
#calling encryptor 3
my-encryptor3("Hello.")
#importing test function
fun test-encryptor3(encryptor :: (String -> String)):
  hidden.test-encryptor1(encryptor)
where:
  test-encryptor3(encryptor3) is "5/5 tests passed!"
end
#calling test function
test-encryptor3(my-encryptor3)

#recreating encryptor 4
fun my-encryptor4(s :: String) -> String:
  doc: "takes first 4 characters and repeats 5 times"
  m = my-encryptor2(s)
  my-encryptor1(m)
end
#calls function
my-encryptor4("Hello.")
#importing test function
fun test-encryptor4(encryptor :: (String -> String)):
  hidden.test-encryptor4(encryptor)
where:
  test-encryptor4(encryptor4) is "5/5 tests passed!"
end
#calling test function
test-encryptor4(my-encryptor4)

#recreating encryptor 5
fun my-encryptor5(s :: String) -> String:
  doc: "replaces every vowel with next letter in alphabet"
  if string-contains(s, "a"):
    string-replace(s, "a", "b")
  else if string-contains(s, "e"):
    string-replace(s, "e", "f")
  else if string-contains(s, "i"):
    string-replace(s, "i", "j")
  else if string-contains(s, "o"):
    string-replace(s, "o", "p")
  else if string-contains(s, "u"):
    string-replace(s, "u", "v")
  else:
    print(s)
  end
end
#calls function
my-encryptor5("Hello.")
  
    

