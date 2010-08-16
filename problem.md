The Very Hungry Caterpillar's Dilemma
=====================================

The very hungry caterpillar is very hungry (I know, surprising). He is sitting
on a branch contemplating how to eat the most leaves without having to turn
around (he's kind of lazy too). After eating all the leaves on the current
branch he is on, he can look ahead and see the next two branches and how many
leaves they each have, before picking on an moving along. Given the branches
below, can you help the very hungry caterpillar find the path which will allow
him to eat the most leaves? You should be able to do this in your head or on
some scratch paper.

       3 <--- start here
      7 4
     2 4 6
    8 5 9 3

Oh no! The very hungry caterpillar, after eating through the above branches
you so expertly helped him navigate through, has fallen below to an even larger
branch. He needs your help gain. This time, can you find the total number of
leaves the very hungry caterpillar will have eaten if he follows the optimal
path? You might want to write a simple brute force Ruby program to help you.

                                75 <--- start here
                              95  64
                            17  47  82
                          18  35  87  10
                        20  04  82  47  65
                      19  01  23  75  03  34
                    88  02  77  73  07  63  67
                  99  65  04  28  06  16  70  92
                41  41  26  56  83  40  80  70  33
              41  48  72  33  47  32  37  16  94  29
            53  71  44  65  25  43  91  52  97  51  14
          70  11  33  28  77  73  17  78  39  68  17  57
        91  71  52  38  17  14  91  43  58  50  27  29  48
      63  66  04  68  89  53  67  30  73  16  69  87  40  31
    04  62  98  27  23  09  70  98  73  93  38  53  60  04  23

He's done it again. That silly caterpillar has fallen even further down to the
tree to the biggest set of branches he's ever seen in his short, and very
hungry, life. He's going to really need help now if he hopes to eat is way
through the most efficient path here. It's time for another Ruby program, only
this time it will have to make use of a good A* algorithm, otherwise it won't
complete before the very hungry caterpillar has to make his cocoon. How many
leaves will the very hungry caterpillar have eaten by the time he's done with
this set of branches?

Branches Files
==============

You can find the final set of branches in `branches3.json`. You will also find
the first two sets of branches in `branches1.json` and `branches2.json`. You
can load the branches files using the code below.

    require 'json'
    branches = JSON.parse(File.read('branches1.json'))
