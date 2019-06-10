module InfOpt

# Import the necessary packages.
import JuMP
import MathOptInterface
const MOI = MathOptInterface
import Distributions

# Export model object datatype
export InfiniteModel

# Export macros and constants
export @infinite_variable, @point_variable, @global_variable, Infinite, Global,
Point

# Export variable datatypes
export InfOptVariable, GeneralVariableRef, InfiniteVariableRef,
MeasureFiniteVariableRef, FiniteVariableRef, PointVariableRef, GlobalVariableRef

# Export infinite parameter set types
export AbstractInfiniteSet, BoxSet, DistributionSet, DiscreteSet

# Export infinite parameter functions
export get_infinite_set, set_infinite_set, add_infinite_set

# Export constraint datatypes
export GeneralConstraintRef, InfiniteConstraintRef, MeasureConstraintRef,
FiniteConstraintRef

# Export measure datatypes
export AbstractMeasureData, DiscretizeData, Measure, MeasureRef

# Export measure methods
export add_measure, measure

# Import all of the datatpyes, methods, and definitions.
include("datatypes.jl")
include("variables.jl")
include("measure.jl")
include("expressions.jl")
include("operators.jl")
include("constraints.jl")
include("objective.jl")
include("macros.jl")
include("show.jl")

end # module
