
(define (domain rubik_3x3)

    (:requirements :strips :typing :equality)

    (:types
        squareColor - object
    )

    (:predicates
        ; Blue face
        (topColor 
            ?t1 ?t2 ?t3
            ?t4 ?t5 ?t6
            ?t7 ?t8 ?t9
        )

        ; Red face
        (frontColor
            ?f1 ?f2 ?f3
            ?f4 ?f5 ?f6
            ?f7 ?f8 ?f9
        )

        ; Yellow face
        (rightColor
            ?r1 ?r2 ?r3 
            ?r4 ?r5 ?r6 
            ?r7 ?r8 ?r9
        )

        ; Orange face
        (backColor 
            ?b1 ?b2 ?b3 
            ?b4 ?b5 ?b6 
            ?b7 ?b8 ?b9
        )

        ; White face
        (leftColor 
            ?l1 ?l2 ?l3 
            ?l4 ?l5 ?l6 
            ?l7 ?l8 ?l9
        )

        ; Green face
        (downColor 
            ?d1 ?d2 ?d3 
            ?d4 ?d5 ?d6 
            ?d7 ?d8 ?d9
        )
    )

    (:action right-move

        :parameters (
            ?t1 ?t2 ?t3 ?t4 ?t5 ?t6 ?t7 ?t8 ?t9
            ?f1 ?f2 ?f3 ?f4 ?f5 ?f6 ?f7 ?f8 ?f9
            ?r1 ?r2 ?r3 ?r4 ?r5 ?r6 ?r7 ?r8 ?r9
            ?b1 ?b2 ?b3 ?b4 ?b5 ?b6 ?b7 ?b8 ?b9
            ?d1 ?d2 ?d3 ?d4 ?d5 ?d6 ?d7 ?d8 ?d9 - squareColor
        )

        :precondition (and
            (topColor 
                ?t1 ?t2 ?t3
                ?t4 ?t5 ?t6
                ?t7 ?t8 ?t9
            )

            (frontColor
                ?f1 ?f2 ?f3
                ?f4 ?f5 ?f6
                ?f7 ?f8 ?f9
            )

            (rightColor
                ?r1 ?r2 ?r3 
                ?r4 ?r5 ?r6 
                ?r7 ?r8 ?r9
            )

            (backColor 
                ?b1 ?b2 ?b3 
                ?b4 ?b5 ?b6 
                ?b7 ?b8 ?b9
            )

            (downColor 
                ?d1 ?d2 ?d3 
                ?d4 ?d5 ?d6 
                ?d7 ?d8 ?d9
            )
        )

        :effect (and 
            (topColor
                ?t1 ?t2 ?f3
                ?t4 ?t5 ?f6
                ?t7 ?t8 ?f9
            )

            (frontColor 
                ?f1 ?f2 ?d3
                ?f4 ?f5 ?d6
                ?f7 ?f8 ?d9
            )

            (backColor 
                ?t3 ?b2 ?b3
                ?t6 ?b5 ?b6
                ?t9 ?b8 ?b9
            )

            (downColor 
                ?d1 ?d2 ?b1
                ?d4 ?d5 ?b4
                ?d7 ?d8 ?b7
            )

            (rightColor 
                ?r7 ?r4 ?r1
                ?r8 ?r5 ?r2
                ?r9 ?r6 ?r3
            )
        )

    )

)