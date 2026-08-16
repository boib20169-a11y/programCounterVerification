# Summary
Verification of Program Counter with UVM. The latest commit fixed the input which causes the racing condition. The input stimulus for the ld, inc, and other inputs is random, but he propagation delay of the assignment of Q is not an issue because
the assignment has been made non-blocking for consistent Q assignment from after the propagation delay to the actual assignment of Q.
