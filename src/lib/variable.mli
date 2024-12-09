type v = { id : int; value : float; local_gradients : (v * float) list }

module VariableHashtbl : sig
  type 'a t
end

val make : ?local_gradients:(v * float) list -> float -> v
(* Create the variable from a Tensor *)

val zero : unit -> v
(* Create a variable with 0 value*)

val one : unit -> v
(* Create a variable with 0 value*)

val random : unit -> v
(* Create a variable with random value*)

val neg : v -> v
(* Negate the variable *)

val inv : v -> v
(* Invert the variable *)

val sin : v -> v
(* Sine of the variable *)

val cos : v -> v
(* Cosine of the variable *)

val tan : v -> v
(* Tangent of the variable *)

val exp : v -> v
(* exp of the variable *)

val log : v -> v
(* exp of the variable *)

val pow : v -> float -> v
(* exp of the variable *)

val add : v -> v -> v
(* Create the variable that results from adding two variables *)

val sub : v -> v -> v
(* Create the variable that results from subtracting two variables *)

val mul : v -> v -> v
(* Create the variable that results from multiplying two variables *)

val div : v -> v -> v
(* Create the variable that results from multiplying two variables *)

val compare : v -> v -> int
val equal : v -> v -> bool
val gradients : v -> float VariableHashtbl.t
(* Compute the *local gradients* of all the variable *)

val find : float VariableHashtbl.t -> v -> float
(* Find the local gradient of a variable *)

val ( + ) : v -> v -> v
val ( - ) : v -> v -> v
val ( * ) : v -> v -> v
val ( / ) : v -> v -> v
val ( ** ) : v -> float -> v
val ( = ) : v -> v -> bool
val print_table : float VariableHashtbl.t -> unit
val print : v -> unit
