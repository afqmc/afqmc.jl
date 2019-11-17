# Hamiltonian

  In AFQMC, we always deal with Hamiltonians in the form:
```math
H=K+\sum_{\gamma}{V_\gamma L^2_\gamma}+C,
``` 
where ``K`` and ``L_\gamma`` are one body operators, ``V_r`` is a number represents interacting energy, and ``C`` is a constant energy shift.

In the spinless model, one body operators looks like

```math
O_{1s} = \sum_{ij} O_{ij} c^{\dagger}_i c_j,
```
and one body operators with two spin components have the form
```math
O_{2s} = \sum_{ij} O_{ij\uparrow} c^{\dagger}_{i\uparrow} c_{j\uparrow} + \sum_{ij} O_{ij\downarrow} c^{\dagger}_{i\downarrow} c_{j\downarrow}.
```
If we expand ``L^2_\gamma``, the two body operator will have the order``c^\dagger c c^\dagger c``. However, we might want to use the normal product order ``c^\dagger c^\dagger c c`` in some cases. A permutation is applied to two body operator term, which will change the ``K`` to ``Kp``.

Inside a Hamiltonian structure, you will find
  * ``K``: Matrix
  * ``L``: 3-rank tensor
  * ``V``: Vector
  * ``C``: number
  *  ``Kp``: Matrix
They might be tuples if there are multiple spin components.

## Notation

   We are interested in the strongly-correlated many-electron problems from the lattice model to real materials, where one body operators can be in the sparse matrix or the full matrix format, meanwhile the Hamiltonian can have different spin components. We use the following name notations:

   * ``H``: one body operators are stored in the full matrix format, usually for real materials.
   * ``M``: one body operators are stored in the sparse matrix format, usually for lattice model.
   * ``ns``: ``n`` spin components, e.g. ``1s``, ``2s``.
   * ``nis``: ``n`` identical spin components, e.g. ``2is`` will have ``O_{ij\uparrow} == O_{ij\downarrow} ``
   
   For example, 
   * ``H2is`` is a full matrix Hamiltonians with ``2`` identical spin components
   * ``M2s`` is a sparse matrix Hamiltonians with ``2`` spin components. 

   Note, we can create other Hamiltonians instead ``H`` and ``M`` to adopt more features, e.g. ``FG`` for Fermi gas problems which use `FFTW` for one body kinetic term.
