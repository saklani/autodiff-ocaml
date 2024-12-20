type v = { id : int; value : float; local_gradients : (v * (v -> v)) list }

module VariableHashtbl : sig
  type 'a t
end

val make : ?local_gradients:(v * (v -> v)) list -> float -> v
(* Create the variable from a Tensor *)

val zero : unit -> v
(* Create a variable with 0 value*)

val one : unit -> v
(* Create a variable with 0 value*)

val random : unit -> v
(* Create a variable with random value*)

val add : v -> v -> v
(* Create the variable that results from adding two variables *)

val mul : v -> v -> v
(* Create the variable that results from multiplying two variables *)

val div : v -> v -> v
(* Create the variable that results from multiplying two variables *)

val neg : v -> v
(* Negate the variable *)

val inv : v -> v
(* Inverse of the variable *)

val sub : v -> v -> v
(* Create the variable that results from subtracting two variables *)

val pow : v -> v -> v
(* Power of the variable *)

val compare : v -> v -> int
(* Compare two variable float values *)

val equal : v -> v -> bool
(* Check if two variable float values are equal*)

val sin : v -> v
(* Sine of the variable *)

val cos : v -> v
(* Cosine of the variable *)

val tan : v -> v
(* Tangent of the variable *)

val exp : v -> v
(* exp of the variable *)

val log : v -> v
(* log of the variable *)

val gradients : v -> v VariableHashtbl.t
(* Compute the *local gradients* of all the variable *)

val find : v VariableHashtbl.t -> v -> v
(* Find the local gradient of a variable *)

val print_table : v VariableHashtbl.t -> unit
val print : v -> unit
val ( + ) : v -> v -> v
val ( - ) : v -> v -> v
val ( * ) : v -> v -> v
val ( / ) : v -> v -> v
val ( ** ) : v -> v -> v
val ( = ) : v -> v -> bool
