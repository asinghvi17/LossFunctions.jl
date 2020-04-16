module LossFunctions

import Base.*
using Base.Cartesian
using Markdown
using SparseArrays
using InteractiveUtils
using RecipesBase

import LearnBase.AggMode
import LearnBase.ObsDim
import LearnBase:
    AggregateMode,
    Loss, SupervisedLoss,
    DistanceLoss, MarginLoss,
    value, value!,
    deriv, deriv!,
    deriv2, deriv2!,
    isdistancebased, ismarginbased,
    isminimizable, isdifferentiable,
    istwicedifferentiable,
    isconvex, isstrictlyconvex,
    isstronglyconvex, isnemitski,
    isunivfishercons, isfishercons,
    islipschitzcont, islocallylipschitzcont,
    isclipable, isclasscalibrated

# for maintainers
include("devutils.jl")

# supervised losses
include("supervised.jl")

# IO and plot recipes
include("printing.jl")
include("plotrecipes.jl")

# deprecations
@deprecate OrdinalHingeLoss OrdinalMarginLoss{HingeLoss}

export
    # loss API
    Loss,
    SupervisedLoss,
    MarginLoss,
    DistanceLoss,
    value, value!,
    deriv, deriv!,
    deriv2, deriv2!,
    isdistancebased, ismarginbased,
    isminimizable, isdifferentiable,
    istwicedifferentiable,
    isconvex, isstrictlyconvex,
    isstronglyconvex, isnemitski,
    isunivfishercons, isfishercons,
    islipschitzcont, islocallylipschitzcont,
    isclipable, isclasscalibrated,

    # relevant submodules
    AggMode, ObsDim,

    # margin-based losses
    ZeroOneLoss,
    LogitMarginLoss,
    PerceptronLoss,
    HingeLoss,
    L1HingeLoss,
    L2HingeLoss,
    SmoothedL1HingeLoss,
    ModifiedHuberLoss,
    L2MarginLoss,
    ExpLoss,
    SigmoidLoss,
    DWDMarginLoss,
    OrdinalMarginLoss,
    WeightedMarginLoss,

    # distance-based losses
    LPDistLoss,
    L1DistLoss,
    L2DistLoss,
    PeriodicLoss,
    HuberLoss,
    EpsilonInsLoss,
    L1EpsilonInsLoss,
    L2EpsilonInsLoss,
    LogitDistLoss,
    QuantileLoss,
    PinballLoss,

    # other losses
    MisclassLoss,
    PoissonLoss,
    LogitProbLoss,
    CrossEntropyLoss

end # module
