ģ
Ŗ))
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	
A
AddV2
x"T
y"T
z"T"
Ttype:
2	
ī
	ApplyAdam
var"T	
m"T	
v"T
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"T" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
I
ConcatOffset

concat_dim
shape*N
offset*N"
Nint(0
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
,
Exp
x"T
y"T"
Ttype:

2
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
9
FloorMod
x"T
y"T
z"T"
Ttype:

2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
,
Log
x"T
y"T"
Ttype:

2
?

LogSoftmax
logits"T

logsoftmax"T"
Ttype:
2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
8
Maximum
x"T
y"T
z"T"
Ttype:

2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	
Ø
Multinomial
logits"T
num_samples
output"output_dtype"
seedint "
seed2int "
Ttype:
2	" 
output_dtypetype0	:
2	
.
Neg
x"T
y"T"
Ttype:

2	

NoOp

OneHot
indices"TI	
depth
on_value"T
	off_value"T
output"T"
axisint’’’’’’’’’"	
Ttype"
TItype0	:
2	
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
6
Pow
x"T
y"T
z"T"
Ttype:

2	

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
PyFunc
input2Tin
output2Tout"
tokenstring"
Tin
list(type)("
Tout
list(type)(
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	

SplitV

value"T
size_splits"Tlen
	split_dim
output"T*	num_split"
	num_splitint(0"	
Ttype"
Tlentype0	:
2	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
-
Tanh
x"T
y"T"
Ttype:

2
:
TanhGrad
y"T
dy"T
z"T"
Ttype:

2
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring 
&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.15.22v1.15.0-92-g5d80e1e©
n
PlaceholderPlaceholder*
dtype0*'
_output_shapes
:’’’’’’’’’*
shape:’’’’’’’’’
h
Placeholder_1Placeholder*
dtype0*#
_output_shapes
:’’’’’’’’’*
shape:’’’’’’’’’
h
Placeholder_2Placeholder*
shape:’’’’’’’’’*
dtype0*#
_output_shapes
:’’’’’’’’’
h
Placeholder_3Placeholder*
shape:’’’’’’’’’*
dtype0*#
_output_shapes
:’’’’’’’’’
h
Placeholder_4Placeholder*
shape:’’’’’’’’’*
dtype0*#
_output_shapes
:’’’’’’’’’
„
0pi/dense/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*
valueB"       *"
_class
loc:@pi/dense/kernel*
dtype0

.pi/dense/kernel/Initializer/random_uniform/minConst*
valueB
 *ųKĘ¾*"
_class
loc:@pi/dense/kernel*
dtype0*
_output_shapes
: 

.pi/dense/kernel/Initializer/random_uniform/maxConst*
valueB
 *ųKĘ>*"
_class
loc:@pi/dense/kernel*
dtype0*
_output_shapes
: 
ī
8pi/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform0pi/dense/kernel/Initializer/random_uniform/shape*"
_class
loc:@pi/dense/kernel*
seed2*
dtype0*
_output_shapes

: *

seed
*
T0
Ś
.pi/dense/kernel/Initializer/random_uniform/subSub.pi/dense/kernel/Initializer/random_uniform/max.pi/dense/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@pi/dense/kernel*
_output_shapes
: 
ģ
.pi/dense/kernel/Initializer/random_uniform/mulMul8pi/dense/kernel/Initializer/random_uniform/RandomUniform.pi/dense/kernel/Initializer/random_uniform/sub*
_output_shapes

: *
T0*"
_class
loc:@pi/dense/kernel
Ž
*pi/dense/kernel/Initializer/random_uniformAdd.pi/dense/kernel/Initializer/random_uniform/mul.pi/dense/kernel/Initializer/random_uniform/min*
_output_shapes

: *
T0*"
_class
loc:@pi/dense/kernel
§
pi/dense/kernel
VariableV2*
dtype0*
_output_shapes

: *
shared_name *"
_class
loc:@pi/dense/kernel*
	container *
shape
: 
Ó
pi/dense/kernel/AssignAssignpi/dense/kernel*pi/dense/kernel/Initializer/random_uniform*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
~
pi/dense/kernel/readIdentitypi/dense/kernel*
T0*"
_class
loc:@pi/dense/kernel*
_output_shapes

: 

pi/dense/bias/Initializer/zerosConst*
valueB *    * 
_class
loc:@pi/dense/bias*
dtype0*
_output_shapes
: 

pi/dense/bias
VariableV2*
shared_name * 
_class
loc:@pi/dense/bias*
	container *
shape: *
dtype0*
_output_shapes
: 
¾
pi/dense/bias/AssignAssignpi/dense/biaspi/dense/bias/Initializer/zeros*
_output_shapes
: *
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(
t
pi/dense/bias/readIdentitypi/dense/bias*
T0* 
_class
loc:@pi/dense/bias*
_output_shapes
: 

pi/dense/MatMulMatMulPlaceholderpi/dense/kernel/read*
T0*'
_output_shapes
:’’’’’’’’’ *
transpose_a( *
transpose_b( 

pi/dense/BiasAddBiasAddpi/dense/MatMulpi/dense/bias/read*'
_output_shapes
:’’’’’’’’’ *
T0*
data_formatNHWC
Y
pi/dense/TanhTanhpi/dense/BiasAdd*'
_output_shapes
:’’’’’’’’’ *
T0
©
2pi/dense_1/kernel/Initializer/random_uniform/shapeConst*
valueB"       *$
_class
loc:@pi/dense_1/kernel*
dtype0*
_output_shapes
:

0pi/dense_1/kernel/Initializer/random_uniform/minConst*
valueB
 *ģŃ¾*$
_class
loc:@pi/dense_1/kernel*
dtype0*
_output_shapes
: 

0pi/dense_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *ģŃ>*$
_class
loc:@pi/dense_1/kernel*
dtype0*
_output_shapes
: 
ō
:pi/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform2pi/dense_1/kernel/Initializer/random_uniform/shape*
T0*$
_class
loc:@pi/dense_1/kernel*
seed2*
dtype0*
_output_shapes

: *

seed

ā
0pi/dense_1/kernel/Initializer/random_uniform/subSub0pi/dense_1/kernel/Initializer/random_uniform/max0pi/dense_1/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes
: 
ō
0pi/dense_1/kernel/Initializer/random_uniform/mulMul:pi/dense_1/kernel/Initializer/random_uniform/RandomUniform0pi/dense_1/kernel/Initializer/random_uniform/sub*
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

: 
ę
,pi/dense_1/kernel/Initializer/random_uniformAdd0pi/dense_1/kernel/Initializer/random_uniform/mul0pi/dense_1/kernel/Initializer/random_uniform/min*
_output_shapes

: *
T0*$
_class
loc:@pi/dense_1/kernel
«
pi/dense_1/kernel
VariableV2*
	container *
shape
: *
dtype0*
_output_shapes

: *
shared_name *$
_class
loc:@pi/dense_1/kernel
Ū
pi/dense_1/kernel/AssignAssignpi/dense_1/kernel,pi/dense_1/kernel/Initializer/random_uniform*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: 

pi/dense_1/kernel/readIdentitypi/dense_1/kernel*
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

: 

!pi/dense_1/bias/Initializer/zerosConst*
valueB*    *"
_class
loc:@pi/dense_1/bias*
dtype0*
_output_shapes
:

pi/dense_1/bias
VariableV2*
shared_name *"
_class
loc:@pi/dense_1/bias*
	container *
shape:*
dtype0*
_output_shapes
:
Ę
pi/dense_1/bias/AssignAssignpi/dense_1/bias!pi/dense_1/bias/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:
z
pi/dense_1/bias/readIdentitypi/dense_1/bias*
T0*"
_class
loc:@pi/dense_1/bias*
_output_shapes
:

pi/dense_1/MatMulMatMulpi/dense/Tanhpi/dense_1/kernel/read*'
_output_shapes
:’’’’’’’’’*
transpose_a( *
transpose_b( *
T0

pi/dense_1/BiasAddBiasAddpi/dense_1/MatMulpi/dense_1/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:’’’’’’’’’
a
pi/LogSoftmax
LogSoftmaxpi/dense_1/BiasAdd*'
_output_shapes
:’’’’’’’’’*
T0
h
&pi/multinomial/Multinomial/num_samplesConst*
_output_shapes
: *
value	B :*
dtype0
Ä
pi/multinomial/MultinomialMultinomialpi/dense_1/BiasAdd&pi/multinomial/Multinomial/num_samples*'
_output_shapes
:’’’’’’’’’*
seed2'*

seed
*
output_dtype0	*
T0
v

pi/SqueezeSqueezepi/multinomial/Multinomial*
T0	*#
_output_shapes
:’’’’’’’’’*
squeeze_dims

X
pi/one_hot/on_valueConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Y
pi/one_hot/off_valueConst*
_output_shapes
: *
valueB
 *    *
dtype0
R
pi/one_hot/depthConst*
value	B :*
dtype0*
_output_shapes
: 
±

pi/one_hotOneHotPlaceholder_1pi/one_hot/depthpi/one_hot/on_valuepi/one_hot/off_value*
T0*
axis’’’’’’’’’*
TI0*'
_output_shapes
:’’’’’’’’’
Z
pi/mulMul
pi/one_hotpi/LogSoftmax*'
_output_shapes
:’’’’’’’’’*
T0
Z
pi/Sum/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
z
pi/SumSumpi/mulpi/Sum/reduction_indices*
	keep_dims( *

Tidx0*
T0*#
_output_shapes
:’’’’’’’’’
Z
pi/one_hot_1/on_valueConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
[
pi/one_hot_1/off_valueConst*
_output_shapes
: *
valueB
 *    *
dtype0
T
pi/one_hot_1/depthConst*
_output_shapes
: *
value	B :*
dtype0
¶
pi/one_hot_1OneHot
pi/Squeezepi/one_hot_1/depthpi/one_hot_1/on_valuepi/one_hot_1/off_value*
T0*
axis’’’’’’’’’*
TI0	*'
_output_shapes
:’’’’’’’’’
^
pi/mul_1Mulpi/one_hot_1pi/LogSoftmax*
T0*'
_output_shapes
:’’’’’’’’’
\
pi/Sum_1/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 

pi/Sum_1Sumpi/mul_1pi/Sum_1/reduction_indices*#
_output_shapes
:’’’’’’’’’*
	keep_dims( *

Tidx0*
T0
q
pi/PlaceholderPlaceholder*
dtype0*'
_output_shapes
:’’’’’’’’’*
shape:’’’’’’’’’
O
pi/ExpExppi/Placeholder*'
_output_shapes
:’’’’’’’’’*
T0
^
pi/subSubpi/Placeholderpi/LogSoftmax*'
_output_shapes
:’’’’’’’’’*
T0
Q
pi/mul_2Mulpi/Exppi/sub*'
_output_shapes
:’’’’’’’’’*
T0
\
pi/Sum_2/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 

pi/Sum_2Sumpi/mul_2pi/Sum_2/reduction_indices*
	keep_dims( *

Tidx0*
T0*#
_output_shapes
:’’’’’’’’’
R
pi/ConstConst*
valueB: *
dtype0*
_output_shapes
:
a
pi/MeanMeanpi/Sum_2pi/Const*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
£
/v/dense/kernel/Initializer/random_uniform/shapeConst*
valueB"       *!
_class
loc:@v/dense/kernel*
dtype0*
_output_shapes
:

-v/dense/kernel/Initializer/random_uniform/minConst*
valueB
 *ųKĘ¾*!
_class
loc:@v/dense/kernel*
dtype0*
_output_shapes
: 

-v/dense/kernel/Initializer/random_uniform/maxConst*
valueB
 *ųKĘ>*!
_class
loc:@v/dense/kernel*
dtype0*
_output_shapes
: 
ė
7v/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform/v/dense/kernel/Initializer/random_uniform/shape*!
_class
loc:@v/dense/kernel*
seed2C*
dtype0*
_output_shapes

: *

seed
*
T0
Ö
-v/dense/kernel/Initializer/random_uniform/subSub-v/dense/kernel/Initializer/random_uniform/max-v/dense/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@v/dense/kernel*
_output_shapes
: 
č
-v/dense/kernel/Initializer/random_uniform/mulMul7v/dense/kernel/Initializer/random_uniform/RandomUniform-v/dense/kernel/Initializer/random_uniform/sub*!
_class
loc:@v/dense/kernel*
_output_shapes

: *
T0
Ś
)v/dense/kernel/Initializer/random_uniformAdd-v/dense/kernel/Initializer/random_uniform/mul-v/dense/kernel/Initializer/random_uniform/min*
T0*!
_class
loc:@v/dense/kernel*
_output_shapes

: 
„
v/dense/kernel
VariableV2*
dtype0*
_output_shapes

: *
shared_name *!
_class
loc:@v/dense/kernel*
	container *
shape
: 
Ļ
v/dense/kernel/AssignAssignv/dense/kernel)v/dense/kernel/Initializer/random_uniform*
_output_shapes

: *
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(
{
v/dense/kernel/readIdentityv/dense/kernel*
T0*!
_class
loc:@v/dense/kernel*
_output_shapes

: 

v/dense/bias/Initializer/zerosConst*
_output_shapes
: *
valueB *    *
_class
loc:@v/dense/bias*
dtype0

v/dense/bias
VariableV2*
_class
loc:@v/dense/bias*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 
ŗ
v/dense/bias/AssignAssignv/dense/biasv/dense/bias/Initializer/zeros*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
q
v/dense/bias/readIdentityv/dense/bias*
_class
loc:@v/dense/bias*
_output_shapes
: *
T0

v/dense/MatMulMatMulPlaceholderv/dense/kernel/read*'
_output_shapes
:’’’’’’’’’ *
transpose_a( *
transpose_b( *
T0

v/dense/BiasAddBiasAddv/dense/MatMulv/dense/bias/read*'
_output_shapes
:’’’’’’’’’ *
T0*
data_formatNHWC
W
v/dense/TanhTanhv/dense/BiasAdd*'
_output_shapes
:’’’’’’’’’ *
T0
§
1v/dense_1/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*
valueB"       *#
_class
loc:@v/dense_1/kernel*
dtype0

/v/dense_1/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *
valueB
 *JQŚ¾*#
_class
loc:@v/dense_1/kernel*
dtype0

/v/dense_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *JQŚ>*#
_class
loc:@v/dense_1/kernel*
dtype0*
_output_shapes
: 
ń
9v/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform1v/dense_1/kernel/Initializer/random_uniform/shape*

seed
*
T0*#
_class
loc:@v/dense_1/kernel*
seed2T*
dtype0*
_output_shapes

: 
Ž
/v/dense_1/kernel/Initializer/random_uniform/subSub/v/dense_1/kernel/Initializer/random_uniform/max/v/dense_1/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*#
_class
loc:@v/dense_1/kernel
š
/v/dense_1/kernel/Initializer/random_uniform/mulMul9v/dense_1/kernel/Initializer/random_uniform/RandomUniform/v/dense_1/kernel/Initializer/random_uniform/sub*
_output_shapes

: *
T0*#
_class
loc:@v/dense_1/kernel
ā
+v/dense_1/kernel/Initializer/random_uniformAdd/v/dense_1/kernel/Initializer/random_uniform/mul/v/dense_1/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@v/dense_1/kernel*
_output_shapes

: 
©
v/dense_1/kernel
VariableV2*
dtype0*
_output_shapes

: *
shared_name *#
_class
loc:@v/dense_1/kernel*
	container *
shape
: 
×
v/dense_1/kernel/AssignAssignv/dense_1/kernel+v/dense_1/kernel/Initializer/random_uniform*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 

v/dense_1/kernel/readIdentityv/dense_1/kernel*
_output_shapes

: *
T0*#
_class
loc:@v/dense_1/kernel

 v/dense_1/bias/Initializer/zerosConst*
valueB*    *!
_class
loc:@v/dense_1/bias*
dtype0*
_output_shapes
:

v/dense_1/bias
VariableV2*!
_class
loc:@v/dense_1/bias*
	container *
shape:*
dtype0*
_output_shapes
:*
shared_name 
Ā
v/dense_1/bias/AssignAssignv/dense_1/bias v/dense_1/bias/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
w
v/dense_1/bias/readIdentityv/dense_1/bias*
T0*!
_class
loc:@v/dense_1/bias*
_output_shapes
:

v/dense_1/MatMulMatMulv/dense/Tanhv/dense_1/kernel/read*
T0*'
_output_shapes
:’’’’’’’’’*
transpose_a( *
transpose_b( 

v/dense_1/BiasAddBiasAddv/dense_1/MatMulv/dense_1/bias/read*
data_formatNHWC*'
_output_shapes
:’’’’’’’’’*
T0
l
	v/SqueezeSqueezev/dense_1/BiasAdd*#
_output_shapes
:’’’’’’’’’*
squeeze_dims
*
T0
O
subSubpi/SumPlaceholder_4*#
_output_shapes
:’’’’’’’’’*
T0
=
ExpExpsub*#
_output_shapes
:’’’’’’’’’*
T0
L
mulMulExpPlaceholder_2*
T0*#
_output_shapes
:’’’’’’’’’
O
ConstConst*
valueB: *
dtype0*
_output_shapes
:
V
MeanMeanmulConst*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
1
NegNegMean*
_output_shapes
: *
T0
T
sub_1SubPlaceholder_3	v/Squeeze*#
_output_shapes
:’’’’’’’’’*
T0
J
pow/yConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
F
powPowsub_1pow/y*
T0*#
_output_shapes
:’’’’’’’’’
Q
Const_1Const*
_output_shapes
:*
valueB: *
dtype0
Z
Mean_1MeanpowConst_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
R
gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
X
gradients/grad_ys_0Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
o
gradients/FillFillgradients/Shapegradients/grad_ys_0*
_output_shapes
: *
T0*

index_type0
m
#gradients/Mean_1_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:

gradients/Mean_1_grad/ReshapeReshapegradients/Fill#gradients/Mean_1_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
^
gradients/Mean_1_grad/ShapeShapepow*
T0*
out_type0*
_output_shapes
:

gradients/Mean_1_grad/TileTilegradients/Mean_1_grad/Reshapegradients/Mean_1_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:’’’’’’’’’
`
gradients/Mean_1_grad/Shape_1Shapepow*
out_type0*
_output_shapes
:*
T0
`
gradients/Mean_1_grad/Shape_2Const*
_output_shapes
: *
valueB *
dtype0
e
gradients/Mean_1_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:

gradients/Mean_1_grad/ProdProdgradients/Mean_1_grad/Shape_1gradients/Mean_1_grad/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
g
gradients/Mean_1_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
 
gradients/Mean_1_grad/Prod_1Prodgradients/Mean_1_grad/Shape_2gradients/Mean_1_grad/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
a
gradients/Mean_1_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 

gradients/Mean_1_grad/MaximumMaximumgradients/Mean_1_grad/Prod_1gradients/Mean_1_grad/Maximum/y*
_output_shapes
: *
T0

gradients/Mean_1_grad/floordivFloorDivgradients/Mean_1_grad/Prodgradients/Mean_1_grad/Maximum*
T0*
_output_shapes
: 

gradients/Mean_1_grad/CastCastgradients/Mean_1_grad/floordiv*
Truncate( *
_output_shapes
: *

DstT0*

SrcT0

gradients/Mean_1_grad/truedivRealDivgradients/Mean_1_grad/Tilegradients/Mean_1_grad/Cast*#
_output_shapes
:’’’’’’’’’*
T0
]
gradients/pow_grad/ShapeShapesub_1*
T0*
out_type0*
_output_shapes
:
]
gradients/pow_grad/Shape_1Shapepow/y*
T0*
out_type0*
_output_shapes
: 
“
(gradients/pow_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pow_grad/Shapegradients/pow_grad/Shape_1*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
T0
q
gradients/pow_grad/mulMulgradients/Mean_1_grad/truedivpow/y*
T0*#
_output_shapes
:’’’’’’’’’
]
gradients/pow_grad/sub/yConst*
_output_shapes
: *
valueB
 *  ?*
dtype0
_
gradients/pow_grad/subSubpow/ygradients/pow_grad/sub/y*
_output_shapes
: *
T0
j
gradients/pow_grad/PowPowsub_1gradients/pow_grad/sub*
T0*#
_output_shapes
:’’’’’’’’’
}
gradients/pow_grad/mul_1Mulgradients/pow_grad/mulgradients/pow_grad/Pow*
T0*#
_output_shapes
:’’’’’’’’’
”
gradients/pow_grad/SumSumgradients/pow_grad/mul_1(gradients/pow_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0

gradients/pow_grad/ReshapeReshapegradients/pow_grad/Sumgradients/pow_grad/Shape*
T0*
Tshape0*#
_output_shapes
:’’’’’’’’’
a
gradients/pow_grad/Greater/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
x
gradients/pow_grad/GreaterGreatersub_1gradients/pow_grad/Greater/y*#
_output_shapes
:’’’’’’’’’*
T0
g
"gradients/pow_grad/ones_like/ShapeShapesub_1*
_output_shapes
:*
T0*
out_type0
g
"gradients/pow_grad/ones_like/ConstConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
¬
gradients/pow_grad/ones_likeFill"gradients/pow_grad/ones_like/Shape"gradients/pow_grad/ones_like/Const*#
_output_shapes
:’’’’’’’’’*
T0*

index_type0

gradients/pow_grad/SelectSelectgradients/pow_grad/Greatersub_1gradients/pow_grad/ones_like*#
_output_shapes
:’’’’’’’’’*
T0
f
gradients/pow_grad/LogLoggradients/pow_grad/Select*
T0*#
_output_shapes
:’’’’’’’’’
_
gradients/pow_grad/zeros_like	ZerosLikesub_1*#
_output_shapes
:’’’’’’’’’*
T0
¦
gradients/pow_grad/Select_1Selectgradients/pow_grad/Greatergradients/pow_grad/Loggradients/pow_grad/zeros_like*
T0*#
_output_shapes
:’’’’’’’’’
q
gradients/pow_grad/mul_2Mulgradients/Mean_1_grad/truedivpow*
T0*#
_output_shapes
:’’’’’’’’’

gradients/pow_grad/mul_3Mulgradients/pow_grad/mul_2gradients/pow_grad/Select_1*#
_output_shapes
:’’’’’’’’’*
T0
„
gradients/pow_grad/Sum_1Sumgradients/pow_grad/mul_3*gradients/pow_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:

gradients/pow_grad/Reshape_1Reshapegradients/pow_grad/Sum_1gradients/pow_grad/Shape_1*
Tshape0*
_output_shapes
: *
T0
g
#gradients/pow_grad/tuple/group_depsNoOp^gradients/pow_grad/Reshape^gradients/pow_grad/Reshape_1
Ö
+gradients/pow_grad/tuple/control_dependencyIdentitygradients/pow_grad/Reshape$^gradients/pow_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/pow_grad/Reshape*#
_output_shapes
:’’’’’’’’’
Ļ
-gradients/pow_grad/tuple/control_dependency_1Identitygradients/pow_grad/Reshape_1$^gradients/pow_grad/tuple/group_deps*/
_class%
#!loc:@gradients/pow_grad/Reshape_1*
_output_shapes
: *
T0
g
gradients/sub_1_grad/ShapeShapePlaceholder_3*
T0*
out_type0*
_output_shapes
:
e
gradients/sub_1_grad/Shape_1Shape	v/Squeeze*
T0*
out_type0*
_output_shapes
:
ŗ
*gradients/sub_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_1_grad/Shapegradients/sub_1_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
ø
gradients/sub_1_grad/SumSum+gradients/pow_grad/tuple/control_dependency*gradients/sub_1_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0

gradients/sub_1_grad/ReshapeReshapegradients/sub_1_grad/Sumgradients/sub_1_grad/Shape*
T0*
Tshape0*#
_output_shapes
:’’’’’’’’’
z
gradients/sub_1_grad/NegNeg+gradients/pow_grad/tuple/control_dependency*
T0*#
_output_shapes
:’’’’’’’’’
©
gradients/sub_1_grad/Sum_1Sumgradients/sub_1_grad/Neg,gradients/sub_1_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0

gradients/sub_1_grad/Reshape_1Reshapegradients/sub_1_grad/Sum_1gradients/sub_1_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:’’’’’’’’’
m
%gradients/sub_1_grad/tuple/group_depsNoOp^gradients/sub_1_grad/Reshape^gradients/sub_1_grad/Reshape_1
Ž
-gradients/sub_1_grad/tuple/control_dependencyIdentitygradients/sub_1_grad/Reshape&^gradients/sub_1_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/sub_1_grad/Reshape*#
_output_shapes
:’’’’’’’’’
ä
/gradients/sub_1_grad/tuple/control_dependency_1Identitygradients/sub_1_grad/Reshape_1&^gradients/sub_1_grad/tuple/group_deps*1
_class'
%#loc:@gradients/sub_1_grad/Reshape_1*#
_output_shapes
:’’’’’’’’’*
T0
o
gradients/v/Squeeze_grad/ShapeShapev/dense_1/BiasAdd*
out_type0*
_output_shapes
:*
T0
¼
 gradients/v/Squeeze_grad/ReshapeReshape/gradients/sub_1_grad/tuple/control_dependency_1gradients/v/Squeeze_grad/Shape*'
_output_shapes
:’’’’’’’’’*
T0*
Tshape0

,gradients/v/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad gradients/v/Squeeze_grad/Reshape*
T0*
data_formatNHWC*
_output_shapes
:

1gradients/v/dense_1/BiasAdd_grad/tuple/group_depsNoOp!^gradients/v/Squeeze_grad/Reshape-^gradients/v/dense_1/BiasAdd_grad/BiasAddGrad

9gradients/v/dense_1/BiasAdd_grad/tuple/control_dependencyIdentity gradients/v/Squeeze_grad/Reshape2^gradients/v/dense_1/BiasAdd_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/v/Squeeze_grad/Reshape*'
_output_shapes
:’’’’’’’’’

;gradients/v/dense_1/BiasAdd_grad/tuple/control_dependency_1Identity,gradients/v/dense_1/BiasAdd_grad/BiasAddGrad2^gradients/v/dense_1/BiasAdd_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/v/dense_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
Ś
&gradients/v/dense_1/MatMul_grad/MatMulMatMul9gradients/v/dense_1/BiasAdd_grad/tuple/control_dependencyv/dense_1/kernel/read*'
_output_shapes
:’’’’’’’’’ *
transpose_a( *
transpose_b(*
T0
Ź
(gradients/v/dense_1/MatMul_grad/MatMul_1MatMulv/dense/Tanh9gradients/v/dense_1/BiasAdd_grad/tuple/control_dependency*
_output_shapes

: *
transpose_a(*
transpose_b( *
T0

0gradients/v/dense_1/MatMul_grad/tuple/group_depsNoOp'^gradients/v/dense_1/MatMul_grad/MatMul)^gradients/v/dense_1/MatMul_grad/MatMul_1

8gradients/v/dense_1/MatMul_grad/tuple/control_dependencyIdentity&gradients/v/dense_1/MatMul_grad/MatMul1^gradients/v/dense_1/MatMul_grad/tuple/group_deps*9
_class/
-+loc:@gradients/v/dense_1/MatMul_grad/MatMul*'
_output_shapes
:’’’’’’’’’ *
T0

:gradients/v/dense_1/MatMul_grad/tuple/control_dependency_1Identity(gradients/v/dense_1/MatMul_grad/MatMul_11^gradients/v/dense_1/MatMul_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/v/dense_1/MatMul_grad/MatMul_1*
_output_shapes

: 
Ŗ
$gradients/v/dense/Tanh_grad/TanhGradTanhGradv/dense/Tanh8gradients/v/dense_1/MatMul_grad/tuple/control_dependency*'
_output_shapes
:’’’’’’’’’ *
T0

*gradients/v/dense/BiasAdd_grad/BiasAddGradBiasAddGrad$gradients/v/dense/Tanh_grad/TanhGrad*
_output_shapes
: *
T0*
data_formatNHWC

/gradients/v/dense/BiasAdd_grad/tuple/group_depsNoOp+^gradients/v/dense/BiasAdd_grad/BiasAddGrad%^gradients/v/dense/Tanh_grad/TanhGrad

7gradients/v/dense/BiasAdd_grad/tuple/control_dependencyIdentity$gradients/v/dense/Tanh_grad/TanhGrad0^gradients/v/dense/BiasAdd_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/v/dense/Tanh_grad/TanhGrad*'
_output_shapes
:’’’’’’’’’ 

9gradients/v/dense/BiasAdd_grad/tuple/control_dependency_1Identity*gradients/v/dense/BiasAdd_grad/BiasAddGrad0^gradients/v/dense/BiasAdd_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/v/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes
: 
Ō
$gradients/v/dense/MatMul_grad/MatMulMatMul7gradients/v/dense/BiasAdd_grad/tuple/control_dependencyv/dense/kernel/read*'
_output_shapes
:’’’’’’’’’*
transpose_a( *
transpose_b(*
T0
Å
&gradients/v/dense/MatMul_grad/MatMul_1MatMulPlaceholder7gradients/v/dense/BiasAdd_grad/tuple/control_dependency*
T0*
_output_shapes

: *
transpose_a(*
transpose_b( 

.gradients/v/dense/MatMul_grad/tuple/group_depsNoOp%^gradients/v/dense/MatMul_grad/MatMul'^gradients/v/dense/MatMul_grad/MatMul_1

6gradients/v/dense/MatMul_grad/tuple/control_dependencyIdentity$gradients/v/dense/MatMul_grad/MatMul/^gradients/v/dense/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/v/dense/MatMul_grad/MatMul*'
_output_shapes
:’’’’’’’’’

8gradients/v/dense/MatMul_grad/tuple/control_dependency_1Identity&gradients/v/dense/MatMul_grad/MatMul_1/^gradients/v/dense/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/v/dense/MatMul_grad/MatMul_1*
_output_shapes

: 
`
Reshape/shapeConst*
valueB:
’’’’’’’’’*
dtype0*
_output_shapes
:

ReshapeReshape8gradients/v/dense/MatMul_grad/tuple/control_dependency_1Reshape/shape*
T0*
Tshape0*
_output_shapes	
:
b
Reshape_1/shapeConst*
valueB:
’’’’’’’’’*
dtype0*
_output_shapes
:

	Reshape_1Reshape9gradients/v/dense/BiasAdd_grad/tuple/control_dependency_1Reshape_1/shape*
T0*
Tshape0*
_output_shapes
: 
b
Reshape_2/shapeConst*
valueB:
’’’’’’’’’*
dtype0*
_output_shapes
:

	Reshape_2Reshape:gradients/v/dense_1/MatMul_grad/tuple/control_dependency_1Reshape_2/shape*
T0*
Tshape0*
_output_shapes
: 
b
Reshape_3/shapeConst*
valueB:
’’’’’’’’’*
dtype0*
_output_shapes
:

	Reshape_3Reshape;gradients/v/dense_1/BiasAdd_grad/tuple/control_dependency_1Reshape_3/shape*
T0*
Tshape0*
_output_shapes
:
M
concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 

concatConcatV2Reshape	Reshape_1	Reshape_2	Reshape_3concat/axis*
T0*
N*
_output_shapes	
:Į*

Tidx0
g
PyFuncPyFuncconcat*
_output_shapes	
:Į*
Tin
2*
Tout
2*
token
pyfunc_0
`
Const_2Const*%
valueB"              *
dtype0*
_output_shapes
:
Q
split/split_dimConst*
value	B : *
dtype0*
_output_shapes
: 

splitSplitVPyFuncConst_2split/split_dim*-
_output_shapes
:: : :*
	num_split*

Tlen0*
T0
`
Reshape_4/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
c
	Reshape_4ReshapesplitReshape_4/shape*
_output_shapes

: *
T0*
Tshape0
Y
Reshape_5/shapeConst*
valueB: *
dtype0*
_output_shapes
:
a
	Reshape_5Reshapesplit:1Reshape_5/shape*
T0*
Tshape0*
_output_shapes
: 
`
Reshape_6/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
e
	Reshape_6Reshapesplit:2Reshape_6/shape*
T0*
Tshape0*
_output_shapes

: 
Y
Reshape_7/shapeConst*
_output_shapes
:*
valueB:*
dtype0
a
	Reshape_7Reshapesplit:3Reshape_7/shape*
Tshape0*
_output_shapes
:*
T0

beta1_power/initial_valueConst*
valueB
 *fff?*
_class
loc:@v/dense/bias*
dtype0*
_output_shapes
: 

beta1_power
VariableV2*
_class
loc:@v/dense/bias*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 
Æ
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
k
beta1_power/readIdentitybeta1_power*
_output_shapes
: *
T0*
_class
loc:@v/dense/bias

beta2_power/initial_valueConst*
valueB
 *w¾?*
_class
loc:@v/dense/bias*
dtype0*
_output_shapes
: 

beta2_power
VariableV2*
_class
loc:@v/dense/bias*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 
Æ
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
k
beta2_power/readIdentitybeta2_power*
T0*
_class
loc:@v/dense/bias*
_output_shapes
: 

%v/dense/kernel/Adam/Initializer/zerosConst*!
_class
loc:@v/dense/kernel*
valueB *    *
dtype0*
_output_shapes

: 
Ŗ
v/dense/kernel/Adam
VariableV2*!
_class
loc:@v/dense/kernel*
	container *
shape
: *
dtype0*
_output_shapes

: *
shared_name 
Õ
v/dense/kernel/Adam/AssignAssignv/dense/kernel/Adam%v/dense/kernel/Adam/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 

v/dense/kernel/Adam/readIdentityv/dense/kernel/Adam*
_output_shapes

: *
T0*!
_class
loc:@v/dense/kernel

'v/dense/kernel/Adam_1/Initializer/zerosConst*!
_class
loc:@v/dense/kernel*
valueB *    *
dtype0*
_output_shapes

: 
¬
v/dense/kernel/Adam_1
VariableV2*
shared_name *!
_class
loc:@v/dense/kernel*
	container *
shape
: *
dtype0*
_output_shapes

: 
Ū
v/dense/kernel/Adam_1/AssignAssignv/dense/kernel/Adam_1'v/dense/kernel/Adam_1/Initializer/zeros*
_output_shapes

: *
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(

v/dense/kernel/Adam_1/readIdentityv/dense/kernel/Adam_1*!
_class
loc:@v/dense/kernel*
_output_shapes

: *
T0

#v/dense/bias/Adam/Initializer/zerosConst*
_output_shapes
: *
_class
loc:@v/dense/bias*
valueB *    *
dtype0

v/dense/bias/Adam
VariableV2*
dtype0*
_output_shapes
: *
shared_name *
_class
loc:@v/dense/bias*
	container *
shape: 
É
v/dense/bias/Adam/AssignAssignv/dense/bias/Adam#v/dense/bias/Adam/Initializer/zeros*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
{
v/dense/bias/Adam/readIdentityv/dense/bias/Adam*
_class
loc:@v/dense/bias*
_output_shapes
: *
T0

%v/dense/bias/Adam_1/Initializer/zerosConst*
_class
loc:@v/dense/bias*
valueB *    *
dtype0*
_output_shapes
: 
 
v/dense/bias/Adam_1
VariableV2*
dtype0*
_output_shapes
: *
shared_name *
_class
loc:@v/dense/bias*
	container *
shape: 
Ļ
v/dense/bias/Adam_1/AssignAssignv/dense/bias/Adam_1%v/dense/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 

v/dense/bias/Adam_1/readIdentityv/dense/bias/Adam_1*
_output_shapes
: *
T0*
_class
loc:@v/dense/bias
”
'v/dense_1/kernel/Adam/Initializer/zerosConst*#
_class
loc:@v/dense_1/kernel*
valueB *    *
dtype0*
_output_shapes

: 
®
v/dense_1/kernel/Adam
VariableV2*
shape
: *
dtype0*
_output_shapes

: *
shared_name *#
_class
loc:@v/dense_1/kernel*
	container 
Ż
v/dense_1/kernel/Adam/AssignAssignv/dense_1/kernel/Adam'v/dense_1/kernel/Adam/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 

v/dense_1/kernel/Adam/readIdentityv/dense_1/kernel/Adam*
_output_shapes

: *
T0*#
_class
loc:@v/dense_1/kernel
£
)v/dense_1/kernel/Adam_1/Initializer/zerosConst*
_output_shapes

: *#
_class
loc:@v/dense_1/kernel*
valueB *    *
dtype0
°
v/dense_1/kernel/Adam_1
VariableV2*
	container *
shape
: *
dtype0*
_output_shapes

: *
shared_name *#
_class
loc:@v/dense_1/kernel
ć
v/dense_1/kernel/Adam_1/AssignAssignv/dense_1/kernel/Adam_1)v/dense_1/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 

v/dense_1/kernel/Adam_1/readIdentityv/dense_1/kernel/Adam_1*
_output_shapes

: *
T0*#
_class
loc:@v/dense_1/kernel

%v/dense_1/bias/Adam/Initializer/zerosConst*!
_class
loc:@v/dense_1/bias*
valueB*    *
dtype0*
_output_shapes
:
¢
v/dense_1/bias/Adam
VariableV2*
dtype0*
_output_shapes
:*
shared_name *!
_class
loc:@v/dense_1/bias*
	container *
shape:
Ń
v/dense_1/bias/Adam/AssignAssignv/dense_1/bias/Adam%v/dense_1/bias/Adam/Initializer/zeros*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(

v/dense_1/bias/Adam/readIdentityv/dense_1/bias/Adam*
_output_shapes
:*
T0*!
_class
loc:@v/dense_1/bias

'v/dense_1/bias/Adam_1/Initializer/zerosConst*!
_class
loc:@v/dense_1/bias*
valueB*    *
dtype0*
_output_shapes
:
¤
v/dense_1/bias/Adam_1
VariableV2*
dtype0*
_output_shapes
:*
shared_name *!
_class
loc:@v/dense_1/bias*
	container *
shape:
×
v/dense_1/bias/Adam_1/AssignAssignv/dense_1/bias/Adam_1'v/dense_1/bias/Adam_1/Initializer/zeros*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0

v/dense_1/bias/Adam_1/readIdentityv/dense_1/bias/Adam_1*
T0*!
_class
loc:@v/dense_1/bias*
_output_shapes
:
W
Adam/learning_rateConst*
_output_shapes
: *
valueB
 *o:*
dtype0
O

Adam/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
O

Adam/beta2Const*
_output_shapes
: *
valueB
 *w¾?*
dtype0
Q
Adam/epsilonConst*
valueB
 *wĢ+2*
dtype0*
_output_shapes
: 
É
$Adam/update_v/dense/kernel/ApplyAdam	ApplyAdamv/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon	Reshape_4*
use_locking( *
T0*!
_class
loc:@v/dense/kernel*
use_nesterov( *
_output_shapes

: 
»
"Adam/update_v/dense/bias/ApplyAdam	ApplyAdamv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon	Reshape_5*
_class
loc:@v/dense/bias*
use_nesterov( *
_output_shapes
: *
use_locking( *
T0
Ó
&Adam/update_v/dense_1/kernel/ApplyAdam	ApplyAdamv/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon	Reshape_6*
use_locking( *
T0*#
_class
loc:@v/dense_1/kernel*
use_nesterov( *
_output_shapes

: 
Å
$Adam/update_v/dense_1/bias/ApplyAdam	ApplyAdamv/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon	Reshape_7*!
_class
loc:@v/dense_1/bias*
use_nesterov( *
_output_shapes
:*
use_locking( *
T0

Adam/mulMulbeta1_power/read
Adam/beta1#^Adam/update_v/dense/bias/ApplyAdam%^Adam/update_v/dense/kernel/ApplyAdam%^Adam/update_v/dense_1/bias/ApplyAdam'^Adam/update_v/dense_1/kernel/ApplyAdam*
_class
loc:@v/dense/bias*
_output_shapes
: *
T0

Adam/AssignAssignbeta1_powerAdam/mul*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking( *
T0


Adam/mul_1Mulbeta2_power/read
Adam/beta2#^Adam/update_v/dense/bias/ApplyAdam%^Adam/update_v/dense/kernel/ApplyAdam%^Adam/update_v/dense_1/bias/ApplyAdam'^Adam/update_v/dense_1/kernel/ApplyAdam*
T0*
_class
loc:@v/dense/bias*
_output_shapes
: 

Adam/Assign_1Assignbeta2_power
Adam/mul_1*
_output_shapes
: *
use_locking( *
T0*
_class
loc:@v/dense/bias*
validate_shape(
Ę
AdamNoOp^Adam/Assign^Adam/Assign_1#^Adam/update_v/dense/bias/ApplyAdam%^Adam/update_v/dense/kernel/ApplyAdam%^Adam/update_v/dense_1/bias/ApplyAdam'^Adam/update_v/dense_1/kernel/ApplyAdam
i
Reshape_8/shapeConst^Adam*
_output_shapes
:*
valueB:
’’’’’’’’’*
dtype0
n
	Reshape_8Reshapev/dense/kernel/readReshape_8/shape*
T0*
Tshape0*
_output_shapes	
:
i
Reshape_9/shapeConst^Adam*
_output_shapes
:*
valueB:
’’’’’’’’’*
dtype0
k
	Reshape_9Reshapev/dense/bias/readReshape_9/shape*
Tshape0*
_output_shapes
: *
T0
j
Reshape_10/shapeConst^Adam*
valueB:
’’’’’’’’’*
dtype0*
_output_shapes
:
q

Reshape_10Reshapev/dense_1/kernel/readReshape_10/shape*
_output_shapes
: *
T0*
Tshape0
j
Reshape_11/shapeConst^Adam*
valueB:
’’’’’’’’’*
dtype0*
_output_shapes
:
o

Reshape_11Reshapev/dense_1/bias/readReshape_11/shape*
_output_shapes
:*
T0*
Tshape0
V
concat_1/axisConst^Adam*
value	B : *
dtype0*
_output_shapes
: 

concat_1ConcatV2	Reshape_8	Reshape_9
Reshape_10
Reshape_11concat_1/axis*
T0*
N*
_output_shapes	
:Į*

Tidx0
h
PyFunc_1PyFuncconcat_1*
_output_shapes
:*
Tin
2*
Tout
2*
token
pyfunc_1
g
Const_3Const^Adam*
_output_shapes
:*%
valueB"              *
dtype0
Z
split_1/split_dimConst^Adam*
value	B : *
dtype0*
_output_shapes
: 

split_1SplitVPyFunc_1Const_3split_1/split_dim*$
_output_shapes
::::*
	num_split*

Tlen0*
T0
h
Reshape_12/shapeConst^Adam*
valueB"       *
dtype0*
_output_shapes
:
g

Reshape_12Reshapesplit_1Reshape_12/shape*
T0*
Tshape0*
_output_shapes

: 
a
Reshape_13/shapeConst^Adam*
_output_shapes
:*
valueB: *
dtype0
e

Reshape_13Reshape	split_1:1Reshape_13/shape*
Tshape0*
_output_shapes
: *
T0
h
Reshape_14/shapeConst^Adam*
_output_shapes
:*
valueB"       *
dtype0
i

Reshape_14Reshape	split_1:2Reshape_14/shape*
T0*
Tshape0*
_output_shapes

: 
a
Reshape_15/shapeConst^Adam*
valueB:*
dtype0*
_output_shapes
:
e

Reshape_15Reshape	split_1:3Reshape_15/shape*
T0*
Tshape0*
_output_shapes
:
”
AssignAssignv/dense/kernel
Reshape_12*
_output_shapes

: *
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(

Assign_1Assignv/dense/bias
Reshape_13*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(
§
Assign_2Assignv/dense_1/kernel
Reshape_14*
_output_shapes

: *
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(

Assign_3Assignv/dense_1/bias
Reshape_15*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
C

group_depsNoOp^Adam^Assign	^Assign_1	^Assign_2	^Assign_3
(
group_deps_1NoOp^Adam^group_deps
T
gradients_1/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
Z
gradients_1/grad_ys_0Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
gradients_1/FillFillgradients_1/Shapegradients_1/grad_ys_0*

index_type0*
_output_shapes
: *
T0
R
gradients_1/Neg_grad/NegNeggradients_1/Fill*
_output_shapes
: *
T0
m
#gradients_1/Mean_grad/Reshape/shapeConst*
_output_shapes
:*
valueB:*
dtype0

gradients_1/Mean_grad/ReshapeReshapegradients_1/Neg_grad/Neg#gradients_1/Mean_grad/Reshape/shape*
Tshape0*
_output_shapes
:*
T0
^
gradients_1/Mean_grad/ShapeShapemul*
T0*
out_type0*
_output_shapes
:

gradients_1/Mean_grad/TileTilegradients_1/Mean_grad/Reshapegradients_1/Mean_grad/Shape*#
_output_shapes
:’’’’’’’’’*

Tmultiples0*
T0
`
gradients_1/Mean_grad/Shape_1Shapemul*
out_type0*
_output_shapes
:*
T0
`
gradients_1/Mean_grad/Shape_2Const*
_output_shapes
: *
valueB *
dtype0
e
gradients_1/Mean_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:

gradients_1/Mean_grad/ProdProdgradients_1/Mean_grad/Shape_1gradients_1/Mean_grad/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
g
gradients_1/Mean_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
 
gradients_1/Mean_grad/Prod_1Prodgradients_1/Mean_grad/Shape_2gradients_1/Mean_grad/Const_1*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
a
gradients_1/Mean_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 

gradients_1/Mean_grad/MaximumMaximumgradients_1/Mean_grad/Prod_1gradients_1/Mean_grad/Maximum/y*
_output_shapes
: *
T0

gradients_1/Mean_grad/floordivFloorDivgradients_1/Mean_grad/Prodgradients_1/Mean_grad/Maximum*
_output_shapes
: *
T0

gradients_1/Mean_grad/CastCastgradients_1/Mean_grad/floordiv*
_output_shapes
: *

DstT0*

SrcT0*
Truncate( 

gradients_1/Mean_grad/truedivRealDivgradients_1/Mean_grad/Tilegradients_1/Mean_grad/Cast*
T0*#
_output_shapes
:’’’’’’’’’
]
gradients_1/mul_grad/ShapeShapeExp*
out_type0*
_output_shapes
:*
T0
i
gradients_1/mul_grad/Shape_1ShapePlaceholder_2*
T0*
out_type0*
_output_shapes
:
ŗ
*gradients_1/mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/mul_grad/Shapegradients_1/mul_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
{
gradients_1/mul_grad/MulMulgradients_1/Mean_grad/truedivPlaceholder_2*
T0*#
_output_shapes
:’’’’’’’’’
„
gradients_1/mul_grad/SumSumgradients_1/mul_grad/Mul*gradients_1/mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0

gradients_1/mul_grad/ReshapeReshapegradients_1/mul_grad/Sumgradients_1/mul_grad/Shape*#
_output_shapes
:’’’’’’’’’*
T0*
Tshape0
s
gradients_1/mul_grad/Mul_1MulExpgradients_1/Mean_grad/truediv*
T0*#
_output_shapes
:’’’’’’’’’
«
gradients_1/mul_grad/Sum_1Sumgradients_1/mul_grad/Mul_1,gradients_1/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:

gradients_1/mul_grad/Reshape_1Reshapegradients_1/mul_grad/Sum_1gradients_1/mul_grad/Shape_1*#
_output_shapes
:’’’’’’’’’*
T0*
Tshape0
p
gradients_1/Exp_grad/mulMulgradients_1/mul_grad/ReshapeExp*
T0*#
_output_shapes
:’’’’’’’’’
`
gradients_1/sub_grad/ShapeShapepi/Sum*
out_type0*
_output_shapes
:*
T0
i
gradients_1/sub_grad/Shape_1ShapePlaceholder_4*
_output_shapes
:*
T0*
out_type0
ŗ
*gradients_1/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/sub_grad/Shapegradients_1/sub_grad/Shape_1*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
T0
„
gradients_1/sub_grad/SumSumgradients_1/Exp_grad/mul*gradients_1/sub_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0

gradients_1/sub_grad/ReshapeReshapegradients_1/sub_grad/Sumgradients_1/sub_grad/Shape*
T0*
Tshape0*#
_output_shapes
:’’’’’’’’’
g
gradients_1/sub_grad/NegNeggradients_1/Exp_grad/mul*
T0*#
_output_shapes
:’’’’’’’’’
©
gradients_1/sub_grad/Sum_1Sumgradients_1/sub_grad/Neg,gradients_1/sub_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0

gradients_1/sub_grad/Reshape_1Reshapegradients_1/sub_grad/Sum_1gradients_1/sub_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:’’’’’’’’’
c
gradients_1/pi/Sum_grad/ShapeShapepi/mul*
_output_shapes
:*
T0*
out_type0

gradients_1/pi/Sum_grad/SizeConst*
value	B :*0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*
dtype0*
_output_shapes
: 
Æ
gradients_1/pi/Sum_grad/addAddV2pi/Sum/reduction_indicesgradients_1/pi/Sum_grad/Size*
T0*0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*
_output_shapes
: 
µ
gradients_1/pi/Sum_grad/modFloorModgradients_1/pi/Sum_grad/addgradients_1/pi/Sum_grad/Size*0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*
_output_shapes
: *
T0

gradients_1/pi/Sum_grad/Shape_1Const*
valueB *0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*
dtype0*
_output_shapes
: 

#gradients_1/pi/Sum_grad/range/startConst*
value	B : *0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*
dtype0*
_output_shapes
: 

#gradients_1/pi/Sum_grad/range/deltaConst*
value	B :*0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*
dtype0*
_output_shapes
: 
č
gradients_1/pi/Sum_grad/rangeRange#gradients_1/pi/Sum_grad/range/startgradients_1/pi/Sum_grad/Size#gradients_1/pi/Sum_grad/range/delta*0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*
_output_shapes
:*

Tidx0

"gradients_1/pi/Sum_grad/Fill/valueConst*
_output_shapes
: *
value	B :*0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*
dtype0
Ī
gradients_1/pi/Sum_grad/FillFillgradients_1/pi/Sum_grad/Shape_1"gradients_1/pi/Sum_grad/Fill/value*
T0*

index_type0*0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*
_output_shapes
: 

%gradients_1/pi/Sum_grad/DynamicStitchDynamicStitchgradients_1/pi/Sum_grad/rangegradients_1/pi/Sum_grad/modgradients_1/pi/Sum_grad/Shapegradients_1/pi/Sum_grad/Fill*0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*
N*
_output_shapes
:*
T0

!gradients_1/pi/Sum_grad/Maximum/yConst*
_output_shapes
: *
value	B :*0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*
dtype0
Ė
gradients_1/pi/Sum_grad/MaximumMaximum%gradients_1/pi/Sum_grad/DynamicStitch!gradients_1/pi/Sum_grad/Maximum/y*
_output_shapes
:*
T0*0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape
Ć
 gradients_1/pi/Sum_grad/floordivFloorDivgradients_1/pi/Sum_grad/Shapegradients_1/pi/Sum_grad/Maximum*
_output_shapes
:*
T0*0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape
ø
gradients_1/pi/Sum_grad/ReshapeReshapegradients_1/sub_grad/Reshape%gradients_1/pi/Sum_grad/DynamicStitch*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
T0*
Tshape0
«
gradients_1/pi/Sum_grad/TileTilegradients_1/pi/Sum_grad/Reshape gradients_1/pi/Sum_grad/floordiv*'
_output_shapes
:’’’’’’’’’*

Tmultiples0*
T0
g
gradients_1/pi/mul_grad/ShapeShape
pi/one_hot*
_output_shapes
:*
T0*
out_type0
l
gradients_1/pi/mul_grad/Shape_1Shapepi/LogSoftmax*
T0*
out_type0*
_output_shapes
:
Ć
-gradients_1/pi/mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/pi/mul_grad/Shapegradients_1/pi/mul_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’

gradients_1/pi/mul_grad/MulMulgradients_1/pi/Sum_grad/Tilepi/LogSoftmax*
T0*'
_output_shapes
:’’’’’’’’’
®
gradients_1/pi/mul_grad/SumSumgradients_1/pi/mul_grad/Mul-gradients_1/pi/mul_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
¦
gradients_1/pi/mul_grad/ReshapeReshapegradients_1/pi/mul_grad/Sumgradients_1/pi/mul_grad/Shape*
Tshape0*'
_output_shapes
:’’’’’’’’’*
T0

gradients_1/pi/mul_grad/Mul_1Mul
pi/one_hotgradients_1/pi/Sum_grad/Tile*
T0*'
_output_shapes
:’’’’’’’’’
“
gradients_1/pi/mul_grad/Sum_1Sumgradients_1/pi/mul_grad/Mul_1/gradients_1/pi/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
¬
!gradients_1/pi/mul_grad/Reshape_1Reshapegradients_1/pi/mul_grad/Sum_1gradients_1/pi/mul_grad/Shape_1*
Tshape0*'
_output_shapes
:’’’’’’’’’*
T0
j
"gradients_1/pi/LogSoftmax_grad/ExpExppi/LogSoftmax*
T0*'
_output_shapes
:’’’’’’’’’

4gradients_1/pi/LogSoftmax_grad/Sum/reduction_indicesConst*
_output_shapes
: *
valueB :
’’’’’’’’’*
dtype0
Ń
"gradients_1/pi/LogSoftmax_grad/SumSum!gradients_1/pi/mul_grad/Reshape_14gradients_1/pi/LogSoftmax_grad/Sum/reduction_indices*'
_output_shapes
:’’’’’’’’’*
	keep_dims(*

Tidx0*
T0
£
"gradients_1/pi/LogSoftmax_grad/mulMul"gradients_1/pi/LogSoftmax_grad/Sum"gradients_1/pi/LogSoftmax_grad/Exp*
T0*'
_output_shapes
:’’’’’’’’’
¢
"gradients_1/pi/LogSoftmax_grad/subSub!gradients_1/pi/mul_grad/Reshape_1"gradients_1/pi/LogSoftmax_grad/mul*
T0*'
_output_shapes
:’’’’’’’’’

/gradients_1/pi/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad"gradients_1/pi/LogSoftmax_grad/sub*
_output_shapes
:*
T0*
data_formatNHWC
Ē
)gradients_1/pi/dense_1/MatMul_grad/MatMulMatMul"gradients_1/pi/LogSoftmax_grad/subpi/dense_1/kernel/read*'
_output_shapes
:’’’’’’’’’ *
transpose_a( *
transpose_b(*
T0
·
+gradients_1/pi/dense_1/MatMul_grad/MatMul_1MatMulpi/dense/Tanh"gradients_1/pi/LogSoftmax_grad/sub*
_output_shapes

: *
transpose_a(*
transpose_b( *
T0

'gradients_1/pi/dense/Tanh_grad/TanhGradTanhGradpi/dense/Tanh)gradients_1/pi/dense_1/MatMul_grad/MatMul*'
_output_shapes
:’’’’’’’’’ *
T0
”
-gradients_1/pi/dense/BiasAdd_grad/BiasAddGradBiasAddGrad'gradients_1/pi/dense/Tanh_grad/TanhGrad*
T0*
data_formatNHWC*
_output_shapes
: 
Č
'gradients_1/pi/dense/MatMul_grad/MatMulMatMul'gradients_1/pi/dense/Tanh_grad/TanhGradpi/dense/kernel/read*'
_output_shapes
:’’’’’’’’’*
transpose_a( *
transpose_b(*
T0
ø
)gradients_1/pi/dense/MatMul_grad/MatMul_1MatMulPlaceholder'gradients_1/pi/dense/Tanh_grad/TanhGrad*
_output_shapes

: *
transpose_a(*
transpose_b( *
T0
c
Reshape_16/shapeConst*
_output_shapes
:*
valueB:
’’’’’’’’’*
dtype0


Reshape_16Reshape)gradients_1/pi/dense/MatMul_grad/MatMul_1Reshape_16/shape*
_output_shapes	
:*
T0*
Tshape0
c
Reshape_17/shapeConst*
valueB:
’’’’’’’’’*
dtype0*
_output_shapes
:


Reshape_17Reshape-gradients_1/pi/dense/BiasAdd_grad/BiasAddGradReshape_17/shape*
T0*
Tshape0*
_output_shapes
: 
c
Reshape_18/shapeConst*
_output_shapes
:*
valueB:
’’’’’’’’’*
dtype0


Reshape_18Reshape+gradients_1/pi/dense_1/MatMul_grad/MatMul_1Reshape_18/shape*
T0*
Tshape0*
_output_shapes	
:
c
Reshape_19/shapeConst*
valueB:
’’’’’’’’’*
dtype0*
_output_shapes
:


Reshape_19Reshape/gradients_1/pi/dense_1/BiasAdd_grad/BiasAddGradReshape_19/shape*
_output_shapes
:*
T0*
Tshape0
O
concat_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 

concat_2ConcatV2
Reshape_16
Reshape_17
Reshape_18
Reshape_19concat_2/axis*
_output_shapes	
:¤*

Tidx0*
T0*
N
T
gradients_2/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
Z
gradients_2/grad_ys_0Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
gradients_2/FillFillgradients_2/Shapegradients_2/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
p
&gradients_2/pi/Mean_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:

 gradients_2/pi/Mean_grad/ReshapeReshapegradients_2/Fill&gradients_2/pi/Mean_grad/Reshape/shape*
_output_shapes
:*
T0*
Tshape0
f
gradients_2/pi/Mean_grad/ShapeShapepi/Sum_2*
_output_shapes
:*
T0*
out_type0
§
gradients_2/pi/Mean_grad/TileTile gradients_2/pi/Mean_grad/Reshapegradients_2/pi/Mean_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:’’’’’’’’’
h
 gradients_2/pi/Mean_grad/Shape_1Shapepi/Sum_2*
T0*
out_type0*
_output_shapes
:
c
 gradients_2/pi/Mean_grad/Shape_2Const*
valueB *
dtype0*
_output_shapes
: 
h
gradients_2/pi/Mean_grad/ConstConst*
_output_shapes
:*
valueB: *
dtype0
„
gradients_2/pi/Mean_grad/ProdProd gradients_2/pi/Mean_grad/Shape_1gradients_2/pi/Mean_grad/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
j
 gradients_2/pi/Mean_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
©
gradients_2/pi/Mean_grad/Prod_1Prod gradients_2/pi/Mean_grad/Shape_2 gradients_2/pi/Mean_grad/Const_1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
d
"gradients_2/pi/Mean_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 

 gradients_2/pi/Mean_grad/MaximumMaximumgradients_2/pi/Mean_grad/Prod_1"gradients_2/pi/Mean_grad/Maximum/y*
_output_shapes
: *
T0

!gradients_2/pi/Mean_grad/floordivFloorDivgradients_2/pi/Mean_grad/Prod gradients_2/pi/Mean_grad/Maximum*
T0*
_output_shapes
: 

gradients_2/pi/Mean_grad/CastCast!gradients_2/pi/Mean_grad/floordiv*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0

 gradients_2/pi/Mean_grad/truedivRealDivgradients_2/pi/Mean_grad/Tilegradients_2/pi/Mean_grad/Cast*#
_output_shapes
:’’’’’’’’’*
T0
g
gradients_2/pi/Sum_2_grad/ShapeShapepi/mul_2*
out_type0*
_output_shapes
:*
T0

gradients_2/pi/Sum_2_grad/SizeConst*
value	B :*2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape*
dtype0*
_output_shapes
: 
·
gradients_2/pi/Sum_2_grad/addAddV2pi/Sum_2/reduction_indicesgradients_2/pi/Sum_2_grad/Size*
_output_shapes
: *
T0*2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape
½
gradients_2/pi/Sum_2_grad/modFloorModgradients_2/pi/Sum_2_grad/addgradients_2/pi/Sum_2_grad/Size*
_output_shapes
: *
T0*2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape

!gradients_2/pi/Sum_2_grad/Shape_1Const*
valueB *2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape*
dtype0*
_output_shapes
: 

%gradients_2/pi/Sum_2_grad/range/startConst*
value	B : *2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape*
dtype0*
_output_shapes
: 

%gradients_2/pi/Sum_2_grad/range/deltaConst*
value	B :*2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape*
dtype0*
_output_shapes
: 
ņ
gradients_2/pi/Sum_2_grad/rangeRange%gradients_2/pi/Sum_2_grad/range/startgradients_2/pi/Sum_2_grad/Size%gradients_2/pi/Sum_2_grad/range/delta*
_output_shapes
:*

Tidx0*2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape

$gradients_2/pi/Sum_2_grad/Fill/valueConst*
value	B :*2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape*
dtype0*
_output_shapes
: 
Ö
gradients_2/pi/Sum_2_grad/FillFill!gradients_2/pi/Sum_2_grad/Shape_1$gradients_2/pi/Sum_2_grad/Fill/value*
_output_shapes
: *
T0*

index_type0*2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape

'gradients_2/pi/Sum_2_grad/DynamicStitchDynamicStitchgradients_2/pi/Sum_2_grad/rangegradients_2/pi/Sum_2_grad/modgradients_2/pi/Sum_2_grad/Shapegradients_2/pi/Sum_2_grad/Fill*
_output_shapes
:*
T0*2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape*
N

#gradients_2/pi/Sum_2_grad/Maximum/yConst*
value	B :*2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape*
dtype0*
_output_shapes
: 
Ó
!gradients_2/pi/Sum_2_grad/MaximumMaximum'gradients_2/pi/Sum_2_grad/DynamicStitch#gradients_2/pi/Sum_2_grad/Maximum/y*2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape*
_output_shapes
:*
T0
Ė
"gradients_2/pi/Sum_2_grad/floordivFloorDivgradients_2/pi/Sum_2_grad/Shape!gradients_2/pi/Sum_2_grad/Maximum*
T0*2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape*
_output_shapes
:
Ą
!gradients_2/pi/Sum_2_grad/ReshapeReshape gradients_2/pi/Mean_grad/truediv'gradients_2/pi/Sum_2_grad/DynamicStitch*
T0*
Tshape0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’
±
gradients_2/pi/Sum_2_grad/TileTile!gradients_2/pi/Sum_2_grad/Reshape"gradients_2/pi/Sum_2_grad/floordiv*'
_output_shapes
:’’’’’’’’’*

Tmultiples0*
T0
e
gradients_2/pi/mul_2_grad/ShapeShapepi/Exp*
_output_shapes
:*
T0*
out_type0
g
!gradients_2/pi/mul_2_grad/Shape_1Shapepi/sub*
T0*
out_type0*
_output_shapes
:
É
/gradients_2/pi/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_2/pi/mul_2_grad/Shape!gradients_2/pi/mul_2_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
~
gradients_2/pi/mul_2_grad/MulMulgradients_2/pi/Sum_2_grad/Tilepi/sub*
T0*'
_output_shapes
:’’’’’’’’’
“
gradients_2/pi/mul_2_grad/SumSumgradients_2/pi/mul_2_grad/Mul/gradients_2/pi/mul_2_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
¬
!gradients_2/pi/mul_2_grad/ReshapeReshapegradients_2/pi/mul_2_grad/Sumgradients_2/pi/mul_2_grad/Shape*
T0*
Tshape0*'
_output_shapes
:’’’’’’’’’

gradients_2/pi/mul_2_grad/Mul_1Mulpi/Expgradients_2/pi/Sum_2_grad/Tile*'
_output_shapes
:’’’’’’’’’*
T0
ŗ
gradients_2/pi/mul_2_grad/Sum_1Sumgradients_2/pi/mul_2_grad/Mul_11gradients_2/pi/mul_2_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
²
#gradients_2/pi/mul_2_grad/Reshape_1Reshapegradients_2/pi/mul_2_grad/Sum_1!gradients_2/pi/mul_2_grad/Shape_1*
Tshape0*'
_output_shapes
:’’’’’’’’’*
T0
k
gradients_2/pi/sub_grad/ShapeShapepi/Placeholder*
_output_shapes
:*
T0*
out_type0
l
gradients_2/pi/sub_grad/Shape_1Shapepi/LogSoftmax*
_output_shapes
:*
T0*
out_type0
Ć
-gradients_2/pi/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_2/pi/sub_grad/Shapegradients_2/pi/sub_grad/Shape_1*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
T0
¶
gradients_2/pi/sub_grad/SumSum#gradients_2/pi/mul_2_grad/Reshape_1-gradients_2/pi/sub_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
¦
gradients_2/pi/sub_grad/ReshapeReshapegradients_2/pi/sub_grad/Sumgradients_2/pi/sub_grad/Shape*
Tshape0*'
_output_shapes
:’’’’’’’’’*
T0
y
gradients_2/pi/sub_grad/NegNeg#gradients_2/pi/mul_2_grad/Reshape_1*
T0*'
_output_shapes
:’’’’’’’’’
²
gradients_2/pi/sub_grad/Sum_1Sumgradients_2/pi/sub_grad/Neg/gradients_2/pi/sub_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
¬
!gradients_2/pi/sub_grad/Reshape_1Reshapegradients_2/pi/sub_grad/Sum_1gradients_2/pi/sub_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:’’’’’’’’’
j
"gradients_2/pi/LogSoftmax_grad/ExpExppi/LogSoftmax*'
_output_shapes
:’’’’’’’’’*
T0

4gradients_2/pi/LogSoftmax_grad/Sum/reduction_indicesConst*
_output_shapes
: *
valueB :
’’’’’’’’’*
dtype0
Ń
"gradients_2/pi/LogSoftmax_grad/SumSum!gradients_2/pi/sub_grad/Reshape_14gradients_2/pi/LogSoftmax_grad/Sum/reduction_indices*
T0*'
_output_shapes
:’’’’’’’’’*
	keep_dims(*

Tidx0
£
"gradients_2/pi/LogSoftmax_grad/mulMul"gradients_2/pi/LogSoftmax_grad/Sum"gradients_2/pi/LogSoftmax_grad/Exp*
T0*'
_output_shapes
:’’’’’’’’’
¢
"gradients_2/pi/LogSoftmax_grad/subSub!gradients_2/pi/sub_grad/Reshape_1"gradients_2/pi/LogSoftmax_grad/mul*
T0*'
_output_shapes
:’’’’’’’’’

/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad"gradients_2/pi/LogSoftmax_grad/sub*
T0*
data_formatNHWC*
_output_shapes
:
Ē
)gradients_2/pi/dense_1/MatMul_grad/MatMulMatMul"gradients_2/pi/LogSoftmax_grad/subpi/dense_1/kernel/read*'
_output_shapes
:’’’’’’’’’ *
transpose_a( *
transpose_b(*
T0
·
+gradients_2/pi/dense_1/MatMul_grad/MatMul_1MatMulpi/dense/Tanh"gradients_2/pi/LogSoftmax_grad/sub*
T0*
_output_shapes

: *
transpose_a(*
transpose_b( 

'gradients_2/pi/dense/Tanh_grad/TanhGradTanhGradpi/dense/Tanh)gradients_2/pi/dense_1/MatMul_grad/MatMul*'
_output_shapes
:’’’’’’’’’ *
T0
”
-gradients_2/pi/dense/BiasAdd_grad/BiasAddGradBiasAddGrad'gradients_2/pi/dense/Tanh_grad/TanhGrad*
_output_shapes
: *
T0*
data_formatNHWC
Č
'gradients_2/pi/dense/MatMul_grad/MatMulMatMul'gradients_2/pi/dense/Tanh_grad/TanhGradpi/dense/kernel/read*'
_output_shapes
:’’’’’’’’’*
transpose_a( *
transpose_b(*
T0
ø
)gradients_2/pi/dense/MatMul_grad/MatMul_1MatMulPlaceholder'gradients_2/pi/dense/Tanh_grad/TanhGrad*
_output_shapes

: *
transpose_a(*
transpose_b( *
T0
c
Reshape_20/shapeConst*
valueB:
’’’’’’’’’*
dtype0*
_output_shapes
:


Reshape_20Reshape)gradients_2/pi/dense/MatMul_grad/MatMul_1Reshape_20/shape*
T0*
Tshape0*
_output_shapes	
:
c
Reshape_21/shapeConst*
_output_shapes
:*
valueB:
’’’’’’’’’*
dtype0


Reshape_21Reshape-gradients_2/pi/dense/BiasAdd_grad/BiasAddGradReshape_21/shape*
T0*
Tshape0*
_output_shapes
: 
c
Reshape_22/shapeConst*
valueB:
’’’’’’’’’*
dtype0*
_output_shapes
:


Reshape_22Reshape+gradients_2/pi/dense_1/MatMul_grad/MatMul_1Reshape_22/shape*
Tshape0*
_output_shapes	
:*
T0
c
Reshape_23/shapeConst*
_output_shapes
:*
valueB:
’’’’’’’’’*
dtype0


Reshape_23Reshape/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGradReshape_23/shape*
Tshape0*
_output_shapes
:*
T0
O
concat_3/axisConst*
value	B : *
dtype0*
_output_shapes
: 

concat_3ConcatV2
Reshape_20
Reshape_21
Reshape_22
Reshape_23concat_3/axis*
_output_shapes	
:¤*

Tidx0*
T0*
N
X
Placeholder_5Placeholder*
_output_shapes	
:¤*
shape:¤*
dtype0
K
mul_1Mulconcat_3Placeholder_5*
_output_shapes	
:¤*
T0
Q
Const_4Const*
valueB: *
dtype0*
_output_shapes
:
X
SumSummul_1Const_4*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
T
gradients_3/ShapeConst*
_output_shapes
: *
valueB *
dtype0
Z
gradients_3/grad_ys_0Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
u
gradients_3/FillFillgradients_3/Shapegradients_3/grad_ys_0*

index_type0*
_output_shapes
: *
T0
l
"gradients_3/Sum_grad/Reshape/shapeConst*
_output_shapes
:*
valueB:*
dtype0

gradients_3/Sum_grad/ReshapeReshapegradients_3/Fill"gradients_3/Sum_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
e
gradients_3/Sum_grad/ConstConst*
valueB:¤*
dtype0*
_output_shapes
:

gradients_3/Sum_grad/TileTilegradients_3/Sum_grad/Reshapegradients_3/Sum_grad/Const*
_output_shapes	
:¤*

Tmultiples0*
T0
q
gradients_3/mul_1_grad/MulMulgradients_3/Sum_grad/TilePlaceholder_5*
_output_shapes	
:¤*
T0
n
gradients_3/mul_1_grad/Mul_1Mulgradients_3/Sum_grad/Tileconcat_3*
T0*
_output_shapes	
:¤
`
gradients_3/concat_3_grad/RankConst*
value	B :*
dtype0*
_output_shapes
: 
y
gradients_3/concat_3_grad/modFloorModconcat_3/axisgradients_3/concat_3_grad/Rank*
T0*
_output_shapes
: 
j
gradients_3/concat_3_grad/ShapeConst*
valueB:*
dtype0*
_output_shapes
:
k
!gradients_3/concat_3_grad/Shape_1Const*
valueB: *
dtype0*
_output_shapes
:
l
!gradients_3/concat_3_grad/Shape_2Const*
valueB:*
dtype0*
_output_shapes
:
k
!gradients_3/concat_3_grad/Shape_3Const*
valueB:*
dtype0*
_output_shapes
:

&gradients_3/concat_3_grad/ConcatOffsetConcatOffsetgradients_3/concat_3_grad/modgradients_3/concat_3_grad/Shape!gradients_3/concat_3_grad/Shape_1!gradients_3/concat_3_grad/Shape_2!gradients_3/concat_3_grad/Shape_3*
N*,
_output_shapes
::::
Ą
gradients_3/concat_3_grad/SliceSlicegradients_3/mul_1_grad/Mul&gradients_3/concat_3_grad/ConcatOffsetgradients_3/concat_3_grad/Shape*
Index0*
T0*
_output_shapes	
:
Å
!gradients_3/concat_3_grad/Slice_1Slicegradients_3/mul_1_grad/Mul(gradients_3/concat_3_grad/ConcatOffset:1!gradients_3/concat_3_grad/Shape_1*
Index0*
T0*
_output_shapes
: 
Ę
!gradients_3/concat_3_grad/Slice_2Slicegradients_3/mul_1_grad/Mul(gradients_3/concat_3_grad/ConcatOffset:2!gradients_3/concat_3_grad/Shape_2*
Index0*
T0*
_output_shapes	
:
Å
!gradients_3/concat_3_grad/Slice_3Slicegradients_3/mul_1_grad/Mul(gradients_3/concat_3_grad/ConcatOffset:3!gradients_3/concat_3_grad/Shape_3*
Index0*
T0*
_output_shapes
:
r
!gradients_3/Reshape_20_grad/ShapeConst*
valueB"       *
dtype0*
_output_shapes
:
©
#gradients_3/Reshape_20_grad/ReshapeReshapegradients_3/concat_3_grad/Slice!gradients_3/Reshape_20_grad/Shape*
Tshape0*
_output_shapes

: *
T0
k
!gradients_3/Reshape_21_grad/ShapeConst*
valueB: *
dtype0*
_output_shapes
:
§
#gradients_3/Reshape_21_grad/ReshapeReshape!gradients_3/concat_3_grad/Slice_1!gradients_3/Reshape_21_grad/Shape*
Tshape0*
_output_shapes
: *
T0
r
!gradients_3/Reshape_22_grad/ShapeConst*
valueB"       *
dtype0*
_output_shapes
:
«
#gradients_3/Reshape_22_grad/ReshapeReshape!gradients_3/concat_3_grad/Slice_2!gradients_3/Reshape_22_grad/Shape*
Tshape0*
_output_shapes

: *
T0
k
!gradients_3/Reshape_23_grad/ShapeConst*
valueB:*
dtype0*
_output_shapes
:
§
#gradients_3/Reshape_23_grad/ReshapeReshape!gradients_3/concat_3_grad/Slice_3!gradients_3/Reshape_23_grad/Shape*
T0*
Tshape0*
_output_shapes
:
ń
Agradients_3/gradients_2/pi/dense/MatMul_grad/MatMul_1_grad/MatMulMatMul'gradients_2/pi/dense/Tanh_grad/TanhGrad#gradients_3/Reshape_20_grad/Reshape*
T0*'
_output_shapes
:’’’’’’’’’*
transpose_a( *
transpose_b(
×
Cgradients_3/gradients_2/pi/dense/MatMul_grad/MatMul_1_grad/MatMul_1MatMulPlaceholder#gradients_3/Reshape_20_grad/Reshape*
T0*'
_output_shapes
:’’’’’’’’’ *
transpose_a( *
transpose_b( 
«
Dgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/ShapeShape'gradients_2/pi/dense/Tanh_grad/TanhGrad*
T0*
out_type0*
_output_shapes
:

Fgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/Shape_1Const*
valueB: *
dtype0*
_output_shapes
:

Rgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
§
Tgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_1Const*
valueB:
’’’’’’’’’*
dtype0*
_output_shapes
:

Tgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
ø
Lgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_sliceStridedSliceDgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/ShapeRgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stackTgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_1Tgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_2*
new_axis_mask *
end_mask *
_output_shapes
:*
Index0*
T0*
shrink_axis_mask *
ellipsis_mask *

begin_mask

Ngradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/ones_like/ShapeConst*
_output_shapes
:*
valueB:*
dtype0

Ngradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/ones_like/ConstConst*
value	B :*
dtype0*
_output_shapes
: 
§
Hgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/ones_likeFillNgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/ones_like/ShapeNgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/ones_like/Const*
T0*

index_type0*
_output_shapes
:

Jgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
é
Egradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/concatConcatV2Hgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/ones_likeFgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/Shape_1Jgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0

Tgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
©
Vgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stack_1Const*
_output_shapes
:*
valueB:
’’’’’’’’’*
dtype0
 
Vgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ą
Ngradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1StridedSliceDgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/ShapeTgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stackVgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stack_1Vgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stack_2*
Index0*
T0*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask *
_output_shapes
:

Pgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/concat_1/values_1Const*
valueB:*
dtype0*
_output_shapes
:

Lgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ż
Ggradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/concat_1ConcatV2Ngradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1Pgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/concat_1/values_1Lgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/concat_1/axis*
T0*
N*
_output_shapes
:*

Tidx0
ō
Fgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/ReshapeReshape#gradients_3/Reshape_21_grad/ReshapeEgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/concat*
T0*
Tshape0*
_output_shapes

: 
 
Cgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/TileTileFgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/ReshapeGgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/concat_1*'
_output_shapes
:’’’’’’’’’ *

Tmultiples0*
T0
ī
Cgradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_1_grad/MatMulMatMul"gradients_2/pi/LogSoftmax_grad/sub#gradients_3/Reshape_22_grad/Reshape*'
_output_shapes
:’’’’’’’’’ *
transpose_a( *
transpose_b(*
T0
Ū
Egradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_1_grad/MatMul_1MatMulpi/dense/Tanh#gradients_3/Reshape_22_grad/Reshape*'
_output_shapes
:’’’’’’’’’*
transpose_a( *
transpose_b( *
T0
Ø
Fgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ShapeShape"gradients_2/pi/LogSoftmax_grad/sub*
out_type0*
_output_shapes
:*
T0

Hgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:

Tgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
©
Vgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_1Const*
valueB:
’’’’’’’’’*
dtype0*
_output_shapes
:
 
Vgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ā
Ngradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_sliceStridedSliceFgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ShapeTgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stackVgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_1Vgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask *
_output_shapes
:

Pgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ones_like/ShapeConst*
valueB:*
dtype0*
_output_shapes
:

Pgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ones_like/ConstConst*
value	B :*
dtype0*
_output_shapes
: 
­
Jgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ones_likeFillPgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ones_like/ShapePgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ones_like/Const*
T0*

index_type0*
_output_shapes
:

Lgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ń
Ggradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/concatConcatV2Jgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ones_likeHgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/Shape_1Lgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/concat/axis*
_output_shapes
:*

Tidx0*
T0*
N
 
Vgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
«
Xgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stack_1Const*
_output_shapes
:*
valueB:
’’’’’’’’’*
dtype0
¢
Xgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ź
Pgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1StridedSliceFgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ShapeVgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stackXgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stack_1Xgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stack_2*
_output_shapes
:*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask 

Rgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/concat_1/values_1Const*
_output_shapes
:*
valueB:*
dtype0

Ngradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/concat_1/axisConst*
_output_shapes
: *
value	B : *
dtype0

Igradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/concat_1ConcatV2Pgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1Rgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/concat_1/values_1Ngradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/concat_1/axis*
T0*
N*
_output_shapes
:*

Tidx0
ų
Hgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ReshapeReshape#gradients_3/Reshape_23_grad/ReshapeGgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/concat*
_output_shapes

:*
T0*
Tshape0
¦
Egradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/TileTileHgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ReshapeIgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/concat_1*'
_output_shapes
:’’’’’’’’’*

Tmultiples0*
T0
µ
gradients_3/AddNAddNCgradients_3/gradients_2/pi/dense/MatMul_grad/MatMul_1_grad/MatMul_1Cgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/Tile*
T0*V
_classL
JHloc:@gradients_3/gradients_2/pi/dense/MatMul_grad/MatMul_1_grad/MatMul_1*
N*'
_output_shapes
:’’’’’’’’’ 

>gradients_3/gradients_2/pi/dense/Tanh_grad/TanhGrad_grad/mul/yConst^gradients_3/AddN*
valueB
 *   Ą*
dtype0*
_output_shapes
: 
Ē
<gradients_3/gradients_2/pi/dense/Tanh_grad/TanhGrad_grad/mulMulgradients_3/AddN>gradients_3/gradients_2/pi/dense/Tanh_grad/TanhGrad_grad/mul/y*'
_output_shapes
:’’’’’’’’’ *
T0
ą
>gradients_3/gradients_2/pi/dense/Tanh_grad/TanhGrad_grad/mul_1Mul<gradients_3/gradients_2/pi/dense/Tanh_grad/TanhGrad_grad/mul)gradients_2/pi/dense_1/MatMul_grad/MatMul*
T0*'
_output_shapes
:’’’’’’’’’ 
Ę
>gradients_3/gradients_2/pi/dense/Tanh_grad/TanhGrad_grad/mul_2Mul>gradients_3/gradients_2/pi/dense/Tanh_grad/TanhGrad_grad/mul_1pi/dense/Tanh*'
_output_shapes
:’’’’’’’’’ *
T0
 
Agradients_3/gradients_2/pi/dense/Tanh_grad/TanhGrad_grad/TanhGradTanhGradpi/dense/Tanhgradients_3/AddN*
T0*'
_output_shapes
:’’’’’’’’’ 
ž
Agradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_grad/MatMulMatMulAgradients_3/gradients_2/pi/dense/Tanh_grad/TanhGrad_grad/TanhGradpi/dense_1/kernel/read*
T0*'
_output_shapes
:’’’’’’’’’*
transpose_a( *
transpose_b( 

Cgradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_grad/MatMul_1MatMulAgradients_3/gradients_2/pi/dense/Tanh_grad/TanhGrad_grad/TanhGrad"gradients_2/pi/LogSoftmax_grad/sub*
_output_shapes

: *
transpose_a(*
transpose_b( *
T0

gradients_3/AddN_1AddNEgradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_1_grad/MatMul_1Egradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/TileAgradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_grad/MatMul*'
_output_shapes
:’’’’’’’’’*
T0*X
_classN
LJloc:@gradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_1_grad/MatMul_1*
N

9gradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/ShapeShape!gradients_2/pi/sub_grad/Reshape_1*
T0*
out_type0*
_output_shapes
:

;gradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/Shape_1Shape"gradients_2/pi/LogSoftmax_grad/mul*
T0*
out_type0*
_output_shapes
:

Igradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/BroadcastGradientArgsBroadcastGradientArgs9gradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/Shape;gradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’
Ż
7gradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/SumSumgradients_3/AddN_1Igradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
ś
;gradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/ReshapeReshape7gradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/Sum9gradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/Shape*
Tshape0*'
_output_shapes
:’’’’’’’’’*
T0

7gradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/NegNeggradients_3/AddN_1*
T0*'
_output_shapes
:’’’’’’’’’

9gradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/Sum_1Sum7gradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/NegKgradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0

=gradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/Reshape_1Reshape9gradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/Sum_1;gradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/Shape_1*'
_output_shapes
:’’’’’’’’’*
T0*
Tshape0

9gradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/ShapeShape"gradients_2/pi/LogSoftmax_grad/Sum*
T0*
out_type0*
_output_shapes
:

;gradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/Shape_1Shape"gradients_2/pi/LogSoftmax_grad/Exp*
T0*
out_type0*
_output_shapes
:

Igradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/BroadcastGradientArgsBroadcastGradientArgs9gradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/Shape;gradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/Shape_1*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
T0
Ó
7gradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/MulMul=gradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/Reshape_1"gradients_2/pi/LogSoftmax_grad/Exp*
T0*'
_output_shapes
:’’’’’’’’’

7gradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/SumSum7gradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/MulIgradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
ś
;gradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/ReshapeReshape7gradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/Sum9gradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/Shape*
T0*
Tshape0*'
_output_shapes
:’’’’’’’’’
Õ
9gradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/Mul_1Mul"gradients_2/pi/LogSoftmax_grad/Sum=gradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/Reshape_1*'
_output_shapes
:’’’’’’’’’*
T0

9gradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/Sum_1Sum9gradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/Mul_1Kgradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0

=gradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/Reshape_1Reshape9gradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/Sum_1;gradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:’’’’’’’’’
Ó
7gradients_3/gradients_2/pi/LogSoftmax_grad/Exp_grad/mulMul=gradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/Reshape_1"gradients_2/pi/LogSoftmax_grad/Exp*
T0*'
_output_shapes
:’’’’’’’’’
j
"gradients_3/pi/LogSoftmax_grad/ExpExppi/LogSoftmax*'
_output_shapes
:’’’’’’’’’*
T0

4gradients_3/pi/LogSoftmax_grad/Sum/reduction_indicesConst*
valueB :
’’’’’’’’’*
dtype0*
_output_shapes
: 
ē
"gradients_3/pi/LogSoftmax_grad/SumSum7gradients_3/gradients_2/pi/LogSoftmax_grad/Exp_grad/mul4gradients_3/pi/LogSoftmax_grad/Sum/reduction_indices*
	keep_dims(*

Tidx0*
T0*'
_output_shapes
:’’’’’’’’’
£
"gradients_3/pi/LogSoftmax_grad/mulMul"gradients_3/pi/LogSoftmax_grad/Sum"gradients_3/pi/LogSoftmax_grad/Exp*'
_output_shapes
:’’’’’’’’’*
T0
ø
"gradients_3/pi/LogSoftmax_grad/subSub7gradients_3/gradients_2/pi/LogSoftmax_grad/Exp_grad/mul"gradients_3/pi/LogSoftmax_grad/mul*
T0*'
_output_shapes
:’’’’’’’’’

/gradients_3/pi/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad"gradients_3/pi/LogSoftmax_grad/sub*
_output_shapes
:*
T0*
data_formatNHWC
Ē
)gradients_3/pi/dense_1/MatMul_grad/MatMulMatMul"gradients_3/pi/LogSoftmax_grad/subpi/dense_1/kernel/read*
T0*'
_output_shapes
:’’’’’’’’’ *
transpose_a( *
transpose_b(
·
+gradients_3/pi/dense_1/MatMul_grad/MatMul_1MatMulpi/dense/Tanh"gradients_3/pi/LogSoftmax_grad/sub*
T0*
_output_shapes

: *
transpose_a(*
transpose_b( 
Ż
gradients_3/AddN_2AddNCgradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_1_grad/MatMul>gradients_3/gradients_2/pi/dense/Tanh_grad/TanhGrad_grad/mul_2)gradients_3/pi/dense_1/MatMul_grad/MatMul*V
_classL
JHloc:@gradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_1_grad/MatMul*
N*'
_output_shapes
:’’’’’’’’’ *
T0

'gradients_3/pi/dense/Tanh_grad/TanhGradTanhGradpi/dense/Tanhgradients_3/AddN_2*
T0*'
_output_shapes
:’’’’’’’’’ 

gradients_3/AddN_3AddNCgradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_grad/MatMul_1+gradients_3/pi/dense_1/MatMul_grad/MatMul_1*
T0*V
_classL
JHloc:@gradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_grad/MatMul_1*
N*
_output_shapes

: 
”
-gradients_3/pi/dense/BiasAdd_grad/BiasAddGradBiasAddGrad'gradients_3/pi/dense/Tanh_grad/TanhGrad*
data_formatNHWC*
_output_shapes
: *
T0
Č
'gradients_3/pi/dense/MatMul_grad/MatMulMatMul'gradients_3/pi/dense/Tanh_grad/TanhGradpi/dense/kernel/read*'
_output_shapes
:’’’’’’’’’*
transpose_a( *
transpose_b(*
T0
ø
)gradients_3/pi/dense/MatMul_grad/MatMul_1MatMulPlaceholder'gradients_3/pi/dense/Tanh_grad/TanhGrad*
_output_shapes

: *
transpose_a(*
transpose_b( *
T0
c
Reshape_24/shapeConst*
valueB:
’’’’’’’’’*
dtype0*
_output_shapes
:


Reshape_24Reshape)gradients_3/pi/dense/MatMul_grad/MatMul_1Reshape_24/shape*
_output_shapes	
:*
T0*
Tshape0
c
Reshape_25/shapeConst*
valueB:
’’’’’’’’’*
dtype0*
_output_shapes
:


Reshape_25Reshape-gradients_3/pi/dense/BiasAdd_grad/BiasAddGradReshape_25/shape*
_output_shapes
: *
T0*
Tshape0
c
Reshape_26/shapeConst*
_output_shapes
:*
valueB:
’’’’’’’’’*
dtype0
o

Reshape_26Reshapegradients_3/AddN_3Reshape_26/shape*
T0*
Tshape0*
_output_shapes	
:
c
Reshape_27/shapeConst*
valueB:
’’’’’’’’’*
dtype0*
_output_shapes
:


Reshape_27Reshape/gradients_3/pi/dense_1/BiasAdd_grad/BiasAddGradReshape_27/shape*
T0*
Tshape0*
_output_shapes
:
O
concat_4/axisConst*
value	B : *
dtype0*
_output_shapes
: 

concat_4ConcatV2
Reshape_24
Reshape_25
Reshape_26
Reshape_27concat_4/axis*
_output_shapes	
:¤*

Tidx0*
T0*
N
L
mul_2/xConst*
_output_shapes
: *
valueB
 *ĶĢĢ=*
dtype0
J
mul_2Mulmul_2/xPlaceholder_5*
_output_shapes	
:¤*
T0
C
addAddV2concat_4mul_2*
_output_shapes	
:¤*
T0
c
Reshape_28/shapeConst*
valueB:
’’’’’’’’’*
dtype0*
_output_shapes
:
q

Reshape_28Reshapepi/dense/kernel/readReshape_28/shape*
Tshape0*
_output_shapes	
:*
T0
c
Reshape_29/shapeConst*
_output_shapes
:*
valueB:
’’’’’’’’’*
dtype0
n

Reshape_29Reshapepi/dense/bias/readReshape_29/shape*
T0*
Tshape0*
_output_shapes
: 
c
Reshape_30/shapeConst*
_output_shapes
:*
valueB:
’’’’’’’’’*
dtype0
s

Reshape_30Reshapepi/dense_1/kernel/readReshape_30/shape*
_output_shapes	
:*
T0*
Tshape0
c
Reshape_31/shapeConst*
_output_shapes
:*
valueB:
’’’’’’’’’*
dtype0
p

Reshape_31Reshapepi/dense_1/bias/readReshape_31/shape*
T0*
Tshape0*
_output_shapes
:
O
concat_5/axisConst*
_output_shapes
: *
value	B : *
dtype0

concat_5ConcatV2
Reshape_28
Reshape_29
Reshape_30
Reshape_31concat_5/axis*
N*
_output_shapes	
:¤*

Tidx0*
T0
`
Const_5Const*%
valueB"             *
dtype0*
_output_shapes
:
S
split_2/split_dimConst*
value	B : *
dtype0*
_output_shapes
: 

split_2SplitVPlaceholder_5Const_5split_2/split_dim*.
_output_shapes
:: ::*
	num_split*

Tlen0*
T0
a
Reshape_32/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
g

Reshape_32Reshapesplit_2Reshape_32/shape*
T0*
Tshape0*
_output_shapes

: 
Z
Reshape_33/shapeConst*
_output_shapes
:*
valueB: *
dtype0
e

Reshape_33Reshape	split_2:1Reshape_33/shape*
Tshape0*
_output_shapes
: *
T0
a
Reshape_34/shapeConst*
_output_shapes
:*
valueB"       *
dtype0
i

Reshape_34Reshape	split_2:2Reshape_34/shape*
Tshape0*
_output_shapes

: *
T0
Z
Reshape_35/shapeConst*
valueB:*
dtype0*
_output_shapes
:
e

Reshape_35Reshape	split_2:3Reshape_35/shape*
_output_shapes
:*
T0*
Tshape0
„
Assign_4Assignpi/dense/kernel
Reshape_32*
_output_shapes

: *
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(

Assign_5Assignpi/dense/bias
Reshape_33*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: 
©
Assign_6Assignpi/dense_1/kernel
Reshape_34*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: 
”
Assign_7Assignpi/dense_1/bias
Reshape_35*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:
@
group_deps_2NoOp	^Assign_4	^Assign_5	^Assign_6	^Assign_7
ź
initNoOp^beta1_power/Assign^beta2_power/Assign^pi/dense/bias/Assign^pi/dense/kernel/Assign^pi/dense_1/bias/Assign^pi/dense_1/kernel/Assign^v/dense/bias/Adam/Assign^v/dense/bias/Adam_1/Assign^v/dense/bias/Assign^v/dense/kernel/Adam/Assign^v/dense/kernel/Adam_1/Assign^v/dense/kernel/Assign^v/dense_1/bias/Adam/Assign^v/dense_1/bias/Adam_1/Assign^v/dense_1/bias/Assign^v/dense_1/kernel/Adam/Assign^v/dense_1/kernel/Adam_1/Assign^v/dense_1/kernel/Assign
c
Reshape_36/shapeConst*
valueB:
’’’’’’’’’*
dtype0*
_output_shapes
:
q

Reshape_36Reshapepi/dense/kernel/readReshape_36/shape*
Tshape0*
_output_shapes	
:*
T0
c
Reshape_37/shapeConst*
valueB:
’’’’’’’’’*
dtype0*
_output_shapes
:
n

Reshape_37Reshapepi/dense/bias/readReshape_37/shape*
Tshape0*
_output_shapes
: *
T0
c
Reshape_38/shapeConst*
valueB:
’’’’’’’’’*
dtype0*
_output_shapes
:
s

Reshape_38Reshapepi/dense_1/kernel/readReshape_38/shape*
T0*
Tshape0*
_output_shapes	
:
c
Reshape_39/shapeConst*
_output_shapes
:*
valueB:
’’’’’’’’’*
dtype0
p

Reshape_39Reshapepi/dense_1/bias/readReshape_39/shape*
Tshape0*
_output_shapes
:*
T0
c
Reshape_40/shapeConst*
valueB:
’’’’’’’’’*
dtype0*
_output_shapes
:
p

Reshape_40Reshapev/dense/kernel/readReshape_40/shape*
T0*
Tshape0*
_output_shapes	
:
c
Reshape_41/shapeConst*
valueB:
’’’’’’’’’*
dtype0*
_output_shapes
:
m

Reshape_41Reshapev/dense/bias/readReshape_41/shape*
Tshape0*
_output_shapes
: *
T0
c
Reshape_42/shapeConst*
valueB:
’’’’’’’’’*
dtype0*
_output_shapes
:
q

Reshape_42Reshapev/dense_1/kernel/readReshape_42/shape*
_output_shapes
: *
T0*
Tshape0
c
Reshape_43/shapeConst*
valueB:
’’’’’’’’’*
dtype0*
_output_shapes
:
o

Reshape_43Reshapev/dense_1/bias/readReshape_43/shape*
T0*
Tshape0*
_output_shapes
:
c
Reshape_44/shapeConst*
valueB:
’’’’’’’’’*
dtype0*
_output_shapes
:
l

Reshape_44Reshapebeta1_power/readReshape_44/shape*
T0*
Tshape0*
_output_shapes
:
c
Reshape_45/shapeConst*
valueB:
’’’’’’’’’*
dtype0*
_output_shapes
:
l

Reshape_45Reshapebeta2_power/readReshape_45/shape*
Tshape0*
_output_shapes
:*
T0
c
Reshape_46/shapeConst*
_output_shapes
:*
valueB:
’’’’’’’’’*
dtype0
u

Reshape_46Reshapev/dense/kernel/Adam/readReshape_46/shape*
Tshape0*
_output_shapes	
:*
T0
c
Reshape_47/shapeConst*
valueB:
’’’’’’’’’*
dtype0*
_output_shapes
:
w

Reshape_47Reshapev/dense/kernel/Adam_1/readReshape_47/shape*
_output_shapes	
:*
T0*
Tshape0
c
Reshape_48/shapeConst*
valueB:
’’’’’’’’’*
dtype0*
_output_shapes
:
r

Reshape_48Reshapev/dense/bias/Adam/readReshape_48/shape*
_output_shapes
: *
T0*
Tshape0
c
Reshape_49/shapeConst*
valueB:
’’’’’’’’’*
dtype0*
_output_shapes
:
t

Reshape_49Reshapev/dense/bias/Adam_1/readReshape_49/shape*
T0*
Tshape0*
_output_shapes
: 
c
Reshape_50/shapeConst*
valueB:
’’’’’’’’’*
dtype0*
_output_shapes
:
v

Reshape_50Reshapev/dense_1/kernel/Adam/readReshape_50/shape*
Tshape0*
_output_shapes
: *
T0
c
Reshape_51/shapeConst*
valueB:
’’’’’’’’’*
dtype0*
_output_shapes
:
x

Reshape_51Reshapev/dense_1/kernel/Adam_1/readReshape_51/shape*
_output_shapes
: *
T0*
Tshape0
c
Reshape_52/shapeConst*
valueB:
’’’’’’’’’*
dtype0*
_output_shapes
:
t

Reshape_52Reshapev/dense_1/bias/Adam/readReshape_52/shape*
T0*
Tshape0*
_output_shapes
:
c
Reshape_53/shapeConst*
valueB:
’’’’’’’’’*
dtype0*
_output_shapes
:
v

Reshape_53Reshapev/dense_1/bias/Adam_1/readReshape_53/shape*
T0*
Tshape0*
_output_shapes
:
O
concat_6/axisConst*
value	B : *
dtype0*
_output_shapes
: 
¶
concat_6ConcatV2
Reshape_36
Reshape_37
Reshape_38
Reshape_39
Reshape_40
Reshape_41
Reshape_42
Reshape_43
Reshape_44
Reshape_45
Reshape_46
Reshape_47
Reshape_48
Reshape_49
Reshape_50
Reshape_51
Reshape_52
Reshape_53concat_6/axis*

Tidx0*
T0*
N*
_output_shapes	
:é

h
PyFunc_2PyFuncconcat_6*
_output_shapes
:*
Tin
2*
Tout
2*
token
pyfunc_2

Const_6Const*]
valueTBR"H                                                             *
dtype0*
_output_shapes
:
S
split_3/split_dimConst*
_output_shapes
: *
value	B : *
dtype0
»
split_3SplitVPyFunc_2Const_6split_3/split_dim*
T0*\
_output_shapesJ
H::::::::::::::::::*
	num_split*

Tlen0
a
Reshape_54/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
g

Reshape_54Reshapesplit_3Reshape_54/shape*
T0*
Tshape0*
_output_shapes

: 
Z
Reshape_55/shapeConst*
valueB: *
dtype0*
_output_shapes
:
e

Reshape_55Reshape	split_3:1Reshape_55/shape*
_output_shapes
: *
T0*
Tshape0
a
Reshape_56/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
i

Reshape_56Reshape	split_3:2Reshape_56/shape*
_output_shapes

: *
T0*
Tshape0
Z
Reshape_57/shapeConst*
valueB:*
dtype0*
_output_shapes
:
e

Reshape_57Reshape	split_3:3Reshape_57/shape*
_output_shapes
:*
T0*
Tshape0
a
Reshape_58/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
i

Reshape_58Reshape	split_3:4Reshape_58/shape*
T0*
Tshape0*
_output_shapes

: 
Z
Reshape_59/shapeConst*
valueB: *
dtype0*
_output_shapes
:
e

Reshape_59Reshape	split_3:5Reshape_59/shape*
T0*
Tshape0*
_output_shapes
: 
a
Reshape_60/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
i

Reshape_60Reshape	split_3:6Reshape_60/shape*
Tshape0*
_output_shapes

: *
T0
Z
Reshape_61/shapeConst*
valueB:*
dtype0*
_output_shapes
:
e

Reshape_61Reshape	split_3:7Reshape_61/shape*
T0*
Tshape0*
_output_shapes
:
S
Reshape_62/shapeConst*
valueB *
dtype0*
_output_shapes
: 
a

Reshape_62Reshape	split_3:8Reshape_62/shape*
_output_shapes
: *
T0*
Tshape0
S
Reshape_63/shapeConst*
valueB *
dtype0*
_output_shapes
: 
a

Reshape_63Reshape	split_3:9Reshape_63/shape*
Tshape0*
_output_shapes
: *
T0
a
Reshape_64/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
j

Reshape_64Reshape
split_3:10Reshape_64/shape*
T0*
Tshape0*
_output_shapes

: 
a
Reshape_65/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
j

Reshape_65Reshape
split_3:11Reshape_65/shape*
_output_shapes

: *
T0*
Tshape0
Z
Reshape_66/shapeConst*
valueB: *
dtype0*
_output_shapes
:
f

Reshape_66Reshape
split_3:12Reshape_66/shape*
T0*
Tshape0*
_output_shapes
: 
Z
Reshape_67/shapeConst*
valueB: *
dtype0*
_output_shapes
:
f

Reshape_67Reshape
split_3:13Reshape_67/shape*
T0*
Tshape0*
_output_shapes
: 
a
Reshape_68/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
j

Reshape_68Reshape
split_3:14Reshape_68/shape*
T0*
Tshape0*
_output_shapes

: 
a
Reshape_69/shapeConst*
valueB"       *
dtype0*
_output_shapes
:
j

Reshape_69Reshape
split_3:15Reshape_69/shape*
Tshape0*
_output_shapes

: *
T0
Z
Reshape_70/shapeConst*
_output_shapes
:*
valueB:*
dtype0
f

Reshape_70Reshape
split_3:16Reshape_70/shape*
Tshape0*
_output_shapes
:*
T0
Z
Reshape_71/shapeConst*
valueB:*
dtype0*
_output_shapes
:
f

Reshape_71Reshape
split_3:17Reshape_71/shape*
T0*
Tshape0*
_output_shapes
:
„
Assign_8Assignpi/dense/kernel
Reshape_54*
_output_shapes

: *
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(

Assign_9Assignpi/dense/bias
Reshape_55*
_output_shapes
: *
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(
Ŗ
	Assign_10Assignpi/dense_1/kernel
Reshape_56*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
¢
	Assign_11Assignpi/dense_1/bias
Reshape_57*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:
¤
	Assign_12Assignv/dense/kernel
Reshape_58*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 

	Assign_13Assignv/dense/bias
Reshape_59*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
Ø
	Assign_14Assignv/dense_1/kernel
Reshape_60*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
 
	Assign_15Assignv/dense_1/bias
Reshape_61*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:

	Assign_16Assignbeta1_power
Reshape_62*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 

	Assign_17Assignbeta2_power
Reshape_63*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
©
	Assign_18Assignv/dense/kernel/Adam
Reshape_64*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
«
	Assign_19Assignv/dense/kernel/Adam_1
Reshape_65*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
”
	Assign_20Assignv/dense/bias/Adam
Reshape_66*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
£
	Assign_21Assignv/dense/bias/Adam_1
Reshape_67*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
­
	Assign_22Assignv/dense_1/kernel/Adam
Reshape_68*
_output_shapes

: *
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(
Æ
	Assign_23Assignv/dense_1/kernel/Adam_1
Reshape_69*
_output_shapes

: *
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(
„
	Assign_24Assignv/dense_1/bias/Adam
Reshape_70*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
§
	Assign_25Assignv/dense_1/bias/Adam_1
Reshape_71*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
ź
group_deps_3NoOp
^Assign_10
^Assign_11
^Assign_12
^Assign_13
^Assign_14
^Assign_15
^Assign_16
^Assign_17
^Assign_18
^Assign_19
^Assign_20
^Assign_21
^Assign_22
^Assign_23
^Assign_24
^Assign_25	^Assign_8	^Assign_9
Y
save/filename/inputConst*
_output_shapes
: *
valueB Bmodel*
dtype0
n
save/filenamePlaceholderWithDefaultsave/filename/input*
shape: *
dtype0*
_output_shapes
: 
e

save/ConstPlaceholderWithDefaultsave/filename*
_output_shapes
: *
shape: *
dtype0

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_a7c800e875d840f2a57d8c56fc150224/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
\
save/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
°
save/SaveV2/tensor_namesConst*ć
valueŁBÖBbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:

save/SaveV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
Ó
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesbeta1_powerbeta2_powerpi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1* 
dtypes
2

save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*'
_class
loc:@save/ShardedFilename*
_output_shapes
: *
T0

+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*

axis *
N*
_output_shapes
:*
T0
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency*
T0*
_output_shapes
: 
³
save/RestoreV2/tensor_namesConst*
_output_shapes
:*ć
valueŁBÖBbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0

save/RestoreV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
å
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*\
_output_shapesJ
H::::::::::::::::::* 
dtypes
2

save/AssignAssignbeta1_powersave/RestoreV2*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
”
save/Assign_1Assignbeta2_powersave/RestoreV2:1*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
Ø
save/Assign_2Assignpi/dense/biassave/RestoreV2:2*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: 
°
save/Assign_3Assignpi/dense/kernelsave/RestoreV2:3*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

: 
¬
save/Assign_4Assignpi/dense_1/biassave/RestoreV2:4*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:
“
save/Assign_5Assignpi/dense_1/kernelsave/RestoreV2:5*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
¦
save/Assign_6Assignv/dense/biassave/RestoreV2:6*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
«
save/Assign_7Assignv/dense/bias/Adamsave/RestoreV2:7*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
­
save/Assign_8Assignv/dense/bias/Adam_1save/RestoreV2:8*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
®
save/Assign_9Assignv/dense/kernelsave/RestoreV2:9*
_output_shapes

: *
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(
µ
save/Assign_10Assignv/dense/kernel/Adamsave/RestoreV2:10*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
·
save/Assign_11Assignv/dense/kernel/Adam_1save/RestoreV2:11*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
¬
save/Assign_12Assignv/dense_1/biassave/RestoreV2:12*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(
±
save/Assign_13Assignv/dense_1/bias/Adamsave/RestoreV2:13*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
³
save/Assign_14Assignv/dense_1/bias/Adam_1save/RestoreV2:14*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:
“
save/Assign_15Assignv/dense_1/kernelsave/RestoreV2:15*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
¹
save/Assign_16Assignv/dense_1/kernel/Adamsave/RestoreV2:16*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
»
save/Assign_17Assignv/dense_1/kernel/Adam_1save/RestoreV2:17*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
Ą
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
-
save/restore_allNoOp^save/restore_shard
[
save_1/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
r
save_1/filenamePlaceholderWithDefaultsave_1/filename/input*
dtype0*
_output_shapes
: *
shape: 
i
save_1/ConstPlaceholderWithDefaultsave_1/filename*
shape: *
dtype0*
_output_shapes
: 

save_1/StringJoin/inputs_1Const*<
value3B1 B+_temp_03e030d1646647f6b1a2dd4e428ac299/part*
dtype0*
_output_shapes
: 
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
S
save_1/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
^
save_1/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 

save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards*
_output_shapes
: 
²
save_1/SaveV2/tensor_namesConst*ć
valueŁBÖBbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:

save_1/SaveV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
Ū
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesbeta1_powerbeta2_powerpi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1* 
dtypes
2

save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2*
T0*)
_class
loc:@save_1/ShardedFilename*
_output_shapes
: 
£
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency*
T0*

axis *
N*
_output_shapes
:

save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const*
delete_old_dirs(

save_1/IdentityIdentitysave_1/Const^save_1/MergeV2Checkpoints^save_1/control_dependency*
_output_shapes
: *
T0
µ
save_1/RestoreV2/tensor_namesConst*ć
valueŁBÖBbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1*
dtype0*
_output_shapes
:

!save_1/RestoreV2/shape_and_slicesConst*7
value.B,B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
ķ
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*\
_output_shapesJ
H::::::::::::::::::* 
dtypes
2
”
save_1/AssignAssignbeta1_powersave_1/RestoreV2*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
„
save_1/Assign_1Assignbeta2_powersave_1/RestoreV2:1*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(
¬
save_1/Assign_2Assignpi/dense/biassave_1/RestoreV2:2*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
: 
“
save_1/Assign_3Assignpi/dense/kernelsave_1/RestoreV2:3*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

: 
°
save_1/Assign_4Assignpi/dense_1/biassave_1/RestoreV2:4*
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(
ø
save_1/Assign_5Assignpi/dense_1/kernelsave_1/RestoreV2:5*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

: 
Ŗ
save_1/Assign_6Assignv/dense/biassave_1/RestoreV2:6*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(
Æ
save_1/Assign_7Assignv/dense/bias/Adamsave_1/RestoreV2:7*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(
±
save_1/Assign_8Assignv/dense/bias/Adam_1save_1/RestoreV2:8*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
²
save_1/Assign_9Assignv/dense/kernelsave_1/RestoreV2:9*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: *
use_locking(*
T0
¹
save_1/Assign_10Assignv/dense/kernel/Adamsave_1/RestoreV2:10*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
»
save_1/Assign_11Assignv/dense/kernel/Adam_1save_1/RestoreV2:11*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

: 
°
save_1/Assign_12Assignv/dense_1/biassave_1/RestoreV2:12*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
µ
save_1/Assign_13Assignv/dense_1/bias/Adamsave_1/RestoreV2:13*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(
·
save_1/Assign_14Assignv/dense_1/bias/Adam_1save_1/RestoreV2:14*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
ø
save_1/Assign_15Assignv/dense_1/kernelsave_1/RestoreV2:15*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
½
save_1/Assign_16Assignv/dense_1/kernel/Adamsave_1/RestoreV2:16*
_output_shapes

: *
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(
æ
save_1/Assign_17Assignv/dense_1/kernel/Adam_1save_1/RestoreV2:17*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

: 
ę
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17^save_1/Assign_2^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9
1
save_1/restore_allNoOp^save_1/restore_shard "B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"
train_op

Adam"„
	variables
s
pi/dense/kernel:0pi/dense/kernel/Assignpi/dense/kernel/read:02,pi/dense/kernel/Initializer/random_uniform:08
b
pi/dense/bias:0pi/dense/bias/Assignpi/dense/bias/read:02!pi/dense/bias/Initializer/zeros:08
{
pi/dense_1/kernel:0pi/dense_1/kernel/Assignpi/dense_1/kernel/read:02.pi/dense_1/kernel/Initializer/random_uniform:08
j
pi/dense_1/bias:0pi/dense_1/bias/Assignpi/dense_1/bias/read:02#pi/dense_1/bias/Initializer/zeros:08
o
v/dense/kernel:0v/dense/kernel/Assignv/dense/kernel/read:02+v/dense/kernel/Initializer/random_uniform:08
^
v/dense/bias:0v/dense/bias/Assignv/dense/bias/read:02 v/dense/bias/Initializer/zeros:08
w
v/dense_1/kernel:0v/dense_1/kernel/Assignv/dense_1/kernel/read:02-v/dense_1/kernel/Initializer/random_uniform:08
f
v/dense_1/bias:0v/dense_1/bias/Assignv/dense_1/bias/read:02"v/dense_1/bias/Initializer/zeros:08
T
beta1_power:0beta1_power/Assignbeta1_power/read:02beta1_power/initial_value:0
T
beta2_power:0beta2_power/Assignbeta2_power/read:02beta2_power/initial_value:0
x
v/dense/kernel/Adam:0v/dense/kernel/Adam/Assignv/dense/kernel/Adam/read:02'v/dense/kernel/Adam/Initializer/zeros:0

v/dense/kernel/Adam_1:0v/dense/kernel/Adam_1/Assignv/dense/kernel/Adam_1/read:02)v/dense/kernel/Adam_1/Initializer/zeros:0
p
v/dense/bias/Adam:0v/dense/bias/Adam/Assignv/dense/bias/Adam/read:02%v/dense/bias/Adam/Initializer/zeros:0
x
v/dense/bias/Adam_1:0v/dense/bias/Adam_1/Assignv/dense/bias/Adam_1/read:02'v/dense/bias/Adam_1/Initializer/zeros:0

v/dense_1/kernel/Adam:0v/dense_1/kernel/Adam/Assignv/dense_1/kernel/Adam/read:02)v/dense_1/kernel/Adam/Initializer/zeros:0

v/dense_1/kernel/Adam_1:0v/dense_1/kernel/Adam_1/Assignv/dense_1/kernel/Adam_1/read:02+v/dense_1/kernel/Adam_1/Initializer/zeros:0
x
v/dense_1/bias/Adam:0v/dense_1/bias/Adam/Assignv/dense_1/bias/Adam/read:02'v/dense_1/bias/Adam/Initializer/zeros:0

v/dense_1/bias/Adam_1:0v/dense_1/bias/Adam_1/Assignv/dense_1/bias/Adam_1/read:02)v/dense_1/bias/Adam_1/Initializer/zeros:0"
trainable_variables÷ō
s
pi/dense/kernel:0pi/dense/kernel/Assignpi/dense/kernel/read:02,pi/dense/kernel/Initializer/random_uniform:08
b
pi/dense/bias:0pi/dense/bias/Assignpi/dense/bias/read:02!pi/dense/bias/Initializer/zeros:08
{
pi/dense_1/kernel:0pi/dense_1/kernel/Assignpi/dense_1/kernel/read:02.pi/dense_1/kernel/Initializer/random_uniform:08
j
pi/dense_1/bias:0pi/dense_1/bias/Assignpi/dense_1/bias/read:02#pi/dense_1/bias/Initializer/zeros:08
o
v/dense/kernel:0v/dense/kernel/Assignv/dense/kernel/read:02+v/dense/kernel/Initializer/random_uniform:08
^
v/dense/bias:0v/dense/bias/Assignv/dense/bias/read:02 v/dense/bias/Initializer/zeros:08
w
v/dense_1/kernel:0v/dense_1/kernel/Assignv/dense_1/kernel/read:02-v/dense_1/kernel/Initializer/random_uniform:08
f
v/dense_1/bias:0v/dense_1/bias/Assignv/dense_1/bias/read:02"v/dense_1/bias/Initializer/zeros:08*§
serving_default
)
x$
Placeholder:0’’’’’’’’’#
v
v/Squeeze:0’’’’’’’’’%
pi
pi/Squeeze:0	’’’’’’’’’tensorflow/serving/predict