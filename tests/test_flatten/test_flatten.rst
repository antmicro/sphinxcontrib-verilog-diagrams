Test Flatten Option
===================

This test checks whether the ``:flatten:`` option in the ``verilog-diagram``
directive works as intended. The ``:flatten:`` option is used to resolve
the black boxes created by Yosys in place of instantiated modules.
With this option enabled Yosys will convert everything into low-level logic
where only basic logic cells and basic FPGA primitives will be used.

Netlistsvg Diagram
------------------

Here is the diagram of a half-adder with its RST code::

   .. verilog-diagram:: halfAdder.v
      :type: netlistsvg
      :module: halfAdder

.. verilog-diagram:: halfAdder.v
   :type: netlistsvg
   :module: halfAdder

The diagram below has been created without the ``:flatten:`` option::

   .. verilog-diagram:: fullAdder.v
      :type: netlistsvg
      :module: fullAdder

.. verilog-diagram:: fullAdder.v
   :type: netlistsvg
   :module: fullAdder

The diagram below has been created using the ``:flatten:`` option.
You can see that the ``halfAdder`` black box is substituted by the appropriate
logic elements::

   .. verilog-diagram:: fullAdder.v
      :type: netlistsvg
      :module: fullAdder
      :flatten:

.. verilog-diagram:: fullAdder.v
   :type: netlistsvg
   :module: fullAdder
   :flatten:

Yosys BlackBox Diagram
----------------------

Here is the diagram of a half-adder with its RST code::

   .. verilog-diagram:: halfAdder.v
      :type: yosys-blackbox
      :module: halfAdder

.. verilog-diagram:: halfAdder.v
   :type: yosys-blackbox
   :module: halfAdder

The diagram below has been created without the ``:flatten:`` option::

   .. verilog-diagram:: fullAdder.v
      :type: yosys-blackbox
      :module: fullAdder

.. verilog-diagram:: fullAdder.v
   :type: yosys-blackbox
   :module: fullAdder

The diagram below has been created using the ``:flatten:`` option.
You can see that the ``halfAdder`` black box is substituted by the appropriate
logic elements::

   .. verilog-diagram:: fullAdder.v
      :type: yosys-blackbox
      :module: fullAdder
      :flatten:

.. verilog-diagram:: fullAdder.v
   :type: yosys-blackbox
   :module: fullAdder
   :flatten:

Yosys AIG Diagram
-----------------

Here is the diagram of a half-adder with its RST code::

   .. verilog-diagram:: halfAdder.v
      :type: yosys-aig
      :module: halfAdder

.. verilog-diagram:: halfAdder.v
   :type: yosys-aig
   :module: halfAdder

The diagram below has been created without the ``:flatten:`` option::

   .. verilog-diagram:: fullAdder.v
      :type: yosys-aig
      :module: fullAdder

.. verilog-diagram:: fullAdder.v
   :type: yosys-aig
   :module: fullAdder

The diagram below has been created using the ``:flatten:`` option.
You can see that the ``halfAdder`` black box is substituted by the appropriate
logic elements::

   .. verilog-diagram:: fullAdder.v
      :type: yosys-aig
      :module: fullAdder
      :flatten:

.. verilog-diagram:: fullAdder.v
   :type: yosys-aig
   :module: fullAdder
   :flatten:
