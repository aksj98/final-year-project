ща

я)и)
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
2	ђљ
A
AddV2
x"T
y"T
z"T"
Ttype:
2	ђљ
Ь
	ApplyAdam
var"Tђ	
m"Tђ	
v"Tђ
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"Tђ" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 
x
Assign
ref"Tђ

value"T

output_ref"Tђ"	
Ttype"
validate_shapebool("
use_lockingbool(ў
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
Ї
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
delete_old_dirsbool(ѕ
=
Mul
x"T
y"T
z"T"
Ttype:
2	љ
е
Multinomial
logits"T
num_samples
output"output_dtype"
seedint "
seed2int "
Ttype:
2	" 
output_dtypetype0	:
2	ѕ
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
ї
OneHot
indices"TI	
depth
on_value"T
	off_value"T
output"T"
axisint         "	
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
Ї
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
list(type)(ѕ
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	ѕ
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
E
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
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
list(type)(0ѕ
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
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
І
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
Ш
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
ї
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
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
ref"dtypeђ"
shapeshape"
dtypetype"
	containerstring "
shared_namestring ѕ
&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.15.22v1.15.0-92-g5d80e1eим	
n
PlaceholderPlaceholder*
dtype0*'
_output_shapes
:         *
shape:         
h
Placeholder_1Placeholder*
dtype0*#
_output_shapes
:         *
shape:         
h
Placeholder_2Placeholder*#
_output_shapes
:         *
shape:         *
dtype0
h
Placeholder_3Placeholder*
dtype0*#
_output_shapes
:         *
shape:         
h
Placeholder_4Placeholder*#
_output_shapes
:         *
shape:         *
dtype0
Ц
0pi/dense/kernel/Initializer/random_uniform/shapeConst*
valueB"   @   *"
_class
loc:@pi/dense/kernel*
dtype0*
_output_shapes
:
Ќ
.pi/dense/kernel/Initializer/random_uniform/minConst*
_output_shapes
: *
valueB
 *:═ЊЙ*"
_class
loc:@pi/dense/kernel*
dtype0
Ќ
.pi/dense/kernel/Initializer/random_uniform/maxConst*
valueB
 *:═Њ>*"
_class
loc:@pi/dense/kernel*
dtype0*
_output_shapes
: 
Ь
8pi/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform0pi/dense/kernel/Initializer/random_uniform/shape*"
_class
loc:@pi/dense/kernel*
seed2*
dtype0*
_output_shapes

:@*

seed*
T0
┌
.pi/dense/kernel/Initializer/random_uniform/subSub.pi/dense/kernel/Initializer/random_uniform/max.pi/dense/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@pi/dense/kernel*
_output_shapes
: 
В
.pi/dense/kernel/Initializer/random_uniform/mulMul8pi/dense/kernel/Initializer/random_uniform/RandomUniform.pi/dense/kernel/Initializer/random_uniform/sub*"
_class
loc:@pi/dense/kernel*
_output_shapes

:@*
T0
я
*pi/dense/kernel/Initializer/random_uniformAdd.pi/dense/kernel/Initializer/random_uniform/mul.pi/dense/kernel/Initializer/random_uniform/min*
_output_shapes

:@*
T0*"
_class
loc:@pi/dense/kernel
Д
pi/dense/kernel
VariableV2*
shape
:@*
dtype0*
_output_shapes

:@*
shared_name *"
_class
loc:@pi/dense/kernel*
	container 
М
pi/dense/kernel/AssignAssignpi/dense/kernel*pi/dense/kernel/Initializer/random_uniform*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

:@
~
pi/dense/kernel/readIdentitypi/dense/kernel*
T0*"
_class
loc:@pi/dense/kernel*
_output_shapes

:@
ј
pi/dense/bias/Initializer/zerosConst*
valueB@*    * 
_class
loc:@pi/dense/bias*
dtype0*
_output_shapes
:@
Џ
pi/dense/bias
VariableV2*
shared_name * 
_class
loc:@pi/dense/bias*
	container *
shape:@*
dtype0*
_output_shapes
:@
Й
pi/dense/bias/AssignAssignpi/dense/biaspi/dense/bias/Initializer/zeros*
_output_shapes
:@*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(
t
pi/dense/bias/readIdentitypi/dense/bias* 
_class
loc:@pi/dense/bias*
_output_shapes
:@*
T0
ћ
pi/dense/MatMulMatMulPlaceholderpi/dense/kernel/read*'
_output_shapes
:         @*
transpose_a( *
transpose_b( *
T0
Ѕ
pi/dense/BiasAddBiasAddpi/dense/MatMulpi/dense/bias/read*
data_formatNHWC*'
_output_shapes
:         @*
T0
Y
pi/dense/ReluRelupi/dense/BiasAdd*'
_output_shapes
:         @*
T0
Е
2pi/dense_1/kernel/Initializer/random_uniform/shapeConst*
valueB"@   @   *$
_class
loc:@pi/dense_1/kernel*
dtype0*
_output_shapes
:
Џ
0pi/dense_1/kernel/Initializer/random_uniform/minConst*
valueB
 *О│]Й*$
_class
loc:@pi/dense_1/kernel*
dtype0*
_output_shapes
: 
Џ
0pi/dense_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *О│]>*$
_class
loc:@pi/dense_1/kernel*
dtype0*
_output_shapes
: 
З
:pi/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform2pi/dense_1/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:@@*

seed*
T0*$
_class
loc:@pi/dense_1/kernel*
seed2
Р
0pi/dense_1/kernel/Initializer/random_uniform/subSub0pi/dense_1/kernel/Initializer/random_uniform/max0pi/dense_1/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes
: 
З
0pi/dense_1/kernel/Initializer/random_uniform/mulMul:pi/dense_1/kernel/Initializer/random_uniform/RandomUniform0pi/dense_1/kernel/Initializer/random_uniform/sub*
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

:@@
Т
,pi/dense_1/kernel/Initializer/random_uniformAdd0pi/dense_1/kernel/Initializer/random_uniform/mul0pi/dense_1/kernel/Initializer/random_uniform/min*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

:@@*
T0
Ф
pi/dense_1/kernel
VariableV2*
shared_name *$
_class
loc:@pi/dense_1/kernel*
	container *
shape
:@@*
dtype0*
_output_shapes

:@@
█
pi/dense_1/kernel/AssignAssignpi/dense_1/kernel,pi/dense_1/kernel/Initializer/random_uniform*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

:@@
ё
pi/dense_1/kernel/readIdentitypi/dense_1/kernel*
T0*$
_class
loc:@pi/dense_1/kernel*
_output_shapes

:@@
њ
!pi/dense_1/bias/Initializer/zerosConst*
valueB@*    *"
_class
loc:@pi/dense_1/bias*
dtype0*
_output_shapes
:@
Ъ
pi/dense_1/bias
VariableV2*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name *"
_class
loc:@pi/dense_1/bias
к
pi/dense_1/bias/AssignAssignpi/dense_1/bias!pi/dense_1/bias/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:@
z
pi/dense_1/bias/readIdentitypi/dense_1/bias*"
_class
loc:@pi/dense_1/bias*
_output_shapes
:@*
T0
џ
pi/dense_1/MatMulMatMulpi/dense/Relupi/dense_1/kernel/read*
T0*'
_output_shapes
:         @*
transpose_a( *
transpose_b( 
Ј
pi/dense_1/BiasAddBiasAddpi/dense_1/MatMulpi/dense_1/bias/read*
data_formatNHWC*'
_output_shapes
:         @*
T0
]
pi/dense_1/ReluRelupi/dense_1/BiasAdd*
T0*'
_output_shapes
:         @
Е
2pi/dense_2/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*
valueB"@      *$
_class
loc:@pi/dense_2/kernel*
dtype0
Џ
0pi/dense_2/kernel/Initializer/random_uniform/minConst*
valueB
 *0ўЙ*$
_class
loc:@pi/dense_2/kernel*
dtype0*
_output_shapes
: 
Џ
0pi/dense_2/kernel/Initializer/random_uniform/maxConst*
valueB
 *0ў>*$
_class
loc:@pi/dense_2/kernel*
dtype0*
_output_shapes
: 
З
:pi/dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform2pi/dense_2/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:@*

seed*
T0*$
_class
loc:@pi/dense_2/kernel*
seed2*
Р
0pi/dense_2/kernel/Initializer/random_uniform/subSub0pi/dense_2/kernel/Initializer/random_uniform/max0pi/dense_2/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*$
_class
loc:@pi/dense_2/kernel
З
0pi/dense_2/kernel/Initializer/random_uniform/mulMul:pi/dense_2/kernel/Initializer/random_uniform/RandomUniform0pi/dense_2/kernel/Initializer/random_uniform/sub*
T0*$
_class
loc:@pi/dense_2/kernel*
_output_shapes

:@
Т
,pi/dense_2/kernel/Initializer/random_uniformAdd0pi/dense_2/kernel/Initializer/random_uniform/mul0pi/dense_2/kernel/Initializer/random_uniform/min*
T0*$
_class
loc:@pi/dense_2/kernel*
_output_shapes

:@
Ф
pi/dense_2/kernel
VariableV2*
dtype0*
_output_shapes

:@*
shared_name *$
_class
loc:@pi/dense_2/kernel*
	container *
shape
:@
█
pi/dense_2/kernel/AssignAssignpi/dense_2/kernel,pi/dense_2/kernel/Initializer/random_uniform*
_output_shapes

:@*
use_locking(*
T0*$
_class
loc:@pi/dense_2/kernel*
validate_shape(
ё
pi/dense_2/kernel/readIdentitypi/dense_2/kernel*
_output_shapes

:@*
T0*$
_class
loc:@pi/dense_2/kernel
њ
!pi/dense_2/bias/Initializer/zerosConst*
_output_shapes
:*
valueB*    *"
_class
loc:@pi/dense_2/bias*
dtype0
Ъ
pi/dense_2/bias
VariableV2*
dtype0*
_output_shapes
:*
shared_name *"
_class
loc:@pi/dense_2/bias*
	container *
shape:
к
pi/dense_2/bias/AssignAssignpi/dense_2/bias!pi/dense_2/bias/Initializer/zeros*
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@pi/dense_2/bias*
validate_shape(
z
pi/dense_2/bias/readIdentitypi/dense_2/bias*
T0*"
_class
loc:@pi/dense_2/bias*
_output_shapes
:
ю
pi/dense_2/MatMulMatMulpi/dense_1/Relupi/dense_2/kernel/read*
T0*'
_output_shapes
:         *
transpose_a( *
transpose_b( 
Ј
pi/dense_2/BiasAddBiasAddpi/dense_2/MatMulpi/dense_2/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:         
a
pi/LogSoftmax
LogSoftmaxpi/dense_2/BiasAdd*
T0*'
_output_shapes
:         
h
&pi/multinomial/Multinomial/num_samplesConst*
value	B :*
dtype0*
_output_shapes
: 
─
pi/multinomial/MultinomialMultinomialpi/dense_2/BiasAdd&pi/multinomial/Multinomial/num_samples*
T0*'
_output_shapes
:         *
seed28*

seed*
output_dtype0	
v

pi/SqueezeSqueezepi/multinomial/Multinomial*
squeeze_dims
*
T0	*#
_output_shapes
:         
X
pi/one_hot/on_valueConst*
valueB
 *  ђ?*
dtype0*
_output_shapes
: 
Y
pi/one_hot/off_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
R
pi/one_hot/depthConst*
value	B :*
dtype0*
_output_shapes
: 
▒

pi/one_hotOneHotPlaceholder_1pi/one_hot/depthpi/one_hot/on_valuepi/one_hot/off_value*
T0*
axis         *
TI0*'
_output_shapes
:         
Z
pi/mulMul
pi/one_hotpi/LogSoftmax*'
_output_shapes
:         *
T0
Z
pi/Sum/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
z
pi/SumSumpi/mulpi/Sum/reduction_indices*#
_output_shapes
:         *
	keep_dims( *

Tidx0*
T0
Z
pi/one_hot_1/on_valueConst*
valueB
 *  ђ?*
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
pi/one_hot_1/depthConst*
value	B :*
dtype0*
_output_shapes
: 
Х
pi/one_hot_1OneHot
pi/Squeezepi/one_hot_1/depthpi/one_hot_1/on_valuepi/one_hot_1/off_value*'
_output_shapes
:         *
T0*
axis         *
TI0	
^
pi/mul_1Mulpi/one_hot_1pi/LogSoftmax*
T0*'
_output_shapes
:         
\
pi/Sum_1/reduction_indicesConst*
_output_shapes
: *
value	B :*
dtype0
ђ
pi/Sum_1Sumpi/mul_1pi/Sum_1/reduction_indices*#
_output_shapes
:         *
	keep_dims( *

Tidx0*
T0
q
pi/PlaceholderPlaceholder*
shape:         *
dtype0*'
_output_shapes
:         
O
pi/ExpExppi/Placeholder*
T0*'
_output_shapes
:         
^
pi/subSubpi/Placeholderpi/LogSoftmax*
T0*'
_output_shapes
:         
Q
pi/mul_2Mulpi/Exppi/sub*
T0*'
_output_shapes
:         
\
pi/Sum_2/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
ђ
pi/Sum_2Sumpi/mul_2pi/Sum_2/reduction_indices*#
_output_shapes
:         *
	keep_dims( *

Tidx0*
T0
R
pi/ConstConst*
valueB: *
dtype0*
_output_shapes
:
a
pi/MeanMeanpi/Sum_2pi/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 
Б
/v/dense/kernel/Initializer/random_uniform/shapeConst*
valueB"   @   *!
_class
loc:@v/dense/kernel*
dtype0*
_output_shapes
:
Ћ
-v/dense/kernel/Initializer/random_uniform/minConst*
valueB
 *:═ЊЙ*!
_class
loc:@v/dense/kernel*
dtype0*
_output_shapes
: 
Ћ
-v/dense/kernel/Initializer/random_uniform/maxConst*
valueB
 *:═Њ>*!
_class
loc:@v/dense/kernel*
dtype0*
_output_shapes
: 
в
7v/dense/kernel/Initializer/random_uniform/RandomUniformRandomUniform/v/dense/kernel/Initializer/random_uniform/shape*
seed2T*
dtype0*
_output_shapes

:@*

seed*
T0*!
_class
loc:@v/dense/kernel
о
-v/dense/kernel/Initializer/random_uniform/subSub-v/dense/kernel/Initializer/random_uniform/max-v/dense/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*!
_class
loc:@v/dense/kernel
У
-v/dense/kernel/Initializer/random_uniform/mulMul7v/dense/kernel/Initializer/random_uniform/RandomUniform-v/dense/kernel/Initializer/random_uniform/sub*
T0*!
_class
loc:@v/dense/kernel*
_output_shapes

:@
┌
)v/dense/kernel/Initializer/random_uniformAdd-v/dense/kernel/Initializer/random_uniform/mul-v/dense/kernel/Initializer/random_uniform/min*
_output_shapes

:@*
T0*!
_class
loc:@v/dense/kernel
Ц
v/dense/kernel
VariableV2*
shared_name *!
_class
loc:@v/dense/kernel*
	container *
shape
:@*
dtype0*
_output_shapes

:@
¤
v/dense/kernel/AssignAssignv/dense/kernel)v/dense/kernel/Initializer/random_uniform*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

:@*
use_locking(*
T0
{
v/dense/kernel/readIdentityv/dense/kernel*!
_class
loc:@v/dense/kernel*
_output_shapes

:@*
T0
ї
v/dense/bias/Initializer/zerosConst*
valueB@*    *
_class
loc:@v/dense/bias*
dtype0*
_output_shapes
:@
Ў
v/dense/bias
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *
_class
loc:@v/dense/bias*
	container *
shape:@
║
v/dense/bias/AssignAssignv/dense/biasv/dense/bias/Initializer/zeros*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
q
v/dense/bias/readIdentityv/dense/bias*
_output_shapes
:@*
T0*
_class
loc:@v/dense/bias
њ
v/dense/MatMulMatMulPlaceholderv/dense/kernel/read*
T0*'
_output_shapes
:         @*
transpose_a( *
transpose_b( 
є
v/dense/BiasAddBiasAddv/dense/MatMulv/dense/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:         @
W
v/dense/ReluReluv/dense/BiasAdd*'
_output_shapes
:         @*
T0
Д
1v/dense_1/kernel/Initializer/random_uniform/shapeConst*
_output_shapes
:*
valueB"@   @   *#
_class
loc:@v/dense_1/kernel*
dtype0
Ў
/v/dense_1/kernel/Initializer/random_uniform/minConst*
valueB
 *О│]Й*#
_class
loc:@v/dense_1/kernel*
dtype0*
_output_shapes
: 
Ў
/v/dense_1/kernel/Initializer/random_uniform/maxConst*
valueB
 *О│]>*#
_class
loc:@v/dense_1/kernel*
dtype0*
_output_shapes
: 
ы
9v/dense_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform1v/dense_1/kernel/Initializer/random_uniform/shape*
seed2e*
dtype0*
_output_shapes

:@@*

seed*
T0*#
_class
loc:@v/dense_1/kernel
я
/v/dense_1/kernel/Initializer/random_uniform/subSub/v/dense_1/kernel/Initializer/random_uniform/max/v/dense_1/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*#
_class
loc:@v/dense_1/kernel
­
/v/dense_1/kernel/Initializer/random_uniform/mulMul9v/dense_1/kernel/Initializer/random_uniform/RandomUniform/v/dense_1/kernel/Initializer/random_uniform/sub*
_output_shapes

:@@*
T0*#
_class
loc:@v/dense_1/kernel
Р
+v/dense_1/kernel/Initializer/random_uniformAdd/v/dense_1/kernel/Initializer/random_uniform/mul/v/dense_1/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@v/dense_1/kernel*
_output_shapes

:@@
Е
v/dense_1/kernel
VariableV2*
shared_name *#
_class
loc:@v/dense_1/kernel*
	container *
shape
:@@*
dtype0*
_output_shapes

:@@
О
v/dense_1/kernel/AssignAssignv/dense_1/kernel+v/dense_1/kernel/Initializer/random_uniform*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

:@@
Ђ
v/dense_1/kernel/readIdentityv/dense_1/kernel*
T0*#
_class
loc:@v/dense_1/kernel*
_output_shapes

:@@
љ
 v/dense_1/bias/Initializer/zerosConst*
valueB@*    *!
_class
loc:@v/dense_1/bias*
dtype0*
_output_shapes
:@
Ю
v/dense_1/bias
VariableV2*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name *!
_class
loc:@v/dense_1/bias
┬
v/dense_1/bias/AssignAssignv/dense_1/bias v/dense_1/bias/Initializer/zeros*
_output_shapes
:@*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(
w
v/dense_1/bias/readIdentityv/dense_1/bias*
_output_shapes
:@*
T0*!
_class
loc:@v/dense_1/bias
Ќ
v/dense_1/MatMulMatMulv/dense/Reluv/dense_1/kernel/read*'
_output_shapes
:         @*
transpose_a( *
transpose_b( *
T0
ї
v/dense_1/BiasAddBiasAddv/dense_1/MatMulv/dense_1/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:         @
[
v/dense_1/ReluReluv/dense_1/BiasAdd*'
_output_shapes
:         @*
T0
Д
1v/dense_2/kernel/Initializer/random_uniform/shapeConst*
valueB"@      *#
_class
loc:@v/dense_2/kernel*
dtype0*
_output_shapes
:
Ў
/v/dense_2/kernel/Initializer/random_uniform/minConst*
valueB
 *ѕјЏЙ*#
_class
loc:@v/dense_2/kernel*
dtype0*
_output_shapes
: 
Ў
/v/dense_2/kernel/Initializer/random_uniform/maxConst*
valueB
 *ѕјЏ>*#
_class
loc:@v/dense_2/kernel*
dtype0*
_output_shapes
: 
ы
9v/dense_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform1v/dense_2/kernel/Initializer/random_uniform/shape*#
_class
loc:@v/dense_2/kernel*
seed2v*
dtype0*
_output_shapes

:@*

seed*
T0
я
/v/dense_2/kernel/Initializer/random_uniform/subSub/v/dense_2/kernel/Initializer/random_uniform/max/v/dense_2/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@v/dense_2/kernel*
_output_shapes
: 
­
/v/dense_2/kernel/Initializer/random_uniform/mulMul9v/dense_2/kernel/Initializer/random_uniform/RandomUniform/v/dense_2/kernel/Initializer/random_uniform/sub*
T0*#
_class
loc:@v/dense_2/kernel*
_output_shapes

:@
Р
+v/dense_2/kernel/Initializer/random_uniformAdd/v/dense_2/kernel/Initializer/random_uniform/mul/v/dense_2/kernel/Initializer/random_uniform/min*
T0*#
_class
loc:@v/dense_2/kernel*
_output_shapes

:@
Е
v/dense_2/kernel
VariableV2*
shared_name *#
_class
loc:@v/dense_2/kernel*
	container *
shape
:@*
dtype0*
_output_shapes

:@
О
v/dense_2/kernel/AssignAssignv/dense_2/kernel+v/dense_2/kernel/Initializer/random_uniform*
_output_shapes

:@*
use_locking(*
T0*#
_class
loc:@v/dense_2/kernel*
validate_shape(
Ђ
v/dense_2/kernel/readIdentityv/dense_2/kernel*
_output_shapes

:@*
T0*#
_class
loc:@v/dense_2/kernel
љ
 v/dense_2/bias/Initializer/zerosConst*
valueB*    *!
_class
loc:@v/dense_2/bias*
dtype0*
_output_shapes
:
Ю
v/dense_2/bias
VariableV2*
shared_name *!
_class
loc:@v/dense_2/bias*
	container *
shape:*
dtype0*
_output_shapes
:
┬
v/dense_2/bias/AssignAssignv/dense_2/bias v/dense_2/bias/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@v/dense_2/bias*
validate_shape(*
_output_shapes
:
w
v/dense_2/bias/readIdentityv/dense_2/bias*
T0*!
_class
loc:@v/dense_2/bias*
_output_shapes
:
Ў
v/dense_2/MatMulMatMulv/dense_1/Reluv/dense_2/kernel/read*
T0*'
_output_shapes
:         *
transpose_a( *
transpose_b( 
ї
v/dense_2/BiasAddBiasAddv/dense_2/MatMulv/dense_2/bias/read*'
_output_shapes
:         *
T0*
data_formatNHWC
l
	v/SqueezeSqueezev/dense_2/BiasAdd*#
_output_shapes
:         *
squeeze_dims
*
T0
O
subSubpi/SumPlaceholder_4*#
_output_shapes
:         *
T0
=
ExpExpsub*#
_output_shapes
:         *
T0
L
mulMulExpPlaceholder_2*#
_output_shapes
:         *
T0
O
ConstConst*
valueB: *
dtype0*
_output_shapes
:
V
MeanMeanmulConst*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
1
NegNegMean*
T0*
_output_shapes
: 
T
sub_1SubPlaceholder_3	v/Squeeze*#
_output_shapes
:         *
T0
J
pow/yConst*
_output_shapes
: *
valueB
 *   @*
dtype0
F
powPowsub_1pow/y*#
_output_shapes
:         *
T0
Q
Const_1Const*
valueB: *
dtype0*
_output_shapes
:
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
gradients/grad_ys_0Const*
_output_shapes
: *
valueB
 *  ђ?*
dtype0
o
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
m
#gradients/Mean_1_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
љ
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
ъ
gradients/Mean_1_grad/TileTilegradients/Mean_1_grad/Reshapegradients/Mean_1_grad/Shape*#
_output_shapes
:         *

Tmultiples0*
T0
`
gradients/Mean_1_grad/Shape_1Shapepow*
_output_shapes
:*
T0*
out_type0
`
gradients/Mean_1_grad/Shape_2Const*
valueB *
dtype0*
_output_shapes
: 
e
gradients/Mean_1_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:
ю
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
а
gradients/Mean_1_grad/Prod_1Prodgradients/Mean_1_grad/Shape_2gradients/Mean_1_grad/Const_1*
T0*
_output_shapes
: *
	keep_dims( *

Tidx0
a
gradients/Mean_1_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 
ѕ
gradients/Mean_1_grad/MaximumMaximumgradients/Mean_1_grad/Prod_1gradients/Mean_1_grad/Maximum/y*
_output_shapes
: *
T0
є
gradients/Mean_1_grad/floordivFloorDivgradients/Mean_1_grad/Prodgradients/Mean_1_grad/Maximum*
T0*
_output_shapes
: 
ѓ
gradients/Mean_1_grad/CastCastgradients/Mean_1_grad/floordiv*
_output_shapes
: *

DstT0*

SrcT0*
Truncate( 
ј
gradients/Mean_1_grad/truedivRealDivgradients/Mean_1_grad/Tilegradients/Mean_1_grad/Cast*#
_output_shapes
:         *
T0
]
gradients/pow_grad/ShapeShapesub_1*
T0*
out_type0*
_output_shapes
:
]
gradients/pow_grad/Shape_1Shapepow/y*
out_type0*
_output_shapes
: *
T0
┤
(gradients/pow_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/pow_grad/Shapegradients/pow_grad/Shape_1*
T0*2
_output_shapes 
:         :         
q
gradients/pow_grad/mulMulgradients/Mean_1_grad/truedivpow/y*
T0*#
_output_shapes
:         
]
gradients/pow_grad/sub/yConst*
_output_shapes
: *
valueB
 *  ђ?*
dtype0
_
gradients/pow_grad/subSubpow/ygradients/pow_grad/sub/y*
T0*
_output_shapes
: 
j
gradients/pow_grad/PowPowsub_1gradients/pow_grad/sub*
T0*#
_output_shapes
:         
}
gradients/pow_grad/mul_1Mulgradients/pow_grad/mulgradients/pow_grad/Pow*#
_output_shapes
:         *
T0
А
gradients/pow_grad/SumSumgradients/pow_grad/mul_1(gradients/pow_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
Њ
gradients/pow_grad/ReshapeReshapegradients/pow_grad/Sumgradients/pow_grad/Shape*
T0*
Tshape0*#
_output_shapes
:         
a
gradients/pow_grad/Greater/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
x
gradients/pow_grad/GreaterGreatersub_1gradients/pow_grad/Greater/y*
T0*#
_output_shapes
:         
g
"gradients/pow_grad/ones_like/ShapeShapesub_1*
T0*
out_type0*
_output_shapes
:
g
"gradients/pow_grad/ones_like/ConstConst*
valueB
 *  ђ?*
dtype0*
_output_shapes
: 
г
gradients/pow_grad/ones_likeFill"gradients/pow_grad/ones_like/Shape"gradients/pow_grad/ones_like/Const*

index_type0*#
_output_shapes
:         *
T0
њ
gradients/pow_grad/SelectSelectgradients/pow_grad/Greatersub_1gradients/pow_grad/ones_like*#
_output_shapes
:         *
T0
f
gradients/pow_grad/LogLoggradients/pow_grad/Select*#
_output_shapes
:         *
T0
_
gradients/pow_grad/zeros_like	ZerosLikesub_1*#
_output_shapes
:         *
T0
д
gradients/pow_grad/Select_1Selectgradients/pow_grad/Greatergradients/pow_grad/Loggradients/pow_grad/zeros_like*#
_output_shapes
:         *
T0
q
gradients/pow_grad/mul_2Mulgradients/Mean_1_grad/truedivpow*
T0*#
_output_shapes
:         
ё
gradients/pow_grad/mul_3Mulgradients/pow_grad/mul_2gradients/pow_grad/Select_1*
T0*#
_output_shapes
:         
Ц
gradients/pow_grad/Sum_1Sumgradients/pow_grad/mul_3*gradients/pow_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
ї
gradients/pow_grad/Reshape_1Reshapegradients/pow_grad/Sum_1gradients/pow_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
g
#gradients/pow_grad/tuple/group_depsNoOp^gradients/pow_grad/Reshape^gradients/pow_grad/Reshape_1
о
+gradients/pow_grad/tuple/control_dependencyIdentitygradients/pow_grad/Reshape$^gradients/pow_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/pow_grad/Reshape*#
_output_shapes
:         
¤
-gradients/pow_grad/tuple/control_dependency_1Identitygradients/pow_grad/Reshape_1$^gradients/pow_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/pow_grad/Reshape_1*
_output_shapes
: 
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
║
*gradients/sub_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_1_grad/Shapegradients/sub_1_grad/Shape_1*2
_output_shapes 
:         :         *
T0
И
gradients/sub_1_grad/SumSum+gradients/pow_grad/tuple/control_dependency*gradients/sub_1_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
Ў
gradients/sub_1_grad/ReshapeReshapegradients/sub_1_grad/Sumgradients/sub_1_grad/Shape*#
_output_shapes
:         *
T0*
Tshape0
z
gradients/sub_1_grad/NegNeg+gradients/pow_grad/tuple/control_dependency*#
_output_shapes
:         *
T0
Е
gradients/sub_1_grad/Sum_1Sumgradients/sub_1_grad/Neg,gradients/sub_1_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Ъ
gradients/sub_1_grad/Reshape_1Reshapegradients/sub_1_grad/Sum_1gradients/sub_1_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:         
m
%gradients/sub_1_grad/tuple/group_depsNoOp^gradients/sub_1_grad/Reshape^gradients/sub_1_grad/Reshape_1
я
-gradients/sub_1_grad/tuple/control_dependencyIdentitygradients/sub_1_grad/Reshape&^gradients/sub_1_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/sub_1_grad/Reshape*#
_output_shapes
:         
С
/gradients/sub_1_grad/tuple/control_dependency_1Identitygradients/sub_1_grad/Reshape_1&^gradients/sub_1_grad/tuple/group_deps*#
_output_shapes
:         *
T0*1
_class'
%#loc:@gradients/sub_1_grad/Reshape_1
o
gradients/v/Squeeze_grad/ShapeShapev/dense_2/BiasAdd*
T0*
out_type0*
_output_shapes
:
╝
 gradients/v/Squeeze_grad/ReshapeReshape/gradients/sub_1_grad/tuple/control_dependency_1gradients/v/Squeeze_grad/Shape*
T0*
Tshape0*'
_output_shapes
:         
Ў
,gradients/v/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad gradients/v/Squeeze_grad/Reshape*
_output_shapes
:*
T0*
data_formatNHWC
І
1gradients/v/dense_2/BiasAdd_grad/tuple/group_depsNoOp!^gradients/v/Squeeze_grad/Reshape-^gradients/v/dense_2/BiasAdd_grad/BiasAddGrad
ѓ
9gradients/v/dense_2/BiasAdd_grad/tuple/control_dependencyIdentity gradients/v/Squeeze_grad/Reshape2^gradients/v/dense_2/BiasAdd_grad/tuple/group_deps*3
_class)
'%loc:@gradients/v/Squeeze_grad/Reshape*'
_output_shapes
:         *
T0
Ј
;gradients/v/dense_2/BiasAdd_grad/tuple/control_dependency_1Identity,gradients/v/dense_2/BiasAdd_grad/BiasAddGrad2^gradients/v/dense_2/BiasAdd_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/v/dense_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
┌
&gradients/v/dense_2/MatMul_grad/MatMulMatMul9gradients/v/dense_2/BiasAdd_grad/tuple/control_dependencyv/dense_2/kernel/read*'
_output_shapes
:         @*
transpose_a( *
transpose_b(*
T0
╠
(gradients/v/dense_2/MatMul_grad/MatMul_1MatMulv/dense_1/Relu9gradients/v/dense_2/BiasAdd_grad/tuple/control_dependency*
_output_shapes

:@*
transpose_a(*
transpose_b( *
T0
ї
0gradients/v/dense_2/MatMul_grad/tuple/group_depsNoOp'^gradients/v/dense_2/MatMul_grad/MatMul)^gradients/v/dense_2/MatMul_grad/MatMul_1
ї
8gradients/v/dense_2/MatMul_grad/tuple/control_dependencyIdentity&gradients/v/dense_2/MatMul_grad/MatMul1^gradients/v/dense_2/MatMul_grad/tuple/group_deps*9
_class/
-+loc:@gradients/v/dense_2/MatMul_grad/MatMul*'
_output_shapes
:         @*
T0
Ѕ
:gradients/v/dense_2/MatMul_grad/tuple/control_dependency_1Identity(gradients/v/dense_2/MatMul_grad/MatMul_11^gradients/v/dense_2/MatMul_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/v/dense_2/MatMul_grad/MatMul_1*
_output_shapes

:@
«
&gradients/v/dense_1/Relu_grad/ReluGradReluGrad8gradients/v/dense_2/MatMul_grad/tuple/control_dependencyv/dense_1/Relu*
T0*'
_output_shapes
:         @
Ъ
,gradients/v/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad&gradients/v/dense_1/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes
:@*
T0
Љ
1gradients/v/dense_1/BiasAdd_grad/tuple/group_depsNoOp-^gradients/v/dense_1/BiasAdd_grad/BiasAddGrad'^gradients/v/dense_1/Relu_grad/ReluGrad
ј
9gradients/v/dense_1/BiasAdd_grad/tuple/control_dependencyIdentity&gradients/v/dense_1/Relu_grad/ReluGrad2^gradients/v/dense_1/BiasAdd_grad/tuple/group_deps*'
_output_shapes
:         @*
T0*9
_class/
-+loc:@gradients/v/dense_1/Relu_grad/ReluGrad
Ј
;gradients/v/dense_1/BiasAdd_grad/tuple/control_dependency_1Identity,gradients/v/dense_1/BiasAdd_grad/BiasAddGrad2^gradients/v/dense_1/BiasAdd_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/v/dense_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:@
┌
&gradients/v/dense_1/MatMul_grad/MatMulMatMul9gradients/v/dense_1/BiasAdd_grad/tuple/control_dependencyv/dense_1/kernel/read*
T0*'
_output_shapes
:         @*
transpose_a( *
transpose_b(
╩
(gradients/v/dense_1/MatMul_grad/MatMul_1MatMulv/dense/Relu9gradients/v/dense_1/BiasAdd_grad/tuple/control_dependency*
_output_shapes

:@@*
transpose_a(*
transpose_b( *
T0
ї
0gradients/v/dense_1/MatMul_grad/tuple/group_depsNoOp'^gradients/v/dense_1/MatMul_grad/MatMul)^gradients/v/dense_1/MatMul_grad/MatMul_1
ї
8gradients/v/dense_1/MatMul_grad/tuple/control_dependencyIdentity&gradients/v/dense_1/MatMul_grad/MatMul1^gradients/v/dense_1/MatMul_grad/tuple/group_deps*9
_class/
-+loc:@gradients/v/dense_1/MatMul_grad/MatMul*'
_output_shapes
:         @*
T0
Ѕ
:gradients/v/dense_1/MatMul_grad/tuple/control_dependency_1Identity(gradients/v/dense_1/MatMul_grad/MatMul_11^gradients/v/dense_1/MatMul_grad/tuple/group_deps*;
_class1
/-loc:@gradients/v/dense_1/MatMul_grad/MatMul_1*
_output_shapes

:@@*
T0
ф
$gradients/v/dense/Relu_grad/ReluGradReluGrad8gradients/v/dense_1/MatMul_grad/tuple/control_dependencyv/dense/Relu*
T0*'
_output_shapes
:         @
Џ
*gradients/v/dense/BiasAdd_grad/BiasAddGradBiasAddGrad$gradients/v/dense/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:@
І
/gradients/v/dense/BiasAdd_grad/tuple/group_depsNoOp+^gradients/v/dense/BiasAdd_grad/BiasAddGrad%^gradients/v/dense/Relu_grad/ReluGrad
є
7gradients/v/dense/BiasAdd_grad/tuple/control_dependencyIdentity$gradients/v/dense/Relu_grad/ReluGrad0^gradients/v/dense/BiasAdd_grad/tuple/group_deps*7
_class-
+)loc:@gradients/v/dense/Relu_grad/ReluGrad*'
_output_shapes
:         @*
T0
Є
9gradients/v/dense/BiasAdd_grad/tuple/control_dependency_1Identity*gradients/v/dense/BiasAdd_grad/BiasAddGrad0^gradients/v/dense/BiasAdd_grad/tuple/group_deps*=
_class3
1/loc:@gradients/v/dense/BiasAdd_grad/BiasAddGrad*
_output_shapes
:@*
T0
н
$gradients/v/dense/MatMul_grad/MatMulMatMul7gradients/v/dense/BiasAdd_grad/tuple/control_dependencyv/dense/kernel/read*
T0*'
_output_shapes
:         *
transpose_a( *
transpose_b(
┼
&gradients/v/dense/MatMul_grad/MatMul_1MatMulPlaceholder7gradients/v/dense/BiasAdd_grad/tuple/control_dependency*
T0*
_output_shapes

:@*
transpose_a(*
transpose_b( 
є
.gradients/v/dense/MatMul_grad/tuple/group_depsNoOp%^gradients/v/dense/MatMul_grad/MatMul'^gradients/v/dense/MatMul_grad/MatMul_1
ё
6gradients/v/dense/MatMul_grad/tuple/control_dependencyIdentity$gradients/v/dense/MatMul_grad/MatMul/^gradients/v/dense/MatMul_grad/tuple/group_deps*7
_class-
+)loc:@gradients/v/dense/MatMul_grad/MatMul*'
_output_shapes
:         *
T0
Ђ
8gradients/v/dense/MatMul_grad/tuple/control_dependency_1Identity&gradients/v/dense/MatMul_grad/MatMul_1/^gradients/v/dense/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/v/dense/MatMul_grad/MatMul_1*
_output_shapes

:@
`
Reshape/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
Ј
ReshapeReshape8gradients/v/dense/MatMul_grad/tuple/control_dependency_1Reshape/shape*
_output_shapes	
:ђ*
T0*
Tshape0
b
Reshape_1/shapeConst*
_output_shapes
:*
valueB:
         *
dtype0
Њ
	Reshape_1Reshape9gradients/v/dense/BiasAdd_grad/tuple/control_dependency_1Reshape_1/shape*
T0*
Tshape0*
_output_shapes
:@
b
Reshape_2/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
Ћ
	Reshape_2Reshape:gradients/v/dense_1/MatMul_grad/tuple/control_dependency_1Reshape_2/shape*
Tshape0*
_output_shapes	
:ђ *
T0
b
Reshape_3/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
Ћ
	Reshape_3Reshape;gradients/v/dense_1/BiasAdd_grad/tuple/control_dependency_1Reshape_3/shape*
_output_shapes
:@*
T0*
Tshape0
b
Reshape_4/shapeConst*
_output_shapes
:*
valueB:
         *
dtype0
ћ
	Reshape_4Reshape:gradients/v/dense_2/MatMul_grad/tuple/control_dependency_1Reshape_4/shape*
Tshape0*
_output_shapes
:@*
T0
b
Reshape_5/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
Ћ
	Reshape_5Reshape;gradients/v/dense_2/BiasAdd_grad/tuple/control_dependency_1Reshape_5/shape*
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
џ
concatConcatV2Reshape	Reshape_1	Reshape_2	Reshape_3	Reshape_4	Reshape_5concat/axis*
T0*
N*
_output_shapes	
:┴%*

Tidx0
g
PyFuncPyFuncconcat*
_output_shapes	
:┴%*
Tin
2*
Tout
2*
token
pyfunc_0
h
Const_2Const*
_output_shapes
:*-
value$B""   @      @   @      *
dtype0
Q
split/split_dimConst*
value	B : *
dtype0*
_output_shapes
: 
Њ
splitSplitVPyFuncConst_2split/split_dim*:
_output_shapes(
&:ђ:@:ђ :@:@:*
	num_split*

Tlen0*
T0
`
Reshape_6/shapeConst*
valueB"   @   *
dtype0*
_output_shapes
:
c
	Reshape_6ReshapesplitReshape_6/shape*
Tshape0*
_output_shapes

:@*
T0
Y
Reshape_7/shapeConst*
valueB:@*
dtype0*
_output_shapes
:
a
	Reshape_7Reshapesplit:1Reshape_7/shape*
_output_shapes
:@*
T0*
Tshape0
`
Reshape_8/shapeConst*
_output_shapes
:*
valueB"@   @   *
dtype0
e
	Reshape_8Reshapesplit:2Reshape_8/shape*
Tshape0*
_output_shapes

:@@*
T0
Y
Reshape_9/shapeConst*
valueB:@*
dtype0*
_output_shapes
:
a
	Reshape_9Reshapesplit:3Reshape_9/shape*
_output_shapes
:@*
T0*
Tshape0
a
Reshape_10/shapeConst*
valueB"@      *
dtype0*
_output_shapes
:
g

Reshape_10Reshapesplit:4Reshape_10/shape*
T0*
Tshape0*
_output_shapes

:@
Z
Reshape_11/shapeConst*
valueB:*
dtype0*
_output_shapes
:
c

Reshape_11Reshapesplit:5Reshape_11/shape*
_output_shapes
:*
T0*
Tshape0

beta1_power/initial_valueConst*
valueB
 *fff?*
_class
loc:@v/dense/bias*
dtype0*
_output_shapes
: 
љ
beta1_power
VariableV2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name *
_class
loc:@v/dense/bias
»
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(
k
beta1_power/readIdentitybeta1_power*
T0*
_class
loc:@v/dense/bias*
_output_shapes
: 

beta2_power/initial_valueConst*
valueB
 *wЙ?*
_class
loc:@v/dense/bias*
dtype0*
_output_shapes
: 
љ
beta2_power
VariableV2*
shared_name *
_class
loc:@v/dense/bias*
	container *
shape: *
dtype0*
_output_shapes
: 
»
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(
k
beta2_power/readIdentitybeta2_power*
T0*
_class
loc:@v/dense/bias*
_output_shapes
: 
Ю
%v/dense/kernel/Adam/Initializer/zerosConst*!
_class
loc:@v/dense/kernel*
valueB@*    *
dtype0*
_output_shapes

:@
ф
v/dense/kernel/Adam
VariableV2*
shared_name *!
_class
loc:@v/dense/kernel*
	container *
shape
:@*
dtype0*
_output_shapes

:@
Н
v/dense/kernel/Adam/AssignAssignv/dense/kernel/Adam%v/dense/kernel/Adam/Initializer/zeros*
_output_shapes

:@*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(
Ё
v/dense/kernel/Adam/readIdentityv/dense/kernel/Adam*
_output_shapes

:@*
T0*!
_class
loc:@v/dense/kernel
Ъ
'v/dense/kernel/Adam_1/Initializer/zerosConst*!
_class
loc:@v/dense/kernel*
valueB@*    *
dtype0*
_output_shapes

:@
г
v/dense/kernel/Adam_1
VariableV2*
dtype0*
_output_shapes

:@*
shared_name *!
_class
loc:@v/dense/kernel*
	container *
shape
:@
█
v/dense/kernel/Adam_1/AssignAssignv/dense/kernel/Adam_1'v/dense/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

:@
Ѕ
v/dense/kernel/Adam_1/readIdentityv/dense/kernel/Adam_1*
T0*!
_class
loc:@v/dense/kernel*
_output_shapes

:@
Љ
#v/dense/bias/Adam/Initializer/zerosConst*
_class
loc:@v/dense/bias*
valueB@*    *
dtype0*
_output_shapes
:@
ъ
v/dense/bias/Adam
VariableV2*
_output_shapes
:@*
shared_name *
_class
loc:@v/dense/bias*
	container *
shape:@*
dtype0
╔
v/dense/bias/Adam/AssignAssignv/dense/bias/Adam#v/dense/bias/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
:@
{
v/dense/bias/Adam/readIdentityv/dense/bias/Adam*
T0*
_class
loc:@v/dense/bias*
_output_shapes
:@
Њ
%v/dense/bias/Adam_1/Initializer/zerosConst*
_class
loc:@v/dense/bias*
valueB@*    *
dtype0*
_output_shapes
:@
а
v/dense/bias/Adam_1
VariableV2*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name *
_class
loc:@v/dense/bias
¤
v/dense/bias/Adam_1/AssignAssignv/dense/bias/Adam_1%v/dense/bias/Adam_1/Initializer/zeros*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0

v/dense/bias/Adam_1/readIdentityv/dense/bias/Adam_1*
_class
loc:@v/dense/bias*
_output_shapes
:@*
T0
Г
7v/dense_1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*#
_class
loc:@v/dense_1/kernel*
valueB"@   @   *
dtype0*
_output_shapes
:
Ќ
-v/dense_1/kernel/Adam/Initializer/zeros/ConstConst*#
_class
loc:@v/dense_1/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 
э
'v/dense_1/kernel/Adam/Initializer/zerosFill7v/dense_1/kernel/Adam/Initializer/zeros/shape_as_tensor-v/dense_1/kernel/Adam/Initializer/zeros/Const*
T0*#
_class
loc:@v/dense_1/kernel*

index_type0*
_output_shapes

:@@
«
v/dense_1/kernel/Adam
VariableV2*
dtype0*
_output_shapes

:@@*
shared_name *#
_class
loc:@v/dense_1/kernel*
	container *
shape
:@@
П
v/dense_1/kernel/Adam/AssignAssignv/dense_1/kernel/Adam'v/dense_1/kernel/Adam/Initializer/zeros*
_output_shapes

:@@*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(
І
v/dense_1/kernel/Adam/readIdentityv/dense_1/kernel/Adam*
_output_shapes

:@@*
T0*#
_class
loc:@v/dense_1/kernel
»
9v/dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*#
_class
loc:@v/dense_1/kernel*
valueB"@   @   *
dtype0*
_output_shapes
:
Ў
/v/dense_1/kernel/Adam_1/Initializer/zeros/ConstConst*
_output_shapes
: *#
_class
loc:@v/dense_1/kernel*
valueB
 *    *
dtype0
§
)v/dense_1/kernel/Adam_1/Initializer/zerosFill9v/dense_1/kernel/Adam_1/Initializer/zeros/shape_as_tensor/v/dense_1/kernel/Adam_1/Initializer/zeros/Const*
_output_shapes

:@@*
T0*#
_class
loc:@v/dense_1/kernel*

index_type0
░
v/dense_1/kernel/Adam_1
VariableV2*
	container *
shape
:@@*
dtype0*
_output_shapes

:@@*
shared_name *#
_class
loc:@v/dense_1/kernel
с
v/dense_1/kernel/Adam_1/AssignAssignv/dense_1/kernel/Adam_1)v/dense_1/kernel/Adam_1/Initializer/zeros*
_output_shapes

:@@*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(
Ј
v/dense_1/kernel/Adam_1/readIdentityv/dense_1/kernel/Adam_1*
T0*#
_class
loc:@v/dense_1/kernel*
_output_shapes

:@@
Ћ
%v/dense_1/bias/Adam/Initializer/zerosConst*
_output_shapes
:@*!
_class
loc:@v/dense_1/bias*
valueB@*    *
dtype0
б
v/dense_1/bias/Adam
VariableV2*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name *!
_class
loc:@v/dense_1/bias
Л
v/dense_1/bias/Adam/AssignAssignv/dense_1/bias/Adam%v/dense_1/bias/Adam/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:@
Ђ
v/dense_1/bias/Adam/readIdentityv/dense_1/bias/Adam*
_output_shapes
:@*
T0*!
_class
loc:@v/dense_1/bias
Ќ
'v/dense_1/bias/Adam_1/Initializer/zerosConst*
_output_shapes
:@*!
_class
loc:@v/dense_1/bias*
valueB@*    *
dtype0
ц
v/dense_1/bias/Adam_1
VariableV2*
shared_name *!
_class
loc:@v/dense_1/bias*
	container *
shape:@*
dtype0*
_output_shapes
:@
О
v/dense_1/bias/Adam_1/AssignAssignv/dense_1/bias/Adam_1'v/dense_1/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:@
Ё
v/dense_1/bias/Adam_1/readIdentityv/dense_1/bias/Adam_1*
T0*!
_class
loc:@v/dense_1/bias*
_output_shapes
:@
А
'v/dense_2/kernel/Adam/Initializer/zerosConst*#
_class
loc:@v/dense_2/kernel*
valueB@*    *
dtype0*
_output_shapes

:@
«
v/dense_2/kernel/Adam
VariableV2*
shared_name *#
_class
loc:@v/dense_2/kernel*
	container *
shape
:@*
dtype0*
_output_shapes

:@
П
v/dense_2/kernel/Adam/AssignAssignv/dense_2/kernel/Adam'v/dense_2/kernel/Adam/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@v/dense_2/kernel*
validate_shape(*
_output_shapes

:@
І
v/dense_2/kernel/Adam/readIdentityv/dense_2/kernel/Adam*
T0*#
_class
loc:@v/dense_2/kernel*
_output_shapes

:@
Б
)v/dense_2/kernel/Adam_1/Initializer/zerosConst*
_output_shapes

:@*#
_class
loc:@v/dense_2/kernel*
valueB@*    *
dtype0
░
v/dense_2/kernel/Adam_1
VariableV2*
shared_name *#
_class
loc:@v/dense_2/kernel*
	container *
shape
:@*
dtype0*
_output_shapes

:@
с
v/dense_2/kernel/Adam_1/AssignAssignv/dense_2/kernel/Adam_1)v/dense_2/kernel/Adam_1/Initializer/zeros*#
_class
loc:@v/dense_2/kernel*
validate_shape(*
_output_shapes

:@*
use_locking(*
T0
Ј
v/dense_2/kernel/Adam_1/readIdentityv/dense_2/kernel/Adam_1*
_output_shapes

:@*
T0*#
_class
loc:@v/dense_2/kernel
Ћ
%v/dense_2/bias/Adam/Initializer/zerosConst*
_output_shapes
:*!
_class
loc:@v/dense_2/bias*
valueB*    *
dtype0
б
v/dense_2/bias/Adam
VariableV2*
dtype0*
_output_shapes
:*
shared_name *!
_class
loc:@v/dense_2/bias*
	container *
shape:
Л
v/dense_2/bias/Adam/AssignAssignv/dense_2/bias/Adam%v/dense_2/bias/Adam/Initializer/zeros*!
_class
loc:@v/dense_2/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
Ђ
v/dense_2/bias/Adam/readIdentityv/dense_2/bias/Adam*
T0*!
_class
loc:@v/dense_2/bias*
_output_shapes
:
Ќ
'v/dense_2/bias/Adam_1/Initializer/zerosConst*
_output_shapes
:*!
_class
loc:@v/dense_2/bias*
valueB*    *
dtype0
ц
v/dense_2/bias/Adam_1
VariableV2*
_output_shapes
:*
shared_name *!
_class
loc:@v/dense_2/bias*
	container *
shape:*
dtype0
О
v/dense_2/bias/Adam_1/AssignAssignv/dense_2/bias/Adam_1'v/dense_2/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@v/dense_2/bias*
validate_shape(*
_output_shapes
:
Ё
v/dense_2/bias/Adam_1/readIdentityv/dense_2/bias/Adam_1*
T0*!
_class
loc:@v/dense_2/bias*
_output_shapes
:
W
Adam/learning_rateConst*
_output_shapes
: *
valueB
 *oЃ:*
dtype0
O

Adam/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
O

Adam/beta2Const*
valueB
 *wЙ?*
dtype0*
_output_shapes
: 
Q
Adam/epsilonConst*
valueB
 *w╠+2*
dtype0*
_output_shapes
: 
╔
$Adam/update_v/dense/kernel/ApplyAdam	ApplyAdamv/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon	Reshape_6*!
_class
loc:@v/dense/kernel*
use_nesterov( *
_output_shapes

:@*
use_locking( *
T0
╗
"Adam/update_v/dense/bias/ApplyAdam	ApplyAdamv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon	Reshape_7*
use_locking( *
T0*
_class
loc:@v/dense/bias*
use_nesterov( *
_output_shapes
:@
М
&Adam/update_v/dense_1/kernel/ApplyAdam	ApplyAdamv/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon	Reshape_8*#
_class
loc:@v/dense_1/kernel*
use_nesterov( *
_output_shapes

:@@*
use_locking( *
T0
┼
$Adam/update_v/dense_1/bias/ApplyAdam	ApplyAdamv/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon	Reshape_9*
_output_shapes
:@*
use_locking( *
T0*!
_class
loc:@v/dense_1/bias*
use_nesterov( 
н
&Adam/update_v/dense_2/kernel/ApplyAdam	ApplyAdamv/dense_2/kernelv/dense_2/kernel/Adamv/dense_2/kernel/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon
Reshape_10*
_output_shapes

:@*
use_locking( *
T0*#
_class
loc:@v/dense_2/kernel*
use_nesterov( 
к
$Adam/update_v/dense_2/bias/ApplyAdam	ApplyAdamv/dense_2/biasv/dense_2/bias/Adamv/dense_2/bias/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon
Reshape_11*
_output_shapes
:*
use_locking( *
T0*!
_class
loc:@v/dense_2/bias*
use_nesterov( 
█
Adam/mulMulbeta1_power/read
Adam/beta1#^Adam/update_v/dense/bias/ApplyAdam%^Adam/update_v/dense/kernel/ApplyAdam%^Adam/update_v/dense_1/bias/ApplyAdam'^Adam/update_v/dense_1/kernel/ApplyAdam%^Adam/update_v/dense_2/bias/ApplyAdam'^Adam/update_v/dense_2/kernel/ApplyAdam*
T0*
_class
loc:@v/dense/bias*
_output_shapes
: 
Ќ
Adam/AssignAssignbeta1_powerAdam/mul*
use_locking( *
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
П

Adam/mul_1Mulbeta2_power/read
Adam/beta2#^Adam/update_v/dense/bias/ApplyAdam%^Adam/update_v/dense/kernel/ApplyAdam%^Adam/update_v/dense_1/bias/ApplyAdam'^Adam/update_v/dense_1/kernel/ApplyAdam%^Adam/update_v/dense_2/bias/ApplyAdam'^Adam/update_v/dense_2/kernel/ApplyAdam*
_output_shapes
: *
T0*
_class
loc:@v/dense/bias
Џ
Adam/Assign_1Assignbeta2_power
Adam/mul_1*
use_locking( *
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
ќ
AdamNoOp^Adam/Assign^Adam/Assign_1#^Adam/update_v/dense/bias/ApplyAdam%^Adam/update_v/dense/kernel/ApplyAdam%^Adam/update_v/dense_1/bias/ApplyAdam'^Adam/update_v/dense_1/kernel/ApplyAdam%^Adam/update_v/dense_2/bias/ApplyAdam'^Adam/update_v/dense_2/kernel/ApplyAdam
j
Reshape_12/shapeConst^Adam*
valueB:
         *
dtype0*
_output_shapes
:
p

Reshape_12Reshapev/dense/kernel/readReshape_12/shape*
T0*
Tshape0*
_output_shapes	
:ђ
j
Reshape_13/shapeConst^Adam*
valueB:
         *
dtype0*
_output_shapes
:
m

Reshape_13Reshapev/dense/bias/readReshape_13/shape*
T0*
Tshape0*
_output_shapes
:@
j
Reshape_14/shapeConst^Adam*
valueB:
         *
dtype0*
_output_shapes
:
r

Reshape_14Reshapev/dense_1/kernel/readReshape_14/shape*
Tshape0*
_output_shapes	
:ђ *
T0
j
Reshape_15/shapeConst^Adam*
valueB:
         *
dtype0*
_output_shapes
:
o

Reshape_15Reshapev/dense_1/bias/readReshape_15/shape*
Tshape0*
_output_shapes
:@*
T0
j
Reshape_16/shapeConst^Adam*
valueB:
         *
dtype0*
_output_shapes
:
q

Reshape_16Reshapev/dense_2/kernel/readReshape_16/shape*
T0*
Tshape0*
_output_shapes
:@
j
Reshape_17/shapeConst^Adam*
_output_shapes
:*
valueB:
         *
dtype0
o

Reshape_17Reshapev/dense_2/bias/readReshape_17/shape*
Tshape0*
_output_shapes
:*
T0
V
concat_1/axisConst^Adam*
_output_shapes
: *
value	B : *
dtype0
д
concat_1ConcatV2
Reshape_12
Reshape_13
Reshape_14
Reshape_15
Reshape_16
Reshape_17concat_1/axis*
T0*
N*
_output_shapes	
:┴%*

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
o
Const_3Const^Adam*-
value$B""   @      @   @      *
dtype0*
_output_shapes
:
Z
split_1/split_dimConst^Adam*
value	B : *
dtype0*
_output_shapes
: 
І
split_1SplitVPyFunc_1Const_3split_1/split_dim*,
_output_shapes
::::::*
	num_split*

Tlen0*
T0
h
Reshape_18/shapeConst^Adam*
valueB"   @   *
dtype0*
_output_shapes
:
g

Reshape_18Reshapesplit_1Reshape_18/shape*
T0*
Tshape0*
_output_shapes

:@
a
Reshape_19/shapeConst^Adam*
_output_shapes
:*
valueB:@*
dtype0
e

Reshape_19Reshape	split_1:1Reshape_19/shape*
_output_shapes
:@*
T0*
Tshape0
h
Reshape_20/shapeConst^Adam*
valueB"@   @   *
dtype0*
_output_shapes
:
i

Reshape_20Reshape	split_1:2Reshape_20/shape*
T0*
Tshape0*
_output_shapes

:@@
a
Reshape_21/shapeConst^Adam*
valueB:@*
dtype0*
_output_shapes
:
e

Reshape_21Reshape	split_1:3Reshape_21/shape*
Tshape0*
_output_shapes
:@*
T0
h
Reshape_22/shapeConst^Adam*
_output_shapes
:*
valueB"@      *
dtype0
i

Reshape_22Reshape	split_1:4Reshape_22/shape*
T0*
Tshape0*
_output_shapes

:@
a
Reshape_23/shapeConst^Adam*
valueB:*
dtype0*
_output_shapes
:
e

Reshape_23Reshape	split_1:5Reshape_23/shape*
T0*
Tshape0*
_output_shapes
:
А
AssignAssignv/dense/kernel
Reshape_18*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

:@
Џ
Assign_1Assignv/dense/bias
Reshape_19*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
:@
Д
Assign_2Assignv/dense_1/kernel
Reshape_20*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

:@@
Ъ
Assign_3Assignv/dense_1/bias
Reshape_21*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:@
Д
Assign_4Assignv/dense_2/kernel
Reshape_22*#
_class
loc:@v/dense_2/kernel*
validate_shape(*
_output_shapes

:@*
use_locking(*
T0
Ъ
Assign_5Assignv/dense_2/bias
Reshape_23*
use_locking(*
T0*!
_class
loc:@v/dense_2/bias*
validate_shape(*
_output_shapes
:
Y

group_depsNoOp^Adam^Assign	^Assign_1	^Assign_2	^Assign_3	^Assign_4	^Assign_5
(
group_deps_1NoOp^Adam^group_deps
T
gradients_1/ShapeConst*
_output_shapes
: *
valueB *
dtype0
Z
gradients_1/grad_ys_0Const*
valueB
 *  ђ?*
dtype0*
_output_shapes
: 
u
gradients_1/FillFillgradients_1/Shapegradients_1/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
R
gradients_1/Neg_grad/NegNeggradients_1/Fill*
T0*
_output_shapes
: 
m
#gradients_1/Mean_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
џ
gradients_1/Mean_grad/ReshapeReshapegradients_1/Neg_grad/Neg#gradients_1/Mean_grad/Reshape/shape*
_output_shapes
:*
T0*
Tshape0
^
gradients_1/Mean_grad/ShapeShapemul*
T0*
out_type0*
_output_shapes
:
ъ
gradients_1/Mean_grad/TileTilegradients_1/Mean_grad/Reshapegradients_1/Mean_grad/Shape*#
_output_shapes
:         *

Tmultiples0*
T0
`
gradients_1/Mean_grad/Shape_1Shapemul*
out_type0*
_output_shapes
:*
T0
`
gradients_1/Mean_grad/Shape_2Const*
valueB *
dtype0*
_output_shapes
: 
e
gradients_1/Mean_grad/ConstConst*
_output_shapes
:*
valueB: *
dtype0
ю
gradients_1/Mean_grad/ProdProdgradients_1/Mean_grad/Shape_1gradients_1/Mean_grad/Const*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
g
gradients_1/Mean_grad/Const_1Const*
_output_shapes
:*
valueB: *
dtype0
а
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
ѕ
gradients_1/Mean_grad/MaximumMaximumgradients_1/Mean_grad/Prod_1gradients_1/Mean_grad/Maximum/y*
T0*
_output_shapes
: 
є
gradients_1/Mean_grad/floordivFloorDivgradients_1/Mean_grad/Prodgradients_1/Mean_grad/Maximum*
_output_shapes
: *
T0
ѓ
gradients_1/Mean_grad/CastCastgradients_1/Mean_grad/floordiv*

SrcT0*
Truncate( *
_output_shapes
: *

DstT0
ј
gradients_1/Mean_grad/truedivRealDivgradients_1/Mean_grad/Tilegradients_1/Mean_grad/Cast*
T0*#
_output_shapes
:         
]
gradients_1/mul_grad/ShapeShapeExp*
T0*
out_type0*
_output_shapes
:
i
gradients_1/mul_grad/Shape_1ShapePlaceholder_2*
T0*
out_type0*
_output_shapes
:
║
*gradients_1/mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/mul_grad/Shapegradients_1/mul_grad/Shape_1*
T0*2
_output_shapes 
:         :         
{
gradients_1/mul_grad/MulMulgradients_1/Mean_grad/truedivPlaceholder_2*#
_output_shapes
:         *
T0
Ц
gradients_1/mul_grad/SumSumgradients_1/mul_grad/Mul*gradients_1/mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
Ў
gradients_1/mul_grad/ReshapeReshapegradients_1/mul_grad/Sumgradients_1/mul_grad/Shape*
T0*
Tshape0*#
_output_shapes
:         
s
gradients_1/mul_grad/Mul_1MulExpgradients_1/Mean_grad/truediv*
T0*#
_output_shapes
:         
Ф
gradients_1/mul_grad/Sum_1Sumgradients_1/mul_grad/Mul_1,gradients_1/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
Ъ
gradients_1/mul_grad/Reshape_1Reshapegradients_1/mul_grad/Sum_1gradients_1/mul_grad/Shape_1*#
_output_shapes
:         *
T0*
Tshape0
p
gradients_1/Exp_grad/mulMulgradients_1/mul_grad/ReshapeExp*#
_output_shapes
:         *
T0
`
gradients_1/sub_grad/ShapeShapepi/Sum*
_output_shapes
:*
T0*
out_type0
i
gradients_1/sub_grad/Shape_1ShapePlaceholder_4*
T0*
out_type0*
_output_shapes
:
║
*gradients_1/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/sub_grad/Shapegradients_1/sub_grad/Shape_1*2
_output_shapes 
:         :         *
T0
Ц
gradients_1/sub_grad/SumSumgradients_1/Exp_grad/mul*gradients_1/sub_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
Ў
gradients_1/sub_grad/ReshapeReshapegradients_1/sub_grad/Sumgradients_1/sub_grad/Shape*
Tshape0*#
_output_shapes
:         *
T0
g
gradients_1/sub_grad/NegNeggradients_1/Exp_grad/mul*
T0*#
_output_shapes
:         
Е
gradients_1/sub_grad/Sum_1Sumgradients_1/sub_grad/Neg,gradients_1/sub_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Ъ
gradients_1/sub_grad/Reshape_1Reshapegradients_1/sub_grad/Sum_1gradients_1/sub_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:         
c
gradients_1/pi/Sum_grad/ShapeShapepi/mul*
_output_shapes
:*
T0*
out_type0
љ
gradients_1/pi/Sum_grad/SizeConst*
value	B :*0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*
dtype0*
_output_shapes
: 
»
gradients_1/pi/Sum_grad/addAddV2pi/Sum/reduction_indicesgradients_1/pi/Sum_grad/Size*
T0*0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*
_output_shapes
: 
х
gradients_1/pi/Sum_grad/modFloorModgradients_1/pi/Sum_grad/addgradients_1/pi/Sum_grad/Size*0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*
_output_shapes
: *
T0
ћ
gradients_1/pi/Sum_grad/Shape_1Const*
valueB *0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*
dtype0*
_output_shapes
: 
Ќ
#gradients_1/pi/Sum_grad/range/startConst*
_output_shapes
: *
value	B : *0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*
dtype0
Ќ
#gradients_1/pi/Sum_grad/range/deltaConst*
value	B :*0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*
dtype0*
_output_shapes
: 
У
gradients_1/pi/Sum_grad/rangeRange#gradients_1/pi/Sum_grad/range/startgradients_1/pi/Sum_grad/Size#gradients_1/pi/Sum_grad/range/delta*0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*
_output_shapes
:*

Tidx0
ќ
"gradients_1/pi/Sum_grad/Fill/valueConst*
value	B :*0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*
dtype0*
_output_shapes
: 
╬
gradients_1/pi/Sum_grad/FillFillgradients_1/pi/Sum_grad/Shape_1"gradients_1/pi/Sum_grad/Fill/value*
T0*

index_type0*0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*
_output_shapes
: 
Ј
%gradients_1/pi/Sum_grad/DynamicStitchDynamicStitchgradients_1/pi/Sum_grad/rangegradients_1/pi/Sum_grad/modgradients_1/pi/Sum_grad/Shapegradients_1/pi/Sum_grad/Fill*
_output_shapes
:*
T0*0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*
N
Ћ
!gradients_1/pi/Sum_grad/Maximum/yConst*
value	B :*0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*
dtype0*
_output_shapes
: 
╦
gradients_1/pi/Sum_grad/MaximumMaximum%gradients_1/pi/Sum_grad/DynamicStitch!gradients_1/pi/Sum_grad/Maximum/y*
T0*0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*
_output_shapes
:
├
 gradients_1/pi/Sum_grad/floordivFloorDivgradients_1/pi/Sum_grad/Shapegradients_1/pi/Sum_grad/Maximum*0
_class&
$"loc:@gradients_1/pi/Sum_grad/Shape*
_output_shapes
:*
T0
И
gradients_1/pi/Sum_grad/ReshapeReshapegradients_1/sub_grad/Reshape%gradients_1/pi/Sum_grad/DynamicStitch*
Tshape0*0
_output_shapes
:                  *
T0
Ф
gradients_1/pi/Sum_grad/TileTilegradients_1/pi/Sum_grad/Reshape gradients_1/pi/Sum_grad/floordiv*

Tmultiples0*
T0*'
_output_shapes
:         
g
gradients_1/pi/mul_grad/ShapeShape
pi/one_hot*
T0*
out_type0*
_output_shapes
:
l
gradients_1/pi/mul_grad/Shape_1Shapepi/LogSoftmax*
out_type0*
_output_shapes
:*
T0
├
-gradients_1/pi/mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/pi/mul_grad/Shapegradients_1/pi/mul_grad/Shape_1*2
_output_shapes 
:         :         *
T0
Ђ
gradients_1/pi/mul_grad/MulMulgradients_1/pi/Sum_grad/Tilepi/LogSoftmax*
T0*'
_output_shapes
:         
«
gradients_1/pi/mul_grad/SumSumgradients_1/pi/mul_grad/Mul-gradients_1/pi/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
д
gradients_1/pi/mul_grad/ReshapeReshapegradients_1/pi/mul_grad/Sumgradients_1/pi/mul_grad/Shape*
T0*
Tshape0*'
_output_shapes
:         
ђ
gradients_1/pi/mul_grad/Mul_1Mul
pi/one_hotgradients_1/pi/Sum_grad/Tile*
T0*'
_output_shapes
:         
┤
gradients_1/pi/mul_grad/Sum_1Sumgradients_1/pi/mul_grad/Mul_1/gradients_1/pi/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
г
!gradients_1/pi/mul_grad/Reshape_1Reshapegradients_1/pi/mul_grad/Sum_1gradients_1/pi/mul_grad/Shape_1*
Tshape0*'
_output_shapes
:         *
T0
j
"gradients_1/pi/LogSoftmax_grad/ExpExppi/LogSoftmax*
T0*'
_output_shapes
:         

4gradients_1/pi/LogSoftmax_grad/Sum/reduction_indicesConst*
valueB :
         *
dtype0*
_output_shapes
: 
Л
"gradients_1/pi/LogSoftmax_grad/SumSum!gradients_1/pi/mul_grad/Reshape_14gradients_1/pi/LogSoftmax_grad/Sum/reduction_indices*
	keep_dims(*

Tidx0*
T0*'
_output_shapes
:         
Б
"gradients_1/pi/LogSoftmax_grad/mulMul"gradients_1/pi/LogSoftmax_grad/Sum"gradients_1/pi/LogSoftmax_grad/Exp*
T0*'
_output_shapes
:         
б
"gradients_1/pi/LogSoftmax_grad/subSub!gradients_1/pi/mul_grad/Reshape_1"gradients_1/pi/LogSoftmax_grad/mul*'
_output_shapes
:         *
T0
ъ
/gradients_1/pi/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad"gradients_1/pi/LogSoftmax_grad/sub*
T0*
data_formatNHWC*
_output_shapes
:
К
)gradients_1/pi/dense_2/MatMul_grad/MatMulMatMul"gradients_1/pi/LogSoftmax_grad/subpi/dense_2/kernel/read*
T0*'
_output_shapes
:         @*
transpose_a( *
transpose_b(
╣
+gradients_1/pi/dense_2/MatMul_grad/MatMul_1MatMulpi/dense_1/Relu"gradients_1/pi/LogSoftmax_grad/sub*
_output_shapes

:@*
transpose_a(*
transpose_b( *
T0
Б
)gradients_1/pi/dense_1/Relu_grad/ReluGradReluGrad)gradients_1/pi/dense_2/MatMul_grad/MatMulpi/dense_1/Relu*
T0*'
_output_shapes
:         @
Ц
/gradients_1/pi/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad)gradients_1/pi/dense_1/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:@
╬
)gradients_1/pi/dense_1/MatMul_grad/MatMulMatMul)gradients_1/pi/dense_1/Relu_grad/ReluGradpi/dense_1/kernel/read*'
_output_shapes
:         @*
transpose_a( *
transpose_b(*
T0
Й
+gradients_1/pi/dense_1/MatMul_grad/MatMul_1MatMulpi/dense/Relu)gradients_1/pi/dense_1/Relu_grad/ReluGrad*
_output_shapes

:@@*
transpose_a(*
transpose_b( *
T0
Ъ
'gradients_1/pi/dense/Relu_grad/ReluGradReluGrad)gradients_1/pi/dense_1/MatMul_grad/MatMulpi/dense/Relu*
T0*'
_output_shapes
:         @
А
-gradients_1/pi/dense/BiasAdd_grad/BiasAddGradBiasAddGrad'gradients_1/pi/dense/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:@
╚
'gradients_1/pi/dense/MatMul_grad/MatMulMatMul'gradients_1/pi/dense/Relu_grad/ReluGradpi/dense/kernel/read*'
_output_shapes
:         *
transpose_a( *
transpose_b(*
T0
И
)gradients_1/pi/dense/MatMul_grad/MatMul_1MatMulPlaceholder'gradients_1/pi/dense/Relu_grad/ReluGrad*
_output_shapes

:@*
transpose_a(*
transpose_b( *
T0
c
Reshape_24/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
є

Reshape_24Reshape)gradients_1/pi/dense/MatMul_grad/MatMul_1Reshape_24/shape*
Tshape0*
_output_shapes	
:ђ*
T0
c
Reshape_25/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
Ѕ

Reshape_25Reshape-gradients_1/pi/dense/BiasAdd_grad/BiasAddGradReshape_25/shape*
Tshape0*
_output_shapes
:@*
T0
c
Reshape_26/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
ѕ

Reshape_26Reshape+gradients_1/pi/dense_1/MatMul_grad/MatMul_1Reshape_26/shape*
T0*
Tshape0*
_output_shapes	
:ђ 
c
Reshape_27/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
І

Reshape_27Reshape/gradients_1/pi/dense_1/BiasAdd_grad/BiasAddGradReshape_27/shape*
_output_shapes
:@*
T0*
Tshape0
c
Reshape_28/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
ѕ

Reshape_28Reshape+gradients_1/pi/dense_2/MatMul_grad/MatMul_1Reshape_28/shape*
_output_shapes	
:ђ*
T0*
Tshape0
c
Reshape_29/shapeConst*
_output_shapes
:*
valueB:
         *
dtype0
І

Reshape_29Reshape/gradients_1/pi/dense_2/BiasAdd_grad/BiasAddGradReshape_29/shape*
T0*
Tshape0*
_output_shapes
:
O
concat_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
д
concat_2ConcatV2
Reshape_24
Reshape_25
Reshape_26
Reshape_27
Reshape_28
Reshape_29concat_2/axis*
N*
_output_shapes	
:ё'*

Tidx0*
T0
T
gradients_2/ShapeConst*
_output_shapes
: *
valueB *
dtype0
Z
gradients_2/grad_ys_0Const*
valueB
 *  ђ?*
dtype0*
_output_shapes
: 
u
gradients_2/FillFillgradients_2/Shapegradients_2/grad_ys_0*

index_type0*
_output_shapes
: *
T0
p
&gradients_2/pi/Mean_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
ў
 gradients_2/pi/Mean_grad/ReshapeReshapegradients_2/Fill&gradients_2/pi/Mean_grad/Reshape/shape*
_output_shapes
:*
T0*
Tshape0
f
gradients_2/pi/Mean_grad/ShapeShapepi/Sum_2*
out_type0*
_output_shapes
:*
T0
Д
gradients_2/pi/Mean_grad/TileTile gradients_2/pi/Mean_grad/Reshapegradients_2/pi/Mean_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:         
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
Ц
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
Е
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
Љ
 gradients_2/pi/Mean_grad/MaximumMaximumgradients_2/pi/Mean_grad/Prod_1"gradients_2/pi/Mean_grad/Maximum/y*
T0*
_output_shapes
: 
Ј
!gradients_2/pi/Mean_grad/floordivFloorDivgradients_2/pi/Mean_grad/Prod gradients_2/pi/Mean_grad/Maximum*
_output_shapes
: *
T0
ѕ
gradients_2/pi/Mean_grad/CastCast!gradients_2/pi/Mean_grad/floordiv*
Truncate( *
_output_shapes
: *

DstT0*

SrcT0
Ќ
 gradients_2/pi/Mean_grad/truedivRealDivgradients_2/pi/Mean_grad/Tilegradients_2/pi/Mean_grad/Cast*#
_output_shapes
:         *
T0
g
gradients_2/pi/Sum_2_grad/ShapeShapepi/mul_2*
T0*
out_type0*
_output_shapes
:
ћ
gradients_2/pi/Sum_2_grad/SizeConst*
_output_shapes
: *
value	B :*2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape*
dtype0
и
gradients_2/pi/Sum_2_grad/addAddV2pi/Sum_2/reduction_indicesgradients_2/pi/Sum_2_grad/Size*
_output_shapes
: *
T0*2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape
й
gradients_2/pi/Sum_2_grad/modFloorModgradients_2/pi/Sum_2_grad/addgradients_2/pi/Sum_2_grad/Size*
T0*2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape*
_output_shapes
: 
ў
!gradients_2/pi/Sum_2_grad/Shape_1Const*
valueB *2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape*
dtype0*
_output_shapes
: 
Џ
%gradients_2/pi/Sum_2_grad/range/startConst*
value	B : *2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape*
dtype0*
_output_shapes
: 
Џ
%gradients_2/pi/Sum_2_grad/range/deltaConst*
_output_shapes
: *
value	B :*2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape*
dtype0
Ы
gradients_2/pi/Sum_2_grad/rangeRange%gradients_2/pi/Sum_2_grad/range/startgradients_2/pi/Sum_2_grad/Size%gradients_2/pi/Sum_2_grad/range/delta*2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape*
_output_shapes
:*

Tidx0
џ
$gradients_2/pi/Sum_2_grad/Fill/valueConst*
_output_shapes
: *
value	B :*2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape*
dtype0
о
gradients_2/pi/Sum_2_grad/FillFill!gradients_2/pi/Sum_2_grad/Shape_1$gradients_2/pi/Sum_2_grad/Fill/value*
T0*

index_type0*2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape*
_output_shapes
: 
Џ
'gradients_2/pi/Sum_2_grad/DynamicStitchDynamicStitchgradients_2/pi/Sum_2_grad/rangegradients_2/pi/Sum_2_grad/modgradients_2/pi/Sum_2_grad/Shapegradients_2/pi/Sum_2_grad/Fill*2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape*
N*
_output_shapes
:*
T0
Ў
#gradients_2/pi/Sum_2_grad/Maximum/yConst*
value	B :*2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape*
dtype0*
_output_shapes
: 
М
!gradients_2/pi/Sum_2_grad/MaximumMaximum'gradients_2/pi/Sum_2_grad/DynamicStitch#gradients_2/pi/Sum_2_grad/Maximum/y*
T0*2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape*
_output_shapes
:
╦
"gradients_2/pi/Sum_2_grad/floordivFloorDivgradients_2/pi/Sum_2_grad/Shape!gradients_2/pi/Sum_2_grad/Maximum*
T0*2
_class(
&$loc:@gradients_2/pi/Sum_2_grad/Shape*
_output_shapes
:
└
!gradients_2/pi/Sum_2_grad/ReshapeReshape gradients_2/pi/Mean_grad/truediv'gradients_2/pi/Sum_2_grad/DynamicStitch*
Tshape0*0
_output_shapes
:                  *
T0
▒
gradients_2/pi/Sum_2_grad/TileTile!gradients_2/pi/Sum_2_grad/Reshape"gradients_2/pi/Sum_2_grad/floordiv*'
_output_shapes
:         *

Tmultiples0*
T0
e
gradients_2/pi/mul_2_grad/ShapeShapepi/Exp*
out_type0*
_output_shapes
:*
T0
g
!gradients_2/pi/mul_2_grad/Shape_1Shapepi/sub*
out_type0*
_output_shapes
:*
T0
╔
/gradients_2/pi/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_2/pi/mul_2_grad/Shape!gradients_2/pi/mul_2_grad/Shape_1*2
_output_shapes 
:         :         *
T0
~
gradients_2/pi/mul_2_grad/MulMulgradients_2/pi/Sum_2_grad/Tilepi/sub*
T0*'
_output_shapes
:         
┤
gradients_2/pi/mul_2_grad/SumSumgradients_2/pi/mul_2_grad/Mul/gradients_2/pi/mul_2_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
г
!gradients_2/pi/mul_2_grad/ReshapeReshapegradients_2/pi/mul_2_grad/Sumgradients_2/pi/mul_2_grad/Shape*
Tshape0*'
_output_shapes
:         *
T0
ђ
gradients_2/pi/mul_2_grad/Mul_1Mulpi/Expgradients_2/pi/Sum_2_grad/Tile*'
_output_shapes
:         *
T0
║
gradients_2/pi/mul_2_grad/Sum_1Sumgradients_2/pi/mul_2_grad/Mul_11gradients_2/pi/mul_2_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
▓
#gradients_2/pi/mul_2_grad/Reshape_1Reshapegradients_2/pi/mul_2_grad/Sum_1!gradients_2/pi/mul_2_grad/Shape_1*
Tshape0*'
_output_shapes
:         *
T0
k
gradients_2/pi/sub_grad/ShapeShapepi/Placeholder*
out_type0*
_output_shapes
:*
T0
l
gradients_2/pi/sub_grad/Shape_1Shapepi/LogSoftmax*
T0*
out_type0*
_output_shapes
:
├
-gradients_2/pi/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_2/pi/sub_grad/Shapegradients_2/pi/sub_grad/Shape_1*
T0*2
_output_shapes 
:         :         
Х
gradients_2/pi/sub_grad/SumSum#gradients_2/pi/mul_2_grad/Reshape_1-gradients_2/pi/sub_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
д
gradients_2/pi/sub_grad/ReshapeReshapegradients_2/pi/sub_grad/Sumgradients_2/pi/sub_grad/Shape*
Tshape0*'
_output_shapes
:         *
T0
y
gradients_2/pi/sub_grad/NegNeg#gradients_2/pi/mul_2_grad/Reshape_1*
T0*'
_output_shapes
:         
▓
gradients_2/pi/sub_grad/Sum_1Sumgradients_2/pi/sub_grad/Neg/gradients_2/pi/sub_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
г
!gradients_2/pi/sub_grad/Reshape_1Reshapegradients_2/pi/sub_grad/Sum_1gradients_2/pi/sub_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:         
j
"gradients_2/pi/LogSoftmax_grad/ExpExppi/LogSoftmax*
T0*'
_output_shapes
:         

4gradients_2/pi/LogSoftmax_grad/Sum/reduction_indicesConst*
valueB :
         *
dtype0*
_output_shapes
: 
Л
"gradients_2/pi/LogSoftmax_grad/SumSum!gradients_2/pi/sub_grad/Reshape_14gradients_2/pi/LogSoftmax_grad/Sum/reduction_indices*'
_output_shapes
:         *
	keep_dims(*

Tidx0*
T0
Б
"gradients_2/pi/LogSoftmax_grad/mulMul"gradients_2/pi/LogSoftmax_grad/Sum"gradients_2/pi/LogSoftmax_grad/Exp*
T0*'
_output_shapes
:         
б
"gradients_2/pi/LogSoftmax_grad/subSub!gradients_2/pi/sub_grad/Reshape_1"gradients_2/pi/LogSoftmax_grad/mul*'
_output_shapes
:         *
T0
ъ
/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad"gradients_2/pi/LogSoftmax_grad/sub*
T0*
data_formatNHWC*
_output_shapes
:
К
)gradients_2/pi/dense_2/MatMul_grad/MatMulMatMul"gradients_2/pi/LogSoftmax_grad/subpi/dense_2/kernel/read*'
_output_shapes
:         @*
transpose_a( *
transpose_b(*
T0
╣
+gradients_2/pi/dense_2/MatMul_grad/MatMul_1MatMulpi/dense_1/Relu"gradients_2/pi/LogSoftmax_grad/sub*
_output_shapes

:@*
transpose_a(*
transpose_b( *
T0
Б
)gradients_2/pi/dense_1/Relu_grad/ReluGradReluGrad)gradients_2/pi/dense_2/MatMul_grad/MatMulpi/dense_1/Relu*'
_output_shapes
:         @*
T0
Ц
/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad)gradients_2/pi/dense_1/Relu_grad/ReluGrad*
_output_shapes
:@*
T0*
data_formatNHWC
╬
)gradients_2/pi/dense_1/MatMul_grad/MatMulMatMul)gradients_2/pi/dense_1/Relu_grad/ReluGradpi/dense_1/kernel/read*'
_output_shapes
:         @*
transpose_a( *
transpose_b(*
T0
Й
+gradients_2/pi/dense_1/MatMul_grad/MatMul_1MatMulpi/dense/Relu)gradients_2/pi/dense_1/Relu_grad/ReluGrad*
T0*
_output_shapes

:@@*
transpose_a(*
transpose_b( 
Ъ
'gradients_2/pi/dense/Relu_grad/ReluGradReluGrad)gradients_2/pi/dense_1/MatMul_grad/MatMulpi/dense/Relu*'
_output_shapes
:         @*
T0
А
-gradients_2/pi/dense/BiasAdd_grad/BiasAddGradBiasAddGrad'gradients_2/pi/dense/Relu_grad/ReluGrad*
data_formatNHWC*
_output_shapes
:@*
T0
╚
'gradients_2/pi/dense/MatMul_grad/MatMulMatMul'gradients_2/pi/dense/Relu_grad/ReluGradpi/dense/kernel/read*'
_output_shapes
:         *
transpose_a( *
transpose_b(*
T0
И
)gradients_2/pi/dense/MatMul_grad/MatMul_1MatMulPlaceholder'gradients_2/pi/dense/Relu_grad/ReluGrad*
T0*
_output_shapes

:@*
transpose_a(*
transpose_b( 
c
Reshape_30/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
є

Reshape_30Reshape)gradients_2/pi/dense/MatMul_grad/MatMul_1Reshape_30/shape*
T0*
Tshape0*
_output_shapes	
:ђ
c
Reshape_31/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
Ѕ

Reshape_31Reshape-gradients_2/pi/dense/BiasAdd_grad/BiasAddGradReshape_31/shape*
T0*
Tshape0*
_output_shapes
:@
c
Reshape_32/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
ѕ

Reshape_32Reshape+gradients_2/pi/dense_1/MatMul_grad/MatMul_1Reshape_32/shape*
T0*
Tshape0*
_output_shapes	
:ђ 
c
Reshape_33/shapeConst*
_output_shapes
:*
valueB:
         *
dtype0
І

Reshape_33Reshape/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGradReshape_33/shape*
Tshape0*
_output_shapes
:@*
T0
c
Reshape_34/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
ѕ

Reshape_34Reshape+gradients_2/pi/dense_2/MatMul_grad/MatMul_1Reshape_34/shape*
_output_shapes	
:ђ*
T0*
Tshape0
c
Reshape_35/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
І

Reshape_35Reshape/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGradReshape_35/shape*
T0*
Tshape0*
_output_shapes
:
O
concat_3/axisConst*
_output_shapes
: *
value	B : *
dtype0
д
concat_3ConcatV2
Reshape_30
Reshape_31
Reshape_32
Reshape_33
Reshape_34
Reshape_35concat_3/axis*

Tidx0*
T0*
N*
_output_shapes	
:ё'
X
Placeholder_5Placeholder*
_output_shapes	
:ё'*
shape:ё'*
dtype0
K
mul_1Mulconcat_3Placeholder_5*
_output_shapes	
:ё'*
T0
Q
Const_4Const*
valueB: *
dtype0*
_output_shapes
:
X
SumSummul_1Const_4*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
T
gradients_3/ShapeConst*
_output_shapes
: *
valueB *
dtype0
Z
gradients_3/grad_ys_0Const*
_output_shapes
: *
valueB
 *  ђ?*
dtype0
u
gradients_3/FillFillgradients_3/Shapegradients_3/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
l
"gradients_3/Sum_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
љ
gradients_3/Sum_grad/ReshapeReshapegradients_3/Fill"gradients_3/Sum_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
e
gradients_3/Sum_grad/ConstConst*
valueB:ё'*
dtype0*
_output_shapes
:
Њ
gradients_3/Sum_grad/TileTilegradients_3/Sum_grad/Reshapegradients_3/Sum_grad/Const*
_output_shapes	
:ё'*

Tmultiples0*
T0
q
gradients_3/mul_1_grad/MulMulgradients_3/Sum_grad/TilePlaceholder_5*
T0*
_output_shapes	
:ё'
n
gradients_3/mul_1_grad/Mul_1Mulgradients_3/Sum_grad/Tileconcat_3*
T0*
_output_shapes	
:ё'
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
valueB:ђ*
dtype0*
_output_shapes
:
k
!gradients_3/concat_3_grad/Shape_1Const*
valueB:@*
dtype0*
_output_shapes
:
l
!gradients_3/concat_3_grad/Shape_2Const*
valueB:ђ *
dtype0*
_output_shapes
:
k
!gradients_3/concat_3_grad/Shape_3Const*
_output_shapes
:*
valueB:@*
dtype0
l
!gradients_3/concat_3_grad/Shape_4Const*
valueB:ђ*
dtype0*
_output_shapes
:
k
!gradients_3/concat_3_grad/Shape_5Const*
_output_shapes
:*
valueB:*
dtype0
У
&gradients_3/concat_3_grad/ConcatOffsetConcatOffsetgradients_3/concat_3_grad/modgradients_3/concat_3_grad/Shape!gradients_3/concat_3_grad/Shape_1!gradients_3/concat_3_grad/Shape_2!gradients_3/concat_3_grad/Shape_3!gradients_3/concat_3_grad/Shape_4!gradients_3/concat_3_grad/Shape_5*8
_output_shapes&
$::::::*
N
└
gradients_3/concat_3_grad/SliceSlicegradients_3/mul_1_grad/Mul&gradients_3/concat_3_grad/ConcatOffsetgradients_3/concat_3_grad/Shape*
_output_shapes	
:ђ*
Index0*
T0
┼
!gradients_3/concat_3_grad/Slice_1Slicegradients_3/mul_1_grad/Mul(gradients_3/concat_3_grad/ConcatOffset:1!gradients_3/concat_3_grad/Shape_1*
Index0*
T0*
_output_shapes
:@
к
!gradients_3/concat_3_grad/Slice_2Slicegradients_3/mul_1_grad/Mul(gradients_3/concat_3_grad/ConcatOffset:2!gradients_3/concat_3_grad/Shape_2*
Index0*
T0*
_output_shapes	
:ђ 
┼
!gradients_3/concat_3_grad/Slice_3Slicegradients_3/mul_1_grad/Mul(gradients_3/concat_3_grad/ConcatOffset:3!gradients_3/concat_3_grad/Shape_3*
_output_shapes
:@*
Index0*
T0
к
!gradients_3/concat_3_grad/Slice_4Slicegradients_3/mul_1_grad/Mul(gradients_3/concat_3_grad/ConcatOffset:4!gradients_3/concat_3_grad/Shape_4*
Index0*
T0*
_output_shapes	
:ђ
┼
!gradients_3/concat_3_grad/Slice_5Slicegradients_3/mul_1_grad/Mul(gradients_3/concat_3_grad/ConcatOffset:5!gradients_3/concat_3_grad/Shape_5*
Index0*
T0*
_output_shapes
:
r
!gradients_3/Reshape_30_grad/ShapeConst*
valueB"   @   *
dtype0*
_output_shapes
:
Е
#gradients_3/Reshape_30_grad/ReshapeReshapegradients_3/concat_3_grad/Slice!gradients_3/Reshape_30_grad/Shape*
_output_shapes

:@*
T0*
Tshape0
k
!gradients_3/Reshape_31_grad/ShapeConst*
valueB:@*
dtype0*
_output_shapes
:
Д
#gradients_3/Reshape_31_grad/ReshapeReshape!gradients_3/concat_3_grad/Slice_1!gradients_3/Reshape_31_grad/Shape*
_output_shapes
:@*
T0*
Tshape0
r
!gradients_3/Reshape_32_grad/ShapeConst*
valueB"@   @   *
dtype0*
_output_shapes
:
Ф
#gradients_3/Reshape_32_grad/ReshapeReshape!gradients_3/concat_3_grad/Slice_2!gradients_3/Reshape_32_grad/Shape*
_output_shapes

:@@*
T0*
Tshape0
k
!gradients_3/Reshape_33_grad/ShapeConst*
valueB:@*
dtype0*
_output_shapes
:
Д
#gradients_3/Reshape_33_grad/ReshapeReshape!gradients_3/concat_3_grad/Slice_3!gradients_3/Reshape_33_grad/Shape*
T0*
Tshape0*
_output_shapes
:@
r
!gradients_3/Reshape_34_grad/ShapeConst*
valueB"@      *
dtype0*
_output_shapes
:
Ф
#gradients_3/Reshape_34_grad/ReshapeReshape!gradients_3/concat_3_grad/Slice_4!gradients_3/Reshape_34_grad/Shape*
Tshape0*
_output_shapes

:@*
T0
k
!gradients_3/Reshape_35_grad/ShapeConst*
valueB:*
dtype0*
_output_shapes
:
Д
#gradients_3/Reshape_35_grad/ReshapeReshape!gradients_3/concat_3_grad/Slice_5!gradients_3/Reshape_35_grad/Shape*
T0*
Tshape0*
_output_shapes
:
ы
Agradients_3/gradients_2/pi/dense/MatMul_grad/MatMul_1_grad/MatMulMatMul'gradients_2/pi/dense/Relu_grad/ReluGrad#gradients_3/Reshape_30_grad/Reshape*
T0*'
_output_shapes
:         *
transpose_a( *
transpose_b(
О
Cgradients_3/gradients_2/pi/dense/MatMul_grad/MatMul_1_grad/MatMul_1MatMulPlaceholder#gradients_3/Reshape_30_grad/Reshape*
T0*'
_output_shapes
:         @*
transpose_a( *
transpose_b( 
Ф
Dgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/ShapeShape'gradients_2/pi/dense/Relu_grad/ReluGrad*
T0*
out_type0*
_output_shapes
:
љ
Fgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/Shape_1Const*
valueB:@*
dtype0*
_output_shapes
:
ю
Rgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Д
Tgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_1Const*
valueB:
         *
dtype0*
_output_shapes
:
ъ
Tgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
И
Lgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_sliceStridedSliceDgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/ShapeRgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stackTgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_1Tgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_2*
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask *
_output_shapes
:*
Index0*
T0*
shrink_axis_mask 
ў
Ngradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/ones_like/ShapeConst*
valueB:*
dtype0*
_output_shapes
:
љ
Ngradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/ones_like/ConstConst*
value	B :*
dtype0*
_output_shapes
: 
Д
Hgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/ones_likeFillNgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/ones_like/ShapeNgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/ones_like/Const*
_output_shapes
:*
T0*

index_type0
ї
Jgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ж
Egradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/concatConcatV2Hgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/ones_likeFgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/Shape_1Jgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/concat/axis*
_output_shapes
:*

Tidx0*
T0*
N
ъ
Tgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
Е
Vgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stack_1Const*
_output_shapes
:*
valueB:
         *
dtype0
а
Vgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
└
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
џ
Pgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/concat_1/values_1Const*
valueB:*
dtype0*
_output_shapes
:
ј
Lgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
§
Ggradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/concat_1ConcatV2Ngradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1Pgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/concat_1/values_1Lgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/concat_1/axis*
N*
_output_shapes
:*

Tidx0*
T0
З
Fgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/ReshapeReshape#gradients_3/Reshape_31_grad/ReshapeEgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/concat*
_output_shapes

:@*
T0*
Tshape0
а
Cgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/TileTileFgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/ReshapeGgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/concat_1*

Tmultiples0*
T0*'
_output_shapes
:         @
ш
Cgradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_1_grad/MatMulMatMul)gradients_2/pi/dense_1/Relu_grad/ReluGrad#gradients_3/Reshape_32_grad/Reshape*
T0*'
_output_shapes
:         @*
transpose_a( *
transpose_b(
█
Egradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_1_grad/MatMul_1MatMulpi/dense/Relu#gradients_3/Reshape_32_grad/Reshape*'
_output_shapes
:         @*
transpose_a( *
transpose_b( *
T0
»
Fgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ShapeShape)gradients_2/pi/dense_1/Relu_grad/ReluGrad*
T0*
out_type0*
_output_shapes
:
њ
Hgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/Shape_1Const*
valueB:@*
dtype0*
_output_shapes
:
ъ
Tgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Е
Vgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_1Const*
valueB:
         *
dtype0*
_output_shapes
:
а
Vgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
┬
Ngradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_sliceStridedSliceFgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ShapeTgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stackVgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_1Vgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_2*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:*
T0*
Index0*
shrink_axis_mask 
џ
Pgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ones_like/ShapeConst*
valueB:*
dtype0*
_output_shapes
:
њ
Pgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ones_like/ConstConst*
value	B :*
dtype0*
_output_shapes
: 
Г
Jgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ones_likeFillPgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ones_like/ShapePgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ones_like/Const*

index_type0*
_output_shapes
:*
T0
ј
Lgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ы
Ggradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/concatConcatV2Jgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ones_likeHgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/Shape_1Lgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
а
Vgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stackConst*
_output_shapes
:*
valueB: *
dtype0
Ф
Xgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stack_1Const*
valueB:
         *
dtype0*
_output_shapes
:
б
Xgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
╩
Pgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1StridedSliceFgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ShapeVgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stackXgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stack_1Xgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stack_2*
_output_shapes
:*
T0*
Index0*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask 
ю
Rgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/concat_1/values_1Const*
_output_shapes
:*
valueB:*
dtype0
љ
Ngradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/concat_1/axisConst*
_output_shapes
: *
value	B : *
dtype0
Ё
Igradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/concat_1ConcatV2Pgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1Rgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/concat_1/values_1Ngradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/concat_1/axis*

Tidx0*
T0*
N*
_output_shapes
:
Э
Hgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ReshapeReshape#gradients_3/Reshape_33_grad/ReshapeGgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/concat*
Tshape0*
_output_shapes

:@*
T0
д
Egradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/TileTileHgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/ReshapeIgradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/concat_1*'
_output_shapes
:         @*

Tmultiples0*
T0
Ь
Cgradients_3/gradients_2/pi/dense_2/MatMul_grad/MatMul_1_grad/MatMulMatMul"gradients_2/pi/LogSoftmax_grad/sub#gradients_3/Reshape_34_grad/Reshape*'
_output_shapes
:         @*
transpose_a( *
transpose_b(*
T0
П
Egradients_3/gradients_2/pi/dense_2/MatMul_grad/MatMul_1_grad/MatMul_1MatMulpi/dense_1/Relu#gradients_3/Reshape_34_grad/Reshape*'
_output_shapes
:         *
transpose_a( *
transpose_b( *
T0
е
Fgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/ShapeShape"gradients_2/pi/LogSoftmax_grad/sub*
T0*
out_type0*
_output_shapes
:
њ
Hgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
ъ
Tgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Е
Vgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_1Const*
valueB:
         *
dtype0*
_output_shapes
:
а
Vgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
┬
Ngradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_sliceStridedSliceFgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/ShapeTgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stackVgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_1Vgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask *
_output_shapes
:
џ
Pgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/ones_like/ShapeConst*
valueB:*
dtype0*
_output_shapes
:
њ
Pgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/ones_like/ConstConst*
_output_shapes
: *
value	B :*
dtype0
Г
Jgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/ones_likeFillPgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/ones_like/ShapePgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/ones_like/Const*

index_type0*
_output_shapes
:*
T0
ј
Lgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ы
Ggradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/concatConcatV2Jgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/ones_likeHgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/Shape_1Lgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/concat/axis*
_output_shapes
:*

Tidx0*
T0*
N
а
Vgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stackConst*
_output_shapes
:*
valueB: *
dtype0
Ф
Xgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stack_1Const*
valueB:
         *
dtype0*
_output_shapes
:
б
Xgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
╩
Pgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1StridedSliceFgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/ShapeVgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stackXgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stack_1Xgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1/stack_2*
Index0*
T0*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask *
_output_shapes
:
ю
Rgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/concat_1/values_1Const*
_output_shapes
:*
valueB:*
dtype0
љ
Ngradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ё
Igradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/concat_1ConcatV2Pgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/strided_slice_1Rgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/concat_1/values_1Ngradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/concat_1/axis*
T0*
N*
_output_shapes
:*

Tidx0
Э
Hgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/ReshapeReshape#gradients_3/Reshape_35_grad/ReshapeGgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/concat*
T0*
Tshape0*
_output_shapes

:
д
Egradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/TileTileHgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/ReshapeIgradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/concat_1*

Tmultiples0*
T0*'
_output_shapes
:         
х
gradients_3/AddNAddNCgradients_3/gradients_2/pi/dense/MatMul_grad/MatMul_1_grad/MatMul_1Cgradients_3/gradients_2/pi/dense/BiasAdd_grad/BiasAddGrad_grad/Tile*
T0*V
_classL
JHloc:@gradients_3/gradients_2/pi/dense/MatMul_grad/MatMul_1_grad/MatMul_1*
N*'
_output_shapes
:         @
а
Agradients_3/gradients_2/pi/dense/Relu_grad/ReluGrad_grad/ReluGradReluGradgradients_3/AddNpi/dense/Relu*
T0*'
_output_shapes
:         @
І
>gradients_3/gradients_2/pi/dense/Relu_grad/ReluGrad_grad/ShapeShapepi/dense/Relu*
out_type0*
_output_shapes
:*
T0
Ѕ
Dgradients_3/gradients_2/pi/dense/Relu_grad/ReluGrad_grad/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
љ
>gradients_3/gradients_2/pi/dense/Relu_grad/ReluGrad_grad/zerosFill>gradients_3/gradients_2/pi/dense/Relu_grad/ReluGrad_grad/ShapeDgradients_3/gradients_2/pi/dense/Relu_grad/ReluGrad_grad/zeros/Const*
T0*

index_type0*'
_output_shapes
:         @
■
Agradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_grad/MatMulMatMulAgradients_3/gradients_2/pi/dense/Relu_grad/ReluGrad_grad/ReluGradpi/dense_1/kernel/read*
T0*'
_output_shapes
:         @*
transpose_a( *
transpose_b( 
і
Cgradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_grad/MatMul_1MatMulAgradients_3/gradients_2/pi/dense/Relu_grad/ReluGrad_grad/ReluGrad)gradients_2/pi/dense_1/Relu_grad/ReluGrad*
T0*
_output_shapes

:@@*
transpose_a(*
transpose_b( 
ђ
gradients_3/AddN_1AddNEgradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_1_grad/MatMul_1Egradients_3/gradients_2/pi/dense_1/BiasAdd_grad/BiasAddGrad_grad/TileAgradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_grad/MatMul*X
_classN
LJloc:@gradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_1_grad/MatMul_1*
N*'
_output_shapes
:         @*
T0
д
Cgradients_3/gradients_2/pi/dense_1/Relu_grad/ReluGrad_grad/ReluGradReluGradgradients_3/AddN_1pi/dense_1/Relu*'
_output_shapes
:         @*
T0
Ј
@gradients_3/gradients_2/pi/dense_1/Relu_grad/ReluGrad_grad/ShapeShapepi/dense_1/Relu*
out_type0*
_output_shapes
:*
T0
І
Fgradients_3/gradients_2/pi/dense_1/Relu_grad/ReluGrad_grad/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
ќ
@gradients_3/gradients_2/pi/dense_1/Relu_grad/ReluGrad_grad/zerosFill@gradients_3/gradients_2/pi/dense_1/Relu_grad/ReluGrad_grad/ShapeFgradients_3/gradients_2/pi/dense_1/Relu_grad/ReluGrad_grad/zeros/Const*'
_output_shapes
:         @*
T0*

index_type0
ђ
Agradients_3/gradients_2/pi/dense_2/MatMul_grad/MatMul_grad/MatMulMatMulCgradients_3/gradients_2/pi/dense_1/Relu_grad/ReluGrad_grad/ReluGradpi/dense_2/kernel/read*
T0*'
_output_shapes
:         *
transpose_a( *
transpose_b( 
Ё
Cgradients_3/gradients_2/pi/dense_2/MatMul_grad/MatMul_grad/MatMul_1MatMulCgradients_3/gradients_2/pi/dense_1/Relu_grad/ReluGrad_grad/ReluGrad"gradients_2/pi/LogSoftmax_grad/sub*
T0*
_output_shapes

:@*
transpose_a(*
transpose_b( 
ђ
gradients_3/AddN_2AddNEgradients_3/gradients_2/pi/dense_2/MatMul_grad/MatMul_1_grad/MatMul_1Egradients_3/gradients_2/pi/dense_2/BiasAdd_grad/BiasAddGrad_grad/TileAgradients_3/gradients_2/pi/dense_2/MatMul_grad/MatMul_grad/MatMul*X
_classN
LJloc:@gradients_3/gradients_2/pi/dense_2/MatMul_grad/MatMul_1_grad/MatMul_1*
N*'
_output_shapes
:         *
T0
џ
9gradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/ShapeShape!gradients_2/pi/sub_grad/Reshape_1*
T0*
out_type0*
_output_shapes
:
Ю
;gradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/Shape_1Shape"gradients_2/pi/LogSoftmax_grad/mul*
T0*
out_type0*
_output_shapes
:
Ќ
Igradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/BroadcastGradientArgsBroadcastGradientArgs9gradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/Shape;gradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/Shape_1*2
_output_shapes 
:         :         *
T0
П
7gradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/SumSumgradients_3/AddN_2Igradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_output_shapes
:
Щ
;gradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/ReshapeReshape7gradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/Sum9gradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/Shape*
T0*
Tshape0*'
_output_shapes
:         
ё
7gradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/NegNeggradients_3/AddN_2*'
_output_shapes
:         *
T0
є
9gradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/Sum_1Sum7gradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/NegKgradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*
	keep_dims( *

Tidx0
ђ
=gradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/Reshape_1Reshape9gradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/Sum_1;gradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/Shape_1*
T0*
Tshape0*'
_output_shapes
:         
Џ
9gradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/ShapeShape"gradients_2/pi/LogSoftmax_grad/Sum*
_output_shapes
:*
T0*
out_type0
Ю
;gradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/Shape_1Shape"gradients_2/pi/LogSoftmax_grad/Exp*
T0*
out_type0*
_output_shapes
:
Ќ
Igradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/BroadcastGradientArgsBroadcastGradientArgs9gradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/Shape;gradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/Shape_1*2
_output_shapes 
:         :         *
T0
М
7gradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/MulMul=gradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/Reshape_1"gradients_2/pi/LogSoftmax_grad/Exp*
T0*'
_output_shapes
:         
ѓ
7gradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/SumSum7gradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/MulIgradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/BroadcastGradientArgs*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
Щ
;gradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/ReshapeReshape7gradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/Sum9gradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/Shape*
T0*
Tshape0*'
_output_shapes
:         
Н
9gradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/Mul_1Mul"gradients_2/pi/LogSoftmax_grad/Sum=gradients_3/gradients_2/pi/LogSoftmax_grad/sub_grad/Reshape_1*'
_output_shapes
:         *
T0
ѕ
9gradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/Sum_1Sum9gradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/Mul_1Kgradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
	keep_dims( *

Tidx0*
T0
ђ
=gradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/Reshape_1Reshape9gradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/Sum_1;gradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/Shape_1*'
_output_shapes
:         *
T0*
Tshape0
М
7gradients_3/gradients_2/pi/LogSoftmax_grad/Exp_grad/mulMul=gradients_3/gradients_2/pi/LogSoftmax_grad/mul_grad/Reshape_1"gradients_2/pi/LogSoftmax_grad/Exp*
T0*'
_output_shapes
:         
j
"gradients_3/pi/LogSoftmax_grad/ExpExppi/LogSoftmax*
T0*'
_output_shapes
:         

4gradients_3/pi/LogSoftmax_grad/Sum/reduction_indicesConst*
valueB :
         *
dtype0*
_output_shapes
: 
у
"gradients_3/pi/LogSoftmax_grad/SumSum7gradients_3/gradients_2/pi/LogSoftmax_grad/Exp_grad/mul4gradients_3/pi/LogSoftmax_grad/Sum/reduction_indices*
T0*'
_output_shapes
:         *
	keep_dims(*

Tidx0
Б
"gradients_3/pi/LogSoftmax_grad/mulMul"gradients_3/pi/LogSoftmax_grad/Sum"gradients_3/pi/LogSoftmax_grad/Exp*'
_output_shapes
:         *
T0
И
"gradients_3/pi/LogSoftmax_grad/subSub7gradients_3/gradients_2/pi/LogSoftmax_grad/Exp_grad/mul"gradients_3/pi/LogSoftmax_grad/mul*'
_output_shapes
:         *
T0
ъ
/gradients_3/pi/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad"gradients_3/pi/LogSoftmax_grad/sub*
_output_shapes
:*
T0*
data_formatNHWC
К
)gradients_3/pi/dense_2/MatMul_grad/MatMulMatMul"gradients_3/pi/LogSoftmax_grad/subpi/dense_2/kernel/read*
T0*'
_output_shapes
:         @*
transpose_a( *
transpose_b(
╣
+gradients_3/pi/dense_2/MatMul_grad/MatMul_1MatMulpi/dense_1/Relu"gradients_3/pi/LogSoftmax_grad/sub*
_output_shapes

:@*
transpose_a(*
transpose_b( *
T0
▀
gradients_3/AddN_3AddNCgradients_3/gradients_2/pi/dense_2/MatMul_grad/MatMul_1_grad/MatMul@gradients_3/gradients_2/pi/dense_1/Relu_grad/ReluGrad_grad/zeros)gradients_3/pi/dense_2/MatMul_grad/MatMul*'
_output_shapes
:         @*
T0*V
_classL
JHloc:@gradients_3/gradients_2/pi/dense_2/MatMul_grad/MatMul_1_grad/MatMul*
N
ї
)gradients_3/pi/dense_1/Relu_grad/ReluGradReluGradgradients_3/AddN_3pi/dense_1/Relu*'
_output_shapes
:         @*
T0
ќ
gradients_3/AddN_4AddNCgradients_3/gradients_2/pi/dense_2/MatMul_grad/MatMul_grad/MatMul_1+gradients_3/pi/dense_2/MatMul_grad/MatMul_1*V
_classL
JHloc:@gradients_3/gradients_2/pi/dense_2/MatMul_grad/MatMul_grad/MatMul_1*
N*
_output_shapes

:@*
T0
Ц
/gradients_3/pi/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad)gradients_3/pi/dense_1/Relu_grad/ReluGrad*
_output_shapes
:@*
T0*
data_formatNHWC
╬
)gradients_3/pi/dense_1/MatMul_grad/MatMulMatMul)gradients_3/pi/dense_1/Relu_grad/ReluGradpi/dense_1/kernel/read*
T0*'
_output_shapes
:         @*
transpose_a( *
transpose_b(
Й
+gradients_3/pi/dense_1/MatMul_grad/MatMul_1MatMulpi/dense/Relu)gradients_3/pi/dense_1/Relu_grad/ReluGrad*
_output_shapes

:@@*
transpose_a(*
transpose_b( *
T0
П
gradients_3/AddN_5AddNCgradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_1_grad/MatMul>gradients_3/gradients_2/pi/dense/Relu_grad/ReluGrad_grad/zeros)gradients_3/pi/dense_1/MatMul_grad/MatMul*
T0*V
_classL
JHloc:@gradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_1_grad/MatMul*
N*'
_output_shapes
:         @
ѕ
'gradients_3/pi/dense/Relu_grad/ReluGradReluGradgradients_3/AddN_5pi/dense/Relu*'
_output_shapes
:         @*
T0
ќ
gradients_3/AddN_6AddNCgradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_grad/MatMul_1+gradients_3/pi/dense_1/MatMul_grad/MatMul_1*V
_classL
JHloc:@gradients_3/gradients_2/pi/dense_1/MatMul_grad/MatMul_grad/MatMul_1*
N*
_output_shapes

:@@*
T0
А
-gradients_3/pi/dense/BiasAdd_grad/BiasAddGradBiasAddGrad'gradients_3/pi/dense/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
:@
╚
'gradients_3/pi/dense/MatMul_grad/MatMulMatMul'gradients_3/pi/dense/Relu_grad/ReluGradpi/dense/kernel/read*
T0*'
_output_shapes
:         *
transpose_a( *
transpose_b(
И
)gradients_3/pi/dense/MatMul_grad/MatMul_1MatMulPlaceholder'gradients_3/pi/dense/Relu_grad/ReluGrad*
_output_shapes

:@*
transpose_a(*
transpose_b( *
T0
c
Reshape_36/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
є

Reshape_36Reshape)gradients_3/pi/dense/MatMul_grad/MatMul_1Reshape_36/shape*
_output_shapes	
:ђ*
T0*
Tshape0
c
Reshape_37/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
Ѕ

Reshape_37Reshape-gradients_3/pi/dense/BiasAdd_grad/BiasAddGradReshape_37/shape*
Tshape0*
_output_shapes
:@*
T0
c
Reshape_38/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
o

Reshape_38Reshapegradients_3/AddN_6Reshape_38/shape*
_output_shapes	
:ђ *
T0*
Tshape0
c
Reshape_39/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
І

Reshape_39Reshape/gradients_3/pi/dense_1/BiasAdd_grad/BiasAddGradReshape_39/shape*
Tshape0*
_output_shapes
:@*
T0
c
Reshape_40/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
o

Reshape_40Reshapegradients_3/AddN_4Reshape_40/shape*
T0*
Tshape0*
_output_shapes	
:ђ
c
Reshape_41/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
І

Reshape_41Reshape/gradients_3/pi/dense_2/BiasAdd_grad/BiasAddGradReshape_41/shape*
_output_shapes
:*
T0*
Tshape0
O
concat_4/axisConst*
value	B : *
dtype0*
_output_shapes
: 
д
concat_4ConcatV2
Reshape_36
Reshape_37
Reshape_38
Reshape_39
Reshape_40
Reshape_41concat_4/axis*
_output_shapes	
:ё'*

Tidx0*
T0*
N
L
mul_2/xConst*
_output_shapes
: *
valueB
 *═╠╠=*
dtype0
J
mul_2Mulmul_2/xPlaceholder_5*
_output_shapes	
:ё'*
T0
C
addAddV2concat_4mul_2*
_output_shapes	
:ё'*
T0
c
Reshape_42/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
q

Reshape_42Reshapepi/dense/kernel/readReshape_42/shape*
Tshape0*
_output_shapes	
:ђ*
T0
c
Reshape_43/shapeConst*
_output_shapes
:*
valueB:
         *
dtype0
n

Reshape_43Reshapepi/dense/bias/readReshape_43/shape*
T0*
Tshape0*
_output_shapes
:@
c
Reshape_44/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
s

Reshape_44Reshapepi/dense_1/kernel/readReshape_44/shape*
_output_shapes	
:ђ *
T0*
Tshape0
c
Reshape_45/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
p

Reshape_45Reshapepi/dense_1/bias/readReshape_45/shape*
Tshape0*
_output_shapes
:@*
T0
c
Reshape_46/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
s

Reshape_46Reshapepi/dense_2/kernel/readReshape_46/shape*
T0*
Tshape0*
_output_shapes	
:ђ
c
Reshape_47/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
p

Reshape_47Reshapepi/dense_2/bias/readReshape_47/shape*
_output_shapes
:*
T0*
Tshape0
O
concat_5/axisConst*
value	B : *
dtype0*
_output_shapes
: 
д
concat_5ConcatV2
Reshape_42
Reshape_43
Reshape_44
Reshape_45
Reshape_46
Reshape_47concat_5/axis*
_output_shapes	
:ё'*

Tidx0*
T0*
N
h
Const_5Const*-
value$B""   @      @         *
dtype0*
_output_shapes
:
S
split_2/split_dimConst*
value	B : *
dtype0*
_output_shapes
: 
Ъ
split_2SplitVPlaceholder_5Const_5split_2/split_dim*;
_output_shapes)
':ђ:@:ђ :@:ђ:*
	num_split*

Tlen0*
T0
a
Reshape_48/shapeConst*
_output_shapes
:*
valueB"   @   *
dtype0
g

Reshape_48Reshapesplit_2Reshape_48/shape*
T0*
Tshape0*
_output_shapes

:@
Z
Reshape_49/shapeConst*
valueB:@*
dtype0*
_output_shapes
:
e

Reshape_49Reshape	split_2:1Reshape_49/shape*
Tshape0*
_output_shapes
:@*
T0
a
Reshape_50/shapeConst*
_output_shapes
:*
valueB"@   @   *
dtype0
i

Reshape_50Reshape	split_2:2Reshape_50/shape*
T0*
Tshape0*
_output_shapes

:@@
Z
Reshape_51/shapeConst*
valueB:@*
dtype0*
_output_shapes
:
e

Reshape_51Reshape	split_2:3Reshape_51/shape*
T0*
Tshape0*
_output_shapes
:@
a
Reshape_52/shapeConst*
valueB"@      *
dtype0*
_output_shapes
:
i

Reshape_52Reshape	split_2:4Reshape_52/shape*
Tshape0*
_output_shapes

:@*
T0
Z
Reshape_53/shapeConst*
valueB:*
dtype0*
_output_shapes
:
e

Reshape_53Reshape	split_2:5Reshape_53/shape*
T0*
Tshape0*
_output_shapes
:
Ц
Assign_6Assignpi/dense/kernel
Reshape_48*
_output_shapes

:@*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(
Ю
Assign_7Assignpi/dense/bias
Reshape_49* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
Е
Assign_8Assignpi/dense_1/kernel
Reshape_50*
_output_shapes

:@@*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(
А
Assign_9Assignpi/dense_1/bias
Reshape_51*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:@
ф
	Assign_10Assignpi/dense_2/kernel
Reshape_52*
_output_shapes

:@*
use_locking(*
T0*$
_class
loc:@pi/dense_2/kernel*
validate_shape(
б
	Assign_11Assignpi/dense_2/bias
Reshape_53*
use_locking(*
T0*"
_class
loc:@pi/dense_2/bias*
validate_shape(*
_output_shapes
:
X
group_deps_2NoOp
^Assign_10
^Assign_11	^Assign_6	^Assign_7	^Assign_8	^Assign_9
╠
initNoOp^beta1_power/Assign^beta2_power/Assign^pi/dense/bias/Assign^pi/dense/kernel/Assign^pi/dense_1/bias/Assign^pi/dense_1/kernel/Assign^pi/dense_2/bias/Assign^pi/dense_2/kernel/Assign^v/dense/bias/Adam/Assign^v/dense/bias/Adam_1/Assign^v/dense/bias/Assign^v/dense/kernel/Adam/Assign^v/dense/kernel/Adam_1/Assign^v/dense/kernel/Assign^v/dense_1/bias/Adam/Assign^v/dense_1/bias/Adam_1/Assign^v/dense_1/bias/Assign^v/dense_1/kernel/Adam/Assign^v/dense_1/kernel/Adam_1/Assign^v/dense_1/kernel/Assign^v/dense_2/bias/Adam/Assign^v/dense_2/bias/Adam_1/Assign^v/dense_2/bias/Assign^v/dense_2/kernel/Adam/Assign^v/dense_2/kernel/Adam_1/Assign^v/dense_2/kernel/Assign
c
Reshape_54/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
q

Reshape_54Reshapepi/dense/kernel/readReshape_54/shape*
T0*
Tshape0*
_output_shapes	
:ђ
c
Reshape_55/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
n

Reshape_55Reshapepi/dense/bias/readReshape_55/shape*
T0*
Tshape0*
_output_shapes
:@
c
Reshape_56/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
s

Reshape_56Reshapepi/dense_1/kernel/readReshape_56/shape*
T0*
Tshape0*
_output_shapes	
:ђ 
c
Reshape_57/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
p

Reshape_57Reshapepi/dense_1/bias/readReshape_57/shape*
T0*
Tshape0*
_output_shapes
:@
c
Reshape_58/shapeConst*
_output_shapes
:*
valueB:
         *
dtype0
s

Reshape_58Reshapepi/dense_2/kernel/readReshape_58/shape*
T0*
Tshape0*
_output_shapes	
:ђ
c
Reshape_59/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
p

Reshape_59Reshapepi/dense_2/bias/readReshape_59/shape*
T0*
Tshape0*
_output_shapes
:
c
Reshape_60/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
p

Reshape_60Reshapev/dense/kernel/readReshape_60/shape*
_output_shapes	
:ђ*
T0*
Tshape0
c
Reshape_61/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
m

Reshape_61Reshapev/dense/bias/readReshape_61/shape*
_output_shapes
:@*
T0*
Tshape0
c
Reshape_62/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
r

Reshape_62Reshapev/dense_1/kernel/readReshape_62/shape*
Tshape0*
_output_shapes	
:ђ *
T0
c
Reshape_63/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
o

Reshape_63Reshapev/dense_1/bias/readReshape_63/shape*
_output_shapes
:@*
T0*
Tshape0
c
Reshape_64/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
q

Reshape_64Reshapev/dense_2/kernel/readReshape_64/shape*
_output_shapes
:@*
T0*
Tshape0
c
Reshape_65/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
o

Reshape_65Reshapev/dense_2/bias/readReshape_65/shape*
_output_shapes
:*
T0*
Tshape0
c
Reshape_66/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
l

Reshape_66Reshapebeta1_power/readReshape_66/shape*
_output_shapes
:*
T0*
Tshape0
c
Reshape_67/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
l

Reshape_67Reshapebeta2_power/readReshape_67/shape*
Tshape0*
_output_shapes
:*
T0
c
Reshape_68/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
u

Reshape_68Reshapev/dense/kernel/Adam/readReshape_68/shape*
_output_shapes	
:ђ*
T0*
Tshape0
c
Reshape_69/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
w

Reshape_69Reshapev/dense/kernel/Adam_1/readReshape_69/shape*
Tshape0*
_output_shapes	
:ђ*
T0
c
Reshape_70/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
r

Reshape_70Reshapev/dense/bias/Adam/readReshape_70/shape*
_output_shapes
:@*
T0*
Tshape0
c
Reshape_71/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
t

Reshape_71Reshapev/dense/bias/Adam_1/readReshape_71/shape*
Tshape0*
_output_shapes
:@*
T0
c
Reshape_72/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
w

Reshape_72Reshapev/dense_1/kernel/Adam/readReshape_72/shape*
T0*
Tshape0*
_output_shapes	
:ђ 
c
Reshape_73/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
y

Reshape_73Reshapev/dense_1/kernel/Adam_1/readReshape_73/shape*
Tshape0*
_output_shapes	
:ђ *
T0
c
Reshape_74/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
t

Reshape_74Reshapev/dense_1/bias/Adam/readReshape_74/shape*
T0*
Tshape0*
_output_shapes
:@
c
Reshape_75/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
v

Reshape_75Reshapev/dense_1/bias/Adam_1/readReshape_75/shape*
T0*
Tshape0*
_output_shapes
:@
c
Reshape_76/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
v

Reshape_76Reshapev/dense_2/kernel/Adam/readReshape_76/shape*
Tshape0*
_output_shapes
:@*
T0
c
Reshape_77/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
x

Reshape_77Reshapev/dense_2/kernel/Adam_1/readReshape_77/shape*
_output_shapes
:@*
T0*
Tshape0
c
Reshape_78/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
t

Reshape_78Reshapev/dense_2/bias/Adam/readReshape_78/shape*
_output_shapes
:*
T0*
Tshape0
c
Reshape_79/shapeConst*
valueB:
         *
dtype0*
_output_shapes
:
v

Reshape_79Reshapev/dense_2/bias/Adam_1/readReshape_79/shape*
Tshape0*
_output_shapes
:*
T0
O
concat_6/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ќ
concat_6ConcatV2
Reshape_54
Reshape_55
Reshape_56
Reshape_57
Reshape_58
Reshape_59
Reshape_60
Reshape_61
Reshape_62
Reshape_63
Reshape_64
Reshape_65
Reshape_66
Reshape_67
Reshape_68
Reshape_69
Reshape_70
Reshape_71
Reshape_72
Reshape_73
Reshape_74
Reshape_75
Reshape_76
Reshape_77
Reshape_78
Reshape_79concat_6/axis*
N*
_output_shapes

:╔Ќ*

Tidx0*
T0
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
И
Const_6Const*}
valuetBr"h   @      @            @      @   @                  @   @         @   @   @   @         *
dtype0*
_output_shapes
:
S
split_3/split_dimConst*
value	B : *
dtype0*
_output_shapes
: 
█
split_3SplitVPyFunc_2Const_6split_3/split_dim*|
_output_shapesj
h::::::::::::::::::::::::::*
	num_split*

Tlen0*
T0
a
Reshape_80/shapeConst*
_output_shapes
:*
valueB"   @   *
dtype0
g

Reshape_80Reshapesplit_3Reshape_80/shape*
T0*
Tshape0*
_output_shapes

:@
Z
Reshape_81/shapeConst*
valueB:@*
dtype0*
_output_shapes
:
e

Reshape_81Reshape	split_3:1Reshape_81/shape*
Tshape0*
_output_shapes
:@*
T0
a
Reshape_82/shapeConst*
valueB"@   @   *
dtype0*
_output_shapes
:
i

Reshape_82Reshape	split_3:2Reshape_82/shape*
T0*
Tshape0*
_output_shapes

:@@
Z
Reshape_83/shapeConst*
valueB:@*
dtype0*
_output_shapes
:
e

Reshape_83Reshape	split_3:3Reshape_83/shape*
Tshape0*
_output_shapes
:@*
T0
a
Reshape_84/shapeConst*
valueB"@      *
dtype0*
_output_shapes
:
i

Reshape_84Reshape	split_3:4Reshape_84/shape*
T0*
Tshape0*
_output_shapes

:@
Z
Reshape_85/shapeConst*
valueB:*
dtype0*
_output_shapes
:
e

Reshape_85Reshape	split_3:5Reshape_85/shape*
_output_shapes
:*
T0*
Tshape0
a
Reshape_86/shapeConst*
valueB"   @   *
dtype0*
_output_shapes
:
i

Reshape_86Reshape	split_3:6Reshape_86/shape*
Tshape0*
_output_shapes

:@*
T0
Z
Reshape_87/shapeConst*
_output_shapes
:*
valueB:@*
dtype0
e

Reshape_87Reshape	split_3:7Reshape_87/shape*
T0*
Tshape0*
_output_shapes
:@
a
Reshape_88/shapeConst*
_output_shapes
:*
valueB"@   @   *
dtype0
i

Reshape_88Reshape	split_3:8Reshape_88/shape*
Tshape0*
_output_shapes

:@@*
T0
Z
Reshape_89/shapeConst*
valueB:@*
dtype0*
_output_shapes
:
e

Reshape_89Reshape	split_3:9Reshape_89/shape*
_output_shapes
:@*
T0*
Tshape0
a
Reshape_90/shapeConst*
valueB"@      *
dtype0*
_output_shapes
:
j

Reshape_90Reshape
split_3:10Reshape_90/shape*
Tshape0*
_output_shapes

:@*
T0
Z
Reshape_91/shapeConst*
valueB:*
dtype0*
_output_shapes
:
f

Reshape_91Reshape
split_3:11Reshape_91/shape*
Tshape0*
_output_shapes
:*
T0
S
Reshape_92/shapeConst*
valueB *
dtype0*
_output_shapes
: 
b

Reshape_92Reshape
split_3:12Reshape_92/shape*
_output_shapes
: *
T0*
Tshape0
S
Reshape_93/shapeConst*
_output_shapes
: *
valueB *
dtype0
b

Reshape_93Reshape
split_3:13Reshape_93/shape*
Tshape0*
_output_shapes
: *
T0
a
Reshape_94/shapeConst*
valueB"   @   *
dtype0*
_output_shapes
:
j

Reshape_94Reshape
split_3:14Reshape_94/shape*
Tshape0*
_output_shapes

:@*
T0
a
Reshape_95/shapeConst*
_output_shapes
:*
valueB"   @   *
dtype0
j

Reshape_95Reshape
split_3:15Reshape_95/shape*
Tshape0*
_output_shapes

:@*
T0
Z
Reshape_96/shapeConst*
_output_shapes
:*
valueB:@*
dtype0
f

Reshape_96Reshape
split_3:16Reshape_96/shape*
T0*
Tshape0*
_output_shapes
:@
Z
Reshape_97/shapeConst*
_output_shapes
:*
valueB:@*
dtype0
f

Reshape_97Reshape
split_3:17Reshape_97/shape*
T0*
Tshape0*
_output_shapes
:@
a
Reshape_98/shapeConst*
valueB"@   @   *
dtype0*
_output_shapes
:
j

Reshape_98Reshape
split_3:18Reshape_98/shape*
_output_shapes

:@@*
T0*
Tshape0
a
Reshape_99/shapeConst*
valueB"@   @   *
dtype0*
_output_shapes
:
j

Reshape_99Reshape
split_3:19Reshape_99/shape*
T0*
Tshape0*
_output_shapes

:@@
[
Reshape_100/shapeConst*
valueB:@*
dtype0*
_output_shapes
:
h
Reshape_100Reshape
split_3:20Reshape_100/shape*
T0*
Tshape0*
_output_shapes
:@
[
Reshape_101/shapeConst*
_output_shapes
:*
valueB:@*
dtype0
h
Reshape_101Reshape
split_3:21Reshape_101/shape*
T0*
Tshape0*
_output_shapes
:@
b
Reshape_102/shapeConst*
_output_shapes
:*
valueB"@      *
dtype0
l
Reshape_102Reshape
split_3:22Reshape_102/shape*
T0*
Tshape0*
_output_shapes

:@
b
Reshape_103/shapeConst*
valueB"@      *
dtype0*
_output_shapes
:
l
Reshape_103Reshape
split_3:23Reshape_103/shape*
T0*
Tshape0*
_output_shapes

:@
[
Reshape_104/shapeConst*
valueB:*
dtype0*
_output_shapes
:
h
Reshape_104Reshape
split_3:24Reshape_104/shape*
_output_shapes
:*
T0*
Tshape0
[
Reshape_105/shapeConst*
_output_shapes
:*
valueB:*
dtype0
h
Reshape_105Reshape
split_3:25Reshape_105/shape*
Tshape0*
_output_shapes
:*
T0
д
	Assign_12Assignpi/dense/kernel
Reshape_80*
_output_shapes

:@*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(
ъ
	Assign_13Assignpi/dense/bias
Reshape_81*
_output_shapes
:@*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(
ф
	Assign_14Assignpi/dense_1/kernel
Reshape_82*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

:@@
б
	Assign_15Assignpi/dense_1/bias
Reshape_83*"
_class
loc:@pi/dense_1/bias*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
ф
	Assign_16Assignpi/dense_2/kernel
Reshape_84*
use_locking(*
T0*$
_class
loc:@pi/dense_2/kernel*
validate_shape(*
_output_shapes

:@
б
	Assign_17Assignpi/dense_2/bias
Reshape_85*"
_class
loc:@pi/dense_2/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
ц
	Assign_18Assignv/dense/kernel
Reshape_86*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

:@
ю
	Assign_19Assignv/dense/bias
Reshape_87*
_output_shapes
:@*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(
е
	Assign_20Assignv/dense_1/kernel
Reshape_88*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

:@@*
use_locking(*
T0
а
	Assign_21Assignv/dense_1/bias
Reshape_89*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:@
е
	Assign_22Assignv/dense_2/kernel
Reshape_90*
use_locking(*
T0*#
_class
loc:@v/dense_2/kernel*
validate_shape(*
_output_shapes

:@
а
	Assign_23Assignv/dense_2/bias
Reshape_91*!
_class
loc:@v/dense_2/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
Ќ
	Assign_24Assignbeta1_power
Reshape_92*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
Ќ
	Assign_25Assignbeta2_power
Reshape_93*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
Е
	Assign_26Assignv/dense/kernel/Adam
Reshape_94*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

:@
Ф
	Assign_27Assignv/dense/kernel/Adam_1
Reshape_95*
_output_shapes

:@*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(
А
	Assign_28Assignv/dense/bias/Adam
Reshape_96*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
:@
Б
	Assign_29Assignv/dense/bias/Adam_1
Reshape_97*
_output_shapes
:@*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(
Г
	Assign_30Assignv/dense_1/kernel/Adam
Reshape_98*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

:@@*
use_locking(*
T0
»
	Assign_31Assignv/dense_1/kernel/Adam_1
Reshape_99*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

:@@
д
	Assign_32Assignv/dense_1/bias/AdamReshape_100*
_output_shapes
:@*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(
е
	Assign_33Assignv/dense_1/bias/Adam_1Reshape_101*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:@
«
	Assign_34Assignv/dense_2/kernel/AdamReshape_102*#
_class
loc:@v/dense_2/kernel*
validate_shape(*
_output_shapes

:@*
use_locking(*
T0
░
	Assign_35Assignv/dense_2/kernel/Adam_1Reshape_103*
use_locking(*
T0*#
_class
loc:@v/dense_2/kernel*
validate_shape(*
_output_shapes

:@
д
	Assign_36Assignv/dense_2/bias/AdamReshape_104*
use_locking(*
T0*!
_class
loc:@v/dense_2/bias*
validate_shape(*
_output_shapes
:
е
	Assign_37Assignv/dense_2/bias/Adam_1Reshape_105*
use_locking(*
T0*!
_class
loc:@v/dense_2/bias*
validate_shape(*
_output_shapes
:
╠
group_deps_3NoOp
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
^Assign_25
^Assign_26
^Assign_27
^Assign_28
^Assign_29
^Assign_30
^Assign_31
^Assign_32
^Assign_33
^Assign_34
^Assign_35
^Assign_36
^Assign_37
Y
save/filename/inputConst*
_output_shapes
: *
valueB Bmodel*
dtype0
n
save/filenamePlaceholderWithDefaultsave/filename/input*
dtype0*
_output_shapes
: *
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
_output_shapes
: *
shape: *
dtype0
ё
save/StringJoin/inputs_1Const*
_output_shapes
: *<
value3B1 B+_temp_231237ff574748e38002b1eede5e809e/part*
dtype0
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
	separator *
N*
_output_shapes
: 
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
м
save/SaveV2/tensor_namesConst*
_output_shapes
:*Ё
valueчBЭBbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1Bv/dense_2/biasBv/dense_2/bias/AdamBv/dense_2/bias/Adam_1Bv/dense_2/kernelBv/dense_2/kernel/AdamBv/dense_2/kernel/Adam_1*
dtype0
Ќ
save/SaveV2/shape_and_slicesConst*G
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
§
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesbeta1_powerbeta2_powerpi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelpi/dense_2/biaspi/dense_2/kernelv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1v/dense_2/biasv/dense_2/bias/Adamv/dense_2/bias/Adam_1v/dense_2/kernelv/dense_2/kernel/Adamv/dense_2/kernel/Adam_1*(
dtypes
2
Љ
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*
T0*'
_class
loc:@save/ShardedFilename*
_output_shapes
: 
Ю
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*
T0*

axis *
N*
_output_shapes
:
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency*
_output_shapes
: *
T0
Н
save/RestoreV2/tensor_namesConst*Ё
valueчBЭBbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1Bv/dense_2/biasBv/dense_2/bias/AdamBv/dense_2/bias/Adam_1Bv/dense_2/kernelBv/dense_2/kernel/AdamBv/dense_2/kernel/Adam_1*
dtype0*
_output_shapes
:
џ
save/RestoreV2/shape_and_slicesConst*
_output_shapes
:*G
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
Ї
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*|
_output_shapesj
h::::::::::::::::::::::::::*(
dtypes
2
Ю
save/AssignAssignbeta1_powersave/RestoreV2*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(
А
save/Assign_1Assignbeta2_powersave/RestoreV2:1*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: 
е
save/Assign_2Assignpi/dense/biassave/RestoreV2:2*
_output_shapes
:@*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(
░
save/Assign_3Assignpi/dense/kernelsave/RestoreV2:3*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

:@
г
save/Assign_4Assignpi/dense_1/biassave/RestoreV2:4*
_output_shapes
:@*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(
┤
save/Assign_5Assignpi/dense_1/kernelsave/RestoreV2:5*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(*
_output_shapes

:@@
г
save/Assign_6Assignpi/dense_2/biassave/RestoreV2:6*
_output_shapes
:*
use_locking(*
T0*"
_class
loc:@pi/dense_2/bias*
validate_shape(
┤
save/Assign_7Assignpi/dense_2/kernelsave/RestoreV2:7*
_output_shapes

:@*
use_locking(*
T0*$
_class
loc:@pi/dense_2/kernel*
validate_shape(
д
save/Assign_8Assignv/dense/biassave/RestoreV2:8*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
:@
Ф
save/Assign_9Assignv/dense/bias/Adamsave/RestoreV2:9*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
:@
»
save/Assign_10Assignv/dense/bias/Adam_1save/RestoreV2:10*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
:@
░
save/Assign_11Assignv/dense/kernelsave/RestoreV2:11*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

:@
х
save/Assign_12Assignv/dense/kernel/Adamsave/RestoreV2:12*
_output_shapes

:@*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(
и
save/Assign_13Assignv/dense/kernel/Adam_1save/RestoreV2:13*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

:@*
use_locking(*
T0
г
save/Assign_14Assignv/dense_1/biassave/RestoreV2:14*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
▒
save/Assign_15Assignv/dense_1/bias/Adamsave/RestoreV2:15*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:@
│
save/Assign_16Assignv/dense_1/bias/Adam_1save/RestoreV2:16*
_output_shapes
:@*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(
┤
save/Assign_17Assignv/dense_1/kernelsave/RestoreV2:17*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

:@@
╣
save/Assign_18Assignv/dense_1/kernel/Adamsave/RestoreV2:18*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

:@@*
use_locking(*
T0
╗
save/Assign_19Assignv/dense_1/kernel/Adam_1save/RestoreV2:19*
_output_shapes

:@@*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(
г
save/Assign_20Assignv/dense_2/biassave/RestoreV2:20*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@v/dense_2/bias*
validate_shape(
▒
save/Assign_21Assignv/dense_2/bias/Adamsave/RestoreV2:21*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@v/dense_2/bias*
validate_shape(
│
save/Assign_22Assignv/dense_2/bias/Adam_1save/RestoreV2:22*
use_locking(*
T0*!
_class
loc:@v/dense_2/bias*
validate_shape(*
_output_shapes
:
┤
save/Assign_23Assignv/dense_2/kernelsave/RestoreV2:23*
use_locking(*
T0*#
_class
loc:@v/dense_2/kernel*
validate_shape(*
_output_shapes

:@
╣
save/Assign_24Assignv/dense_2/kernel/Adamsave/RestoreV2:24*
use_locking(*
T0*#
_class
loc:@v/dense_2/kernel*
validate_shape(*
_output_shapes

:@
╗
save/Assign_25Assignv/dense_2/kernel/Adam_1save/RestoreV2:25*
use_locking(*
T0*#
_class
loc:@v/dense_2/kernel*
validate_shape(*
_output_shapes

:@
╚
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
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
dtype0*
_output_shapes
: *
shape: 
є
save_1/StringJoin/inputs_1Const*<
value3B1 B+_temp_ca5257cceaf4493f97989a0cc5a72652/part*
dtype0*
_output_shapes
: 
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
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
Ё
save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards*
_output_shapes
: 
н
save_1/SaveV2/tensor_namesConst*Ё
valueчBЭBbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1Bv/dense_2/biasBv/dense_2/bias/AdamBv/dense_2/bias/Adam_1Bv/dense_2/kernelBv/dense_2/kernel/AdamBv/dense_2/kernel/Adam_1*
dtype0*
_output_shapes
:
Ў
save_1/SaveV2/shape_and_slicesConst*
_output_shapes
:*G
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
Ё
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesbeta1_powerbeta2_powerpi/dense/biaspi/dense/kernelpi/dense_1/biaspi/dense_1/kernelpi/dense_2/biaspi/dense_2/kernelv/dense/biasv/dense/bias/Adamv/dense/bias/Adam_1v/dense/kernelv/dense/kernel/Adamv/dense/kernel/Adam_1v/dense_1/biasv/dense_1/bias/Adamv/dense_1/bias/Adam_1v/dense_1/kernelv/dense_1/kernel/Adamv/dense_1/kernel/Adam_1v/dense_2/biasv/dense_2/bias/Adamv/dense_2/bias/Adam_1v/dense_2/kernelv/dense_2/kernel/Adamv/dense_2/kernel/Adam_1*(
dtypes
2
Ў
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2*
_output_shapes
: *
T0*)
_class
loc:@save_1/ShardedFilename
Б
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency*
T0*

axis *
N*
_output_shapes
:
Ѓ
save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const*
delete_old_dirs(
ѓ
save_1/IdentityIdentitysave_1/Const^save_1/MergeV2Checkpoints^save_1/control_dependency*
_output_shapes
: *
T0
О
save_1/RestoreV2/tensor_namesConst*Ё
valueчBЭBbeta1_powerBbeta2_powerBpi/dense/biasBpi/dense/kernelBpi/dense_1/biasBpi/dense_1/kernelBpi/dense_2/biasBpi/dense_2/kernelBv/dense/biasBv/dense/bias/AdamBv/dense/bias/Adam_1Bv/dense/kernelBv/dense/kernel/AdamBv/dense/kernel/Adam_1Bv/dense_1/biasBv/dense_1/bias/AdamBv/dense_1/bias/Adam_1Bv/dense_1/kernelBv/dense_1/kernel/AdamBv/dense_1/kernel/Adam_1Bv/dense_2/biasBv/dense_2/bias/AdamBv/dense_2/bias/Adam_1Bv/dense_2/kernelBv/dense_2/kernel/AdamBv/dense_2/kernel/Adam_1*
dtype0*
_output_shapes
:
ю
!save_1/RestoreV2/shape_and_slicesConst*
_output_shapes
:*G
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
Ћ
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*(
dtypes
2*|
_output_shapesj
h::::::::::::::::::::::::::
А
save_1/AssignAssignbeta1_powersave_1/RestoreV2*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
Ц
save_1/Assign_1Assignbeta2_powersave_1/RestoreV2:1*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
г
save_1/Assign_2Assignpi/dense/biassave_1/RestoreV2:2*
use_locking(*
T0* 
_class
loc:@pi/dense/bias*
validate_shape(*
_output_shapes
:@
┤
save_1/Assign_3Assignpi/dense/kernelsave_1/RestoreV2:3*
use_locking(*
T0*"
_class
loc:@pi/dense/kernel*
validate_shape(*
_output_shapes

:@
░
save_1/Assign_4Assignpi/dense_1/biassave_1/RestoreV2:4*
_output_shapes
:@*
use_locking(*
T0*"
_class
loc:@pi/dense_1/bias*
validate_shape(
И
save_1/Assign_5Assignpi/dense_1/kernelsave_1/RestoreV2:5*
_output_shapes

:@@*
use_locking(*
T0*$
_class
loc:@pi/dense_1/kernel*
validate_shape(
░
save_1/Assign_6Assignpi/dense_2/biassave_1/RestoreV2:6*"
_class
loc:@pi/dense_2/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
И
save_1/Assign_7Assignpi/dense_2/kernelsave_1/RestoreV2:7*
_output_shapes

:@*
use_locking(*
T0*$
_class
loc:@pi/dense_2/kernel*
validate_shape(
ф
save_1/Assign_8Assignv/dense/biassave_1/RestoreV2:8*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
:@
»
save_1/Assign_9Assignv/dense/bias/Adamsave_1/RestoreV2:9*
use_locking(*
T0*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
:@
│
save_1/Assign_10Assignv/dense/bias/Adam_1save_1/RestoreV2:10*
_class
loc:@v/dense/bias*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
┤
save_1/Assign_11Assignv/dense/kernelsave_1/RestoreV2:11*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

:@*
use_locking(*
T0
╣
save_1/Assign_12Assignv/dense/kernel/Adamsave_1/RestoreV2:12*
_output_shapes

:@*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(
╗
save_1/Assign_13Assignv/dense/kernel/Adam_1save_1/RestoreV2:13*
use_locking(*
T0*!
_class
loc:@v/dense/kernel*
validate_shape(*
_output_shapes

:@
░
save_1/Assign_14Assignv/dense_1/biassave_1/RestoreV2:14*
_output_shapes
:@*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(
х
save_1/Assign_15Assignv/dense_1/bias/Adamsave_1/RestoreV2:15*
_output_shapes
:@*
use_locking(*
T0*!
_class
loc:@v/dense_1/bias*
validate_shape(
и
save_1/Assign_16Assignv/dense_1/bias/Adam_1save_1/RestoreV2:16*!
_class
loc:@v/dense_1/bias*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
И
save_1/Assign_17Assignv/dense_1/kernelsave_1/RestoreV2:17*
_output_shapes

:@@*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(
й
save_1/Assign_18Assignv/dense_1/kernel/Adamsave_1/RestoreV2:18*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

:@@*
use_locking(*
T0
┐
save_1/Assign_19Assignv/dense_1/kernel/Adam_1save_1/RestoreV2:19*
use_locking(*
T0*#
_class
loc:@v/dense_1/kernel*
validate_shape(*
_output_shapes

:@@
░
save_1/Assign_20Assignv/dense_2/biassave_1/RestoreV2:20*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@v/dense_2/bias*
validate_shape(
х
save_1/Assign_21Assignv/dense_2/bias/Adamsave_1/RestoreV2:21*!
_class
loc:@v/dense_2/bias*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
и
save_1/Assign_22Assignv/dense_2/bias/Adam_1save_1/RestoreV2:22*
_output_shapes
:*
use_locking(*
T0*!
_class
loc:@v/dense_2/bias*
validate_shape(
И
save_1/Assign_23Assignv/dense_2/kernelsave_1/RestoreV2:23*
use_locking(*
T0*#
_class
loc:@v/dense_2/kernel*
validate_shape(*
_output_shapes

:@
й
save_1/Assign_24Assignv/dense_2/kernel/Adamsave_1/RestoreV2:24*
use_locking(*
T0*#
_class
loc:@v/dense_2/kernel*
validate_shape(*
_output_shapes

:@
┐
save_1/Assign_25Assignv/dense_2/kernel/Adam_1save_1/RestoreV2:25*#
_class
loc:@v/dense_2/kernel*
validate_shape(*
_output_shapes

:@*
use_locking(*
T0
■
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17^save_1/Assign_18^save_1/Assign_19^save_1/Assign_2^save_1/Assign_20^save_1/Assign_21^save_1/Assign_22^save_1/Assign_23^save_1/Assign_24^save_1/Assign_25^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9
1
save_1/restore_allNoOp^save_1/restore_shard "єB
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"┘

trainable_variables┴
Й

s
pi/dense/kernel:0pi/dense/kernel/Assignpi/dense/kernel/read:02,pi/dense/kernel/Initializer/random_uniform:08
b
pi/dense/bias:0pi/dense/bias/Assignpi/dense/bias/read:02!pi/dense/bias/Initializer/zeros:08
{
pi/dense_1/kernel:0pi/dense_1/kernel/Assignpi/dense_1/kernel/read:02.pi/dense_1/kernel/Initializer/random_uniform:08
j
pi/dense_1/bias:0pi/dense_1/bias/Assignpi/dense_1/bias/read:02#pi/dense_1/bias/Initializer/zeros:08
{
pi/dense_2/kernel:0pi/dense_2/kernel/Assignpi/dense_2/kernel/read:02.pi/dense_2/kernel/Initializer/random_uniform:08
j
pi/dense_2/bias:0pi/dense_2/bias/Assignpi/dense_2/bias/read:02#pi/dense_2/bias/Initializer/zeros:08
o
v/dense/kernel:0v/dense/kernel/Assignv/dense/kernel/read:02+v/dense/kernel/Initializer/random_uniform:08
^
v/dense/bias:0v/dense/bias/Assignv/dense/bias/read:02 v/dense/bias/Initializer/zeros:08
w
v/dense_1/kernel:0v/dense_1/kernel/Assignv/dense_1/kernel/read:02-v/dense_1/kernel/Initializer/random_uniform:08
f
v/dense_1/bias:0v/dense_1/bias/Assignv/dense_1/bias/read:02"v/dense_1/bias/Initializer/zeros:08
w
v/dense_2/kernel:0v/dense_2/kernel/Assignv/dense_2/kernel/read:02-v/dense_2/kernel/Initializer/random_uniform:08
f
v/dense_2/bias:0v/dense_2/bias/Assignv/dense_2/bias/read:02"v/dense_2/bias/Initializer/zeros:08"
train_op

Adam"Щ
	variablesВж
s
pi/dense/kernel:0pi/dense/kernel/Assignpi/dense/kernel/read:02,pi/dense/kernel/Initializer/random_uniform:08
b
pi/dense/bias:0pi/dense/bias/Assignpi/dense/bias/read:02!pi/dense/bias/Initializer/zeros:08
{
pi/dense_1/kernel:0pi/dense_1/kernel/Assignpi/dense_1/kernel/read:02.pi/dense_1/kernel/Initializer/random_uniform:08
j
pi/dense_1/bias:0pi/dense_1/bias/Assignpi/dense_1/bias/read:02#pi/dense_1/bias/Initializer/zeros:08
{
pi/dense_2/kernel:0pi/dense_2/kernel/Assignpi/dense_2/kernel/read:02.pi/dense_2/kernel/Initializer/random_uniform:08
j
pi/dense_2/bias:0pi/dense_2/bias/Assignpi/dense_2/bias/read:02#pi/dense_2/bias/Initializer/zeros:08
o
v/dense/kernel:0v/dense/kernel/Assignv/dense/kernel/read:02+v/dense/kernel/Initializer/random_uniform:08
^
v/dense/bias:0v/dense/bias/Assignv/dense/bias/read:02 v/dense/bias/Initializer/zeros:08
w
v/dense_1/kernel:0v/dense_1/kernel/Assignv/dense_1/kernel/read:02-v/dense_1/kernel/Initializer/random_uniform:08
f
v/dense_1/bias:0v/dense_1/bias/Assignv/dense_1/bias/read:02"v/dense_1/bias/Initializer/zeros:08
w
v/dense_2/kernel:0v/dense_2/kernel/Assignv/dense_2/kernel/read:02-v/dense_2/kernel/Initializer/random_uniform:08
f
v/dense_2/bias:0v/dense_2/bias/Assignv/dense_2/bias/read:02"v/dense_2/bias/Initializer/zeros:08
T
beta1_power:0beta1_power/Assignbeta1_power/read:02beta1_power/initial_value:0
T
beta2_power:0beta2_power/Assignbeta2_power/read:02beta2_power/initial_value:0
x
v/dense/kernel/Adam:0v/dense/kernel/Adam/Assignv/dense/kernel/Adam/read:02'v/dense/kernel/Adam/Initializer/zeros:0
ђ
v/dense/kernel/Adam_1:0v/dense/kernel/Adam_1/Assignv/dense/kernel/Adam_1/read:02)v/dense/kernel/Adam_1/Initializer/zeros:0
p
v/dense/bias/Adam:0v/dense/bias/Adam/Assignv/dense/bias/Adam/read:02%v/dense/bias/Adam/Initializer/zeros:0
x
v/dense/bias/Adam_1:0v/dense/bias/Adam_1/Assignv/dense/bias/Adam_1/read:02'v/dense/bias/Adam_1/Initializer/zeros:0
ђ
v/dense_1/kernel/Adam:0v/dense_1/kernel/Adam/Assignv/dense_1/kernel/Adam/read:02)v/dense_1/kernel/Adam/Initializer/zeros:0
ѕ
v/dense_1/kernel/Adam_1:0v/dense_1/kernel/Adam_1/Assignv/dense_1/kernel/Adam_1/read:02+v/dense_1/kernel/Adam_1/Initializer/zeros:0
x
v/dense_1/bias/Adam:0v/dense_1/bias/Adam/Assignv/dense_1/bias/Adam/read:02'v/dense_1/bias/Adam/Initializer/zeros:0
ђ
v/dense_1/bias/Adam_1:0v/dense_1/bias/Adam_1/Assignv/dense_1/bias/Adam_1/read:02)v/dense_1/bias/Adam_1/Initializer/zeros:0
ђ
v/dense_2/kernel/Adam:0v/dense_2/kernel/Adam/Assignv/dense_2/kernel/Adam/read:02)v/dense_2/kernel/Adam/Initializer/zeros:0
ѕ
v/dense_2/kernel/Adam_1:0v/dense_2/kernel/Adam_1/Assignv/dense_2/kernel/Adam_1/read:02+v/dense_2/kernel/Adam_1/Initializer/zeros:0
x
v/dense_2/bias/Adam:0v/dense_2/bias/Adam/Assignv/dense_2/bias/Adam/read:02'v/dense_2/bias/Adam/Initializer/zeros:0
ђ
v/dense_2/bias/Adam_1:0v/dense_2/bias/Adam_1/Assignv/dense_2/bias/Adam_1/read:02)v/dense_2/bias/Adam_1/Initializer/zeros:0*Д
serving_defaultЊ
)
x$
Placeholder:0         #
v
v/Squeeze:0         %
pi
pi/Squeeze:0	         tensorflow/serving/predict