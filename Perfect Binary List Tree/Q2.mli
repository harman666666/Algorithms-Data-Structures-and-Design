type 'a tree = Leaf of 'a 
               | Node of int * 'a tree * 'a tree
type 'a digit = Zero | One of 'a tree
type 'a sequence = 'a digit list
        
(*
type 'a sequence
 *)

val empty : 'a sequence
val isEmpty : 'a sequence -> bool
val extend : 'a -> 'a sequence -> 'a sequence
val first : 'a sequence -> 'a option
val rest : 'a sequence -> 'a sequence option 
val index : int -> 'a sequence -> 'a option