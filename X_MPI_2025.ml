let rec contain i l =
  match l with 
  |t::q when t==i -> true
  |t::q -> contain i q
  |[] -> false

let rec del l1 l2 =
  match l1 with
  |t::q when (contain t l2) -> (del q l2)
  |t::q -> t::del q l2
  |[] -> []

let a= del [1;4;8;9] [2;4;10];;

let b = List.assoc 4 [(2,10);(4,40);(10,80)] 
    
        (*Question 2*)
let rec keys pairl =
  match pairl with 
  |(l1,l2)::q -> l2::(keys q)
  |[] -> []
         
let c = keys [(2,10);(4,40);(10,80)];;

type graphe = (int * (int list)) list;;

let rec couplage l =
  match l with
  |(a,b)::q -> a::b::(couplage q)
  |[] -> []
         
let d = couplage [(1,2);(4,5)];;


(*Q9*)
let rec separer chem =
  let sep t chem in =
  match chem with
  |h1::q when t ==[] -> let a,b = separer1 a q in
  |[t] -> 
      
      
