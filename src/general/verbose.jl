verbose=1

export setverbose

"""
    setverbose(v::Int)

Set the verbose level. If v is higher, more information will be printed during the calculation.
"""
function setverbose(v::Int)
   global verbose = v
end
