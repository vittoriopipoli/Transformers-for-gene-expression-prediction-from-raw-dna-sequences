ХЁ/
њ!Х!
B
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
Љ
AvgPool

value"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype:
2
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
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
Ы
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

R
Einsum
inputs"T*N
output"T"
equationstring"
Nint(0"	
Ttype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
≠
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
Н
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
delete_old_dirsbool(И
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р

NoOp
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
Н
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
b
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:

2	
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
•
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	И
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	Р
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
Њ
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring И
@
StaticRegexFullMatch	
input

output
"
patternstring
2
StopGradient

input"T
output"T"	
Ttype
ц
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
;
Sub
x"T
y"T
z"T"
Ttype:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.4.12v2.4.1-0-g85c8b2a817f8ўЊ)
z
conv1d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *
shared_nameconv1d/kernel
s
!conv1d/kernel/Read/ReadVariableOpReadVariableOpconv1d/kernel*"
_output_shapes
:  *
dtype0
n
conv1d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv1d/bias
g
conv1d/bias/Read/ReadVariableOpReadVariableOpconv1d/bias*
_output_shapes
: *
dtype0
~
conv1d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	  * 
shared_nameconv1d_1/kernel
w
#conv1d_1/kernel/Read/ReadVariableOpReadVariableOpconv1d_1/kernel*"
_output_shapes
:	  *
dtype0
r
conv1d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv1d_1/bias
k
!conv1d_1/bias/Read/ReadVariableOpReadVariableOpconv1d_1/bias*
_output_shapes
: *
dtype0
К
batch_normalization/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_namebatch_normalization/gamma
Г
-batch_normalization/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization/gamma*
_output_shapes
: *
dtype0
И
batch_normalization/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_namebatch_normalization/beta
Б
,batch_normalization/beta/Read/ReadVariableOpReadVariableOpbatch_normalization/beta*
_output_shapes
: *
dtype0
Ц
batch_normalization/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *0
shared_name!batch_normalization/moving_mean
П
3batch_normalization/moving_mean/Read/ReadVariableOpReadVariableOpbatch_normalization/moving_mean*
_output_shapes
: *
dtype0
Ю
#batch_normalization/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#batch_normalization/moving_variance
Ч
7batch_normalization/moving_variance/Read/ReadVariableOpReadVariableOp#batch_normalization/moving_variance*
_output_shapes
: *
dtype0
О
batch_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namebatch_normalization_1/gamma
З
/batch_normalization_1/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_1/gamma*
_output_shapes
: *
dtype0
М
batch_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_namebatch_normalization_1/beta
Е
.batch_normalization_1/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_1/beta*
_output_shapes
: *
dtype0
Ъ
!batch_normalization_1/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!batch_normalization_1/moving_mean
У
5batch_normalization_1/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_1/moving_mean*
_output_shapes
: *
dtype0
Ґ
%batch_normalization_1/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%batch_normalization_1/moving_variance
Ы
9batch_normalization_1/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_1/moving_variance*
_output_shapes
: *
dtype0
y
dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	и@*
shared_namedense_4/kernel
r
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel*
_output_shapes
:	и@*
dtype0
p
dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_4/bias
i
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
_output_shapes
:@*
dtype0
x
dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*
shared_namedense_5/kernel
q
"dense_5/kernel/Read/ReadVariableOpReadVariableOpdense_5/kernel*
_output_shapes

:@@*
dtype0
p
dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_5/bias
i
 dense_5/bias/Read/ReadVariableOpReadVariableOpdense_5/bias*
_output_shapes
:@*
dtype0
x
dense_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*
shared_namedense_6/kernel
q
"dense_6/kernel/Read/ReadVariableOpReadVariableOpdense_6/kernel*
_output_shapes

:@*
dtype0
p
dense_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_6/bias
i
 dense_6/bias/Read/ReadVariableOpReadVariableOpdense_6/bias*
_output_shapes
:*
dtype0
^
decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedecay
W
decay/Read/ReadVariableOpReadVariableOpdecay*
_output_shapes
: *
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
d
momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
momentum
]
momentum/Read/ReadVariableOpReadVariableOpmomentum*
_output_shapes
: *
dtype0
d
SGD/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name
SGD/iter
]
SGD/iter/Read/ReadVariableOpReadVariableOpSGD/iter*
_output_shapes
: *
dtype0	
Њ
1token_and_position_embedding/embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *B
shared_name31token_and_position_embedding/embedding/embeddings
Ј
Etoken_and_position_embedding/embedding/embeddings/Read/ReadVariableOpReadVariableOp1token_and_position_embedding/embedding/embeddings*
_output_shapes

: *
dtype0
√
3token_and_position_embedding/embedding_1/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ДR *D
shared_name53token_and_position_embedding/embedding_1/embeddings
Љ
Gtoken_and_position_embedding/embedding_1/embeddings/Read/ReadVariableOpReadVariableOp3token_and_position_embedding/embedding_1/embeddings*
_output_shapes
:	ДR *
dtype0
ќ
7transformer_block_1/multi_head_attention_1/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *H
shared_name97transformer_block_1/multi_head_attention_1/query/kernel
«
Ktransformer_block_1/multi_head_attention_1/query/kernel/Read/ReadVariableOpReadVariableOp7transformer_block_1/multi_head_attention_1/query/kernel*"
_output_shapes
:  *
dtype0
∆
5transformer_block_1/multi_head_attention_1/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *F
shared_name75transformer_block_1/multi_head_attention_1/query/bias
њ
Itransformer_block_1/multi_head_attention_1/query/bias/Read/ReadVariableOpReadVariableOp5transformer_block_1/multi_head_attention_1/query/bias*
_output_shapes

: *
dtype0
 
5transformer_block_1/multi_head_attention_1/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *F
shared_name75transformer_block_1/multi_head_attention_1/key/kernel
√
Itransformer_block_1/multi_head_attention_1/key/kernel/Read/ReadVariableOpReadVariableOp5transformer_block_1/multi_head_attention_1/key/kernel*"
_output_shapes
:  *
dtype0
¬
3transformer_block_1/multi_head_attention_1/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *D
shared_name53transformer_block_1/multi_head_attention_1/key/bias
ї
Gtransformer_block_1/multi_head_attention_1/key/bias/Read/ReadVariableOpReadVariableOp3transformer_block_1/multi_head_attention_1/key/bias*
_output_shapes

: *
dtype0
ќ
7transformer_block_1/multi_head_attention_1/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *H
shared_name97transformer_block_1/multi_head_attention_1/value/kernel
«
Ktransformer_block_1/multi_head_attention_1/value/kernel/Read/ReadVariableOpReadVariableOp7transformer_block_1/multi_head_attention_1/value/kernel*"
_output_shapes
:  *
dtype0
∆
5transformer_block_1/multi_head_attention_1/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *F
shared_name75transformer_block_1/multi_head_attention_1/value/bias
њ
Itransformer_block_1/multi_head_attention_1/value/bias/Read/ReadVariableOpReadVariableOp5transformer_block_1/multi_head_attention_1/value/bias*
_output_shapes

: *
dtype0
д
Btransformer_block_1/multi_head_attention_1/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *S
shared_nameDBtransformer_block_1/multi_head_attention_1/attention_output/kernel
Ё
Vtransformer_block_1/multi_head_attention_1/attention_output/kernel/Read/ReadVariableOpReadVariableOpBtransformer_block_1/multi_head_attention_1/attention_output/kernel*"
_output_shapes
:  *
dtype0
Ў
@transformer_block_1/multi_head_attention_1/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *Q
shared_nameB@transformer_block_1/multi_head_attention_1/attention_output/bias
—
Ttransformer_block_1/multi_head_attention_1/attention_output/bias/Read/ReadVariableOpReadVariableOp@transformer_block_1/multi_head_attention_1/attention_output/bias*
_output_shapes
: *
dtype0
x
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: @*
shared_namedense_2/kernel
q
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes

: @*
dtype0
p
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:@*
dtype0
x
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *
shared_namedense_3/kernel
q
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes

:@ *
dtype0
p
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_3/bias
i
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes
: *
dtype0
ґ
/transformer_block_1/layer_normalization_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *@
shared_name1/transformer_block_1/layer_normalization_2/gamma
ѓ
Ctransformer_block_1/layer_normalization_2/gamma/Read/ReadVariableOpReadVariableOp/transformer_block_1/layer_normalization_2/gamma*
_output_shapes
: *
dtype0
і
.transformer_block_1/layer_normalization_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *?
shared_name0.transformer_block_1/layer_normalization_2/beta
≠
Btransformer_block_1/layer_normalization_2/beta/Read/ReadVariableOpReadVariableOp.transformer_block_1/layer_normalization_2/beta*
_output_shapes
: *
dtype0
ґ
/transformer_block_1/layer_normalization_3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *@
shared_name1/transformer_block_1/layer_normalization_3/gamma
ѓ
Ctransformer_block_1/layer_normalization_3/gamma/Read/ReadVariableOpReadVariableOp/transformer_block_1/layer_normalization_3/gamma*
_output_shapes
: *
dtype0
і
.transformer_block_1/layer_normalization_3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *?
shared_name0.transformer_block_1/layer_normalization_3/beta
≠
Btransformer_block_1/layer_normalization_3/beta/Read/ReadVariableOpReadVariableOp.transformer_block_1/layer_normalization_3/beta*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
Ф
SGD/conv1d/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *+
shared_nameSGD/conv1d/kernel/momentum
Н
.SGD/conv1d/kernel/momentum/Read/ReadVariableOpReadVariableOpSGD/conv1d/kernel/momentum*"
_output_shapes
:  *
dtype0
И
SGD/conv1d/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameSGD/conv1d/bias/momentum
Б
,SGD/conv1d/bias/momentum/Read/ReadVariableOpReadVariableOpSGD/conv1d/bias/momentum*
_output_shapes
: *
dtype0
Ш
SGD/conv1d_1/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:	  *-
shared_nameSGD/conv1d_1/kernel/momentum
С
0SGD/conv1d_1/kernel/momentum/Read/ReadVariableOpReadVariableOpSGD/conv1d_1/kernel/momentum*"
_output_shapes
:	  *
dtype0
М
SGD/conv1d_1/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_nameSGD/conv1d_1/bias/momentum
Е
.SGD/conv1d_1/bias/momentum/Read/ReadVariableOpReadVariableOpSGD/conv1d_1/bias/momentum*
_output_shapes
: *
dtype0
§
&SGD/batch_normalization/gamma/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *7
shared_name(&SGD/batch_normalization/gamma/momentum
Э
:SGD/batch_normalization/gamma/momentum/Read/ReadVariableOpReadVariableOp&SGD/batch_normalization/gamma/momentum*
_output_shapes
: *
dtype0
Ґ
%SGD/batch_normalization/beta/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%SGD/batch_normalization/beta/momentum
Ы
9SGD/batch_normalization/beta/momentum/Read/ReadVariableOpReadVariableOp%SGD/batch_normalization/beta/momentum*
_output_shapes
: *
dtype0
®
(SGD/batch_normalization_1/gamma/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *9
shared_name*(SGD/batch_normalization_1/gamma/momentum
°
<SGD/batch_normalization_1/gamma/momentum/Read/ReadVariableOpReadVariableOp(SGD/batch_normalization_1/gamma/momentum*
_output_shapes
: *
dtype0
¶
'SGD/batch_normalization_1/beta/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *8
shared_name)'SGD/batch_normalization_1/beta/momentum
Я
;SGD/batch_normalization_1/beta/momentum/Read/ReadVariableOpReadVariableOp'SGD/batch_normalization_1/beta/momentum*
_output_shapes
: *
dtype0
У
SGD/dense_4/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:	и@*,
shared_nameSGD/dense_4/kernel/momentum
М
/SGD/dense_4/kernel/momentum/Read/ReadVariableOpReadVariableOpSGD/dense_4/kernel/momentum*
_output_shapes
:	и@*
dtype0
К
SGD/dense_4/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:@**
shared_nameSGD/dense_4/bias/momentum
Г
-SGD/dense_4/bias/momentum/Read/ReadVariableOpReadVariableOpSGD/dense_4/bias/momentum*
_output_shapes
:@*
dtype0
Т
SGD/dense_5/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*,
shared_nameSGD/dense_5/kernel/momentum
Л
/SGD/dense_5/kernel/momentum/Read/ReadVariableOpReadVariableOpSGD/dense_5/kernel/momentum*
_output_shapes

:@@*
dtype0
К
SGD/dense_5/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:@**
shared_nameSGD/dense_5/bias/momentum
Г
-SGD/dense_5/bias/momentum/Read/ReadVariableOpReadVariableOpSGD/dense_5/bias/momentum*
_output_shapes
:@*
dtype0
Т
SGD/dense_6/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*,
shared_nameSGD/dense_6/kernel/momentum
Л
/SGD/dense_6/kernel/momentum/Read/ReadVariableOpReadVariableOpSGD/dense_6/kernel/momentum*
_output_shapes

:@*
dtype0
К
SGD/dense_6/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameSGD/dense_6/bias/momentum
Г
-SGD/dense_6/bias/momentum/Read/ReadVariableOpReadVariableOpSGD/dense_6/bias/momentum*
_output_shapes
:*
dtype0
Ў
>SGD/token_and_position_embedding/embedding/embeddings/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *O
shared_name@>SGD/token_and_position_embedding/embedding/embeddings/momentum
—
RSGD/token_and_position_embedding/embedding/embeddings/momentum/Read/ReadVariableOpReadVariableOp>SGD/token_and_position_embedding/embedding/embeddings/momentum*
_output_shapes

: *
dtype0
Ё
@SGD/token_and_position_embedding/embedding_1/embeddings/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ДR *Q
shared_nameB@SGD/token_and_position_embedding/embedding_1/embeddings/momentum
÷
TSGD/token_and_position_embedding/embedding_1/embeddings/momentum/Read/ReadVariableOpReadVariableOp@SGD/token_and_position_embedding/embedding_1/embeddings/momentum*
_output_shapes
:	ДR *
dtype0
и
DSGD/transformer_block_1/multi_head_attention_1/query/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *U
shared_nameFDSGD/transformer_block_1/multi_head_attention_1/query/kernel/momentum
б
XSGD/transformer_block_1/multi_head_attention_1/query/kernel/momentum/Read/ReadVariableOpReadVariableOpDSGD/transformer_block_1/multi_head_attention_1/query/kernel/momentum*"
_output_shapes
:  *
dtype0
а
BSGD/transformer_block_1/multi_head_attention_1/query/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *S
shared_nameDBSGD/transformer_block_1/multi_head_attention_1/query/bias/momentum
ў
VSGD/transformer_block_1/multi_head_attention_1/query/bias/momentum/Read/ReadVariableOpReadVariableOpBSGD/transformer_block_1/multi_head_attention_1/query/bias/momentum*
_output_shapes

: *
dtype0
д
BSGD/transformer_block_1/multi_head_attention_1/key/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *S
shared_nameDBSGD/transformer_block_1/multi_head_attention_1/key/kernel/momentum
Ё
VSGD/transformer_block_1/multi_head_attention_1/key/kernel/momentum/Read/ReadVariableOpReadVariableOpBSGD/transformer_block_1/multi_head_attention_1/key/kernel/momentum*"
_output_shapes
:  *
dtype0
№
@SGD/transformer_block_1/multi_head_attention_1/key/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *Q
shared_nameB@SGD/transformer_block_1/multi_head_attention_1/key/bias/momentum
’
TSGD/transformer_block_1/multi_head_attention_1/key/bias/momentum/Read/ReadVariableOpReadVariableOp@SGD/transformer_block_1/multi_head_attention_1/key/bias/momentum*
_output_shapes

: *
dtype0
и
DSGD/transformer_block_1/multi_head_attention_1/value/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *U
shared_nameFDSGD/transformer_block_1/multi_head_attention_1/value/kernel/momentum
б
XSGD/transformer_block_1/multi_head_attention_1/value/kernel/momentum/Read/ReadVariableOpReadVariableOpDSGD/transformer_block_1/multi_head_attention_1/value/kernel/momentum*"
_output_shapes
:  *
dtype0
а
BSGD/transformer_block_1/multi_head_attention_1/value/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *S
shared_nameDBSGD/transformer_block_1/multi_head_attention_1/value/bias/momentum
ў
VSGD/transformer_block_1/multi_head_attention_1/value/bias/momentum/Read/ReadVariableOpReadVariableOpBSGD/transformer_block_1/multi_head_attention_1/value/bias/momentum*
_output_shapes

: *
dtype0
ю
OSGD/transformer_block_1/multi_head_attention_1/attention_output/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *`
shared_nameQOSGD/transformer_block_1/multi_head_attention_1/attention_output/kernel/momentum
ч
cSGD/transformer_block_1/multi_head_attention_1/attention_output/kernel/momentum/Read/ReadVariableOpReadVariableOpOSGD/transformer_block_1/multi_head_attention_1/attention_output/kernel/momentum*"
_output_shapes
:  *
dtype0
т
MSGD/transformer_block_1/multi_head_attention_1/attention_output/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *^
shared_nameOMSGD/transformer_block_1/multi_head_attention_1/attention_output/bias/momentum
л
aSGD/transformer_block_1/multi_head_attention_1/attention_output/bias/momentum/Read/ReadVariableOpReadVariableOpMSGD/transformer_block_1/multi_head_attention_1/attention_output/bias/momentum*
_output_shapes
: *
dtype0
Т
SGD/dense_2/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape
: @*,
shared_nameSGD/dense_2/kernel/momentum
Л
/SGD/dense_2/kernel/momentum/Read/ReadVariableOpReadVariableOpSGD/dense_2/kernel/momentum*
_output_shapes

: @*
dtype0
К
SGD/dense_2/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape:@**
shared_nameSGD/dense_2/bias/momentum
Г
-SGD/dense_2/bias/momentum/Read/ReadVariableOpReadVariableOpSGD/dense_2/bias/momentum*
_output_shapes
:@*
dtype0
Т
SGD/dense_3/kernel/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *,
shared_nameSGD/dense_3/kernel/momentum
Л
/SGD/dense_3/kernel/momentum/Read/ReadVariableOpReadVariableOpSGD/dense_3/kernel/momentum*
_output_shapes

:@ *
dtype0
К
SGD/dense_3/bias/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_nameSGD/dense_3/bias/momentum
Г
-SGD/dense_3/bias/momentum/Read/ReadVariableOpReadVariableOpSGD/dense_3/bias/momentum*
_output_shapes
: *
dtype0
–
<SGD/transformer_block_1/layer_normalization_2/gamma/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *M
shared_name><SGD/transformer_block_1/layer_normalization_2/gamma/momentum
…
PSGD/transformer_block_1/layer_normalization_2/gamma/momentum/Read/ReadVariableOpReadVariableOp<SGD/transformer_block_1/layer_normalization_2/gamma/momentum*
_output_shapes
: *
dtype0
ќ
;SGD/transformer_block_1/layer_normalization_2/beta/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *L
shared_name=;SGD/transformer_block_1/layer_normalization_2/beta/momentum
«
OSGD/transformer_block_1/layer_normalization_2/beta/momentum/Read/ReadVariableOpReadVariableOp;SGD/transformer_block_1/layer_normalization_2/beta/momentum*
_output_shapes
: *
dtype0
–
<SGD/transformer_block_1/layer_normalization_3/gamma/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *M
shared_name><SGD/transformer_block_1/layer_normalization_3/gamma/momentum
…
PSGD/transformer_block_1/layer_normalization_3/gamma/momentum/Read/ReadVariableOpReadVariableOp<SGD/transformer_block_1/layer_normalization_3/gamma/momentum*
_output_shapes
: *
dtype0
ќ
;SGD/transformer_block_1/layer_normalization_3/beta/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *L
shared_name=;SGD/transformer_block_1/layer_normalization_3/beta/momentum
«
OSGD/transformer_block_1/layer_normalization_3/beta/momentum/Read/ReadVariableOpReadVariableOp;SGD/transformer_block_1/layer_normalization_3/beta/momentum*
_output_shapes
: *
dtype0

NoOpNoOp
лµ
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*•µ
valueЪµBЦµ BОµ
џ
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer-6
layer_with_weights-3
layer-7
	layer_with_weights-4
	layer-8

layer-9
layer_with_weights-5
layer-10
layer-11
layer-12
layer-13
layer_with_weights-6
layer-14
layer-15
layer_with_weights-7
layer-16
layer-17
layer_with_weights-8
layer-18
	optimizer
trainable_variables
	variables
regularization_losses
	keras_api

signatures
 
n
	token_emb
pos_emb
trainable_variables
regularization_losses
	variables
	keras_api
h

 kernel
!bias
"trainable_variables
#regularization_losses
$	variables
%	keras_api
R
&trainable_variables
'regularization_losses
(	variables
)	keras_api
h

*kernel
+bias
,trainable_variables
-regularization_losses
.	variables
/	keras_api
R
0trainable_variables
1regularization_losses
2	variables
3	keras_api
R
4trainable_variables
5regularization_losses
6	variables
7	keras_api
Ч
8axis
	9gamma
:beta
;moving_mean
<moving_variance
=trainable_variables
>regularization_losses
?	variables
@	keras_api
Ч
Aaxis
	Bgamma
Cbeta
Dmoving_mean
Emoving_variance
Ftrainable_variables
Gregularization_losses
H	variables
I	keras_api
R
Jtrainable_variables
Kregularization_losses
L	variables
M	keras_api
†
Natt
Offn
P
layernorm1
Q
layernorm2
Rdropout1
Sdropout2
Ttrainable_variables
Uregularization_losses
V	variables
W	keras_api
R
Xtrainable_variables
Yregularization_losses
Z	variables
[	keras_api
 
R
\trainable_variables
]regularization_losses
^	variables
_	keras_api
h

`kernel
abias
btrainable_variables
cregularization_losses
d	variables
e	keras_api
R
ftrainable_variables
gregularization_losses
h	variables
i	keras_api
h

jkernel
kbias
ltrainable_variables
mregularization_losses
n	variables
o	keras_api
R
ptrainable_variables
qregularization_losses
r	variables
s	keras_api
h

tkernel
ubias
vtrainable_variables
wregularization_losses
x	variables
y	keras_api
ж
	zdecay
{learning_rate
|momentum
}iter momentumС!momentumТ*momentumУ+momentumФ9momentumХ:momentumЦBmomentumЧCmomentumШ`momentumЩamomentumЪjmomentumЫkmomentumЬtmomentumЭumomentumЮ~momentumЯmomentum†Аmomentum°БmomentumҐВmomentum£Гmomentum§Дmomentum•Еmomentum¶ЖmomentumІЗmomentum®Иmomentum©Йmomentum™КmomentumЂЛmomentumђМmomentum≠НmomentumЃОmomentumѓПmomentum∞
Ж
~0
1
 2
!3
*4
+5
96
:7
B8
C9
А10
Б11
В12
Г13
Д14
Е15
Ж16
З17
И18
Й19
К20
Л21
М22
Н23
О24
П25
`26
a27
j28
k29
t30
u31
¶
~0
1
 2
!3
*4
+5
96
:7
;8
<9
B10
C11
D12
E13
А14
Б15
В16
Г17
Д18
Е19
Ж20
З21
И22
Й23
К24
Л25
М26
Н27
О28
П29
`30
a31
j32
k33
t34
u35
 
≤
trainable_variables
 Рlayer_regularization_losses
	variables
Сlayer_metrics
Тmetrics
Уnon_trainable_variables
regularization_losses
Фlayers
 
f
~
embeddings
Хtrainable_variables
Цregularization_losses
Ч	variables
Ш	keras_api
f

embeddings
Щtrainable_variables
Ъregularization_losses
Ы	variables
Ь	keras_api

~0
1
 

~0
1
≤
trainable_variables
 Эlayer_regularization_losses
regularization_losses
	variables
Юlayer_metrics
Яnon_trainable_variables
†metrics
°layers
YW
VARIABLE_VALUEconv1d/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEconv1d/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

 0
!1
 

 0
!1
≤
"trainable_variables
 Ґlayer_regularization_losses
#regularization_losses
$	variables
£layer_metrics
§non_trainable_variables
•metrics
¶layers
 
 
 
≤
&trainable_variables
 Іlayer_regularization_losses
'regularization_losses
(	variables
®layer_metrics
©non_trainable_variables
™metrics
Ђlayers
[Y
VARIABLE_VALUEconv1d_1/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv1d_1/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

*0
+1
 

*0
+1
≤
,trainable_variables
 ђlayer_regularization_losses
-regularization_losses
.	variables
≠layer_metrics
Ѓnon_trainable_variables
ѓmetrics
∞layers
 
 
 
≤
0trainable_variables
 ±layer_regularization_losses
1regularization_losses
2	variables
≤layer_metrics
≥non_trainable_variables
іmetrics
µlayers
 
 
 
≤
4trainable_variables
 ґlayer_regularization_losses
5regularization_losses
6	variables
Јlayer_metrics
Єnon_trainable_variables
єmetrics
Їlayers
 
db
VARIABLE_VALUEbatch_normalization/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUEbatch_normalization/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEbatch_normalization/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE#batch_normalization/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

90
:1
 

90
:1
;2
<3
≤
=trainable_variables
 їlayer_regularization_losses
>regularization_losses
?	variables
Љlayer_metrics
љnon_trainable_variables
Њmetrics
њlayers
 
fd
VARIABLE_VALUEbatch_normalization_1/gamma5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEbatch_normalization_1/beta4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_1/moving_mean;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE%batch_normalization_1/moving_variance?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

B0
C1
 

B0
C1
D2
E3
≤
Ftrainable_variables
 јlayer_regularization_losses
Gregularization_losses
H	variables
Ѕlayer_metrics
¬non_trainable_variables
√metrics
ƒlayers
 
 
 
≤
Jtrainable_variables
 ≈layer_regularization_losses
Kregularization_losses
L	variables
∆layer_metrics
«non_trainable_variables
»metrics
…layers
≈
 _query_dense
Ћ
_key_dense
ћ_value_dense
Ќ_softmax
ќ_dropout_layer
ѕ_output_dense
–trainable_variables
—regularization_losses
“	variables
”	keras_api
®
‘layer_with_weights-0
‘layer-0
’layer_with_weights-1
’layer-1
÷trainable_variables
„	variables
Ўregularization_losses
ў	keras_api
x
	Џaxis

Мgamma
	Нbeta
џtrainable_variables
№regularization_losses
Ё	variables
ё	keras_api
x
	яaxis

Оgamma
	Пbeta
аtrainable_variables
бregularization_losses
в	variables
г	keras_api
V
дtrainable_variables
еregularization_losses
ж	variables
з	keras_api
V
иtrainable_variables
йregularization_losses
к	variables
л	keras_api
Ж
А0
Б1
В2
Г3
Д4
Е5
Ж6
З7
И8
Й9
К10
Л11
М12
Н13
О14
П15
 
Ж
А0
Б1
В2
Г3
Д4
Е5
Ж6
З7
И8
Й9
К10
Л11
М12
Н13
О14
П15
≤
Ttrainable_variables
 мlayer_regularization_losses
Uregularization_losses
V	variables
нlayer_metrics
оnon_trainable_variables
пmetrics
рlayers
 
 
 
≤
Xtrainable_variables
 сlayer_regularization_losses
Yregularization_losses
Z	variables
тlayer_metrics
уnon_trainable_variables
фmetrics
хlayers
 
 
 
≤
\trainable_variables
 цlayer_regularization_losses
]regularization_losses
^	variables
чlayer_metrics
шnon_trainable_variables
щmetrics
ъlayers
ZX
VARIABLE_VALUEdense_4/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_4/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE

`0
a1
 

`0
a1
≤
btrainable_variables
 ыlayer_regularization_losses
cregularization_losses
d	variables
ьlayer_metrics
эnon_trainable_variables
юmetrics
€layers
 
 
 
≤
ftrainable_variables
 Аlayer_regularization_losses
gregularization_losses
h	variables
Бlayer_metrics
Вnon_trainable_variables
Гmetrics
Дlayers
ZX
VARIABLE_VALUEdense_5/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_5/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE

j0
k1
 

j0
k1
≤
ltrainable_variables
 Еlayer_regularization_losses
mregularization_losses
n	variables
Жlayer_metrics
Зnon_trainable_variables
Иmetrics
Йlayers
 
 
 
≤
ptrainable_variables
 Кlayer_regularization_losses
qregularization_losses
r	variables
Лlayer_metrics
Мnon_trainable_variables
Нmetrics
Оlayers
ZX
VARIABLE_VALUEdense_6/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_6/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE

t0
u1
 

t0
u1
≤
vtrainable_variables
 Пlayer_regularization_losses
wregularization_losses
x	variables
Рlayer_metrics
Сnon_trainable_variables
Тmetrics
Уlayers
EC
VARIABLE_VALUEdecay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElearning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUEmomentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
GE
VARIABLE_VALUESGD/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUE1token_and_position_embedding/embedding/embeddings0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUE3token_and_position_embedding/embedding_1/embeddings0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUE7transformer_block_1/multi_head_attention_1/query/kernel1trainable_variables/10/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE5transformer_block_1/multi_head_attention_1/query/bias1trainable_variables/11/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE5transformer_block_1/multi_head_attention_1/key/kernel1trainable_variables/12/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE3transformer_block_1/multi_head_attention_1/key/bias1trainable_variables/13/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUE7transformer_block_1/multi_head_attention_1/value/kernel1trainable_variables/14/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE5transformer_block_1/multi_head_attention_1/value/bias1trainable_variables/15/.ATTRIBUTES/VARIABLE_VALUE
КЗ
VARIABLE_VALUEBtransformer_block_1/multi_head_attention_1/attention_output/kernel1trainable_variables/16/.ATTRIBUTES/VARIABLE_VALUE
ИЕ
VARIABLE_VALUE@transformer_block_1/multi_head_attention_1/attention_output/bias1trainable_variables/17/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEdense_2/kernel1trainable_variables/18/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEdense_2/bias1trainable_variables/19/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEdense_3/kernel1trainable_variables/20/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUEdense_3/bias1trainable_variables/21/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUE/transformer_block_1/layer_normalization_2/gamma1trainable_variables/22/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUE.transformer_block_1/layer_normalization_2/beta1trainable_variables/23/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUE/transformer_block_1/layer_normalization_3/gamma1trainable_variables/24/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUE.transformer_block_1/layer_normalization_3/beta1trainable_variables/25/.ATTRIBUTES/VARIABLE_VALUE
 
 

Ф0

;0
<1
D2
E3
О
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18

~0
 

~0
µ
Хtrainable_variables
 Хlayer_regularization_losses
Цregularization_losses
Ч	variables
Цlayer_metrics
Чnon_trainable_variables
Шmetrics
Щlayers

0
 

0
µ
Щtrainable_variables
 Ъlayer_regularization_losses
Ъregularization_losses
Ы	variables
Ыlayer_metrics
Ьnon_trainable_variables
Эmetrics
Юlayers
 
 
 
 

0
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

;0
<1
 
 
 
 

D0
E1
 
 
 
 
 
 
 
°
Яpartial_output_shape
†full_output_shape
Аkernel
	Бbias
°trainable_variables
Ґregularization_losses
£	variables
§	keras_api
°
•partial_output_shape
¶full_output_shape
Вkernel
	Гbias
Іtrainable_variables
®regularization_losses
©	variables
™	keras_api
°
Ђpartial_output_shape
ђfull_output_shape
Дkernel
	Еbias
≠trainable_variables
Ѓregularization_losses
ѓ	variables
∞	keras_api
V
±trainable_variables
≤regularization_losses
≥	variables
і	keras_api
V
µtrainable_variables
ґregularization_losses
Ј	variables
Є	keras_api
°
єpartial_output_shape
Їfull_output_shape
Жkernel
	Зbias
їtrainable_variables
Љregularization_losses
љ	variables
Њ	keras_api
@
А0
Б1
В2
Г3
Д4
Е5
Ж6
З7
 
@
А0
Б1
В2
Г3
Д4
Е5
Ж6
З7
µ
–trainable_variables
 њlayer_regularization_losses
—regularization_losses
“	variables
јlayer_metrics
Ѕnon_trainable_variables
¬metrics
√layers
n
Иkernel
	Йbias
ƒtrainable_variables
≈regularization_losses
∆	variables
«	keras_api
n
Кkernel
	Лbias
»trainable_variables
…regularization_losses
 	variables
Ћ	keras_api
 
И0
Й1
К2
Л3
 
И0
Й1
К2
Л3
 
µ
÷trainable_variables
 ћlayer_regularization_losses
„	variables
Ќlayer_metrics
ќmetrics
ѕnon_trainable_variables
Ўregularization_losses
–layers
 

М0
Н1
 

М0
Н1
µ
џtrainable_variables
 —layer_regularization_losses
№regularization_losses
Ё	variables
“layer_metrics
”non_trainable_variables
‘metrics
’layers
 

О0
П1
 

О0
П1
µ
аtrainable_variables
 ÷layer_regularization_losses
бregularization_losses
в	variables
„layer_metrics
Ўnon_trainable_variables
ўmetrics
Џlayers
 
 
 
µ
дtrainable_variables
 џlayer_regularization_losses
еregularization_losses
ж	variables
№layer_metrics
Ёnon_trainable_variables
ёmetrics
яlayers
 
 
 
µ
иtrainable_variables
 аlayer_regularization_losses
йregularization_losses
к	variables
бlayer_metrics
вnon_trainable_variables
гmetrics
дlayers
 
 
 
 
*
N0
O1
P2
Q3
R4
S5
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

еtotal

жcount
з	variables
и	keras_api
 
 
 
 
 
 
 
 
 
 
 
 

А0
Б1
 

А0
Б1
µ
°trainable_variables
 йlayer_regularization_losses
Ґregularization_losses
£	variables
кlayer_metrics
лnon_trainable_variables
мmetrics
нlayers
 
 

В0
Г1
 

В0
Г1
µ
Іtrainable_variables
 оlayer_regularization_losses
®regularization_losses
©	variables
пlayer_metrics
рnon_trainable_variables
сmetrics
тlayers
 
 

Д0
Е1
 

Д0
Е1
µ
≠trainable_variables
 уlayer_regularization_losses
Ѓregularization_losses
ѓ	variables
фlayer_metrics
хnon_trainable_variables
цmetrics
чlayers
 
 
 
µ
±trainable_variables
 шlayer_regularization_losses
≤regularization_losses
≥	variables
щlayer_metrics
ъnon_trainable_variables
ыmetrics
ьlayers
 
 
 
µ
µtrainable_variables
 эlayer_regularization_losses
ґregularization_losses
Ј	variables
юlayer_metrics
€non_trainable_variables
Аmetrics
Бlayers
 
 

Ж0
З1
 

Ж0
З1
µ
їtrainable_variables
 Вlayer_regularization_losses
Љregularization_losses
љ	variables
Гlayer_metrics
Дnon_trainable_variables
Еmetrics
Жlayers
 
 
 
 
0
 0
Ћ1
ћ2
Ќ3
ќ4
ѕ5

И0
Й1
 

И0
Й1
µ
ƒtrainable_variables
 Зlayer_regularization_losses
≈regularization_losses
∆	variables
Иlayer_metrics
Йnon_trainable_variables
Кmetrics
Лlayers

К0
Л1
 

К0
Л1
µ
»trainable_variables
 Мlayer_regularization_losses
…regularization_losses
 	variables
Нlayer_metrics
Оnon_trainable_variables
Пmetrics
Рlayers
 
 
 
 

‘0
’1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

е0
ж1

з	variables
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
КЗ
VARIABLE_VALUESGD/conv1d/kernel/momentumYlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
ЖГ
VARIABLE_VALUESGD/conv1d/bias/momentumWlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
МЙ
VARIABLE_VALUESGD/conv1d_1/kernel/momentumYlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
ИЕ
VARIABLE_VALUESGD/conv1d_1/bias/momentumWlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
ХТ
VARIABLE_VALUE&SGD/batch_normalization/gamma/momentumXlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
УР
VARIABLE_VALUE%SGD/batch_normalization/beta/momentumWlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
ЧФ
VARIABLE_VALUE(SGD/batch_normalization_1/gamma/momentumXlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
ХТ
VARIABLE_VALUE'SGD/batch_normalization_1/beta/momentumWlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
ЛИ
VARIABLE_VALUESGD/dense_4/kernel/momentumYlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
ЗД
VARIABLE_VALUESGD/dense_4/bias/momentumWlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
ЛИ
VARIABLE_VALUESGD/dense_5/kernel/momentumYlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
ЗД
VARIABLE_VALUESGD/dense_5/bias/momentumWlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
ЛИ
VARIABLE_VALUESGD/dense_6/kernel/momentumYlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
ЗД
VARIABLE_VALUESGD/dense_6/bias/momentumWlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
®•
VARIABLE_VALUE>SGD/token_and_position_embedding/embedding/embeddings/momentumStrainable_variables/0/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
™І
VARIABLE_VALUE@SGD/token_and_position_embedding/embedding_1/embeddings/momentumStrainable_variables/1/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
ѓђ
VARIABLE_VALUEDSGD/transformer_block_1/multi_head_attention_1/query/kernel/momentumTtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
≠™
VARIABLE_VALUEBSGD/transformer_block_1/multi_head_attention_1/query/bias/momentumTtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
≠™
VARIABLE_VALUEBSGD/transformer_block_1/multi_head_attention_1/key/kernel/momentumTtrainable_variables/12/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
Ђ®
VARIABLE_VALUE@SGD/transformer_block_1/multi_head_attention_1/key/bias/momentumTtrainable_variables/13/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
ѓђ
VARIABLE_VALUEDSGD/transformer_block_1/multi_head_attention_1/value/kernel/momentumTtrainable_variables/14/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
≠™
VARIABLE_VALUEBSGD/transformer_block_1/multi_head_attention_1/value/bias/momentumTtrainable_variables/15/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
ЇЈ
VARIABLE_VALUEOSGD/transformer_block_1/multi_head_attention_1/attention_output/kernel/momentumTtrainable_variables/16/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
Єµ
VARIABLE_VALUEMSGD/transformer_block_1/multi_head_attention_1/attention_output/bias/momentumTtrainable_variables/17/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
ЖГ
VARIABLE_VALUESGD/dense_2/kernel/momentumTtrainable_variables/18/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
ДБ
VARIABLE_VALUESGD/dense_2/bias/momentumTtrainable_variables/19/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
ЖГ
VARIABLE_VALUESGD/dense_3/kernel/momentumTtrainable_variables/20/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
ДБ
VARIABLE_VALUESGD/dense_3/bias/momentumTtrainable_variables/21/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
І§
VARIABLE_VALUE<SGD/transformer_block_1/layer_normalization_2/gamma/momentumTtrainable_variables/22/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
¶£
VARIABLE_VALUE;SGD/transformer_block_1/layer_normalization_2/beta/momentumTtrainable_variables/23/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
І§
VARIABLE_VALUE<SGD/transformer_block_1/layer_normalization_3/gamma/momentumTtrainable_variables/24/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
¶£
VARIABLE_VALUE;SGD/transformer_block_1/layer_normalization_3/beta/momentumTtrainable_variables/25/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
|
serving_default_input_1Placeholder*(
_output_shapes
:€€€€€€€€€ДR*
dtype0*
shape:€€€€€€€€€ДR
z
serving_default_input_2Placeholder*'
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
г
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1serving_default_input_23token_and_position_embedding/embedding_1/embeddings1token_and_position_embedding/embedding/embeddingsconv1d/kernelconv1d/biasconv1d_1/kernelconv1d_1/bias#batch_normalization/moving_variancebatch_normalization/gammabatch_normalization/moving_meanbatch_normalization/beta%batch_normalization_1/moving_variancebatch_normalization_1/gamma!batch_normalization_1/moving_meanbatch_normalization_1/beta7transformer_block_1/multi_head_attention_1/query/kernel5transformer_block_1/multi_head_attention_1/query/bias5transformer_block_1/multi_head_attention_1/key/kernel3transformer_block_1/multi_head_attention_1/key/bias7transformer_block_1/multi_head_attention_1/value/kernel5transformer_block_1/multi_head_attention_1/value/biasBtransformer_block_1/multi_head_attention_1/attention_output/kernel@transformer_block_1/multi_head_attention_1/attention_output/bias/transformer_block_1/layer_normalization_2/gamma.transformer_block_1/layer_normalization_2/betadense_2/kerneldense_2/biasdense_3/kerneldense_3/bias/transformer_block_1/layer_normalization_3/gamma.transformer_block_1/layer_normalization_3/betadense_4/kerneldense_4/biasdense_5/kerneldense_5/biasdense_6/kerneldense_6/bias*1
Tin*
(2&*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*F
_read_only_resource_inputs(
&$	
 !"#$%*0
config_proto 

CPU

GPU2*0J 8В *-
f(R&
$__inference_signature_wrapper_100788
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Р$
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename!conv1d/kernel/Read/ReadVariableOpconv1d/bias/Read/ReadVariableOp#conv1d_1/kernel/Read/ReadVariableOp!conv1d_1/bias/Read/ReadVariableOp-batch_normalization/gamma/Read/ReadVariableOp,batch_normalization/beta/Read/ReadVariableOp3batch_normalization/moving_mean/Read/ReadVariableOp7batch_normalization/moving_variance/Read/ReadVariableOp/batch_normalization_1/gamma/Read/ReadVariableOp.batch_normalization_1/beta/Read/ReadVariableOp5batch_normalization_1/moving_mean/Read/ReadVariableOp9batch_normalization_1/moving_variance/Read/ReadVariableOp"dense_4/kernel/Read/ReadVariableOp dense_4/bias/Read/ReadVariableOp"dense_5/kernel/Read/ReadVariableOp dense_5/bias/Read/ReadVariableOp"dense_6/kernel/Read/ReadVariableOp dense_6/bias/Read/ReadVariableOpdecay/Read/ReadVariableOp!learning_rate/Read/ReadVariableOpmomentum/Read/ReadVariableOpSGD/iter/Read/ReadVariableOpEtoken_and_position_embedding/embedding/embeddings/Read/ReadVariableOpGtoken_and_position_embedding/embedding_1/embeddings/Read/ReadVariableOpKtransformer_block_1/multi_head_attention_1/query/kernel/Read/ReadVariableOpItransformer_block_1/multi_head_attention_1/query/bias/Read/ReadVariableOpItransformer_block_1/multi_head_attention_1/key/kernel/Read/ReadVariableOpGtransformer_block_1/multi_head_attention_1/key/bias/Read/ReadVariableOpKtransformer_block_1/multi_head_attention_1/value/kernel/Read/ReadVariableOpItransformer_block_1/multi_head_attention_1/value/bias/Read/ReadVariableOpVtransformer_block_1/multi_head_attention_1/attention_output/kernel/Read/ReadVariableOpTtransformer_block_1/multi_head_attention_1/attention_output/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOp"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOpCtransformer_block_1/layer_normalization_2/gamma/Read/ReadVariableOpBtransformer_block_1/layer_normalization_2/beta/Read/ReadVariableOpCtransformer_block_1/layer_normalization_3/gamma/Read/ReadVariableOpBtransformer_block_1/layer_normalization_3/beta/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp.SGD/conv1d/kernel/momentum/Read/ReadVariableOp,SGD/conv1d/bias/momentum/Read/ReadVariableOp0SGD/conv1d_1/kernel/momentum/Read/ReadVariableOp.SGD/conv1d_1/bias/momentum/Read/ReadVariableOp:SGD/batch_normalization/gamma/momentum/Read/ReadVariableOp9SGD/batch_normalization/beta/momentum/Read/ReadVariableOp<SGD/batch_normalization_1/gamma/momentum/Read/ReadVariableOp;SGD/batch_normalization_1/beta/momentum/Read/ReadVariableOp/SGD/dense_4/kernel/momentum/Read/ReadVariableOp-SGD/dense_4/bias/momentum/Read/ReadVariableOp/SGD/dense_5/kernel/momentum/Read/ReadVariableOp-SGD/dense_5/bias/momentum/Read/ReadVariableOp/SGD/dense_6/kernel/momentum/Read/ReadVariableOp-SGD/dense_6/bias/momentum/Read/ReadVariableOpRSGD/token_and_position_embedding/embedding/embeddings/momentum/Read/ReadVariableOpTSGD/token_and_position_embedding/embedding_1/embeddings/momentum/Read/ReadVariableOpXSGD/transformer_block_1/multi_head_attention_1/query/kernel/momentum/Read/ReadVariableOpVSGD/transformer_block_1/multi_head_attention_1/query/bias/momentum/Read/ReadVariableOpVSGD/transformer_block_1/multi_head_attention_1/key/kernel/momentum/Read/ReadVariableOpTSGD/transformer_block_1/multi_head_attention_1/key/bias/momentum/Read/ReadVariableOpXSGD/transformer_block_1/multi_head_attention_1/value/kernel/momentum/Read/ReadVariableOpVSGD/transformer_block_1/multi_head_attention_1/value/bias/momentum/Read/ReadVariableOpcSGD/transformer_block_1/multi_head_attention_1/attention_output/kernel/momentum/Read/ReadVariableOpaSGD/transformer_block_1/multi_head_attention_1/attention_output/bias/momentum/Read/ReadVariableOp/SGD/dense_2/kernel/momentum/Read/ReadVariableOp-SGD/dense_2/bias/momentum/Read/ReadVariableOp/SGD/dense_3/kernel/momentum/Read/ReadVariableOp-SGD/dense_3/bias/momentum/Read/ReadVariableOpPSGD/transformer_block_1/layer_normalization_2/gamma/momentum/Read/ReadVariableOpOSGD/transformer_block_1/layer_normalization_2/beta/momentum/Read/ReadVariableOpPSGD/transformer_block_1/layer_normalization_3/gamma/momentum/Read/ReadVariableOpOSGD/transformer_block_1/layer_normalization_3/beta/momentum/Read/ReadVariableOpConst*W
TinP
N2L	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *(
f#R!
__inference__traced_save_102871
√
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv1d/kernelconv1d/biasconv1d_1/kernelconv1d_1/biasbatch_normalization/gammabatch_normalization/betabatch_normalization/moving_mean#batch_normalization/moving_variancebatch_normalization_1/gammabatch_normalization_1/beta!batch_normalization_1/moving_mean%batch_normalization_1/moving_variancedense_4/kerneldense_4/biasdense_5/kerneldense_5/biasdense_6/kerneldense_6/biasdecaylearning_ratemomentumSGD/iter1token_and_position_embedding/embedding/embeddings3token_and_position_embedding/embedding_1/embeddings7transformer_block_1/multi_head_attention_1/query/kernel5transformer_block_1/multi_head_attention_1/query/bias5transformer_block_1/multi_head_attention_1/key/kernel3transformer_block_1/multi_head_attention_1/key/bias7transformer_block_1/multi_head_attention_1/value/kernel5transformer_block_1/multi_head_attention_1/value/biasBtransformer_block_1/multi_head_attention_1/attention_output/kernel@transformer_block_1/multi_head_attention_1/attention_output/biasdense_2/kerneldense_2/biasdense_3/kerneldense_3/bias/transformer_block_1/layer_normalization_2/gamma.transformer_block_1/layer_normalization_2/beta/transformer_block_1/layer_normalization_3/gamma.transformer_block_1/layer_normalization_3/betatotalcountSGD/conv1d/kernel/momentumSGD/conv1d/bias/momentumSGD/conv1d_1/kernel/momentumSGD/conv1d_1/bias/momentum&SGD/batch_normalization/gamma/momentum%SGD/batch_normalization/beta/momentum(SGD/batch_normalization_1/gamma/momentum'SGD/batch_normalization_1/beta/momentumSGD/dense_4/kernel/momentumSGD/dense_4/bias/momentumSGD/dense_5/kernel/momentumSGD/dense_5/bias/momentumSGD/dense_6/kernel/momentumSGD/dense_6/bias/momentum>SGD/token_and_position_embedding/embedding/embeddings/momentum@SGD/token_and_position_embedding/embedding_1/embeddings/momentumDSGD/transformer_block_1/multi_head_attention_1/query/kernel/momentumBSGD/transformer_block_1/multi_head_attention_1/query/bias/momentumBSGD/transformer_block_1/multi_head_attention_1/key/kernel/momentum@SGD/transformer_block_1/multi_head_attention_1/key/bias/momentumDSGD/transformer_block_1/multi_head_attention_1/value/kernel/momentumBSGD/transformer_block_1/multi_head_attention_1/value/bias/momentumOSGD/transformer_block_1/multi_head_attention_1/attention_output/kernel/momentumMSGD/transformer_block_1/multi_head_attention_1/attention_output/bias/momentumSGD/dense_2/kernel/momentumSGD/dense_2/bias/momentumSGD/dense_3/kernel/momentumSGD/dense_3/bias/momentum<SGD/transformer_block_1/layer_normalization_2/gamma/momentum;SGD/transformer_block_1/layer_normalization_2/beta/momentum<SGD/transformer_block_1/layer_normalization_3/gamma/momentum;SGD/transformer_block_1/layer_normalization_3/beta/momentum*V
TinO
M2K*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *+
f&R$
"__inference__traced_restore_103103сВ&
џ
э
G__inference_sequential_1_layer_call_and_return_conditional_losses_99344
dense_2_input
dense_2_99333
dense_2_99335
dense_3_99338
dense_3_99340
identityИҐdense_2/StatefulPartitionedCallҐdense_3/StatefulPartitionedCallЪ
dense_2/StatefulPartitionedCallStatefulPartitionedCalldense_2_inputdense_2_99333dense_2_99335*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€#@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_992672!
dense_2/StatefulPartitionedCallµ
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_99338dense_3_99340*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€# *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_993132!
dense_3/StatefulPartitionedCallƒ
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0 ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*
T0*+
_output_shapes
:€€€€€€€€€# 2

Identity"
identityIdentity:output:0*:
_input_shapes)
':€€€€€€€€€# ::::2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:Z V
+
_output_shapes
:€€€€€€€€€# 
'
_user_specified_namedense_2_input
мь
—
N__inference_transformer_block_1_layer_call_and_return_conditional_losses_99856

inputsF
Bmulti_head_attention_1_query_einsum_einsum_readvariableop_resource<
8multi_head_attention_1_query_add_readvariableop_resourceD
@multi_head_attention_1_key_einsum_einsum_readvariableop_resource:
6multi_head_attention_1_key_add_readvariableop_resourceF
Bmulti_head_attention_1_value_einsum_einsum_readvariableop_resource<
8multi_head_attention_1_value_add_readvariableop_resourceQ
Mmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resourceG
Cmulti_head_attention_1_attention_output_add_readvariableop_resource?
;layer_normalization_2_batchnorm_mul_readvariableop_resource;
7layer_normalization_2_batchnorm_readvariableop_resource:
6sequential_1_dense_2_tensordot_readvariableop_resource8
4sequential_1_dense_2_biasadd_readvariableop_resource:
6sequential_1_dense_3_tensordot_readvariableop_resource8
4sequential_1_dense_3_biasadd_readvariableop_resource?
;layer_normalization_3_batchnorm_mul_readvariableop_resource;
7layer_normalization_3_batchnorm_readvariableop_resource
identityИҐ.layer_normalization_2/batchnorm/ReadVariableOpҐ2layer_normalization_2/batchnorm/mul/ReadVariableOpҐ.layer_normalization_3/batchnorm/ReadVariableOpҐ2layer_normalization_3/batchnorm/mul/ReadVariableOpҐ:multi_head_attention_1/attention_output/add/ReadVariableOpҐDmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpҐ-multi_head_attention_1/key/add/ReadVariableOpҐ7multi_head_attention_1/key/einsum/Einsum/ReadVariableOpҐ/multi_head_attention_1/query/add/ReadVariableOpҐ9multi_head_attention_1/query/einsum/Einsum/ReadVariableOpҐ/multi_head_attention_1/value/add/ReadVariableOpҐ9multi_head_attention_1/value/einsum/Einsum/ReadVariableOpҐ+sequential_1/dense_2/BiasAdd/ReadVariableOpҐ-sequential_1/dense_2/Tensordot/ReadVariableOpҐ+sequential_1/dense_3/BiasAdd/ReadVariableOpҐ-sequential_1/dense_3/Tensordot/ReadVariableOpэ
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02;
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOpН
*multi_head_attention_1/query/einsum/EinsumEinsuminputsAmulti_head_attention_1/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€# *
equationabc,cde->abde2,
*multi_head_attention_1/query/einsum/Einsumџ
/multi_head_attention_1/query/add/ReadVariableOpReadVariableOp8multi_head_attention_1_query_add_readvariableop_resource*
_output_shapes

: *
dtype021
/multi_head_attention_1/query/add/ReadVariableOpх
 multi_head_attention_1/query/addAddV23multi_head_attention_1/query/einsum/Einsum:output:07multi_head_attention_1/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€# 2"
 multi_head_attention_1/query/addч
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_1_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype029
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOpЗ
(multi_head_attention_1/key/einsum/EinsumEinsuminputs?multi_head_attention_1/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€# *
equationabc,cde->abde2*
(multi_head_attention_1/key/einsum/Einsum’
-multi_head_attention_1/key/add/ReadVariableOpReadVariableOp6multi_head_attention_1_key_add_readvariableop_resource*
_output_shapes

: *
dtype02/
-multi_head_attention_1/key/add/ReadVariableOpн
multi_head_attention_1/key/addAddV21multi_head_attention_1/key/einsum/Einsum:output:05multi_head_attention_1/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€# 2 
multi_head_attention_1/key/addэ
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02;
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOpН
*multi_head_attention_1/value/einsum/EinsumEinsuminputsAmulti_head_attention_1/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€# *
equationabc,cde->abde2,
*multi_head_attention_1/value/einsum/Einsumџ
/multi_head_attention_1/value/add/ReadVariableOpReadVariableOp8multi_head_attention_1_value_add_readvariableop_resource*
_output_shapes

: *
dtype021
/multi_head_attention_1/value/add/ReadVariableOpх
 multi_head_attention_1/value/addAddV23multi_head_attention_1/value/einsum/Einsum:output:07multi_head_attention_1/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€# 2"
 multi_head_attention_1/value/addБ
multi_head_attention_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *у5>2
multi_head_attention_1/Mul/y∆
multi_head_attention_1/MulMul$multi_head_attention_1/query/add:z:0%multi_head_attention_1/Mul/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€# 2
multi_head_attention_1/Mulь
$multi_head_attention_1/einsum/EinsumEinsum"multi_head_attention_1/key/add:z:0multi_head_attention_1/Mul:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€##*
equationaecd,abcd->acbe2&
$multi_head_attention_1/einsum/Einsumƒ
&multi_head_attention_1/softmax/SoftmaxSoftmax-multi_head_attention_1/einsum/Einsum:output:0*
T0*/
_output_shapes
:€€€€€€€€€##2(
&multi_head_attention_1/softmax/Softmax°
,multi_head_attention_1/dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2.
,multi_head_attention_1/dropout/dropout/ConstВ
*multi_head_attention_1/dropout/dropout/MulMul0multi_head_attention_1/softmax/Softmax:softmax:05multi_head_attention_1/dropout/dropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€##2,
*multi_head_attention_1/dropout/dropout/MulЉ
,multi_head_attention_1/dropout/dropout/ShapeShape0multi_head_attention_1/softmax/Softmax:softmax:0*
T0*
_output_shapes
:2.
,multi_head_attention_1/dropout/dropout/Shape•
Cmulti_head_attention_1/dropout/dropout/random_uniform/RandomUniformRandomUniform5multi_head_attention_1/dropout/dropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€##*
dtype0*

seedY2E
Cmulti_head_attention_1/dropout/dropout/random_uniform/RandomUniform≥
5multi_head_attention_1/dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    27
5multi_head_attention_1/dropout/dropout/GreaterEqual/y¬
3multi_head_attention_1/dropout/dropout/GreaterEqualGreaterEqualLmulti_head_attention_1/dropout/dropout/random_uniform/RandomUniform:output:0>multi_head_attention_1/dropout/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€##25
3multi_head_attention_1/dropout/dropout/GreaterEqualд
+multi_head_attention_1/dropout/dropout/CastCast7multi_head_attention_1/dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:€€€€€€€€€##2-
+multi_head_attention_1/dropout/dropout/Castю
,multi_head_attention_1/dropout/dropout/Mul_1Mul.multi_head_attention_1/dropout/dropout/Mul:z:0/multi_head_attention_1/dropout/dropout/Cast:y:0*
T0*/
_output_shapes
:€€€€€€€€€##2.
,multi_head_attention_1/dropout/dropout/Mul_1Ф
&multi_head_attention_1/einsum_1/EinsumEinsum0multi_head_attention_1/dropout/dropout/Mul_1:z:0$multi_head_attention_1/value/add:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€# *
equationacbe,aecd->abcd2(
&multi_head_attention_1/einsum_1/EinsumЮ
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02F
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp”
5multi_head_attention_1/attention_output/einsum/EinsumEinsum/multi_head_attention_1/einsum_1/Einsum:output:0Lmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:€€€€€€€€€# *
equationabcd,cde->abe27
5multi_head_attention_1/attention_output/einsum/Einsumш
:multi_head_attention_1/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_1_attention_output_add_readvariableop_resource*
_output_shapes
: *
dtype02<
:multi_head_attention_1/attention_output/add/ReadVariableOpЭ
+multi_head_attention_1/attention_output/addAddV2>multi_head_attention_1/attention_output/einsum/Einsum:output:0Bmulti_head_attention_1/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€# 2-
+multi_head_attention_1/attention_output/addw
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
dropout_2/dropout/ConstЊ
dropout_2/dropout/MulMul/multi_head_attention_1/attention_output/add:z:0 dropout_2/dropout/Const:output:0*
T0*+
_output_shapes
:€€€€€€€€€# 2
dropout_2/dropout/MulС
dropout_2/dropout/ShapeShape/multi_head_attention_1/attention_output/add:z:0*
T0*
_output_shapes
:2
dropout_2/dropout/Shapeп
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€# *
dtype0*

seedY*
seed220
.dropout_2/dropout/random_uniform/RandomUniformЙ
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2"
 dropout_2/dropout/GreaterEqual/yк
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€# 2 
dropout_2/dropout/GreaterEqual°
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:€€€€€€€€€# 2
dropout_2/dropout/Cast¶
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*+
_output_shapes
:€€€€€€€€€# 2
dropout_2/dropout/Mul_1n
addAddV2inputsdropout_2/dropout/Mul_1:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2
addґ
4layer_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:26
4layer_normalization_2/moments/mean/reduction_indicesя
"layer_normalization_2/moments/meanMeanadd:z:0=layer_normalization_2/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€#*
	keep_dims(2$
"layer_normalization_2/moments/meanЋ
*layer_normalization_2/moments/StopGradientStopGradient+layer_normalization_2/moments/mean:output:0*
T0*+
_output_shapes
:€€€€€€€€€#2,
*layer_normalization_2/moments/StopGradientл
/layer_normalization_2/moments/SquaredDifferenceSquaredDifferenceadd:z:03layer_normalization_2/moments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€# 21
/layer_normalization_2/moments/SquaredDifferenceЊ
8layer_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2:
8layer_normalization_2/moments/variance/reduction_indicesЧ
&layer_normalization_2/moments/varianceMean3layer_normalization_2/moments/SquaredDifference:z:0Alayer_normalization_2/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€#*
	keep_dims(2(
&layer_normalization_2/moments/varianceУ
%layer_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж52'
%layer_normalization_2/batchnorm/add/yк
#layer_normalization_2/batchnorm/addAddV2/layer_normalization_2/moments/variance:output:0.layer_normalization_2/batchnorm/add/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€#2%
#layer_normalization_2/batchnorm/addґ
%layer_normalization_2/batchnorm/RsqrtRsqrt'layer_normalization_2/batchnorm/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€#2'
%layer_normalization_2/batchnorm/Rsqrtа
2layer_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype024
2layer_normalization_2/batchnorm/mul/ReadVariableOpо
#layer_normalization_2/batchnorm/mulMul)layer_normalization_2/batchnorm/Rsqrt:y:0:layer_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€# 2%
#layer_normalization_2/batchnorm/mulљ
%layer_normalization_2/batchnorm/mul_1Muladd:z:0'layer_normalization_2/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2'
%layer_normalization_2/batchnorm/mul_1б
%layer_normalization_2/batchnorm/mul_2Mul+layer_normalization_2/moments/mean:output:0'layer_normalization_2/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2'
%layer_normalization_2/batchnorm/mul_2‘
.layer_normalization_2/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_2_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype020
.layer_normalization_2/batchnorm/ReadVariableOpк
#layer_normalization_2/batchnorm/subSub6layer_normalization_2/batchnorm/ReadVariableOp:value:0)layer_normalization_2/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2%
#layer_normalization_2/batchnorm/subб
%layer_normalization_2/batchnorm/add_1AddV2)layer_normalization_2/batchnorm/mul_1:z:0'layer_normalization_2/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2'
%layer_normalization_2/batchnorm/add_1’
-sequential_1/dense_2/Tensordot/ReadVariableOpReadVariableOp6sequential_1_dense_2_tensordot_readvariableop_resource*
_output_shapes

: @*
dtype02/
-sequential_1/dense_2/Tensordot/ReadVariableOpФ
#sequential_1/dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2%
#sequential_1/dense_2/Tensordot/axesЫ
#sequential_1/dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2%
#sequential_1/dense_2/Tensordot/free•
$sequential_1/dense_2/Tensordot/ShapeShape)layer_normalization_2/batchnorm/add_1:z:0*
T0*
_output_shapes
:2&
$sequential_1/dense_2/Tensordot/ShapeЮ
,sequential_1/dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_1/dense_2/Tensordot/GatherV2/axisЇ
'sequential_1/dense_2/Tensordot/GatherV2GatherV2-sequential_1/dense_2/Tensordot/Shape:output:0,sequential_1/dense_2/Tensordot/free:output:05sequential_1/dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2)
'sequential_1/dense_2/Tensordot/GatherV2Ґ
.sequential_1/dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 20
.sequential_1/dense_2/Tensordot/GatherV2_1/axisј
)sequential_1/dense_2/Tensordot/GatherV2_1GatherV2-sequential_1/dense_2/Tensordot/Shape:output:0,sequential_1/dense_2/Tensordot/axes:output:07sequential_1/dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2+
)sequential_1/dense_2/Tensordot/GatherV2_1Ц
$sequential_1/dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2&
$sequential_1/dense_2/Tensordot/Const‘
#sequential_1/dense_2/Tensordot/ProdProd0sequential_1/dense_2/Tensordot/GatherV2:output:0-sequential_1/dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: 2%
#sequential_1/dense_2/Tensordot/ProdЪ
&sequential_1/dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential_1/dense_2/Tensordot/Const_1№
%sequential_1/dense_2/Tensordot/Prod_1Prod2sequential_1/dense_2/Tensordot/GatherV2_1:output:0/sequential_1/dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2'
%sequential_1/dense_2/Tensordot/Prod_1Ъ
*sequential_1/dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*sequential_1/dense_2/Tensordot/concat/axisЩ
%sequential_1/dense_2/Tensordot/concatConcatV2,sequential_1/dense_2/Tensordot/free:output:0,sequential_1/dense_2/Tensordot/axes:output:03sequential_1/dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2'
%sequential_1/dense_2/Tensordot/concatа
$sequential_1/dense_2/Tensordot/stackPack,sequential_1/dense_2/Tensordot/Prod:output:0.sequential_1/dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_1/dense_2/Tensordot/stackт
(sequential_1/dense_2/Tensordot/transpose	Transpose)layer_normalization_2/batchnorm/add_1:z:0.sequential_1/dense_2/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€# 2*
(sequential_1/dense_2/Tensordot/transposeу
&sequential_1/dense_2/Tensordot/ReshapeReshape,sequential_1/dense_2/Tensordot/transpose:y:0-sequential_1/dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2(
&sequential_1/dense_2/Tensordot/Reshapeт
%sequential_1/dense_2/Tensordot/MatMulMatMul/sequential_1/dense_2/Tensordot/Reshape:output:05sequential_1/dense_2/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2'
%sequential_1/dense_2/Tensordot/MatMulЪ
&sequential_1/dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2(
&sequential_1/dense_2/Tensordot/Const_2Ю
,sequential_1/dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_1/dense_2/Tensordot/concat_1/axis¶
'sequential_1/dense_2/Tensordot/concat_1ConcatV20sequential_1/dense_2/Tensordot/GatherV2:output:0/sequential_1/dense_2/Tensordot/Const_2:output:05sequential_1/dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2)
'sequential_1/dense_2/Tensordot/concat_1д
sequential_1/dense_2/TensordotReshape/sequential_1/dense_2/Tensordot/MatMul:product:00sequential_1/dense_2/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€#@2 
sequential_1/dense_2/TensordotЋ
+sequential_1/dense_2/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02-
+sequential_1/dense_2/BiasAdd/ReadVariableOpџ
sequential_1/dense_2/BiasAddBiasAdd'sequential_1/dense_2/Tensordot:output:03sequential_1/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€#@2
sequential_1/dense_2/BiasAddЫ
sequential_1/dense_2/ReluRelu%sequential_1/dense_2/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€#@2
sequential_1/dense_2/Relu’
-sequential_1/dense_3/Tensordot/ReadVariableOpReadVariableOp6sequential_1_dense_3_tensordot_readvariableop_resource*
_output_shapes

:@ *
dtype02/
-sequential_1/dense_3/Tensordot/ReadVariableOpФ
#sequential_1/dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2%
#sequential_1/dense_3/Tensordot/axesЫ
#sequential_1/dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2%
#sequential_1/dense_3/Tensordot/free£
$sequential_1/dense_3/Tensordot/ShapeShape'sequential_1/dense_2/Relu:activations:0*
T0*
_output_shapes
:2&
$sequential_1/dense_3/Tensordot/ShapeЮ
,sequential_1/dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_1/dense_3/Tensordot/GatherV2/axisЇ
'sequential_1/dense_3/Tensordot/GatherV2GatherV2-sequential_1/dense_3/Tensordot/Shape:output:0,sequential_1/dense_3/Tensordot/free:output:05sequential_1/dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2)
'sequential_1/dense_3/Tensordot/GatherV2Ґ
.sequential_1/dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 20
.sequential_1/dense_3/Tensordot/GatherV2_1/axisј
)sequential_1/dense_3/Tensordot/GatherV2_1GatherV2-sequential_1/dense_3/Tensordot/Shape:output:0,sequential_1/dense_3/Tensordot/axes:output:07sequential_1/dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2+
)sequential_1/dense_3/Tensordot/GatherV2_1Ц
$sequential_1/dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2&
$sequential_1/dense_3/Tensordot/Const‘
#sequential_1/dense_3/Tensordot/ProdProd0sequential_1/dense_3/Tensordot/GatherV2:output:0-sequential_1/dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: 2%
#sequential_1/dense_3/Tensordot/ProdЪ
&sequential_1/dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential_1/dense_3/Tensordot/Const_1№
%sequential_1/dense_3/Tensordot/Prod_1Prod2sequential_1/dense_3/Tensordot/GatherV2_1:output:0/sequential_1/dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2'
%sequential_1/dense_3/Tensordot/Prod_1Ъ
*sequential_1/dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*sequential_1/dense_3/Tensordot/concat/axisЩ
%sequential_1/dense_3/Tensordot/concatConcatV2,sequential_1/dense_3/Tensordot/free:output:0,sequential_1/dense_3/Tensordot/axes:output:03sequential_1/dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2'
%sequential_1/dense_3/Tensordot/concatа
$sequential_1/dense_3/Tensordot/stackPack,sequential_1/dense_3/Tensordot/Prod:output:0.sequential_1/dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_1/dense_3/Tensordot/stackр
(sequential_1/dense_3/Tensordot/transpose	Transpose'sequential_1/dense_2/Relu:activations:0.sequential_1/dense_3/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€#@2*
(sequential_1/dense_3/Tensordot/transposeу
&sequential_1/dense_3/Tensordot/ReshapeReshape,sequential_1/dense_3/Tensordot/transpose:y:0-sequential_1/dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2(
&sequential_1/dense_3/Tensordot/Reshapeт
%sequential_1/dense_3/Tensordot/MatMulMatMul/sequential_1/dense_3/Tensordot/Reshape:output:05sequential_1/dense_3/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2'
%sequential_1/dense_3/Tensordot/MatMulЪ
&sequential_1/dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential_1/dense_3/Tensordot/Const_2Ю
,sequential_1/dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_1/dense_3/Tensordot/concat_1/axis¶
'sequential_1/dense_3/Tensordot/concat_1ConcatV20sequential_1/dense_3/Tensordot/GatherV2:output:0/sequential_1/dense_3/Tensordot/Const_2:output:05sequential_1/dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2)
'sequential_1/dense_3/Tensordot/concat_1д
sequential_1/dense_3/TensordotReshape/sequential_1/dense_3/Tensordot/MatMul:product:00sequential_1/dense_3/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€# 2 
sequential_1/dense_3/TensordotЋ
+sequential_1/dense_3/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02-
+sequential_1/dense_3/BiasAdd/ReadVariableOpџ
sequential_1/dense_3/BiasAddBiasAdd'sequential_1/dense_3/Tensordot:output:03sequential_1/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€# 2
sequential_1/dense_3/BiasAddw
dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
dropout_3/dropout/Constі
dropout_3/dropout/MulMul%sequential_1/dense_3/BiasAdd:output:0 dropout_3/dropout/Const:output:0*
T0*+
_output_shapes
:€€€€€€€€€# 2
dropout_3/dropout/MulЗ
dropout_3/dropout/ShapeShape%sequential_1/dense_3/BiasAdd:output:0*
T0*
_output_shapes
:2
dropout_3/dropout/Shapeп
.dropout_3/dropout/random_uniform/RandomUniformRandomUniform dropout_3/dropout/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€# *
dtype0*

seedY*
seed220
.dropout_3/dropout/random_uniform/RandomUniformЙ
 dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2"
 dropout_3/dropout/GreaterEqual/yк
dropout_3/dropout/GreaterEqualGreaterEqual7dropout_3/dropout/random_uniform/RandomUniform:output:0)dropout_3/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€# 2 
dropout_3/dropout/GreaterEqual°
dropout_3/dropout/CastCast"dropout_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:€€€€€€€€€# 2
dropout_3/dropout/Cast¶
dropout_3/dropout/Mul_1Muldropout_3/dropout/Mul:z:0dropout_3/dropout/Cast:y:0*
T0*+
_output_shapes
:€€€€€€€€€# 2
dropout_3/dropout/Mul_1Х
add_1AddV2)layer_normalization_2/batchnorm/add_1:z:0dropout_3/dropout/Mul_1:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2
add_1ґ
4layer_normalization_3/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:26
4layer_normalization_3/moments/mean/reduction_indicesб
"layer_normalization_3/moments/meanMean	add_1:z:0=layer_normalization_3/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€#*
	keep_dims(2$
"layer_normalization_3/moments/meanЋ
*layer_normalization_3/moments/StopGradientStopGradient+layer_normalization_3/moments/mean:output:0*
T0*+
_output_shapes
:€€€€€€€€€#2,
*layer_normalization_3/moments/StopGradientн
/layer_normalization_3/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_3/moments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€# 21
/layer_normalization_3/moments/SquaredDifferenceЊ
8layer_normalization_3/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2:
8layer_normalization_3/moments/variance/reduction_indicesЧ
&layer_normalization_3/moments/varianceMean3layer_normalization_3/moments/SquaredDifference:z:0Alayer_normalization_3/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€#*
	keep_dims(2(
&layer_normalization_3/moments/varianceУ
%layer_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж52'
%layer_normalization_3/batchnorm/add/yк
#layer_normalization_3/batchnorm/addAddV2/layer_normalization_3/moments/variance:output:0.layer_normalization_3/batchnorm/add/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€#2%
#layer_normalization_3/batchnorm/addґ
%layer_normalization_3/batchnorm/RsqrtRsqrt'layer_normalization_3/batchnorm/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€#2'
%layer_normalization_3/batchnorm/Rsqrtа
2layer_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype024
2layer_normalization_3/batchnorm/mul/ReadVariableOpо
#layer_normalization_3/batchnorm/mulMul)layer_normalization_3/batchnorm/Rsqrt:y:0:layer_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€# 2%
#layer_normalization_3/batchnorm/mulњ
%layer_normalization_3/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_3/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2'
%layer_normalization_3/batchnorm/mul_1б
%layer_normalization_3/batchnorm/mul_2Mul+layer_normalization_3/moments/mean:output:0'layer_normalization_3/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2'
%layer_normalization_3/batchnorm/mul_2‘
.layer_normalization_3/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_3_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype020
.layer_normalization_3/batchnorm/ReadVariableOpк
#layer_normalization_3/batchnorm/subSub6layer_normalization_3/batchnorm/ReadVariableOp:value:0)layer_normalization_3/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2%
#layer_normalization_3/batchnorm/subб
%layer_normalization_3/batchnorm/add_1AddV2)layer_normalization_3/batchnorm/mul_1:z:0'layer_normalization_3/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2'
%layer_normalization_3/batchnorm/add_1”
IdentityIdentity)layer_normalization_3/batchnorm/add_1:z:0/^layer_normalization_2/batchnorm/ReadVariableOp3^layer_normalization_2/batchnorm/mul/ReadVariableOp/^layer_normalization_3/batchnorm/ReadVariableOp3^layer_normalization_3/batchnorm/mul/ReadVariableOp;^multi_head_attention_1/attention_output/add/ReadVariableOpE^multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_1/key/add/ReadVariableOp8^multi_head_attention_1/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/query/add/ReadVariableOp:^multi_head_attention_1/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/value/add/ReadVariableOp:^multi_head_attention_1/value/einsum/Einsum/ReadVariableOp,^sequential_1/dense_2/BiasAdd/ReadVariableOp.^sequential_1/dense_2/Tensordot/ReadVariableOp,^sequential_1/dense_3/BiasAdd/ReadVariableOp.^sequential_1/dense_3/Tensordot/ReadVariableOp*
T0*+
_output_shapes
:€€€€€€€€€# 2

Identity"
identityIdentity:output:0*j
_input_shapesY
W:€€€€€€€€€# ::::::::::::::::2`
.layer_normalization_2/batchnorm/ReadVariableOp.layer_normalization_2/batchnorm/ReadVariableOp2h
2layer_normalization_2/batchnorm/mul/ReadVariableOp2layer_normalization_2/batchnorm/mul/ReadVariableOp2`
.layer_normalization_3/batchnorm/ReadVariableOp.layer_normalization_3/batchnorm/ReadVariableOp2h
2layer_normalization_3/batchnorm/mul/ReadVariableOp2layer_normalization_3/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_1/attention_output/add/ReadVariableOp:multi_head_attention_1/attention_output/add/ReadVariableOp2М
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_1/key/add/ReadVariableOp-multi_head_attention_1/key/add/ReadVariableOp2r
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/query/add/ReadVariableOp/multi_head_attention_1/query/add/ReadVariableOp2v
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/value/add/ReadVariableOp/multi_head_attention_1/value/add/ReadVariableOp2v
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp2Z
+sequential_1/dense_2/BiasAdd/ReadVariableOp+sequential_1/dense_2/BiasAdd/ReadVariableOp2^
-sequential_1/dense_2/Tensordot/ReadVariableOp-sequential_1/dense_2/Tensordot/ReadVariableOp2Z
+sequential_1/dense_3/BiasAdd/ReadVariableOp+sequential_1/dense_3/BiasAdd/ReadVariableOp2^
-sequential_1/dense_3/Tensordot/ReadVariableOp-sequential_1/dense_3/Tensordot/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€# 
 
_user_specified_nameinputs
÷
Ґ
&__inference_model_layer_call_fn_101497
inputs_0
inputs_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34
identityИҐStatefulPartitionedCall‘
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34*1
Tin*
(2&*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*F
_read_only_resource_inputs(
&$	
 !"#$%*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_1006272
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*ћ
_input_shapesЇ
Ј:€€€€€€€€€ДR:€€€€€€€€€::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:R N
(
_output_shapes
:€€€€€€€€€ДR
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs/1
С	
№
C__inference_dense_6_layer_call_and_return_conditional_losses_100246

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2	
BiasAddХ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
В
O
3__inference_average_pooling1d_2_layer_call_fn_98952

inputs
identityе
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_average_pooling1d_2_layer_call_and_return_conditional_losses_989462
PartitionedCallВ
IdentityIdentityPartitionedCall:output:0*
T0*=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€:e a
=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Д
Н
=__inference_token_and_position_embedding_layer_call_fn_101530
x
unknown
	unknown_0
identityИҐStatefulPartitionedCallК
StatefulPartitionedCallStatefulPartitionedCallxunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:€€€€€€€€€ДR *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *`
f[RY
W__inference_token_and_position_embedding_layer_call_and_return_conditional_losses_994282
StatefulPartitionedCallУ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:€€€€€€€€€ДR 2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€ДR::22
StatefulPartitionedCallStatefulPartitionedCall:K G
(
_output_shapes
:€€€€€€€€€ДR

_user_specified_namex
≠0
≈
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_99637

inputs
assignmovingavg_99612
assignmovingavg_1_99618)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identityИҐ#AssignMovingAvg/AssignSubVariableOpҐAssignMovingAvg/ReadVariableOpҐ%AssignMovingAvg_1/AssignSubVariableOpҐ AssignMovingAvg_1/ReadVariableOpҐbatchnorm/ReadVariableOpҐbatchnorm/mul/ReadVariableOpС
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indicesУ
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
: *
	keep_dims(2
moments/meanА
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
: 2
moments/StopGradient®
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€# 2
moments/SquaredDifferenceЩ
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indicesґ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
: *
	keep_dims(2
moments/varianceБ
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2
moments/SqueezeЙ
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2
moments/Squeeze_1Ћ
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*(
_class
loc:@AssignMovingAvg/99612*
_output_shapes
: *
dtype0*
valueB
 *
„#<2
AssignMovingAvg/decayТ
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_99612*
_output_shapes
: *
dtype02 
AssignMovingAvg/ReadVariableOpр
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*(
_class
loc:@AssignMovingAvg/99612*
_output_shapes
: 2
AssignMovingAvg/subз
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*(
_class
loc:@AssignMovingAvg/99612*
_output_shapes
: 2
AssignMovingAvg/mul≠
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_99612AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*(
_class
loc:@AssignMovingAvg/99612*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp—
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_1/99618*
_output_shapes
: *
dtype0*
valueB
 *
„#<2
AssignMovingAvg_1/decayШ
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_99618*
_output_shapes
: *
dtype02"
 AssignMovingAvg_1/ReadVariableOpъ
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_1/99618*
_output_shapes
: 2
AssignMovingAvg_1/subс
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_1/99618*
_output_shapes
: 2
AssignMovingAvg_1/mulє
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_99618AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_1/99618*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2
batchnorm/add/yВ
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
: 2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: 2
batchnorm/RsqrtЮ
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/mul/ReadVariableOpЕ
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2
batchnorm/mulz
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
: 2
batchnorm/mul_2Т
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOpБ
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2
batchnorm/subЙ
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2
batchnorm/add_1Ј
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*+
_output_shapes
:€€€€€€€€€# 2

Identity"
identityIdentity:output:0*:
_input_shapes)
':€€€€€€€€€# ::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€# 
 
_user_specified_nameinputs
Ч
F
*__inference_dropout_5_layer_call_fn_102387

inputs
identity∆
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_5_layer_call_and_return_conditional_losses_1002232
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*&
_input_shapes
:€€€€€€€€€@:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
≥Ґ
¬(
__inference__traced_save_102871
file_prefix,
(savev2_conv1d_kernel_read_readvariableop*
&savev2_conv1d_bias_read_readvariableop.
*savev2_conv1d_1_kernel_read_readvariableop,
(savev2_conv1d_1_bias_read_readvariableop8
4savev2_batch_normalization_gamma_read_readvariableop7
3savev2_batch_normalization_beta_read_readvariableop>
:savev2_batch_normalization_moving_mean_read_readvariableopB
>savev2_batch_normalization_moving_variance_read_readvariableop:
6savev2_batch_normalization_1_gamma_read_readvariableop9
5savev2_batch_normalization_1_beta_read_readvariableop@
<savev2_batch_normalization_1_moving_mean_read_readvariableopD
@savev2_batch_normalization_1_moving_variance_read_readvariableop-
)savev2_dense_4_kernel_read_readvariableop+
'savev2_dense_4_bias_read_readvariableop-
)savev2_dense_5_kernel_read_readvariableop+
'savev2_dense_5_bias_read_readvariableop-
)savev2_dense_6_kernel_read_readvariableop+
'savev2_dense_6_bias_read_readvariableop$
 savev2_decay_read_readvariableop,
(savev2_learning_rate_read_readvariableop'
#savev2_momentum_read_readvariableop'
#savev2_sgd_iter_read_readvariableop	P
Lsavev2_token_and_position_embedding_embedding_embeddings_read_readvariableopR
Nsavev2_token_and_position_embedding_embedding_1_embeddings_read_readvariableopV
Rsavev2_transformer_block_1_multi_head_attention_1_query_kernel_read_readvariableopT
Psavev2_transformer_block_1_multi_head_attention_1_query_bias_read_readvariableopT
Psavev2_transformer_block_1_multi_head_attention_1_key_kernel_read_readvariableopR
Nsavev2_transformer_block_1_multi_head_attention_1_key_bias_read_readvariableopV
Rsavev2_transformer_block_1_multi_head_attention_1_value_kernel_read_readvariableopT
Psavev2_transformer_block_1_multi_head_attention_1_value_bias_read_readvariableopa
]savev2_transformer_block_1_multi_head_attention_1_attention_output_kernel_read_readvariableop_
[savev2_transformer_block_1_multi_head_attention_1_attention_output_bias_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableopN
Jsavev2_transformer_block_1_layer_normalization_2_gamma_read_readvariableopM
Isavev2_transformer_block_1_layer_normalization_2_beta_read_readvariableopN
Jsavev2_transformer_block_1_layer_normalization_3_gamma_read_readvariableopM
Isavev2_transformer_block_1_layer_normalization_3_beta_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop9
5savev2_sgd_conv1d_kernel_momentum_read_readvariableop7
3savev2_sgd_conv1d_bias_momentum_read_readvariableop;
7savev2_sgd_conv1d_1_kernel_momentum_read_readvariableop9
5savev2_sgd_conv1d_1_bias_momentum_read_readvariableopE
Asavev2_sgd_batch_normalization_gamma_momentum_read_readvariableopD
@savev2_sgd_batch_normalization_beta_momentum_read_readvariableopG
Csavev2_sgd_batch_normalization_1_gamma_momentum_read_readvariableopF
Bsavev2_sgd_batch_normalization_1_beta_momentum_read_readvariableop:
6savev2_sgd_dense_4_kernel_momentum_read_readvariableop8
4savev2_sgd_dense_4_bias_momentum_read_readvariableop:
6savev2_sgd_dense_5_kernel_momentum_read_readvariableop8
4savev2_sgd_dense_5_bias_momentum_read_readvariableop:
6savev2_sgd_dense_6_kernel_momentum_read_readvariableop8
4savev2_sgd_dense_6_bias_momentum_read_readvariableop]
Ysavev2_sgd_token_and_position_embedding_embedding_embeddings_momentum_read_readvariableop_
[savev2_sgd_token_and_position_embedding_embedding_1_embeddings_momentum_read_readvariableopc
_savev2_sgd_transformer_block_1_multi_head_attention_1_query_kernel_momentum_read_readvariableopa
]savev2_sgd_transformer_block_1_multi_head_attention_1_query_bias_momentum_read_readvariableopa
]savev2_sgd_transformer_block_1_multi_head_attention_1_key_kernel_momentum_read_readvariableop_
[savev2_sgd_transformer_block_1_multi_head_attention_1_key_bias_momentum_read_readvariableopc
_savev2_sgd_transformer_block_1_multi_head_attention_1_value_kernel_momentum_read_readvariableopa
]savev2_sgd_transformer_block_1_multi_head_attention_1_value_bias_momentum_read_readvariableopn
jsavev2_sgd_transformer_block_1_multi_head_attention_1_attention_output_kernel_momentum_read_readvariableopl
hsavev2_sgd_transformer_block_1_multi_head_attention_1_attention_output_bias_momentum_read_readvariableop:
6savev2_sgd_dense_2_kernel_momentum_read_readvariableop8
4savev2_sgd_dense_2_bias_momentum_read_readvariableop:
6savev2_sgd_dense_3_kernel_momentum_read_readvariableop8
4savev2_sgd_dense_3_bias_momentum_read_readvariableop[
Wsavev2_sgd_transformer_block_1_layer_normalization_2_gamma_momentum_read_readvariableopZ
Vsavev2_sgd_transformer_block_1_layer_normalization_2_beta_momentum_read_readvariableop[
Wsavev2_sgd_transformer_block_1_layer_normalization_3_gamma_momentum_read_readvariableopZ
Vsavev2_sgd_transformer_block_1_layer_normalization_3_beta_momentum_read_readvariableop
savev2_const

identity_1ИҐMergeV2CheckpointsП
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1Л
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard¶
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameЋ(
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:K*
dtype0*Ё'
value”'B–'KB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/10/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/11/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/12/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/13/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/14/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/15/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/16/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/17/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/18/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/19/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/20/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/21/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/22/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/23/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/24/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/25/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBStrainable_variables/0/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBStrainable_variables/1/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBTtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBTtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBTtrainable_variables/12/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBTtrainable_variables/13/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBTtrainable_variables/14/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBTtrainable_variables/15/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBTtrainable_variables/16/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBTtrainable_variables/17/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBTtrainable_variables/18/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBTtrainable_variables/19/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBTtrainable_variables/20/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBTtrainable_variables/21/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBTtrainable_variables/22/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBTtrainable_variables/23/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBTtrainable_variables/24/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBTtrainable_variables/25/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names°
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:K*
dtype0*Ђ
value°BЮKB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices≤'
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0(savev2_conv1d_kernel_read_readvariableop&savev2_conv1d_bias_read_readvariableop*savev2_conv1d_1_kernel_read_readvariableop(savev2_conv1d_1_bias_read_readvariableop4savev2_batch_normalization_gamma_read_readvariableop3savev2_batch_normalization_beta_read_readvariableop:savev2_batch_normalization_moving_mean_read_readvariableop>savev2_batch_normalization_moving_variance_read_readvariableop6savev2_batch_normalization_1_gamma_read_readvariableop5savev2_batch_normalization_1_beta_read_readvariableop<savev2_batch_normalization_1_moving_mean_read_readvariableop@savev2_batch_normalization_1_moving_variance_read_readvariableop)savev2_dense_4_kernel_read_readvariableop'savev2_dense_4_bias_read_readvariableop)savev2_dense_5_kernel_read_readvariableop'savev2_dense_5_bias_read_readvariableop)savev2_dense_6_kernel_read_readvariableop'savev2_dense_6_bias_read_readvariableop savev2_decay_read_readvariableop(savev2_learning_rate_read_readvariableop#savev2_momentum_read_readvariableop#savev2_sgd_iter_read_readvariableopLsavev2_token_and_position_embedding_embedding_embeddings_read_readvariableopNsavev2_token_and_position_embedding_embedding_1_embeddings_read_readvariableopRsavev2_transformer_block_1_multi_head_attention_1_query_kernel_read_readvariableopPsavev2_transformer_block_1_multi_head_attention_1_query_bias_read_readvariableopPsavev2_transformer_block_1_multi_head_attention_1_key_kernel_read_readvariableopNsavev2_transformer_block_1_multi_head_attention_1_key_bias_read_readvariableopRsavev2_transformer_block_1_multi_head_attention_1_value_kernel_read_readvariableopPsavev2_transformer_block_1_multi_head_attention_1_value_bias_read_readvariableop]savev2_transformer_block_1_multi_head_attention_1_attention_output_kernel_read_readvariableop[savev2_transformer_block_1_multi_head_attention_1_attention_output_bias_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableopJsavev2_transformer_block_1_layer_normalization_2_gamma_read_readvariableopIsavev2_transformer_block_1_layer_normalization_2_beta_read_readvariableopJsavev2_transformer_block_1_layer_normalization_3_gamma_read_readvariableopIsavev2_transformer_block_1_layer_normalization_3_beta_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop5savev2_sgd_conv1d_kernel_momentum_read_readvariableop3savev2_sgd_conv1d_bias_momentum_read_readvariableop7savev2_sgd_conv1d_1_kernel_momentum_read_readvariableop5savev2_sgd_conv1d_1_bias_momentum_read_readvariableopAsavev2_sgd_batch_normalization_gamma_momentum_read_readvariableop@savev2_sgd_batch_normalization_beta_momentum_read_readvariableopCsavev2_sgd_batch_normalization_1_gamma_momentum_read_readvariableopBsavev2_sgd_batch_normalization_1_beta_momentum_read_readvariableop6savev2_sgd_dense_4_kernel_momentum_read_readvariableop4savev2_sgd_dense_4_bias_momentum_read_readvariableop6savev2_sgd_dense_5_kernel_momentum_read_readvariableop4savev2_sgd_dense_5_bias_momentum_read_readvariableop6savev2_sgd_dense_6_kernel_momentum_read_readvariableop4savev2_sgd_dense_6_bias_momentum_read_readvariableopYsavev2_sgd_token_and_position_embedding_embedding_embeddings_momentum_read_readvariableop[savev2_sgd_token_and_position_embedding_embedding_1_embeddings_momentum_read_readvariableop_savev2_sgd_transformer_block_1_multi_head_attention_1_query_kernel_momentum_read_readvariableop]savev2_sgd_transformer_block_1_multi_head_attention_1_query_bias_momentum_read_readvariableop]savev2_sgd_transformer_block_1_multi_head_attention_1_key_kernel_momentum_read_readvariableop[savev2_sgd_transformer_block_1_multi_head_attention_1_key_bias_momentum_read_readvariableop_savev2_sgd_transformer_block_1_multi_head_attention_1_value_kernel_momentum_read_readvariableop]savev2_sgd_transformer_block_1_multi_head_attention_1_value_bias_momentum_read_readvariableopjsavev2_sgd_transformer_block_1_multi_head_attention_1_attention_output_kernel_momentum_read_readvariableophsavev2_sgd_transformer_block_1_multi_head_attention_1_attention_output_bias_momentum_read_readvariableop6savev2_sgd_dense_2_kernel_momentum_read_readvariableop4savev2_sgd_dense_2_bias_momentum_read_readvariableop6savev2_sgd_dense_3_kernel_momentum_read_readvariableop4savev2_sgd_dense_3_bias_momentum_read_readvariableopWsavev2_sgd_transformer_block_1_layer_normalization_2_gamma_momentum_read_readvariableopVsavev2_sgd_transformer_block_1_layer_normalization_2_beta_momentum_read_readvariableopWsavev2_sgd_transformer_block_1_layer_normalization_3_gamma_momentum_read_readvariableopVsavev2_sgd_transformer_block_1_layer_normalization_3_beta_momentum_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *Y
dtypesO
M2K	2
SaveV2Ї
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes°
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*с
_input_shapesя
№: :  : :	  : : : : : : : : : :	и@:@:@@:@:@:: : : : : :	ДR :  : :  : :  : :  : : @:@:@ : : : : : : : :  : :	  : : : : : :	и@:@:@@:@:@:: :	ДR :  : :  : :  : :  : : @:@:@ : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:($
"
_output_shapes
:  : 

_output_shapes
: :($
"
_output_shapes
:	  : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 	

_output_shapes
: : 


_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :%!

_output_shapes
:	и@: 

_output_shapes
:@:$ 

_output_shapes

:@@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

: :%!

_output_shapes
:	ДR :($
"
_output_shapes
:  :$ 

_output_shapes

: :($
"
_output_shapes
:  :$ 

_output_shapes

: :($
"
_output_shapes
:  :$ 

_output_shapes

: :($
"
_output_shapes
:  :  

_output_shapes
: :$! 

_output_shapes

: @: "

_output_shapes
:@:$# 

_output_shapes

:@ : $

_output_shapes
: : %

_output_shapes
: : &

_output_shapes
: : '

_output_shapes
: : (

_output_shapes
: :)

_output_shapes
: :*

_output_shapes
: :(+$
"
_output_shapes
:  : ,

_output_shapes
: :(-$
"
_output_shapes
:	  : .

_output_shapes
: : /

_output_shapes
: : 0

_output_shapes
: : 1

_output_shapes
: : 2

_output_shapes
: :%3!

_output_shapes
:	и@: 4

_output_shapes
:@:$5 

_output_shapes

:@@: 6

_output_shapes
:@:$7 

_output_shapes

:@: 8

_output_shapes
::$9 

_output_shapes

: :%:!

_output_shapes
:	ДR :(;$
"
_output_shapes
:  :$< 

_output_shapes

: :(=$
"
_output_shapes
:  :$> 

_output_shapes

: :(?$
"
_output_shapes
:  :$@ 

_output_shapes

: :(A$
"
_output_shapes
:  : B

_output_shapes
: :$C 

_output_shapes

: @: D

_output_shapes
:@:$E 

_output_shapes

:@ : F

_output_shapes
: : G

_output_shapes
: : H

_output_shapes
: : I

_output_shapes
: : J

_output_shapes
: :K

_output_shapes
: 
ћ
†
&__inference_model_layer_call_fn_100530
input_1
input_2
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34
identityИҐStatefulPartitionedCallќ
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34*1
Tin*
(2&*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*B
_read_only_resource_inputs$
" 
 !"#$%*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_1004552
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*ћ
_input_shapesЇ
Ј:€€€€€€€€€ДR:€€€€€€€€€::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:€€€€€€€€€ДR
!
_user_specified_name	input_1:PL
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	input_2
у0
»
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_101862

inputs
assignmovingavg_101837
assignmovingavg_1_101843)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identityИҐ#AssignMovingAvg/AssignSubVariableOpҐAssignMovingAvg/ReadVariableOpҐ%AssignMovingAvg_1/AssignSubVariableOpҐ AssignMovingAvg_1/ReadVariableOpҐbatchnorm/ReadVariableOpҐbatchnorm/mul/ReadVariableOpС
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indicesУ
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
: *
	keep_dims(2
moments/meanА
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
: 2
moments/StopGradient±
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
moments/SquaredDifferenceЩ
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indicesґ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
: *
	keep_dims(2
moments/varianceБ
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2
moments/SqueezeЙ
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2
moments/Squeeze_1ћ
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*)
_class
loc:@AssignMovingAvg/101837*
_output_shapes
: *
dtype0*
valueB
 *
„#<2
AssignMovingAvg/decayУ
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_101837*
_output_shapes
: *
dtype02 
AssignMovingAvg/ReadVariableOpс
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*)
_class
loc:@AssignMovingAvg/101837*
_output_shapes
: 2
AssignMovingAvg/subи
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*)
_class
loc:@AssignMovingAvg/101837*
_output_shapes
: 2
AssignMovingAvg/mulѓ
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_101837AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*)
_class
loc:@AssignMovingAvg/101837*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp“
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*+
_class!
loc:@AssignMovingAvg_1/101843*
_output_shapes
: *
dtype0*
valueB
 *
„#<2
AssignMovingAvg_1/decayЩ
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_101843*
_output_shapes
: *
dtype02"
 AssignMovingAvg_1/ReadVariableOpы
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/101843*
_output_shapes
: 2
AssignMovingAvg_1/subт
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/101843*
_output_shapes
: 2
AssignMovingAvg_1/mulї
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_101843AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*+
_class!
loc:@AssignMovingAvg_1/101843*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2
batchnorm/add/yВ
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
: 2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: 2
batchnorm/RsqrtЮ
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/mul/ReadVariableOpЕ
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2
batchnorm/mulГ
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
: 2
batchnorm/mul_2Т
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOpБ
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2
batchnorm/subТ
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
batchnorm/add_1ј
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2

Identity"
identityIdentity:output:0*C
_input_shapes2
0:€€€€€€€€€€€€€€€€€€ ::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs
≥
_
C__inference_flatten_layer_call_and_return_conditional_losses_100098

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€`  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€а2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€а2

Identity"
identityIdentity:output:0**
_input_shapes
:€€€€€€€€€# :S O
+
_output_shapes
:€€€€€€€€€# 
 
_user_specified_nameinputs
…
©
6__inference_batch_normalization_1_layer_call_fn_101826

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИҐStatefulPartitionedCall°
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€# *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_996572
StatefulPartitionedCallТ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:€€€€€€€€€# 2

Identity"
identityIdentity:output:0*:
_input_shapes)
':€€€€€€€€€# ::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€# 
 
_user_specified_nameinputs
л
©
6__inference_batch_normalization_1_layer_call_fn_101895

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИҐStatefulPartitionedCall®
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_991882
StatefulPartitionedCallЫ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2

Identity"
identityIdentity:output:0*C
_input_shapes2
0:€€€€€€€€€€€€€€€€€€ ::::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs
Н
d
E__inference_dropout_4_layer_call_and_return_conditional_losses_100161

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeј
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@*
dtype0*

seedY2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2
dropout/GreaterEqual/yЊ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€@2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*&
_input_shapes
:€€€€€€€€€@:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
т
~
)__inference_conv1d_1_layer_call_fn_101580

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallы
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:€€€€€€€€€ё *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_conv1d_1_layer_call_and_return_conditional_losses_994932
StatefulPartitionedCallУ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:€€€€€€€€€ё 2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :€€€€€€€€€ё ::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:€€€€€€€€€ё 
 
_user_specified_nameinputs
т
h
L__inference_average_pooling1d_layer_call_and_return_conditional_losses_98916

inputs
identityb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dimУ

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2

ExpandDimsЇ
AvgPoolAvgPoolExpandDims:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
2	
AvgPoolО
SqueezeSqueezeAvgPool:output:0*
T0*=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€*
squeeze_dims
2	
Squeezez
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€:e a
=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
У
Е
N__inference_batch_normalization_layer_call_and_return_conditional_losses_99081

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identityИҐbatchnorm/ReadVariableOpҐbatchnorm/ReadVariableOp_1Ґbatchnorm/ReadVariableOp_2Ґbatchnorm/mul/ReadVariableOpТ
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2
batchnorm/add/yИ
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
: 2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: 2
batchnorm/RsqrtЮ
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/mul/ReadVariableOpЕ
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2
batchnorm/mulГ
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
batchnorm/mul_1Ш
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp_1Е
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
: 2
batchnorm/mul_2Ш
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp_2Г
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2
batchnorm/subТ
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
batchnorm/add_1и
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2

Identity"
identityIdentity:output:0*C
_input_shapes2
0:€€€€€€€€€€€€€€€€€€ ::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs
»
c
E__inference_dropout_5_layer_call_and_return_conditional_losses_102377

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:€€€€€€€€€@2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2

Identity_1"!

identity_1Identity_1:output:0*&
_input_shapes
:€€€€€€€€€@:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
Н
d
E__inference_dropout_4_layer_call_and_return_conditional_losses_102325

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeј
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@*
dtype0*

seedY2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2
dropout/GreaterEqual/yЊ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€@2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*&
_input_shapes
:€€€€€€€€€@:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
й
І
4__inference_batch_normalization_layer_call_fn_101662

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИҐStatefulPartitionedCall®
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_990812
StatefulPartitionedCallЫ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2

Identity"
identityIdentity:output:0*C
_input_shapes2
0:€€€€€€€€€€€€€€€€€€ ::::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs
Рэ
Х'
 __inference__wrapped_model_98907
input_1
input_2I
Emodel_token_and_position_embedding_embedding_1_embedding_lookup_98676G
Cmodel_token_and_position_embedding_embedding_embedding_lookup_98682<
8model_conv1d_conv1d_expanddims_1_readvariableop_resource0
,model_conv1d_biasadd_readvariableop_resource>
:model_conv1d_1_conv1d_expanddims_1_readvariableop_resource2
.model_conv1d_1_biasadd_readvariableop_resource?
;model_batch_normalization_batchnorm_readvariableop_resourceC
?model_batch_normalization_batchnorm_mul_readvariableop_resourceA
=model_batch_normalization_batchnorm_readvariableop_1_resourceA
=model_batch_normalization_batchnorm_readvariableop_2_resourceA
=model_batch_normalization_1_batchnorm_readvariableop_resourceE
Amodel_batch_normalization_1_batchnorm_mul_readvariableop_resourceC
?model_batch_normalization_1_batchnorm_readvariableop_1_resourceC
?model_batch_normalization_1_batchnorm_readvariableop_2_resource`
\model_transformer_block_1_multi_head_attention_1_query_einsum_einsum_readvariableop_resourceV
Rmodel_transformer_block_1_multi_head_attention_1_query_add_readvariableop_resource^
Zmodel_transformer_block_1_multi_head_attention_1_key_einsum_einsum_readvariableop_resourceT
Pmodel_transformer_block_1_multi_head_attention_1_key_add_readvariableop_resource`
\model_transformer_block_1_multi_head_attention_1_value_einsum_einsum_readvariableop_resourceV
Rmodel_transformer_block_1_multi_head_attention_1_value_add_readvariableop_resourcek
gmodel_transformer_block_1_multi_head_attention_1_attention_output_einsum_einsum_readvariableop_resourcea
]model_transformer_block_1_multi_head_attention_1_attention_output_add_readvariableop_resourceY
Umodel_transformer_block_1_layer_normalization_2_batchnorm_mul_readvariableop_resourceU
Qmodel_transformer_block_1_layer_normalization_2_batchnorm_readvariableop_resourceT
Pmodel_transformer_block_1_sequential_1_dense_2_tensordot_readvariableop_resourceR
Nmodel_transformer_block_1_sequential_1_dense_2_biasadd_readvariableop_resourceT
Pmodel_transformer_block_1_sequential_1_dense_3_tensordot_readvariableop_resourceR
Nmodel_transformer_block_1_sequential_1_dense_3_biasadd_readvariableop_resourceY
Umodel_transformer_block_1_layer_normalization_3_batchnorm_mul_readvariableop_resourceU
Qmodel_transformer_block_1_layer_normalization_3_batchnorm_readvariableop_resource0
,model_dense_4_matmul_readvariableop_resource1
-model_dense_4_biasadd_readvariableop_resource0
,model_dense_5_matmul_readvariableop_resource1
-model_dense_5_biasadd_readvariableop_resource0
,model_dense_6_matmul_readvariableop_resource1
-model_dense_6_biasadd_readvariableop_resource
identityИҐ2model/batch_normalization/batchnorm/ReadVariableOpҐ4model/batch_normalization/batchnorm/ReadVariableOp_1Ґ4model/batch_normalization/batchnorm/ReadVariableOp_2Ґ6model/batch_normalization/batchnorm/mul/ReadVariableOpҐ4model/batch_normalization_1/batchnorm/ReadVariableOpҐ6model/batch_normalization_1/batchnorm/ReadVariableOp_1Ґ6model/batch_normalization_1/batchnorm/ReadVariableOp_2Ґ8model/batch_normalization_1/batchnorm/mul/ReadVariableOpҐ#model/conv1d/BiasAdd/ReadVariableOpҐ/model/conv1d/conv1d/ExpandDims_1/ReadVariableOpҐ%model/conv1d_1/BiasAdd/ReadVariableOpҐ1model/conv1d_1/conv1d/ExpandDims_1/ReadVariableOpҐ$model/dense_4/BiasAdd/ReadVariableOpҐ#model/dense_4/MatMul/ReadVariableOpҐ$model/dense_5/BiasAdd/ReadVariableOpҐ#model/dense_5/MatMul/ReadVariableOpҐ$model/dense_6/BiasAdd/ReadVariableOpҐ#model/dense_6/MatMul/ReadVariableOpҐ=model/token_and_position_embedding/embedding/embedding_lookupҐ?model/token_and_position_embedding/embedding_1/embedding_lookupҐHmodel/transformer_block_1/layer_normalization_2/batchnorm/ReadVariableOpҐLmodel/transformer_block_1/layer_normalization_2/batchnorm/mul/ReadVariableOpҐHmodel/transformer_block_1/layer_normalization_3/batchnorm/ReadVariableOpҐLmodel/transformer_block_1/layer_normalization_3/batchnorm/mul/ReadVariableOpҐTmodel/transformer_block_1/multi_head_attention_1/attention_output/add/ReadVariableOpҐ^model/transformer_block_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpҐGmodel/transformer_block_1/multi_head_attention_1/key/add/ReadVariableOpҐQmodel/transformer_block_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpҐImodel/transformer_block_1/multi_head_attention_1/query/add/ReadVariableOpҐSmodel/transformer_block_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpҐImodel/transformer_block_1/multi_head_attention_1/value/add/ReadVariableOpҐSmodel/transformer_block_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpҐEmodel/transformer_block_1/sequential_1/dense_2/BiasAdd/ReadVariableOpҐGmodel/transformer_block_1/sequential_1/dense_2/Tensordot/ReadVariableOpҐEmodel/transformer_block_1/sequential_1/dense_3/BiasAdd/ReadVariableOpҐGmodel/transformer_block_1/sequential_1/dense_3/Tensordot/ReadVariableOpЛ
(model/token_and_position_embedding/ShapeShapeinput_1*
T0*
_output_shapes
:2*
(model/token_and_position_embedding/Shape√
6model/token_and_position_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€28
6model/token_and_position_embedding/strided_slice/stackЊ
8model/token_and_position_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2:
8model/token_and_position_embedding/strided_slice/stack_1Њ
8model/token_and_position_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8model/token_and_position_embedding/strided_slice/stack_2і
0model/token_and_position_embedding/strided_sliceStridedSlice1model/token_and_position_embedding/Shape:output:0?model/token_and_position_embedding/strided_slice/stack:output:0Amodel/token_and_position_embedding/strided_slice/stack_1:output:0Amodel/token_and_position_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask22
0model/token_and_position_embedding/strided_sliceҐ
.model/token_and_position_embedding/range/startConst*
_output_shapes
: *
dtype0*
value	B : 20
.model/token_and_position_embedding/range/startҐ
.model/token_and_position_embedding/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :20
.model/token_and_position_embedding/range/deltaѓ
(model/token_and_position_embedding/rangeRange7model/token_and_position_embedding/range/start:output:09model/token_and_position_embedding/strided_slice:output:07model/token_and_position_embedding/range/delta:output:0*#
_output_shapes
:€€€€€€€€€2*
(model/token_and_position_embedding/range№
?model/token_and_position_embedding/embedding_1/embedding_lookupResourceGatherEmodel_token_and_position_embedding_embedding_1_embedding_lookup_986761model/token_and_position_embedding/range:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*X
_classN
LJloc:@model/token_and_position_embedding/embedding_1/embedding_lookup/98676*'
_output_shapes
:€€€€€€€€€ *
dtype02A
?model/token_and_position_embedding/embedding_1/embedding_lookup§
Hmodel/token_and_position_embedding/embedding_1/embedding_lookup/IdentityIdentityHmodel/token_and_position_embedding/embedding_1/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*X
_classN
LJloc:@model/token_and_position_embedding/embedding_1/embedding_lookup/98676*'
_output_shapes
:€€€€€€€€€ 2J
Hmodel/token_and_position_embedding/embedding_1/embedding_lookup/Identity©
Jmodel/token_and_position_embedding/embedding_1/embedding_lookup/Identity_1IdentityQmodel/token_and_position_embedding/embedding_1/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2L
Jmodel/token_and_position_embedding/embedding_1/embedding_lookup/Identity_1є
1model/token_and_position_embedding/embedding/CastCastinput_1*

DstT0*

SrcT0*(
_output_shapes
:€€€€€€€€€ДR23
1model/token_and_position_embedding/embedding/CastЁ
=model/token_and_position_embedding/embedding/embedding_lookupResourceGatherCmodel_token_and_position_embedding_embedding_embedding_lookup_986825model/token_and_position_embedding/embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*V
_classL
JHloc:@model/token_and_position_embedding/embedding/embedding_lookup/98682*,
_output_shapes
:€€€€€€€€€ДR *
dtype02?
=model/token_and_position_embedding/embedding/embedding_lookup°
Fmodel/token_and_position_embedding/embedding/embedding_lookup/IdentityIdentityFmodel/token_and_position_embedding/embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*V
_classL
JHloc:@model/token_and_position_embedding/embedding/embedding_lookup/98682*,
_output_shapes
:€€€€€€€€€ДR 2H
Fmodel/token_and_position_embedding/embedding/embedding_lookup/Identity®
Hmodel/token_and_position_embedding/embedding/embedding_lookup/Identity_1IdentityOmodel/token_and_position_embedding/embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:€€€€€€€€€ДR 2J
Hmodel/token_and_position_embedding/embedding/embedding_lookup/Identity_1Є
&model/token_and_position_embedding/addAddV2Qmodel/token_and_position_embedding/embedding/embedding_lookup/Identity_1:output:0Smodel/token_and_position_embedding/embedding_1/embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:€€€€€€€€€ДR 2(
&model/token_and_position_embedding/addУ
"model/conv1d/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€2$
"model/conv1d/conv1d/ExpandDims/dimв
model/conv1d/conv1d/ExpandDims
ExpandDims*model/token_and_position_embedding/add:z:0+model/conv1d/conv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:€€€€€€€€€ДR 2 
model/conv1d/conv1d/ExpandDimsя
/model/conv1d/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp8model_conv1d_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype021
/model/conv1d/conv1d/ExpandDims_1/ReadVariableOpО
$model/conv1d/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$model/conv1d/conv1d/ExpandDims_1/dimл
 model/conv1d/conv1d/ExpandDims_1
ExpandDims7model/conv1d/conv1d/ExpandDims_1/ReadVariableOp:value:0-model/conv1d/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  2"
 model/conv1d/conv1d/ExpandDims_1л
model/conv1d/conv1dConv2D'model/conv1d/conv1d/ExpandDims:output:0)model/conv1d/conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:€€€€€€€€€ДR *
paddingSAME*
strides
2
model/conv1d/conv1dЇ
model/conv1d/conv1d/SqueezeSqueezemodel/conv1d/conv1d:output:0*
T0*,
_output_shapes
:€€€€€€€€€ДR *
squeeze_dims

э€€€€€€€€2
model/conv1d/conv1d/Squeeze≥
#model/conv1d/BiasAdd/ReadVariableOpReadVariableOp,model_conv1d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02%
#model/conv1d/BiasAdd/ReadVariableOpЅ
model/conv1d/BiasAddBiasAdd$model/conv1d/conv1d/Squeeze:output:0+model/conv1d/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:€€€€€€€€€ДR 2
model/conv1d/BiasAddД
model/conv1d/ReluRelumodel/conv1d/BiasAdd:output:0*
T0*,
_output_shapes
:€€€€€€€€€ДR 2
model/conv1d/ReluТ
&model/average_pooling1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2(
&model/average_pooling1d/ExpandDims/dimг
"model/average_pooling1d/ExpandDims
ExpandDimsmodel/conv1d/Relu:activations:0/model/average_pooling1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:€€€€€€€€€ДR 2$
"model/average_pooling1d/ExpandDimsс
model/average_pooling1d/AvgPoolAvgPool+model/average_pooling1d/ExpandDims:output:0*
T0*0
_output_shapes
:€€€€€€€€€ё *
ksize
*
paddingVALID*
strides
2!
model/average_pooling1d/AvgPool≈
model/average_pooling1d/SqueezeSqueeze(model/average_pooling1d/AvgPool:output:0*
T0*,
_output_shapes
:€€€€€€€€€ё *
squeeze_dims
2!
model/average_pooling1d/SqueezeЧ
$model/conv1d_1/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€2&
$model/conv1d_1/conv1d/ExpandDims/dimж
 model/conv1d_1/conv1d/ExpandDims
ExpandDims(model/average_pooling1d/Squeeze:output:0-model/conv1d_1/conv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:€€€€€€€€€ё 2"
 model/conv1d_1/conv1d/ExpandDimsе
1model/conv1d_1/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp:model_conv1d_1_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:	  *
dtype023
1model/conv1d_1/conv1d/ExpandDims_1/ReadVariableOpТ
&model/conv1d_1/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2(
&model/conv1d_1/conv1d/ExpandDims_1/dimу
"model/conv1d_1/conv1d/ExpandDims_1
ExpandDims9model/conv1d_1/conv1d/ExpandDims_1/ReadVariableOp:value:0/model/conv1d_1/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:	  2$
"model/conv1d_1/conv1d/ExpandDims_1у
model/conv1d_1/conv1dConv2D)model/conv1d_1/conv1d/ExpandDims:output:0+model/conv1d_1/conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:€€€€€€€€€ё *
paddingSAME*
strides
2
model/conv1d_1/conv1dј
model/conv1d_1/conv1d/SqueezeSqueezemodel/conv1d_1/conv1d:output:0*
T0*,
_output_shapes
:€€€€€€€€€ё *
squeeze_dims

э€€€€€€€€2
model/conv1d_1/conv1d/Squeezeє
%model/conv1d_1/BiasAdd/ReadVariableOpReadVariableOp.model_conv1d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02'
%model/conv1d_1/BiasAdd/ReadVariableOp…
model/conv1d_1/BiasAddBiasAdd&model/conv1d_1/conv1d/Squeeze:output:0-model/conv1d_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:€€€€€€€€€ё 2
model/conv1d_1/BiasAddК
model/conv1d_1/ReluRelumodel/conv1d_1/BiasAdd:output:0*
T0*,
_output_shapes
:€€€€€€€€€ё 2
model/conv1d_1/ReluЦ
(model/average_pooling1d_2/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2*
(model/average_pooling1d_2/ExpandDims/dimф
$model/average_pooling1d_2/ExpandDims
ExpandDims*model/token_and_position_embedding/add:z:01model/average_pooling1d_2/ExpandDims/dim:output:0*
T0*0
_output_shapes
:€€€€€€€€€ДR 2&
$model/average_pooling1d_2/ExpandDimsш
!model/average_pooling1d_2/AvgPoolAvgPool-model/average_pooling1d_2/ExpandDims:output:0*
T0*/
_output_shapes
:€€€€€€€€€# *
ksize	
ђ*
paddingVALID*
strides	
ђ2#
!model/average_pooling1d_2/AvgPool 
!model/average_pooling1d_2/SqueezeSqueeze*model/average_pooling1d_2/AvgPool:output:0*
T0*+
_output_shapes
:€€€€€€€€€# *
squeeze_dims
2#
!model/average_pooling1d_2/SqueezeЦ
(model/average_pooling1d_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2*
(model/average_pooling1d_1/ExpandDims/dimл
$model/average_pooling1d_1/ExpandDims
ExpandDims!model/conv1d_1/Relu:activations:01model/average_pooling1d_1/ExpandDims/dim:output:0*
T0*0
_output_shapes
:€€€€€€€€€ё 2&
$model/average_pooling1d_1/ExpandDimsц
!model/average_pooling1d_1/AvgPoolAvgPool-model/average_pooling1d_1/ExpandDims:output:0*
T0*/
_output_shapes
:€€€€€€€€€# *
ksize

*
paddingVALID*
strides

2#
!model/average_pooling1d_1/AvgPool 
!model/average_pooling1d_1/SqueezeSqueeze*model/average_pooling1d_1/AvgPool:output:0*
T0*+
_output_shapes
:€€€€€€€€€# *
squeeze_dims
2#
!model/average_pooling1d_1/Squeezeа
2model/batch_normalization/batchnorm/ReadVariableOpReadVariableOp;model_batch_normalization_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype024
2model/batch_normalization/batchnorm/ReadVariableOpЫ
)model/batch_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2+
)model/batch_normalization/batchnorm/add/yр
'model/batch_normalization/batchnorm/addAddV2:model/batch_normalization/batchnorm/ReadVariableOp:value:02model/batch_normalization/batchnorm/add/y:output:0*
T0*
_output_shapes
: 2)
'model/batch_normalization/batchnorm/add±
)model/batch_normalization/batchnorm/RsqrtRsqrt+model/batch_normalization/batchnorm/add:z:0*
T0*
_output_shapes
: 2+
)model/batch_normalization/batchnorm/Rsqrtм
6model/batch_normalization/batchnorm/mul/ReadVariableOpReadVariableOp?model_batch_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype028
6model/batch_normalization/batchnorm/mul/ReadVariableOpн
'model/batch_normalization/batchnorm/mulMul-model/batch_normalization/batchnorm/Rsqrt:y:0>model/batch_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2)
'model/batch_normalization/batchnorm/mulм
)model/batch_normalization/batchnorm/mul_1Mul*model/average_pooling1d_1/Squeeze:output:0+model/batch_normalization/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2+
)model/batch_normalization/batchnorm/mul_1ж
4model/batch_normalization/batchnorm/ReadVariableOp_1ReadVariableOp=model_batch_normalization_batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype026
4model/batch_normalization/batchnorm/ReadVariableOp_1н
)model/batch_normalization/batchnorm/mul_2Mul<model/batch_normalization/batchnorm/ReadVariableOp_1:value:0+model/batch_normalization/batchnorm/mul:z:0*
T0*
_output_shapes
: 2+
)model/batch_normalization/batchnorm/mul_2ж
4model/batch_normalization/batchnorm/ReadVariableOp_2ReadVariableOp=model_batch_normalization_batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype026
4model/batch_normalization/batchnorm/ReadVariableOp_2л
'model/batch_normalization/batchnorm/subSub<model/batch_normalization/batchnorm/ReadVariableOp_2:value:0-model/batch_normalization/batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2)
'model/batch_normalization/batchnorm/subс
)model/batch_normalization/batchnorm/add_1AddV2-model/batch_normalization/batchnorm/mul_1:z:0+model/batch_normalization/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2+
)model/batch_normalization/batchnorm/add_1ж
4model/batch_normalization_1/batchnorm/ReadVariableOpReadVariableOp=model_batch_normalization_1_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype026
4model/batch_normalization_1/batchnorm/ReadVariableOpЯ
+model/batch_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2-
+model/batch_normalization_1/batchnorm/add/yш
)model/batch_normalization_1/batchnorm/addAddV2<model/batch_normalization_1/batchnorm/ReadVariableOp:value:04model/batch_normalization_1/batchnorm/add/y:output:0*
T0*
_output_shapes
: 2+
)model/batch_normalization_1/batchnorm/addЈ
+model/batch_normalization_1/batchnorm/RsqrtRsqrt-model/batch_normalization_1/batchnorm/add:z:0*
T0*
_output_shapes
: 2-
+model/batch_normalization_1/batchnorm/Rsqrtт
8model/batch_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOpAmodel_batch_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02:
8model/batch_normalization_1/batchnorm/mul/ReadVariableOpх
)model/batch_normalization_1/batchnorm/mulMul/model/batch_normalization_1/batchnorm/Rsqrt:y:0@model/batch_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2+
)model/batch_normalization_1/batchnorm/mulт
+model/batch_normalization_1/batchnorm/mul_1Mul*model/average_pooling1d_2/Squeeze:output:0-model/batch_normalization_1/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2-
+model/batch_normalization_1/batchnorm/mul_1м
6model/batch_normalization_1/batchnorm/ReadVariableOp_1ReadVariableOp?model_batch_normalization_1_batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype028
6model/batch_normalization_1/batchnorm/ReadVariableOp_1х
+model/batch_normalization_1/batchnorm/mul_2Mul>model/batch_normalization_1/batchnorm/ReadVariableOp_1:value:0-model/batch_normalization_1/batchnorm/mul:z:0*
T0*
_output_shapes
: 2-
+model/batch_normalization_1/batchnorm/mul_2м
6model/batch_normalization_1/batchnorm/ReadVariableOp_2ReadVariableOp?model_batch_normalization_1_batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype028
6model/batch_normalization_1/batchnorm/ReadVariableOp_2у
)model/batch_normalization_1/batchnorm/subSub>model/batch_normalization_1/batchnorm/ReadVariableOp_2:value:0/model/batch_normalization_1/batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2+
)model/batch_normalization_1/batchnorm/subщ
+model/batch_normalization_1/batchnorm/add_1AddV2/model/batch_normalization_1/batchnorm/mul_1:z:0-model/batch_normalization_1/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2-
+model/batch_normalization_1/batchnorm/add_1љ
model/add/addAddV2-model/batch_normalization/batchnorm/add_1:z:0/model/batch_normalization_1/batchnorm/add_1:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2
model/add/addЋ
Smodel/transformer_block_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpReadVariableOp\model_transformer_block_1_multi_head_attention_1_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02U
Smodel/transformer_block_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpж
Dmodel/transformer_block_1/multi_head_attention_1/query/einsum/EinsumEinsummodel/add/add:z:0[model/transformer_block_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€# *
equationabc,cde->abde2F
Dmodel/transformer_block_1/multi_head_attention_1/query/einsum/Einsum©
Imodel/transformer_block_1/multi_head_attention_1/query/add/ReadVariableOpReadVariableOpRmodel_transformer_block_1_multi_head_attention_1_query_add_readvariableop_resource*
_output_shapes

: *
dtype02K
Imodel/transformer_block_1/multi_head_attention_1/query/add/ReadVariableOpЁ
:model/transformer_block_1/multi_head_attention_1/query/addAddV2Mmodel/transformer_block_1/multi_head_attention_1/query/einsum/Einsum:output:0Qmodel/transformer_block_1/multi_head_attention_1/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€# 2<
:model/transformer_block_1/multi_head_attention_1/query/add≈
Qmodel/transformer_block_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpReadVariableOpZmodel_transformer_block_1_multi_head_attention_1_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02S
Qmodel/transformer_block_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpа
Bmodel/transformer_block_1/multi_head_attention_1/key/einsum/EinsumEinsummodel/add/add:z:0Ymodel/transformer_block_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€# *
equationabc,cde->abde2D
Bmodel/transformer_block_1/multi_head_attention_1/key/einsum/Einsum£
Gmodel/transformer_block_1/multi_head_attention_1/key/add/ReadVariableOpReadVariableOpPmodel_transformer_block_1_multi_head_attention_1_key_add_readvariableop_resource*
_output_shapes

: *
dtype02I
Gmodel/transformer_block_1/multi_head_attention_1/key/add/ReadVariableOp’
8model/transformer_block_1/multi_head_attention_1/key/addAddV2Kmodel/transformer_block_1/multi_head_attention_1/key/einsum/Einsum:output:0Omodel/transformer_block_1/multi_head_attention_1/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€# 2:
8model/transformer_block_1/multi_head_attention_1/key/addЋ
Smodel/transformer_block_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpReadVariableOp\model_transformer_block_1_multi_head_attention_1_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02U
Smodel/transformer_block_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpж
Dmodel/transformer_block_1/multi_head_attention_1/value/einsum/EinsumEinsummodel/add/add:z:0[model/transformer_block_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€# *
equationabc,cde->abde2F
Dmodel/transformer_block_1/multi_head_attention_1/value/einsum/Einsum©
Imodel/transformer_block_1/multi_head_attention_1/value/add/ReadVariableOpReadVariableOpRmodel_transformer_block_1_multi_head_attention_1_value_add_readvariableop_resource*
_output_shapes

: *
dtype02K
Imodel/transformer_block_1/multi_head_attention_1/value/add/ReadVariableOpЁ
:model/transformer_block_1/multi_head_attention_1/value/addAddV2Mmodel/transformer_block_1/multi_head_attention_1/value/einsum/Einsum:output:0Qmodel/transformer_block_1/multi_head_attention_1/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€# 2<
:model/transformer_block_1/multi_head_attention_1/value/addµ
6model/transformer_block_1/multi_head_attention_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *у5>28
6model/transformer_block_1/multi_head_attention_1/Mul/yЃ
4model/transformer_block_1/multi_head_attention_1/MulMul>model/transformer_block_1/multi_head_attention_1/query/add:z:0?model/transformer_block_1/multi_head_attention_1/Mul/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€# 26
4model/transformer_block_1/multi_head_attention_1/Mulд
>model/transformer_block_1/multi_head_attention_1/einsum/EinsumEinsum<model/transformer_block_1/multi_head_attention_1/key/add:z:08model/transformer_block_1/multi_head_attention_1/Mul:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€##*
equationaecd,abcd->acbe2@
>model/transformer_block_1/multi_head_attention_1/einsum/EinsumТ
@model/transformer_block_1/multi_head_attention_1/softmax/SoftmaxSoftmaxGmodel/transformer_block_1/multi_head_attention_1/einsum/Einsum:output:0*
T0*/
_output_shapes
:€€€€€€€€€##2B
@model/transformer_block_1/multi_head_attention_1/softmax/SoftmaxШ
Amodel/transformer_block_1/multi_head_attention_1/dropout/IdentityIdentityJmodel/transformer_block_1/multi_head_attention_1/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:€€€€€€€€€##2C
Amodel/transformer_block_1/multi_head_attention_1/dropout/Identityь
@model/transformer_block_1/multi_head_attention_1/einsum_1/EinsumEinsumJmodel/transformer_block_1/multi_head_attention_1/dropout/Identity:output:0>model/transformer_block_1/multi_head_attention_1/value/add:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€# *
equationacbe,aecd->abcd2B
@model/transformer_block_1/multi_head_attention_1/einsum_1/Einsumм
^model/transformer_block_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpgmodel_transformer_block_1_multi_head_attention_1_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02`
^model/transformer_block_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpї
Omodel/transformer_block_1/multi_head_attention_1/attention_output/einsum/EinsumEinsumImodel/transformer_block_1/multi_head_attention_1/einsum_1/Einsum:output:0fmodel/transformer_block_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:€€€€€€€€€# *
equationabcd,cde->abe2Q
Omodel/transformer_block_1/multi_head_attention_1/attention_output/einsum/Einsum∆
Tmodel/transformer_block_1/multi_head_attention_1/attention_output/add/ReadVariableOpReadVariableOp]model_transformer_block_1_multi_head_attention_1_attention_output_add_readvariableop_resource*
_output_shapes
: *
dtype02V
Tmodel/transformer_block_1/multi_head_attention_1/attention_output/add/ReadVariableOpЕ
Emodel/transformer_block_1/multi_head_attention_1/attention_output/addAddV2Xmodel/transformer_block_1/multi_head_attention_1/attention_output/einsum/Einsum:output:0\model/transformer_block_1/multi_head_attention_1/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€# 2G
Emodel/transformer_block_1/multi_head_attention_1/attention_output/addй
,model/transformer_block_1/dropout_2/IdentityIdentityImodel/transformer_block_1/multi_head_attention_1/attention_output/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2.
,model/transformer_block_1/dropout_2/Identity«
model/transformer_block_1/addAddV2model/add/add:z:05model/transformer_block_1/dropout_2/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€# 2
model/transformer_block_1/addк
Nmodel/transformer_block_1/layer_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2P
Nmodel/transformer_block_1/layer_normalization_2/moments/mean/reduction_indices«
<model/transformer_block_1/layer_normalization_2/moments/meanMean!model/transformer_block_1/add:z:0Wmodel/transformer_block_1/layer_normalization_2/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€#*
	keep_dims(2>
<model/transformer_block_1/layer_normalization_2/moments/meanЩ
Dmodel/transformer_block_1/layer_normalization_2/moments/StopGradientStopGradientEmodel/transformer_block_1/layer_normalization_2/moments/mean:output:0*
T0*+
_output_shapes
:€€€€€€€€€#2F
Dmodel/transformer_block_1/layer_normalization_2/moments/StopGradient”
Imodel/transformer_block_1/layer_normalization_2/moments/SquaredDifferenceSquaredDifference!model/transformer_block_1/add:z:0Mmodel/transformer_block_1/layer_normalization_2/moments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€# 2K
Imodel/transformer_block_1/layer_normalization_2/moments/SquaredDifferenceт
Rmodel/transformer_block_1/layer_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2T
Rmodel/transformer_block_1/layer_normalization_2/moments/variance/reduction_indices€
@model/transformer_block_1/layer_normalization_2/moments/varianceMeanMmodel/transformer_block_1/layer_normalization_2/moments/SquaredDifference:z:0[model/transformer_block_1/layer_normalization_2/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€#*
	keep_dims(2B
@model/transformer_block_1/layer_normalization_2/moments/variance«
?model/transformer_block_1/layer_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж52A
?model/transformer_block_1/layer_normalization_2/batchnorm/add/y“
=model/transformer_block_1/layer_normalization_2/batchnorm/addAddV2Imodel/transformer_block_1/layer_normalization_2/moments/variance:output:0Hmodel/transformer_block_1/layer_normalization_2/batchnorm/add/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€#2?
=model/transformer_block_1/layer_normalization_2/batchnorm/addД
?model/transformer_block_1/layer_normalization_2/batchnorm/RsqrtRsqrtAmodel/transformer_block_1/layer_normalization_2/batchnorm/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€#2A
?model/transformer_block_1/layer_normalization_2/batchnorm/RsqrtЃ
Lmodel/transformer_block_1/layer_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOpUmodel_transformer_block_1_layer_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02N
Lmodel/transformer_block_1/layer_normalization_2/batchnorm/mul/ReadVariableOp÷
=model/transformer_block_1/layer_normalization_2/batchnorm/mulMulCmodel/transformer_block_1/layer_normalization_2/batchnorm/Rsqrt:y:0Tmodel/transformer_block_1/layer_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€# 2?
=model/transformer_block_1/layer_normalization_2/batchnorm/mul•
?model/transformer_block_1/layer_normalization_2/batchnorm/mul_1Mul!model/transformer_block_1/add:z:0Amodel/transformer_block_1/layer_normalization_2/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2A
?model/transformer_block_1/layer_normalization_2/batchnorm/mul_1…
?model/transformer_block_1/layer_normalization_2/batchnorm/mul_2MulEmodel/transformer_block_1/layer_normalization_2/moments/mean:output:0Amodel/transformer_block_1/layer_normalization_2/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2A
?model/transformer_block_1/layer_normalization_2/batchnorm/mul_2Ґ
Hmodel/transformer_block_1/layer_normalization_2/batchnorm/ReadVariableOpReadVariableOpQmodel_transformer_block_1_layer_normalization_2_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02J
Hmodel/transformer_block_1/layer_normalization_2/batchnorm/ReadVariableOp“
=model/transformer_block_1/layer_normalization_2/batchnorm/subSubPmodel/transformer_block_1/layer_normalization_2/batchnorm/ReadVariableOp:value:0Cmodel/transformer_block_1/layer_normalization_2/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2?
=model/transformer_block_1/layer_normalization_2/batchnorm/sub…
?model/transformer_block_1/layer_normalization_2/batchnorm/add_1AddV2Cmodel/transformer_block_1/layer_normalization_2/batchnorm/mul_1:z:0Amodel/transformer_block_1/layer_normalization_2/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2A
?model/transformer_block_1/layer_normalization_2/batchnorm/add_1£
Gmodel/transformer_block_1/sequential_1/dense_2/Tensordot/ReadVariableOpReadVariableOpPmodel_transformer_block_1_sequential_1_dense_2_tensordot_readvariableop_resource*
_output_shapes

: @*
dtype02I
Gmodel/transformer_block_1/sequential_1/dense_2/Tensordot/ReadVariableOp»
=model/transformer_block_1/sequential_1/dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2?
=model/transformer_block_1/sequential_1/dense_2/Tensordot/axesѕ
=model/transformer_block_1/sequential_1/dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2?
=model/transformer_block_1/sequential_1/dense_2/Tensordot/freeу
>model/transformer_block_1/sequential_1/dense_2/Tensordot/ShapeShapeCmodel/transformer_block_1/layer_normalization_2/batchnorm/add_1:z:0*
T0*
_output_shapes
:2@
>model/transformer_block_1/sequential_1/dense_2/Tensordot/Shape“
Fmodel/transformer_block_1/sequential_1/dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2H
Fmodel/transformer_block_1/sequential_1/dense_2/Tensordot/GatherV2/axisЉ
Amodel/transformer_block_1/sequential_1/dense_2/Tensordot/GatherV2GatherV2Gmodel/transformer_block_1/sequential_1/dense_2/Tensordot/Shape:output:0Fmodel/transformer_block_1/sequential_1/dense_2/Tensordot/free:output:0Omodel/transformer_block_1/sequential_1/dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2C
Amodel/transformer_block_1/sequential_1/dense_2/Tensordot/GatherV2÷
Hmodel/transformer_block_1/sequential_1/dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2J
Hmodel/transformer_block_1/sequential_1/dense_2/Tensordot/GatherV2_1/axis¬
Cmodel/transformer_block_1/sequential_1/dense_2/Tensordot/GatherV2_1GatherV2Gmodel/transformer_block_1/sequential_1/dense_2/Tensordot/Shape:output:0Fmodel/transformer_block_1/sequential_1/dense_2/Tensordot/axes:output:0Qmodel/transformer_block_1/sequential_1/dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2E
Cmodel/transformer_block_1/sequential_1/dense_2/Tensordot/GatherV2_1 
>model/transformer_block_1/sequential_1/dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2@
>model/transformer_block_1/sequential_1/dense_2/Tensordot/ConstЉ
=model/transformer_block_1/sequential_1/dense_2/Tensordot/ProdProdJmodel/transformer_block_1/sequential_1/dense_2/Tensordot/GatherV2:output:0Gmodel/transformer_block_1/sequential_1/dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: 2?
=model/transformer_block_1/sequential_1/dense_2/Tensordot/Prodќ
@model/transformer_block_1/sequential_1/dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2B
@model/transformer_block_1/sequential_1/dense_2/Tensordot/Const_1ƒ
?model/transformer_block_1/sequential_1/dense_2/Tensordot/Prod_1ProdLmodel/transformer_block_1/sequential_1/dense_2/Tensordot/GatherV2_1:output:0Imodel/transformer_block_1/sequential_1/dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2A
?model/transformer_block_1/sequential_1/dense_2/Tensordot/Prod_1ќ
Dmodel/transformer_block_1/sequential_1/dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2F
Dmodel/transformer_block_1/sequential_1/dense_2/Tensordot/concat/axisЫ
?model/transformer_block_1/sequential_1/dense_2/Tensordot/concatConcatV2Fmodel/transformer_block_1/sequential_1/dense_2/Tensordot/free:output:0Fmodel/transformer_block_1/sequential_1/dense_2/Tensordot/axes:output:0Mmodel/transformer_block_1/sequential_1/dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2A
?model/transformer_block_1/sequential_1/dense_2/Tensordot/concat»
>model/transformer_block_1/sequential_1/dense_2/Tensordot/stackPackFmodel/transformer_block_1/sequential_1/dense_2/Tensordot/Prod:output:0Hmodel/transformer_block_1/sequential_1/dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2@
>model/transformer_block_1/sequential_1/dense_2/Tensordot/stackЏ
Bmodel/transformer_block_1/sequential_1/dense_2/Tensordot/transpose	TransposeCmodel/transformer_block_1/layer_normalization_2/batchnorm/add_1:z:0Hmodel/transformer_block_1/sequential_1/dense_2/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€# 2D
Bmodel/transformer_block_1/sequential_1/dense_2/Tensordot/transposeџ
@model/transformer_block_1/sequential_1/dense_2/Tensordot/ReshapeReshapeFmodel/transformer_block_1/sequential_1/dense_2/Tensordot/transpose:y:0Gmodel/transformer_block_1/sequential_1/dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2B
@model/transformer_block_1/sequential_1/dense_2/Tensordot/ReshapeЏ
?model/transformer_block_1/sequential_1/dense_2/Tensordot/MatMulMatMulImodel/transformer_block_1/sequential_1/dense_2/Tensordot/Reshape:output:0Omodel/transformer_block_1/sequential_1/dense_2/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2A
?model/transformer_block_1/sequential_1/dense_2/Tensordot/MatMulќ
@model/transformer_block_1/sequential_1/dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2B
@model/transformer_block_1/sequential_1/dense_2/Tensordot/Const_2“
Fmodel/transformer_block_1/sequential_1/dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2H
Fmodel/transformer_block_1/sequential_1/dense_2/Tensordot/concat_1/axis®
Amodel/transformer_block_1/sequential_1/dense_2/Tensordot/concat_1ConcatV2Jmodel/transformer_block_1/sequential_1/dense_2/Tensordot/GatherV2:output:0Imodel/transformer_block_1/sequential_1/dense_2/Tensordot/Const_2:output:0Omodel/transformer_block_1/sequential_1/dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2C
Amodel/transformer_block_1/sequential_1/dense_2/Tensordot/concat_1ћ
8model/transformer_block_1/sequential_1/dense_2/TensordotReshapeImodel/transformer_block_1/sequential_1/dense_2/Tensordot/MatMul:product:0Jmodel/transformer_block_1/sequential_1/dense_2/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€#@2:
8model/transformer_block_1/sequential_1/dense_2/TensordotЩ
Emodel/transformer_block_1/sequential_1/dense_2/BiasAdd/ReadVariableOpReadVariableOpNmodel_transformer_block_1_sequential_1_dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02G
Emodel/transformer_block_1/sequential_1/dense_2/BiasAdd/ReadVariableOp√
6model/transformer_block_1/sequential_1/dense_2/BiasAddBiasAddAmodel/transformer_block_1/sequential_1/dense_2/Tensordot:output:0Mmodel/transformer_block_1/sequential_1/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€#@28
6model/transformer_block_1/sequential_1/dense_2/BiasAddй
3model/transformer_block_1/sequential_1/dense_2/ReluRelu?model/transformer_block_1/sequential_1/dense_2/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€#@25
3model/transformer_block_1/sequential_1/dense_2/Relu£
Gmodel/transformer_block_1/sequential_1/dense_3/Tensordot/ReadVariableOpReadVariableOpPmodel_transformer_block_1_sequential_1_dense_3_tensordot_readvariableop_resource*
_output_shapes

:@ *
dtype02I
Gmodel/transformer_block_1/sequential_1/dense_3/Tensordot/ReadVariableOp»
=model/transformer_block_1/sequential_1/dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2?
=model/transformer_block_1/sequential_1/dense_3/Tensordot/axesѕ
=model/transformer_block_1/sequential_1/dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2?
=model/transformer_block_1/sequential_1/dense_3/Tensordot/freeс
>model/transformer_block_1/sequential_1/dense_3/Tensordot/ShapeShapeAmodel/transformer_block_1/sequential_1/dense_2/Relu:activations:0*
T0*
_output_shapes
:2@
>model/transformer_block_1/sequential_1/dense_3/Tensordot/Shape“
Fmodel/transformer_block_1/sequential_1/dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2H
Fmodel/transformer_block_1/sequential_1/dense_3/Tensordot/GatherV2/axisЉ
Amodel/transformer_block_1/sequential_1/dense_3/Tensordot/GatherV2GatherV2Gmodel/transformer_block_1/sequential_1/dense_3/Tensordot/Shape:output:0Fmodel/transformer_block_1/sequential_1/dense_3/Tensordot/free:output:0Omodel/transformer_block_1/sequential_1/dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2C
Amodel/transformer_block_1/sequential_1/dense_3/Tensordot/GatherV2÷
Hmodel/transformer_block_1/sequential_1/dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2J
Hmodel/transformer_block_1/sequential_1/dense_3/Tensordot/GatherV2_1/axis¬
Cmodel/transformer_block_1/sequential_1/dense_3/Tensordot/GatherV2_1GatherV2Gmodel/transformer_block_1/sequential_1/dense_3/Tensordot/Shape:output:0Fmodel/transformer_block_1/sequential_1/dense_3/Tensordot/axes:output:0Qmodel/transformer_block_1/sequential_1/dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2E
Cmodel/transformer_block_1/sequential_1/dense_3/Tensordot/GatherV2_1 
>model/transformer_block_1/sequential_1/dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2@
>model/transformer_block_1/sequential_1/dense_3/Tensordot/ConstЉ
=model/transformer_block_1/sequential_1/dense_3/Tensordot/ProdProdJmodel/transformer_block_1/sequential_1/dense_3/Tensordot/GatherV2:output:0Gmodel/transformer_block_1/sequential_1/dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: 2?
=model/transformer_block_1/sequential_1/dense_3/Tensordot/Prodќ
@model/transformer_block_1/sequential_1/dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2B
@model/transformer_block_1/sequential_1/dense_3/Tensordot/Const_1ƒ
?model/transformer_block_1/sequential_1/dense_3/Tensordot/Prod_1ProdLmodel/transformer_block_1/sequential_1/dense_3/Tensordot/GatherV2_1:output:0Imodel/transformer_block_1/sequential_1/dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2A
?model/transformer_block_1/sequential_1/dense_3/Tensordot/Prod_1ќ
Dmodel/transformer_block_1/sequential_1/dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2F
Dmodel/transformer_block_1/sequential_1/dense_3/Tensordot/concat/axisЫ
?model/transformer_block_1/sequential_1/dense_3/Tensordot/concatConcatV2Fmodel/transformer_block_1/sequential_1/dense_3/Tensordot/free:output:0Fmodel/transformer_block_1/sequential_1/dense_3/Tensordot/axes:output:0Mmodel/transformer_block_1/sequential_1/dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2A
?model/transformer_block_1/sequential_1/dense_3/Tensordot/concat»
>model/transformer_block_1/sequential_1/dense_3/Tensordot/stackPackFmodel/transformer_block_1/sequential_1/dense_3/Tensordot/Prod:output:0Hmodel/transformer_block_1/sequential_1/dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2@
>model/transformer_block_1/sequential_1/dense_3/Tensordot/stackЎ
Bmodel/transformer_block_1/sequential_1/dense_3/Tensordot/transpose	TransposeAmodel/transformer_block_1/sequential_1/dense_2/Relu:activations:0Hmodel/transformer_block_1/sequential_1/dense_3/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€#@2D
Bmodel/transformer_block_1/sequential_1/dense_3/Tensordot/transposeџ
@model/transformer_block_1/sequential_1/dense_3/Tensordot/ReshapeReshapeFmodel/transformer_block_1/sequential_1/dense_3/Tensordot/transpose:y:0Gmodel/transformer_block_1/sequential_1/dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2B
@model/transformer_block_1/sequential_1/dense_3/Tensordot/ReshapeЏ
?model/transformer_block_1/sequential_1/dense_3/Tensordot/MatMulMatMulImodel/transformer_block_1/sequential_1/dense_3/Tensordot/Reshape:output:0Omodel/transformer_block_1/sequential_1/dense_3/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2A
?model/transformer_block_1/sequential_1/dense_3/Tensordot/MatMulќ
@model/transformer_block_1/sequential_1/dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2B
@model/transformer_block_1/sequential_1/dense_3/Tensordot/Const_2“
Fmodel/transformer_block_1/sequential_1/dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2H
Fmodel/transformer_block_1/sequential_1/dense_3/Tensordot/concat_1/axis®
Amodel/transformer_block_1/sequential_1/dense_3/Tensordot/concat_1ConcatV2Jmodel/transformer_block_1/sequential_1/dense_3/Tensordot/GatherV2:output:0Imodel/transformer_block_1/sequential_1/dense_3/Tensordot/Const_2:output:0Omodel/transformer_block_1/sequential_1/dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2C
Amodel/transformer_block_1/sequential_1/dense_3/Tensordot/concat_1ћ
8model/transformer_block_1/sequential_1/dense_3/TensordotReshapeImodel/transformer_block_1/sequential_1/dense_3/Tensordot/MatMul:product:0Jmodel/transformer_block_1/sequential_1/dense_3/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€# 2:
8model/transformer_block_1/sequential_1/dense_3/TensordotЩ
Emodel/transformer_block_1/sequential_1/dense_3/BiasAdd/ReadVariableOpReadVariableOpNmodel_transformer_block_1_sequential_1_dense_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02G
Emodel/transformer_block_1/sequential_1/dense_3/BiasAdd/ReadVariableOp√
6model/transformer_block_1/sequential_1/dense_3/BiasAddBiasAddAmodel/transformer_block_1/sequential_1/dense_3/Tensordot:output:0Mmodel/transformer_block_1/sequential_1/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€# 28
6model/transformer_block_1/sequential_1/dense_3/BiasAddя
,model/transformer_block_1/dropout_3/IdentityIdentity?model/transformer_block_1/sequential_1/dense_3/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€# 2.
,model/transformer_block_1/dropout_3/Identityэ
model/transformer_block_1/add_1AddV2Cmodel/transformer_block_1/layer_normalization_2/batchnorm/add_1:z:05model/transformer_block_1/dropout_3/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€# 2!
model/transformer_block_1/add_1к
Nmodel/transformer_block_1/layer_normalization_3/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2P
Nmodel/transformer_block_1/layer_normalization_3/moments/mean/reduction_indices…
<model/transformer_block_1/layer_normalization_3/moments/meanMean#model/transformer_block_1/add_1:z:0Wmodel/transformer_block_1/layer_normalization_3/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€#*
	keep_dims(2>
<model/transformer_block_1/layer_normalization_3/moments/meanЩ
Dmodel/transformer_block_1/layer_normalization_3/moments/StopGradientStopGradientEmodel/transformer_block_1/layer_normalization_3/moments/mean:output:0*
T0*+
_output_shapes
:€€€€€€€€€#2F
Dmodel/transformer_block_1/layer_normalization_3/moments/StopGradient’
Imodel/transformer_block_1/layer_normalization_3/moments/SquaredDifferenceSquaredDifference#model/transformer_block_1/add_1:z:0Mmodel/transformer_block_1/layer_normalization_3/moments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€# 2K
Imodel/transformer_block_1/layer_normalization_3/moments/SquaredDifferenceт
Rmodel/transformer_block_1/layer_normalization_3/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2T
Rmodel/transformer_block_1/layer_normalization_3/moments/variance/reduction_indices€
@model/transformer_block_1/layer_normalization_3/moments/varianceMeanMmodel/transformer_block_1/layer_normalization_3/moments/SquaredDifference:z:0[model/transformer_block_1/layer_normalization_3/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€#*
	keep_dims(2B
@model/transformer_block_1/layer_normalization_3/moments/variance«
?model/transformer_block_1/layer_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж52A
?model/transformer_block_1/layer_normalization_3/batchnorm/add/y“
=model/transformer_block_1/layer_normalization_3/batchnorm/addAddV2Imodel/transformer_block_1/layer_normalization_3/moments/variance:output:0Hmodel/transformer_block_1/layer_normalization_3/batchnorm/add/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€#2?
=model/transformer_block_1/layer_normalization_3/batchnorm/addД
?model/transformer_block_1/layer_normalization_3/batchnorm/RsqrtRsqrtAmodel/transformer_block_1/layer_normalization_3/batchnorm/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€#2A
?model/transformer_block_1/layer_normalization_3/batchnorm/RsqrtЃ
Lmodel/transformer_block_1/layer_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOpUmodel_transformer_block_1_layer_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02N
Lmodel/transformer_block_1/layer_normalization_3/batchnorm/mul/ReadVariableOp÷
=model/transformer_block_1/layer_normalization_3/batchnorm/mulMulCmodel/transformer_block_1/layer_normalization_3/batchnorm/Rsqrt:y:0Tmodel/transformer_block_1/layer_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€# 2?
=model/transformer_block_1/layer_normalization_3/batchnorm/mulІ
?model/transformer_block_1/layer_normalization_3/batchnorm/mul_1Mul#model/transformer_block_1/add_1:z:0Amodel/transformer_block_1/layer_normalization_3/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2A
?model/transformer_block_1/layer_normalization_3/batchnorm/mul_1…
?model/transformer_block_1/layer_normalization_3/batchnorm/mul_2MulEmodel/transformer_block_1/layer_normalization_3/moments/mean:output:0Amodel/transformer_block_1/layer_normalization_3/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2A
?model/transformer_block_1/layer_normalization_3/batchnorm/mul_2Ґ
Hmodel/transformer_block_1/layer_normalization_3/batchnorm/ReadVariableOpReadVariableOpQmodel_transformer_block_1_layer_normalization_3_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02J
Hmodel/transformer_block_1/layer_normalization_3/batchnorm/ReadVariableOp“
=model/transformer_block_1/layer_normalization_3/batchnorm/subSubPmodel/transformer_block_1/layer_normalization_3/batchnorm/ReadVariableOp:value:0Cmodel/transformer_block_1/layer_normalization_3/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2?
=model/transformer_block_1/layer_normalization_3/batchnorm/sub…
?model/transformer_block_1/layer_normalization_3/batchnorm/add_1AddV2Cmodel/transformer_block_1/layer_normalization_3/batchnorm/mul_1:z:0Amodel/transformer_block_1/layer_normalization_3/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2A
?model/transformer_block_1/layer_normalization_3/batchnorm/add_1{
model/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€`  2
model/flatten/Constѕ
model/flatten/ReshapeReshapeCmodel/transformer_block_1/layer_normalization_3/batchnorm/add_1:z:0model/flatten/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€а2
model/flatten/ReshapeА
model/concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
model/concatenate/concat/axisЌ
model/concatenate/concatConcatV2model/flatten/Reshape:output:0input_2&model/concatenate/concat/axis:output:0*
N*
T0*(
_output_shapes
:€€€€€€€€€и2
model/concatenate/concatЄ
#model/dense_4/MatMul/ReadVariableOpReadVariableOp,model_dense_4_matmul_readvariableop_resource*
_output_shapes
:	и@*
dtype02%
#model/dense_4/MatMul/ReadVariableOpЄ
model/dense_4/MatMulMatMul!model/concatenate/concat:output:0+model/dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
model/dense_4/MatMulґ
$model/dense_4/BiasAdd/ReadVariableOpReadVariableOp-model_dense_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02&
$model/dense_4/BiasAdd/ReadVariableOpє
model/dense_4/BiasAddBiasAddmodel/dense_4/MatMul:product:0,model/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
model/dense_4/BiasAddВ
model/dense_4/ReluRelumodel/dense_4/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
model/dense_4/ReluФ
model/dropout_4/IdentityIdentity model/dense_4/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€@2
model/dropout_4/IdentityЈ
#model/dense_5/MatMul/ReadVariableOpReadVariableOp,model_dense_5_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02%
#model/dense_5/MatMul/ReadVariableOpЄ
model/dense_5/MatMulMatMul!model/dropout_4/Identity:output:0+model/dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
model/dense_5/MatMulґ
$model/dense_5/BiasAdd/ReadVariableOpReadVariableOp-model_dense_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02&
$model/dense_5/BiasAdd/ReadVariableOpє
model/dense_5/BiasAddBiasAddmodel/dense_5/MatMul:product:0,model/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
model/dense_5/BiasAddВ
model/dense_5/ReluRelumodel/dense_5/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
model/dense_5/ReluФ
model/dropout_5/IdentityIdentity model/dense_5/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€@2
model/dropout_5/IdentityЈ
#model/dense_6/MatMul/ReadVariableOpReadVariableOp,model_dense_6_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02%
#model/dense_6/MatMul/ReadVariableOpЄ
model/dense_6/MatMulMatMul!model/dropout_5/Identity:output:0+model/dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
model/dense_6/MatMulґ
$model/dense_6/BiasAdd/ReadVariableOpReadVariableOp-model_dense_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02&
$model/dense_6/BiasAdd/ReadVariableOpє
model/dense_6/BiasAddBiasAddmodel/dense_6/MatMul:product:0,model/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
model/dense_6/BiasAddЅ
IdentityIdentitymodel/dense_6/BiasAdd:output:03^model/batch_normalization/batchnorm/ReadVariableOp5^model/batch_normalization/batchnorm/ReadVariableOp_15^model/batch_normalization/batchnorm/ReadVariableOp_27^model/batch_normalization/batchnorm/mul/ReadVariableOp5^model/batch_normalization_1/batchnorm/ReadVariableOp7^model/batch_normalization_1/batchnorm/ReadVariableOp_17^model/batch_normalization_1/batchnorm/ReadVariableOp_29^model/batch_normalization_1/batchnorm/mul/ReadVariableOp$^model/conv1d/BiasAdd/ReadVariableOp0^model/conv1d/conv1d/ExpandDims_1/ReadVariableOp&^model/conv1d_1/BiasAdd/ReadVariableOp2^model/conv1d_1/conv1d/ExpandDims_1/ReadVariableOp%^model/dense_4/BiasAdd/ReadVariableOp$^model/dense_4/MatMul/ReadVariableOp%^model/dense_5/BiasAdd/ReadVariableOp$^model/dense_5/MatMul/ReadVariableOp%^model/dense_6/BiasAdd/ReadVariableOp$^model/dense_6/MatMul/ReadVariableOp>^model/token_and_position_embedding/embedding/embedding_lookup@^model/token_and_position_embedding/embedding_1/embedding_lookupI^model/transformer_block_1/layer_normalization_2/batchnorm/ReadVariableOpM^model/transformer_block_1/layer_normalization_2/batchnorm/mul/ReadVariableOpI^model/transformer_block_1/layer_normalization_3/batchnorm/ReadVariableOpM^model/transformer_block_1/layer_normalization_3/batchnorm/mul/ReadVariableOpU^model/transformer_block_1/multi_head_attention_1/attention_output/add/ReadVariableOp_^model/transformer_block_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpH^model/transformer_block_1/multi_head_attention_1/key/add/ReadVariableOpR^model/transformer_block_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpJ^model/transformer_block_1/multi_head_attention_1/query/add/ReadVariableOpT^model/transformer_block_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpJ^model/transformer_block_1/multi_head_attention_1/value/add/ReadVariableOpT^model/transformer_block_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpF^model/transformer_block_1/sequential_1/dense_2/BiasAdd/ReadVariableOpH^model/transformer_block_1/sequential_1/dense_2/Tensordot/ReadVariableOpF^model/transformer_block_1/sequential_1/dense_3/BiasAdd/ReadVariableOpH^model/transformer_block_1/sequential_1/dense_3/Tensordot/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*ћ
_input_shapesЇ
Ј:€€€€€€€€€ДR:€€€€€€€€€::::::::::::::::::::::::::::::::::::2h
2model/batch_normalization/batchnorm/ReadVariableOp2model/batch_normalization/batchnorm/ReadVariableOp2l
4model/batch_normalization/batchnorm/ReadVariableOp_14model/batch_normalization/batchnorm/ReadVariableOp_12l
4model/batch_normalization/batchnorm/ReadVariableOp_24model/batch_normalization/batchnorm/ReadVariableOp_22p
6model/batch_normalization/batchnorm/mul/ReadVariableOp6model/batch_normalization/batchnorm/mul/ReadVariableOp2l
4model/batch_normalization_1/batchnorm/ReadVariableOp4model/batch_normalization_1/batchnorm/ReadVariableOp2p
6model/batch_normalization_1/batchnorm/ReadVariableOp_16model/batch_normalization_1/batchnorm/ReadVariableOp_12p
6model/batch_normalization_1/batchnorm/ReadVariableOp_26model/batch_normalization_1/batchnorm/ReadVariableOp_22t
8model/batch_normalization_1/batchnorm/mul/ReadVariableOp8model/batch_normalization_1/batchnorm/mul/ReadVariableOp2J
#model/conv1d/BiasAdd/ReadVariableOp#model/conv1d/BiasAdd/ReadVariableOp2b
/model/conv1d/conv1d/ExpandDims_1/ReadVariableOp/model/conv1d/conv1d/ExpandDims_1/ReadVariableOp2N
%model/conv1d_1/BiasAdd/ReadVariableOp%model/conv1d_1/BiasAdd/ReadVariableOp2f
1model/conv1d_1/conv1d/ExpandDims_1/ReadVariableOp1model/conv1d_1/conv1d/ExpandDims_1/ReadVariableOp2L
$model/dense_4/BiasAdd/ReadVariableOp$model/dense_4/BiasAdd/ReadVariableOp2J
#model/dense_4/MatMul/ReadVariableOp#model/dense_4/MatMul/ReadVariableOp2L
$model/dense_5/BiasAdd/ReadVariableOp$model/dense_5/BiasAdd/ReadVariableOp2J
#model/dense_5/MatMul/ReadVariableOp#model/dense_5/MatMul/ReadVariableOp2L
$model/dense_6/BiasAdd/ReadVariableOp$model/dense_6/BiasAdd/ReadVariableOp2J
#model/dense_6/MatMul/ReadVariableOp#model/dense_6/MatMul/ReadVariableOp2~
=model/token_and_position_embedding/embedding/embedding_lookup=model/token_and_position_embedding/embedding/embedding_lookup2В
?model/token_and_position_embedding/embedding_1/embedding_lookup?model/token_and_position_embedding/embedding_1/embedding_lookup2Ф
Hmodel/transformer_block_1/layer_normalization_2/batchnorm/ReadVariableOpHmodel/transformer_block_1/layer_normalization_2/batchnorm/ReadVariableOp2Ь
Lmodel/transformer_block_1/layer_normalization_2/batchnorm/mul/ReadVariableOpLmodel/transformer_block_1/layer_normalization_2/batchnorm/mul/ReadVariableOp2Ф
Hmodel/transformer_block_1/layer_normalization_3/batchnorm/ReadVariableOpHmodel/transformer_block_1/layer_normalization_3/batchnorm/ReadVariableOp2Ь
Lmodel/transformer_block_1/layer_normalization_3/batchnorm/mul/ReadVariableOpLmodel/transformer_block_1/layer_normalization_3/batchnorm/mul/ReadVariableOp2ђ
Tmodel/transformer_block_1/multi_head_attention_1/attention_output/add/ReadVariableOpTmodel/transformer_block_1/multi_head_attention_1/attention_output/add/ReadVariableOp2ј
^model/transformer_block_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp^model/transformer_block_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp2Т
Gmodel/transformer_block_1/multi_head_attention_1/key/add/ReadVariableOpGmodel/transformer_block_1/multi_head_attention_1/key/add/ReadVariableOp2¶
Qmodel/transformer_block_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpQmodel/transformer_block_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp2Ц
Imodel/transformer_block_1/multi_head_attention_1/query/add/ReadVariableOpImodel/transformer_block_1/multi_head_attention_1/query/add/ReadVariableOp2™
Smodel/transformer_block_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpSmodel/transformer_block_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp2Ц
Imodel/transformer_block_1/multi_head_attention_1/value/add/ReadVariableOpImodel/transformer_block_1/multi_head_attention_1/value/add/ReadVariableOp2™
Smodel/transformer_block_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpSmodel/transformer_block_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp2О
Emodel/transformer_block_1/sequential_1/dense_2/BiasAdd/ReadVariableOpEmodel/transformer_block_1/sequential_1/dense_2/BiasAdd/ReadVariableOp2Т
Gmodel/transformer_block_1/sequential_1/dense_2/Tensordot/ReadVariableOpGmodel/transformer_block_1/sequential_1/dense_2/Tensordot/ReadVariableOp2О
Emodel/transformer_block_1/sequential_1/dense_3/BiasAdd/ReadVariableOpEmodel/transformer_block_1/sequential_1/dense_3/BiasAdd/ReadVariableOp2Т
Gmodel/transformer_block_1/sequential_1/dense_3/Tensordot/ReadVariableOpGmodel/transformer_block_1/sequential_1/dense_3/Tensordot/ReadVariableOp:Q M
(
_output_shapes
:€€€€€€€€€ДR
!
_user_specified_name	input_1:PL
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	input_2
я
}
(__inference_dense_4_layer_call_fn_102313

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_1001332
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€и::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€и
 
_user_specified_nameinputs
з
З
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_99657

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identityИҐbatchnorm/ReadVariableOpҐbatchnorm/ReadVariableOp_1Ґbatchnorm/ReadVariableOp_2Ґbatchnorm/mul/ReadVariableOpТ
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2
batchnorm/add/yИ
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
: 2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: 2
batchnorm/RsqrtЮ
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/mul/ReadVariableOpЕ
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2
batchnorm/mulz
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2
batchnorm/mul_1Ш
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp_1Е
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
: 2
batchnorm/mul_2Ш
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp_2Г
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2
batchnorm/subЙ
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2
batchnorm/add_1я
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*+
_output_shapes
:€€€€€€€€€# 2

Identity"
identityIdentity:output:0*:
_input_shapes)
':€€€€€€€€€# ::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€# 
 
_user_specified_nameinputs
Ћ
¶
,__inference_sequential_1_layer_call_fn_99372
dense_2_input
unknown
	unknown_0
	unknown_1
	unknown_2
identityИҐStatefulPartitionedCallЯ
StatefulPartitionedCallStatefulPartitionedCalldense_2_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€# *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_993612
StatefulPartitionedCallТ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:€€€€€€€€€# 2

Identity"
identityIdentity:output:0*:
_input_shapes)
':€€€€€€€€€# ::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:€€€€€€€€€# 
'
_user_specified_namedense_2_input
љ
k
?__inference_add_layer_call_and_return_conditional_losses_101914
inputs_0
inputs_1
identity]
addAddV2inputs_0inputs_1*
T0*+
_output_shapes
:€€€€€€€€€# 2
add_
IdentityIdentityadd:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2

Identity"
identityIdentity:output:0*A
_input_shapes0
.:€€€€€€€€€# :€€€€€€€€€# :U Q
+
_output_shapes
:€€€€€€€€€# 
"
_user_specified_name
inputs/0:UQ
+
_output_shapes
:€€€€€€€€€# 
"
_user_specified_name
inputs/1
Ѕ
ы
W__inference_token_and_position_embedding_layer_call_and_return_conditional_losses_99428
x&
"embedding_1_embedding_lookup_99415$
 embedding_embedding_lookup_99421
identityИҐembedding/embedding_lookupҐembedding_1/embedding_lookup?
ShapeShapex*
T0*
_output_shapes
:2
Shape}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
range/start\
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
range/deltaА
rangeRangerange/start:output:0strided_slice:output:0range/delta:output:0*#
_output_shapes
:€€€€€€€€€2
range≠
embedding_1/embedding_lookupResourceGather"embedding_1_embedding_lookup_99415range:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*5
_class+
)'loc:@embedding_1/embedding_lookup/99415*'
_output_shapes
:€€€€€€€€€ *
dtype02
embedding_1/embedding_lookupШ
%embedding_1/embedding_lookup/IdentityIdentity%embedding_1/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*5
_class+
)'loc:@embedding_1/embedding_lookup/99415*'
_output_shapes
:€€€€€€€€€ 2'
%embedding_1/embedding_lookup/Identityј
'embedding_1/embedding_lookup/Identity_1Identity.embedding_1/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2)
'embedding_1/embedding_lookup/Identity_1m
embedding/CastCastx*

DstT0*

SrcT0*(
_output_shapes
:€€€€€€€€€ДR2
embedding/CastЃ
embedding/embedding_lookupResourceGather embedding_embedding_lookup_99421embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*3
_class)
'%loc:@embedding/embedding_lookup/99421*,
_output_shapes
:€€€€€€€€€ДR *
dtype02
embedding/embedding_lookupХ
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*3
_class)
'%loc:@embedding/embedding_lookup/99421*,
_output_shapes
:€€€€€€€€€ДR 2%
#embedding/embedding_lookup/Identityњ
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:€€€€€€€€€ДR 2'
%embedding/embedding_lookup/Identity_1ђ
addAddV2.embedding/embedding_lookup/Identity_1:output:00embedding_1/embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:€€€€€€€€€ДR 2
addЬ
IdentityIdentityadd:z:0^embedding/embedding_lookup^embedding_1/embedding_lookup*
T0*,
_output_shapes
:€€€€€€€€€ДR 2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€ДR::28
embedding/embedding_lookupembedding/embedding_lookup2<
embedding_1/embedding_lookupembedding_1/embedding_lookup:K G
(
_output_shapes
:€€€€€€€€€ДR

_user_specified_namex
А№
—
N__inference_transformer_block_1_layer_call_and_return_conditional_losses_99983

inputsF
Bmulti_head_attention_1_query_einsum_einsum_readvariableop_resource<
8multi_head_attention_1_query_add_readvariableop_resourceD
@multi_head_attention_1_key_einsum_einsum_readvariableop_resource:
6multi_head_attention_1_key_add_readvariableop_resourceF
Bmulti_head_attention_1_value_einsum_einsum_readvariableop_resource<
8multi_head_attention_1_value_add_readvariableop_resourceQ
Mmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resourceG
Cmulti_head_attention_1_attention_output_add_readvariableop_resource?
;layer_normalization_2_batchnorm_mul_readvariableop_resource;
7layer_normalization_2_batchnorm_readvariableop_resource:
6sequential_1_dense_2_tensordot_readvariableop_resource8
4sequential_1_dense_2_biasadd_readvariableop_resource:
6sequential_1_dense_3_tensordot_readvariableop_resource8
4sequential_1_dense_3_biasadd_readvariableop_resource?
;layer_normalization_3_batchnorm_mul_readvariableop_resource;
7layer_normalization_3_batchnorm_readvariableop_resource
identityИҐ.layer_normalization_2/batchnorm/ReadVariableOpҐ2layer_normalization_2/batchnorm/mul/ReadVariableOpҐ.layer_normalization_3/batchnorm/ReadVariableOpҐ2layer_normalization_3/batchnorm/mul/ReadVariableOpҐ:multi_head_attention_1/attention_output/add/ReadVariableOpҐDmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpҐ-multi_head_attention_1/key/add/ReadVariableOpҐ7multi_head_attention_1/key/einsum/Einsum/ReadVariableOpҐ/multi_head_attention_1/query/add/ReadVariableOpҐ9multi_head_attention_1/query/einsum/Einsum/ReadVariableOpҐ/multi_head_attention_1/value/add/ReadVariableOpҐ9multi_head_attention_1/value/einsum/Einsum/ReadVariableOpҐ+sequential_1/dense_2/BiasAdd/ReadVariableOpҐ-sequential_1/dense_2/Tensordot/ReadVariableOpҐ+sequential_1/dense_3/BiasAdd/ReadVariableOpҐ-sequential_1/dense_3/Tensordot/ReadVariableOpэ
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02;
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOpН
*multi_head_attention_1/query/einsum/EinsumEinsuminputsAmulti_head_attention_1/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€# *
equationabc,cde->abde2,
*multi_head_attention_1/query/einsum/Einsumџ
/multi_head_attention_1/query/add/ReadVariableOpReadVariableOp8multi_head_attention_1_query_add_readvariableop_resource*
_output_shapes

: *
dtype021
/multi_head_attention_1/query/add/ReadVariableOpх
 multi_head_attention_1/query/addAddV23multi_head_attention_1/query/einsum/Einsum:output:07multi_head_attention_1/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€# 2"
 multi_head_attention_1/query/addч
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_1_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype029
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOpЗ
(multi_head_attention_1/key/einsum/EinsumEinsuminputs?multi_head_attention_1/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€# *
equationabc,cde->abde2*
(multi_head_attention_1/key/einsum/Einsum’
-multi_head_attention_1/key/add/ReadVariableOpReadVariableOp6multi_head_attention_1_key_add_readvariableop_resource*
_output_shapes

: *
dtype02/
-multi_head_attention_1/key/add/ReadVariableOpн
multi_head_attention_1/key/addAddV21multi_head_attention_1/key/einsum/Einsum:output:05multi_head_attention_1/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€# 2 
multi_head_attention_1/key/addэ
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02;
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOpН
*multi_head_attention_1/value/einsum/EinsumEinsuminputsAmulti_head_attention_1/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€# *
equationabc,cde->abde2,
*multi_head_attention_1/value/einsum/Einsumџ
/multi_head_attention_1/value/add/ReadVariableOpReadVariableOp8multi_head_attention_1_value_add_readvariableop_resource*
_output_shapes

: *
dtype021
/multi_head_attention_1/value/add/ReadVariableOpх
 multi_head_attention_1/value/addAddV23multi_head_attention_1/value/einsum/Einsum:output:07multi_head_attention_1/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€# 2"
 multi_head_attention_1/value/addБ
multi_head_attention_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *у5>2
multi_head_attention_1/Mul/y∆
multi_head_attention_1/MulMul$multi_head_attention_1/query/add:z:0%multi_head_attention_1/Mul/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€# 2
multi_head_attention_1/Mulь
$multi_head_attention_1/einsum/EinsumEinsum"multi_head_attention_1/key/add:z:0multi_head_attention_1/Mul:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€##*
equationaecd,abcd->acbe2&
$multi_head_attention_1/einsum/Einsumƒ
&multi_head_attention_1/softmax/SoftmaxSoftmax-multi_head_attention_1/einsum/Einsum:output:0*
T0*/
_output_shapes
:€€€€€€€€€##2(
&multi_head_attention_1/softmax/Softmax 
'multi_head_attention_1/dropout/IdentityIdentity0multi_head_attention_1/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:€€€€€€€€€##2)
'multi_head_attention_1/dropout/IdentityФ
&multi_head_attention_1/einsum_1/EinsumEinsum0multi_head_attention_1/dropout/Identity:output:0$multi_head_attention_1/value/add:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€# *
equationacbe,aecd->abcd2(
&multi_head_attention_1/einsum_1/EinsumЮ
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02F
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp”
5multi_head_attention_1/attention_output/einsum/EinsumEinsum/multi_head_attention_1/einsum_1/Einsum:output:0Lmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:€€€€€€€€€# *
equationabcd,cde->abe27
5multi_head_attention_1/attention_output/einsum/Einsumш
:multi_head_attention_1/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_1_attention_output_add_readvariableop_resource*
_output_shapes
: *
dtype02<
:multi_head_attention_1/attention_output/add/ReadVariableOpЭ
+multi_head_attention_1/attention_output/addAddV2>multi_head_attention_1/attention_output/einsum/Einsum:output:0Bmulti_head_attention_1/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€# 2-
+multi_head_attention_1/attention_output/addЫ
dropout_2/IdentityIdentity/multi_head_attention_1/attention_output/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2
dropout_2/Identityn
addAddV2inputsdropout_2/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€# 2
addґ
4layer_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:26
4layer_normalization_2/moments/mean/reduction_indicesя
"layer_normalization_2/moments/meanMeanadd:z:0=layer_normalization_2/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€#*
	keep_dims(2$
"layer_normalization_2/moments/meanЋ
*layer_normalization_2/moments/StopGradientStopGradient+layer_normalization_2/moments/mean:output:0*
T0*+
_output_shapes
:€€€€€€€€€#2,
*layer_normalization_2/moments/StopGradientл
/layer_normalization_2/moments/SquaredDifferenceSquaredDifferenceadd:z:03layer_normalization_2/moments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€# 21
/layer_normalization_2/moments/SquaredDifferenceЊ
8layer_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2:
8layer_normalization_2/moments/variance/reduction_indicesЧ
&layer_normalization_2/moments/varianceMean3layer_normalization_2/moments/SquaredDifference:z:0Alayer_normalization_2/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€#*
	keep_dims(2(
&layer_normalization_2/moments/varianceУ
%layer_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж52'
%layer_normalization_2/batchnorm/add/yк
#layer_normalization_2/batchnorm/addAddV2/layer_normalization_2/moments/variance:output:0.layer_normalization_2/batchnorm/add/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€#2%
#layer_normalization_2/batchnorm/addґ
%layer_normalization_2/batchnorm/RsqrtRsqrt'layer_normalization_2/batchnorm/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€#2'
%layer_normalization_2/batchnorm/Rsqrtа
2layer_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype024
2layer_normalization_2/batchnorm/mul/ReadVariableOpо
#layer_normalization_2/batchnorm/mulMul)layer_normalization_2/batchnorm/Rsqrt:y:0:layer_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€# 2%
#layer_normalization_2/batchnorm/mulљ
%layer_normalization_2/batchnorm/mul_1Muladd:z:0'layer_normalization_2/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2'
%layer_normalization_2/batchnorm/mul_1б
%layer_normalization_2/batchnorm/mul_2Mul+layer_normalization_2/moments/mean:output:0'layer_normalization_2/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2'
%layer_normalization_2/batchnorm/mul_2‘
.layer_normalization_2/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_2_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype020
.layer_normalization_2/batchnorm/ReadVariableOpк
#layer_normalization_2/batchnorm/subSub6layer_normalization_2/batchnorm/ReadVariableOp:value:0)layer_normalization_2/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2%
#layer_normalization_2/batchnorm/subб
%layer_normalization_2/batchnorm/add_1AddV2)layer_normalization_2/batchnorm/mul_1:z:0'layer_normalization_2/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2'
%layer_normalization_2/batchnorm/add_1’
-sequential_1/dense_2/Tensordot/ReadVariableOpReadVariableOp6sequential_1_dense_2_tensordot_readvariableop_resource*
_output_shapes

: @*
dtype02/
-sequential_1/dense_2/Tensordot/ReadVariableOpФ
#sequential_1/dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2%
#sequential_1/dense_2/Tensordot/axesЫ
#sequential_1/dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2%
#sequential_1/dense_2/Tensordot/free•
$sequential_1/dense_2/Tensordot/ShapeShape)layer_normalization_2/batchnorm/add_1:z:0*
T0*
_output_shapes
:2&
$sequential_1/dense_2/Tensordot/ShapeЮ
,sequential_1/dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_1/dense_2/Tensordot/GatherV2/axisЇ
'sequential_1/dense_2/Tensordot/GatherV2GatherV2-sequential_1/dense_2/Tensordot/Shape:output:0,sequential_1/dense_2/Tensordot/free:output:05sequential_1/dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2)
'sequential_1/dense_2/Tensordot/GatherV2Ґ
.sequential_1/dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 20
.sequential_1/dense_2/Tensordot/GatherV2_1/axisј
)sequential_1/dense_2/Tensordot/GatherV2_1GatherV2-sequential_1/dense_2/Tensordot/Shape:output:0,sequential_1/dense_2/Tensordot/axes:output:07sequential_1/dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2+
)sequential_1/dense_2/Tensordot/GatherV2_1Ц
$sequential_1/dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2&
$sequential_1/dense_2/Tensordot/Const‘
#sequential_1/dense_2/Tensordot/ProdProd0sequential_1/dense_2/Tensordot/GatherV2:output:0-sequential_1/dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: 2%
#sequential_1/dense_2/Tensordot/ProdЪ
&sequential_1/dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential_1/dense_2/Tensordot/Const_1№
%sequential_1/dense_2/Tensordot/Prod_1Prod2sequential_1/dense_2/Tensordot/GatherV2_1:output:0/sequential_1/dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2'
%sequential_1/dense_2/Tensordot/Prod_1Ъ
*sequential_1/dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*sequential_1/dense_2/Tensordot/concat/axisЩ
%sequential_1/dense_2/Tensordot/concatConcatV2,sequential_1/dense_2/Tensordot/free:output:0,sequential_1/dense_2/Tensordot/axes:output:03sequential_1/dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2'
%sequential_1/dense_2/Tensordot/concatа
$sequential_1/dense_2/Tensordot/stackPack,sequential_1/dense_2/Tensordot/Prod:output:0.sequential_1/dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_1/dense_2/Tensordot/stackт
(sequential_1/dense_2/Tensordot/transpose	Transpose)layer_normalization_2/batchnorm/add_1:z:0.sequential_1/dense_2/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€# 2*
(sequential_1/dense_2/Tensordot/transposeу
&sequential_1/dense_2/Tensordot/ReshapeReshape,sequential_1/dense_2/Tensordot/transpose:y:0-sequential_1/dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2(
&sequential_1/dense_2/Tensordot/Reshapeт
%sequential_1/dense_2/Tensordot/MatMulMatMul/sequential_1/dense_2/Tensordot/Reshape:output:05sequential_1/dense_2/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2'
%sequential_1/dense_2/Tensordot/MatMulЪ
&sequential_1/dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2(
&sequential_1/dense_2/Tensordot/Const_2Ю
,sequential_1/dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_1/dense_2/Tensordot/concat_1/axis¶
'sequential_1/dense_2/Tensordot/concat_1ConcatV20sequential_1/dense_2/Tensordot/GatherV2:output:0/sequential_1/dense_2/Tensordot/Const_2:output:05sequential_1/dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2)
'sequential_1/dense_2/Tensordot/concat_1д
sequential_1/dense_2/TensordotReshape/sequential_1/dense_2/Tensordot/MatMul:product:00sequential_1/dense_2/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€#@2 
sequential_1/dense_2/TensordotЋ
+sequential_1/dense_2/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02-
+sequential_1/dense_2/BiasAdd/ReadVariableOpџ
sequential_1/dense_2/BiasAddBiasAdd'sequential_1/dense_2/Tensordot:output:03sequential_1/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€#@2
sequential_1/dense_2/BiasAddЫ
sequential_1/dense_2/ReluRelu%sequential_1/dense_2/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€#@2
sequential_1/dense_2/Relu’
-sequential_1/dense_3/Tensordot/ReadVariableOpReadVariableOp6sequential_1_dense_3_tensordot_readvariableop_resource*
_output_shapes

:@ *
dtype02/
-sequential_1/dense_3/Tensordot/ReadVariableOpФ
#sequential_1/dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2%
#sequential_1/dense_3/Tensordot/axesЫ
#sequential_1/dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2%
#sequential_1/dense_3/Tensordot/free£
$sequential_1/dense_3/Tensordot/ShapeShape'sequential_1/dense_2/Relu:activations:0*
T0*
_output_shapes
:2&
$sequential_1/dense_3/Tensordot/ShapeЮ
,sequential_1/dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_1/dense_3/Tensordot/GatherV2/axisЇ
'sequential_1/dense_3/Tensordot/GatherV2GatherV2-sequential_1/dense_3/Tensordot/Shape:output:0,sequential_1/dense_3/Tensordot/free:output:05sequential_1/dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2)
'sequential_1/dense_3/Tensordot/GatherV2Ґ
.sequential_1/dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 20
.sequential_1/dense_3/Tensordot/GatherV2_1/axisј
)sequential_1/dense_3/Tensordot/GatherV2_1GatherV2-sequential_1/dense_3/Tensordot/Shape:output:0,sequential_1/dense_3/Tensordot/axes:output:07sequential_1/dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2+
)sequential_1/dense_3/Tensordot/GatherV2_1Ц
$sequential_1/dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2&
$sequential_1/dense_3/Tensordot/Const‘
#sequential_1/dense_3/Tensordot/ProdProd0sequential_1/dense_3/Tensordot/GatherV2:output:0-sequential_1/dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: 2%
#sequential_1/dense_3/Tensordot/ProdЪ
&sequential_1/dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential_1/dense_3/Tensordot/Const_1№
%sequential_1/dense_3/Tensordot/Prod_1Prod2sequential_1/dense_3/Tensordot/GatherV2_1:output:0/sequential_1/dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2'
%sequential_1/dense_3/Tensordot/Prod_1Ъ
*sequential_1/dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*sequential_1/dense_3/Tensordot/concat/axisЩ
%sequential_1/dense_3/Tensordot/concatConcatV2,sequential_1/dense_3/Tensordot/free:output:0,sequential_1/dense_3/Tensordot/axes:output:03sequential_1/dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2'
%sequential_1/dense_3/Tensordot/concatа
$sequential_1/dense_3/Tensordot/stackPack,sequential_1/dense_3/Tensordot/Prod:output:0.sequential_1/dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_1/dense_3/Tensordot/stackр
(sequential_1/dense_3/Tensordot/transpose	Transpose'sequential_1/dense_2/Relu:activations:0.sequential_1/dense_3/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€#@2*
(sequential_1/dense_3/Tensordot/transposeу
&sequential_1/dense_3/Tensordot/ReshapeReshape,sequential_1/dense_3/Tensordot/transpose:y:0-sequential_1/dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2(
&sequential_1/dense_3/Tensordot/Reshapeт
%sequential_1/dense_3/Tensordot/MatMulMatMul/sequential_1/dense_3/Tensordot/Reshape:output:05sequential_1/dense_3/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2'
%sequential_1/dense_3/Tensordot/MatMulЪ
&sequential_1/dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential_1/dense_3/Tensordot/Const_2Ю
,sequential_1/dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_1/dense_3/Tensordot/concat_1/axis¶
'sequential_1/dense_3/Tensordot/concat_1ConcatV20sequential_1/dense_3/Tensordot/GatherV2:output:0/sequential_1/dense_3/Tensordot/Const_2:output:05sequential_1/dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2)
'sequential_1/dense_3/Tensordot/concat_1д
sequential_1/dense_3/TensordotReshape/sequential_1/dense_3/Tensordot/MatMul:product:00sequential_1/dense_3/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€# 2 
sequential_1/dense_3/TensordotЋ
+sequential_1/dense_3/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02-
+sequential_1/dense_3/BiasAdd/ReadVariableOpџ
sequential_1/dense_3/BiasAddBiasAdd'sequential_1/dense_3/Tensordot:output:03sequential_1/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€# 2
sequential_1/dense_3/BiasAddС
dropout_3/IdentityIdentity%sequential_1/dense_3/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€# 2
dropout_3/IdentityХ
add_1AddV2)layer_normalization_2/batchnorm/add_1:z:0dropout_3/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€# 2
add_1ґ
4layer_normalization_3/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:26
4layer_normalization_3/moments/mean/reduction_indicesб
"layer_normalization_3/moments/meanMean	add_1:z:0=layer_normalization_3/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€#*
	keep_dims(2$
"layer_normalization_3/moments/meanЋ
*layer_normalization_3/moments/StopGradientStopGradient+layer_normalization_3/moments/mean:output:0*
T0*+
_output_shapes
:€€€€€€€€€#2,
*layer_normalization_3/moments/StopGradientн
/layer_normalization_3/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_3/moments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€# 21
/layer_normalization_3/moments/SquaredDifferenceЊ
8layer_normalization_3/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2:
8layer_normalization_3/moments/variance/reduction_indicesЧ
&layer_normalization_3/moments/varianceMean3layer_normalization_3/moments/SquaredDifference:z:0Alayer_normalization_3/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€#*
	keep_dims(2(
&layer_normalization_3/moments/varianceУ
%layer_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж52'
%layer_normalization_3/batchnorm/add/yк
#layer_normalization_3/batchnorm/addAddV2/layer_normalization_3/moments/variance:output:0.layer_normalization_3/batchnorm/add/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€#2%
#layer_normalization_3/batchnorm/addґ
%layer_normalization_3/batchnorm/RsqrtRsqrt'layer_normalization_3/batchnorm/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€#2'
%layer_normalization_3/batchnorm/Rsqrtа
2layer_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype024
2layer_normalization_3/batchnorm/mul/ReadVariableOpо
#layer_normalization_3/batchnorm/mulMul)layer_normalization_3/batchnorm/Rsqrt:y:0:layer_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€# 2%
#layer_normalization_3/batchnorm/mulњ
%layer_normalization_3/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_3/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2'
%layer_normalization_3/batchnorm/mul_1б
%layer_normalization_3/batchnorm/mul_2Mul+layer_normalization_3/moments/mean:output:0'layer_normalization_3/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2'
%layer_normalization_3/batchnorm/mul_2‘
.layer_normalization_3/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_3_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype020
.layer_normalization_3/batchnorm/ReadVariableOpк
#layer_normalization_3/batchnorm/subSub6layer_normalization_3/batchnorm/ReadVariableOp:value:0)layer_normalization_3/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2%
#layer_normalization_3/batchnorm/subб
%layer_normalization_3/batchnorm/add_1AddV2)layer_normalization_3/batchnorm/mul_1:z:0'layer_normalization_3/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2'
%layer_normalization_3/batchnorm/add_1”
IdentityIdentity)layer_normalization_3/batchnorm/add_1:z:0/^layer_normalization_2/batchnorm/ReadVariableOp3^layer_normalization_2/batchnorm/mul/ReadVariableOp/^layer_normalization_3/batchnorm/ReadVariableOp3^layer_normalization_3/batchnorm/mul/ReadVariableOp;^multi_head_attention_1/attention_output/add/ReadVariableOpE^multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_1/key/add/ReadVariableOp8^multi_head_attention_1/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/query/add/ReadVariableOp:^multi_head_attention_1/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/value/add/ReadVariableOp:^multi_head_attention_1/value/einsum/Einsum/ReadVariableOp,^sequential_1/dense_2/BiasAdd/ReadVariableOp.^sequential_1/dense_2/Tensordot/ReadVariableOp,^sequential_1/dense_3/BiasAdd/ReadVariableOp.^sequential_1/dense_3/Tensordot/ReadVariableOp*
T0*+
_output_shapes
:€€€€€€€€€# 2

Identity"
identityIdentity:output:0*j
_input_shapesY
W:€€€€€€€€€# ::::::::::::::::2`
.layer_normalization_2/batchnorm/ReadVariableOp.layer_normalization_2/batchnorm/ReadVariableOp2h
2layer_normalization_2/batchnorm/mul/ReadVariableOp2layer_normalization_2/batchnorm/mul/ReadVariableOp2`
.layer_normalization_3/batchnorm/ReadVariableOp.layer_normalization_3/batchnorm/ReadVariableOp2h
2layer_normalization_3/batchnorm/mul/ReadVariableOp2layer_normalization_3/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_1/attention_output/add/ReadVariableOp:multi_head_attention_1/attention_output/add/ReadVariableOp2М
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_1/key/add/ReadVariableOp-multi_head_attention_1/key/add/ReadVariableOp2r
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/query/add/ReadVariableOp/multi_head_attention_1/query/add/ReadVariableOp2v
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/value/add/ReadVariableOp/multi_head_attention_1/value/add/ReadVariableOp2v
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp2Z
+sequential_1/dense_2/BiasAdd/ReadVariableOp+sequential_1/dense_2/BiasAdd/ReadVariableOp2^
-sequential_1/dense_2/Tensordot/ReadVariableOp-sequential_1/dense_2/Tensordot/ReadVariableOp2Z
+sequential_1/dense_3/BiasAdd/ReadVariableOp+sequential_1/dense_3/BiasAdd/ReadVariableOp2^
-sequential_1/dense_3/Tensordot/ReadVariableOp-sequential_1/dense_3/Tensordot/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€# 
 
_user_specified_nameinputs
Ш
х
B__inference_conv1d_layer_call_and_return_conditional_losses_101546

inputs/
+conv1d_expanddims_1_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐ"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€2
conv1d/ExpandDims/dimЧ
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:€€€€€€€€€ДR 2
conv1d/ExpandDimsЄ
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dimЈ
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  2
conv1d/ExpandDims_1Ј
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:€€€€€€€€€ДR *
paddingSAME*
strides
2
conv1dУ
conv1d/SqueezeSqueezeconv1d:output:0*
T0*,
_output_shapes
:€€€€€€€€€ДR *
squeeze_dims

э€€€€€€€€2
conv1d/SqueezeМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpН
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:€€€€€€€€€ДR 2	
BiasAdd]
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:€€€€€€€€€ДR 2
Relu©
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*
T0*,
_output_shapes
:€€€€€€€€€ДR 2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :€€€€€€€€€ДR ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:€€€€€€€€€ДR 
 
_user_specified_nameinputs
С	
№
C__inference_dense_6_layer_call_and_return_conditional_losses_102397

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2	
BiasAddХ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
В
O
3__inference_average_pooling1d_1_layer_call_fn_98937

inputs
identityе
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_average_pooling1d_1_layer_call_and_return_conditional_losses_989312
PartitionedCallВ
IdentityIdentityPartitionedCall:output:0*
T0*=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€:e a
=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
м’
К$
A__inference_model_layer_call_and_return_conditional_losses_101341
inputs_0
inputs_1D
@token_and_position_embedding_embedding_1_embedding_lookup_101110B
>token_and_position_embedding_embedding_embedding_lookup_1011166
2conv1d_conv1d_expanddims_1_readvariableop_resource*
&conv1d_biasadd_readvariableop_resource8
4conv1d_1_conv1d_expanddims_1_readvariableop_resource,
(conv1d_1_biasadd_readvariableop_resource9
5batch_normalization_batchnorm_readvariableop_resource=
9batch_normalization_batchnorm_mul_readvariableop_resource;
7batch_normalization_batchnorm_readvariableop_1_resource;
7batch_normalization_batchnorm_readvariableop_2_resource;
7batch_normalization_1_batchnorm_readvariableop_resource?
;batch_normalization_1_batchnorm_mul_readvariableop_resource=
9batch_normalization_1_batchnorm_readvariableop_1_resource=
9batch_normalization_1_batchnorm_readvariableop_2_resourceZ
Vtransformer_block_1_multi_head_attention_1_query_einsum_einsum_readvariableop_resourceP
Ltransformer_block_1_multi_head_attention_1_query_add_readvariableop_resourceX
Ttransformer_block_1_multi_head_attention_1_key_einsum_einsum_readvariableop_resourceN
Jtransformer_block_1_multi_head_attention_1_key_add_readvariableop_resourceZ
Vtransformer_block_1_multi_head_attention_1_value_einsum_einsum_readvariableop_resourceP
Ltransformer_block_1_multi_head_attention_1_value_add_readvariableop_resourcee
atransformer_block_1_multi_head_attention_1_attention_output_einsum_einsum_readvariableop_resource[
Wtransformer_block_1_multi_head_attention_1_attention_output_add_readvariableop_resourceS
Otransformer_block_1_layer_normalization_2_batchnorm_mul_readvariableop_resourceO
Ktransformer_block_1_layer_normalization_2_batchnorm_readvariableop_resourceN
Jtransformer_block_1_sequential_1_dense_2_tensordot_readvariableop_resourceL
Htransformer_block_1_sequential_1_dense_2_biasadd_readvariableop_resourceN
Jtransformer_block_1_sequential_1_dense_3_tensordot_readvariableop_resourceL
Htransformer_block_1_sequential_1_dense_3_biasadd_readvariableop_resourceS
Otransformer_block_1_layer_normalization_3_batchnorm_mul_readvariableop_resourceO
Ktransformer_block_1_layer_normalization_3_batchnorm_readvariableop_resource*
&dense_4_matmul_readvariableop_resource+
'dense_4_biasadd_readvariableop_resource*
&dense_5_matmul_readvariableop_resource+
'dense_5_biasadd_readvariableop_resource*
&dense_6_matmul_readvariableop_resource+
'dense_6_biasadd_readvariableop_resource
identityИҐ,batch_normalization/batchnorm/ReadVariableOpҐ.batch_normalization/batchnorm/ReadVariableOp_1Ґ.batch_normalization/batchnorm/ReadVariableOp_2Ґ0batch_normalization/batchnorm/mul/ReadVariableOpҐ.batch_normalization_1/batchnorm/ReadVariableOpҐ0batch_normalization_1/batchnorm/ReadVariableOp_1Ґ0batch_normalization_1/batchnorm/ReadVariableOp_2Ґ2batch_normalization_1/batchnorm/mul/ReadVariableOpҐconv1d/BiasAdd/ReadVariableOpҐ)conv1d/conv1d/ExpandDims_1/ReadVariableOpҐconv1d_1/BiasAdd/ReadVariableOpҐ+conv1d_1/conv1d/ExpandDims_1/ReadVariableOpҐdense_4/BiasAdd/ReadVariableOpҐdense_4/MatMul/ReadVariableOpҐdense_5/BiasAdd/ReadVariableOpҐdense_5/MatMul/ReadVariableOpҐdense_6/BiasAdd/ReadVariableOpҐdense_6/MatMul/ReadVariableOpҐ7token_and_position_embedding/embedding/embedding_lookupҐ9token_and_position_embedding/embedding_1/embedding_lookupҐBtransformer_block_1/layer_normalization_2/batchnorm/ReadVariableOpҐFtransformer_block_1/layer_normalization_2/batchnorm/mul/ReadVariableOpҐBtransformer_block_1/layer_normalization_3/batchnorm/ReadVariableOpҐFtransformer_block_1/layer_normalization_3/batchnorm/mul/ReadVariableOpҐNtransformer_block_1/multi_head_attention_1/attention_output/add/ReadVariableOpҐXtransformer_block_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpҐAtransformer_block_1/multi_head_attention_1/key/add/ReadVariableOpҐKtransformer_block_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpҐCtransformer_block_1/multi_head_attention_1/query/add/ReadVariableOpҐMtransformer_block_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpҐCtransformer_block_1/multi_head_attention_1/value/add/ReadVariableOpҐMtransformer_block_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpҐ?transformer_block_1/sequential_1/dense_2/BiasAdd/ReadVariableOpҐAtransformer_block_1/sequential_1/dense_2/Tensordot/ReadVariableOpҐ?transformer_block_1/sequential_1/dense_3/BiasAdd/ReadVariableOpҐAtransformer_block_1/sequential_1/dense_3/Tensordot/ReadVariableOpА
"token_and_position_embedding/ShapeShapeinputs_0*
T0*
_output_shapes
:2$
"token_and_position_embedding/ShapeЈ
0token_and_position_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€22
0token_and_position_embedding/strided_slice/stack≤
2token_and_position_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 24
2token_and_position_embedding/strided_slice/stack_1≤
2token_and_position_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2token_and_position_embedding/strided_slice/stack_2Р
*token_and_position_embedding/strided_sliceStridedSlice+token_and_position_embedding/Shape:output:09token_and_position_embedding/strided_slice/stack:output:0;token_and_position_embedding/strided_slice/stack_1:output:0;token_and_position_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*token_and_position_embedding/strided_sliceЦ
(token_and_position_embedding/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2*
(token_and_position_embedding/range/startЦ
(token_and_position_embedding/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2*
(token_and_position_embedding/range/deltaС
"token_and_position_embedding/rangeRange1token_and_position_embedding/range/start:output:03token_and_position_embedding/strided_slice:output:01token_and_position_embedding/range/delta:output:0*#
_output_shapes
:€€€€€€€€€2$
"token_and_position_embedding/rangeј
9token_and_position_embedding/embedding_1/embedding_lookupResourceGather@token_and_position_embedding_embedding_1_embedding_lookup_101110+token_and_position_embedding/range:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*S
_classI
GEloc:@token_and_position_embedding/embedding_1/embedding_lookup/101110*'
_output_shapes
:€€€€€€€€€ *
dtype02;
9token_and_position_embedding/embedding_1/embedding_lookupН
Btoken_and_position_embedding/embedding_1/embedding_lookup/IdentityIdentityBtoken_and_position_embedding/embedding_1/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*S
_classI
GEloc:@token_and_position_embedding/embedding_1/embedding_lookup/101110*'
_output_shapes
:€€€€€€€€€ 2D
Btoken_and_position_embedding/embedding_1/embedding_lookup/IdentityЧ
Dtoken_and_position_embedding/embedding_1/embedding_lookup/Identity_1IdentityKtoken_and_position_embedding/embedding_1/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2F
Dtoken_and_position_embedding/embedding_1/embedding_lookup/Identity_1Ѓ
+token_and_position_embedding/embedding/CastCastinputs_0*

DstT0*

SrcT0*(
_output_shapes
:€€€€€€€€€ДR2-
+token_and_position_embedding/embedding/CastЅ
7token_and_position_embedding/embedding/embedding_lookupResourceGather>token_and_position_embedding_embedding_embedding_lookup_101116/token_and_position_embedding/embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*Q
_classG
ECloc:@token_and_position_embedding/embedding/embedding_lookup/101116*,
_output_shapes
:€€€€€€€€€ДR *
dtype029
7token_and_position_embedding/embedding/embedding_lookupК
@token_and_position_embedding/embedding/embedding_lookup/IdentityIdentity@token_and_position_embedding/embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*Q
_classG
ECloc:@token_and_position_embedding/embedding/embedding_lookup/101116*,
_output_shapes
:€€€€€€€€€ДR 2B
@token_and_position_embedding/embedding/embedding_lookup/IdentityЦ
Btoken_and_position_embedding/embedding/embedding_lookup/Identity_1IdentityItoken_and_position_embedding/embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:€€€€€€€€€ДR 2D
Btoken_and_position_embedding/embedding/embedding_lookup/Identity_1†
 token_and_position_embedding/addAddV2Ktoken_and_position_embedding/embedding/embedding_lookup/Identity_1:output:0Mtoken_and_position_embedding/embedding_1/embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:€€€€€€€€€ДR 2"
 token_and_position_embedding/addЗ
conv1d/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€2
conv1d/conv1d/ExpandDims/dim 
conv1d/conv1d/ExpandDims
ExpandDims$token_and_position_embedding/add:z:0%conv1d/conv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:€€€€€€€€€ДR 2
conv1d/conv1d/ExpandDimsЌ
)conv1d/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp2conv1d_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype02+
)conv1d/conv1d/ExpandDims_1/ReadVariableOpВ
conv1d/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
conv1d/conv1d/ExpandDims_1/dim”
conv1d/conv1d/ExpandDims_1
ExpandDims1conv1d/conv1d/ExpandDims_1/ReadVariableOp:value:0'conv1d/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  2
conv1d/conv1d/ExpandDims_1”
conv1d/conv1dConv2D!conv1d/conv1d/ExpandDims:output:0#conv1d/conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:€€€€€€€€€ДR *
paddingSAME*
strides
2
conv1d/conv1d®
conv1d/conv1d/SqueezeSqueezeconv1d/conv1d:output:0*
T0*,
_output_shapes
:€€€€€€€€€ДR *
squeeze_dims

э€€€€€€€€2
conv1d/conv1d/Squeeze°
conv1d/BiasAdd/ReadVariableOpReadVariableOp&conv1d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
conv1d/BiasAdd/ReadVariableOp©
conv1d/BiasAddBiasAddconv1d/conv1d/Squeeze:output:0%conv1d/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:€€€€€€€€€ДR 2
conv1d/BiasAddr
conv1d/ReluReluconv1d/BiasAdd:output:0*
T0*,
_output_shapes
:€€€€€€€€€ДR 2
conv1d/ReluЖ
 average_pooling1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2"
 average_pooling1d/ExpandDims/dimЋ
average_pooling1d/ExpandDims
ExpandDimsconv1d/Relu:activations:0)average_pooling1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:€€€€€€€€€ДR 2
average_pooling1d/ExpandDimsя
average_pooling1d/AvgPoolAvgPool%average_pooling1d/ExpandDims:output:0*
T0*0
_output_shapes
:€€€€€€€€€ё *
ksize
*
paddingVALID*
strides
2
average_pooling1d/AvgPool≥
average_pooling1d/SqueezeSqueeze"average_pooling1d/AvgPool:output:0*
T0*,
_output_shapes
:€€€€€€€€€ё *
squeeze_dims
2
average_pooling1d/SqueezeЛ
conv1d_1/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€2 
conv1d_1/conv1d/ExpandDims/dimќ
conv1d_1/conv1d/ExpandDims
ExpandDims"average_pooling1d/Squeeze:output:0'conv1d_1/conv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:€€€€€€€€€ё 2
conv1d_1/conv1d/ExpandDims”
+conv1d_1/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_1_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:	  *
dtype02-
+conv1d_1/conv1d/ExpandDims_1/ReadVariableOpЖ
 conv1d_1/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_1/conv1d/ExpandDims_1/dimџ
conv1d_1/conv1d/ExpandDims_1
ExpandDims3conv1d_1/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_1/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:	  2
conv1d_1/conv1d/ExpandDims_1џ
conv1d_1/conv1dConv2D#conv1d_1/conv1d/ExpandDims:output:0%conv1d_1/conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:€€€€€€€€€ё *
paddingSAME*
strides
2
conv1d_1/conv1dЃ
conv1d_1/conv1d/SqueezeSqueezeconv1d_1/conv1d:output:0*
T0*,
_output_shapes
:€€€€€€€€€ё *
squeeze_dims

э€€€€€€€€2
conv1d_1/conv1d/SqueezeІ
conv1d_1/BiasAdd/ReadVariableOpReadVariableOp(conv1d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv1d_1/BiasAdd/ReadVariableOp±
conv1d_1/BiasAddBiasAdd conv1d_1/conv1d/Squeeze:output:0'conv1d_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:€€€€€€€€€ё 2
conv1d_1/BiasAddx
conv1d_1/ReluReluconv1d_1/BiasAdd:output:0*
T0*,
_output_shapes
:€€€€€€€€€ё 2
conv1d_1/ReluК
"average_pooling1d_2/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"average_pooling1d_2/ExpandDims/dim№
average_pooling1d_2/ExpandDims
ExpandDims$token_and_position_embedding/add:z:0+average_pooling1d_2/ExpandDims/dim:output:0*
T0*0
_output_shapes
:€€€€€€€€€ДR 2 
average_pooling1d_2/ExpandDimsж
average_pooling1d_2/AvgPoolAvgPool'average_pooling1d_2/ExpandDims:output:0*
T0*/
_output_shapes
:€€€€€€€€€# *
ksize	
ђ*
paddingVALID*
strides	
ђ2
average_pooling1d_2/AvgPoolЄ
average_pooling1d_2/SqueezeSqueeze$average_pooling1d_2/AvgPool:output:0*
T0*+
_output_shapes
:€€€€€€€€€# *
squeeze_dims
2
average_pooling1d_2/SqueezeК
"average_pooling1d_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"average_pooling1d_1/ExpandDims/dim”
average_pooling1d_1/ExpandDims
ExpandDimsconv1d_1/Relu:activations:0+average_pooling1d_1/ExpandDims/dim:output:0*
T0*0
_output_shapes
:€€€€€€€€€ё 2 
average_pooling1d_1/ExpandDimsд
average_pooling1d_1/AvgPoolAvgPool'average_pooling1d_1/ExpandDims:output:0*
T0*/
_output_shapes
:€€€€€€€€€# *
ksize

*
paddingVALID*
strides

2
average_pooling1d_1/AvgPoolЄ
average_pooling1d_1/SqueezeSqueeze$average_pooling1d_1/AvgPool:output:0*
T0*+
_output_shapes
:€€€€€€€€€# *
squeeze_dims
2
average_pooling1d_1/Squeezeќ
,batch_normalization/batchnorm/ReadVariableOpReadVariableOp5batch_normalization_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02.
,batch_normalization/batchnorm/ReadVariableOpП
#batch_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2%
#batch_normalization/batchnorm/add/yЎ
!batch_normalization/batchnorm/addAddV24batch_normalization/batchnorm/ReadVariableOp:value:0,batch_normalization/batchnorm/add/y:output:0*
T0*
_output_shapes
: 2#
!batch_normalization/batchnorm/addЯ
#batch_normalization/batchnorm/RsqrtRsqrt%batch_normalization/batchnorm/add:z:0*
T0*
_output_shapes
: 2%
#batch_normalization/batchnorm/RsqrtЏ
0batch_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9batch_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype022
0batch_normalization/batchnorm/mul/ReadVariableOp’
!batch_normalization/batchnorm/mulMul'batch_normalization/batchnorm/Rsqrt:y:08batch_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2#
!batch_normalization/batchnorm/mul‘
#batch_normalization/batchnorm/mul_1Mul$average_pooling1d_1/Squeeze:output:0%batch_normalization/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2%
#batch_normalization/batchnorm/mul_1‘
.batch_normalization/batchnorm/ReadVariableOp_1ReadVariableOp7batch_normalization_batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype020
.batch_normalization/batchnorm/ReadVariableOp_1’
#batch_normalization/batchnorm/mul_2Mul6batch_normalization/batchnorm/ReadVariableOp_1:value:0%batch_normalization/batchnorm/mul:z:0*
T0*
_output_shapes
: 2%
#batch_normalization/batchnorm/mul_2‘
.batch_normalization/batchnorm/ReadVariableOp_2ReadVariableOp7batch_normalization_batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype020
.batch_normalization/batchnorm/ReadVariableOp_2”
!batch_normalization/batchnorm/subSub6batch_normalization/batchnorm/ReadVariableOp_2:value:0'batch_normalization/batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2#
!batch_normalization/batchnorm/subў
#batch_normalization/batchnorm/add_1AddV2'batch_normalization/batchnorm/mul_1:z:0%batch_normalization/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2%
#batch_normalization/batchnorm/add_1‘
.batch_normalization_1/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_1_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype020
.batch_normalization_1/batchnorm/ReadVariableOpУ
%batch_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2'
%batch_normalization_1/batchnorm/add/yа
#batch_normalization_1/batchnorm/addAddV26batch_normalization_1/batchnorm/ReadVariableOp:value:0.batch_normalization_1/batchnorm/add/y:output:0*
T0*
_output_shapes
: 2%
#batch_normalization_1/batchnorm/add•
%batch_normalization_1/batchnorm/RsqrtRsqrt'batch_normalization_1/batchnorm/add:z:0*
T0*
_output_shapes
: 2'
%batch_normalization_1/batchnorm/Rsqrtа
2batch_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype024
2batch_normalization_1/batchnorm/mul/ReadVariableOpЁ
#batch_normalization_1/batchnorm/mulMul)batch_normalization_1/batchnorm/Rsqrt:y:0:batch_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2%
#batch_normalization_1/batchnorm/mulЏ
%batch_normalization_1/batchnorm/mul_1Mul$average_pooling1d_2/Squeeze:output:0'batch_normalization_1/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2'
%batch_normalization_1/batchnorm/mul_1Џ
0batch_normalization_1/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_1_batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype022
0batch_normalization_1/batchnorm/ReadVariableOp_1Ё
%batch_normalization_1/batchnorm/mul_2Mul8batch_normalization_1/batchnorm/ReadVariableOp_1:value:0'batch_normalization_1/batchnorm/mul:z:0*
T0*
_output_shapes
: 2'
%batch_normalization_1/batchnorm/mul_2Џ
0batch_normalization_1/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_1_batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype022
0batch_normalization_1/batchnorm/ReadVariableOp_2џ
#batch_normalization_1/batchnorm/subSub8batch_normalization_1/batchnorm/ReadVariableOp_2:value:0)batch_normalization_1/batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2%
#batch_normalization_1/batchnorm/subб
%batch_normalization_1/batchnorm/add_1AddV2)batch_normalization_1/batchnorm/mul_1:z:0'batch_normalization_1/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2'
%batch_normalization_1/batchnorm/add_1•
add/addAddV2'batch_normalization/batchnorm/add_1:z:0)batch_normalization_1/batchnorm/add_1:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2	
add/addє
Mtransformer_block_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpReadVariableOpVtransformer_block_1_multi_head_attention_1_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02O
Mtransformer_block_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpќ
>transformer_block_1/multi_head_attention_1/query/einsum/EinsumEinsumadd/add:z:0Utransformer_block_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€# *
equationabc,cde->abde2@
>transformer_block_1/multi_head_attention_1/query/einsum/EinsumЧ
Ctransformer_block_1/multi_head_attention_1/query/add/ReadVariableOpReadVariableOpLtransformer_block_1_multi_head_attention_1_query_add_readvariableop_resource*
_output_shapes

: *
dtype02E
Ctransformer_block_1/multi_head_attention_1/query/add/ReadVariableOp≈
4transformer_block_1/multi_head_attention_1/query/addAddV2Gtransformer_block_1/multi_head_attention_1/query/einsum/Einsum:output:0Ktransformer_block_1/multi_head_attention_1/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€# 26
4transformer_block_1/multi_head_attention_1/query/add≥
Ktransformer_block_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpReadVariableOpTtransformer_block_1_multi_head_attention_1_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02M
Ktransformer_block_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp»
<transformer_block_1/multi_head_attention_1/key/einsum/EinsumEinsumadd/add:z:0Stransformer_block_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€# *
equationabc,cde->abde2>
<transformer_block_1/multi_head_attention_1/key/einsum/EinsumС
Atransformer_block_1/multi_head_attention_1/key/add/ReadVariableOpReadVariableOpJtransformer_block_1_multi_head_attention_1_key_add_readvariableop_resource*
_output_shapes

: *
dtype02C
Atransformer_block_1/multi_head_attention_1/key/add/ReadVariableOpљ
2transformer_block_1/multi_head_attention_1/key/addAddV2Etransformer_block_1/multi_head_attention_1/key/einsum/Einsum:output:0Itransformer_block_1/multi_head_attention_1/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€# 24
2transformer_block_1/multi_head_attention_1/key/addє
Mtransformer_block_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpReadVariableOpVtransformer_block_1_multi_head_attention_1_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02O
Mtransformer_block_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpќ
>transformer_block_1/multi_head_attention_1/value/einsum/EinsumEinsumadd/add:z:0Utransformer_block_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€# *
equationabc,cde->abde2@
>transformer_block_1/multi_head_attention_1/value/einsum/EinsumЧ
Ctransformer_block_1/multi_head_attention_1/value/add/ReadVariableOpReadVariableOpLtransformer_block_1_multi_head_attention_1_value_add_readvariableop_resource*
_output_shapes

: *
dtype02E
Ctransformer_block_1/multi_head_attention_1/value/add/ReadVariableOp≈
4transformer_block_1/multi_head_attention_1/value/addAddV2Gtransformer_block_1/multi_head_attention_1/value/einsum/Einsum:output:0Ktransformer_block_1/multi_head_attention_1/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€# 26
4transformer_block_1/multi_head_attention_1/value/add©
0transformer_block_1/multi_head_attention_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *у5>22
0transformer_block_1/multi_head_attention_1/Mul/yЦ
.transformer_block_1/multi_head_attention_1/MulMul8transformer_block_1/multi_head_attention_1/query/add:z:09transformer_block_1/multi_head_attention_1/Mul/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€# 20
.transformer_block_1/multi_head_attention_1/Mulћ
8transformer_block_1/multi_head_attention_1/einsum/EinsumEinsum6transformer_block_1/multi_head_attention_1/key/add:z:02transformer_block_1/multi_head_attention_1/Mul:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€##*
equationaecd,abcd->acbe2:
8transformer_block_1/multi_head_attention_1/einsum/EinsumА
:transformer_block_1/multi_head_attention_1/softmax/SoftmaxSoftmaxAtransformer_block_1/multi_head_attention_1/einsum/Einsum:output:0*
T0*/
_output_shapes
:€€€€€€€€€##2<
:transformer_block_1/multi_head_attention_1/softmax/SoftmaxЖ
;transformer_block_1/multi_head_attention_1/dropout/IdentityIdentityDtransformer_block_1/multi_head_attention_1/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:€€€€€€€€€##2=
;transformer_block_1/multi_head_attention_1/dropout/Identityд
:transformer_block_1/multi_head_attention_1/einsum_1/EinsumEinsumDtransformer_block_1/multi_head_attention_1/dropout/Identity:output:08transformer_block_1/multi_head_attention_1/value/add:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€# *
equationacbe,aecd->abcd2<
:transformer_block_1/multi_head_attention_1/einsum_1/EinsumЏ
Xtransformer_block_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpatransformer_block_1_multi_head_attention_1_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02Z
Xtransformer_block_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp£
Itransformer_block_1/multi_head_attention_1/attention_output/einsum/EinsumEinsumCtransformer_block_1/multi_head_attention_1/einsum_1/Einsum:output:0`transformer_block_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:€€€€€€€€€# *
equationabcd,cde->abe2K
Itransformer_block_1/multi_head_attention_1/attention_output/einsum/Einsumі
Ntransformer_block_1/multi_head_attention_1/attention_output/add/ReadVariableOpReadVariableOpWtransformer_block_1_multi_head_attention_1_attention_output_add_readvariableop_resource*
_output_shapes
: *
dtype02P
Ntransformer_block_1/multi_head_attention_1/attention_output/add/ReadVariableOpн
?transformer_block_1/multi_head_attention_1/attention_output/addAddV2Rtransformer_block_1/multi_head_attention_1/attention_output/einsum/Einsum:output:0Vtransformer_block_1/multi_head_attention_1/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€# 2A
?transformer_block_1/multi_head_attention_1/attention_output/add„
&transformer_block_1/dropout_2/IdentityIdentityCtransformer_block_1/multi_head_attention_1/attention_output/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2(
&transformer_block_1/dropout_2/Identityѓ
transformer_block_1/addAddV2add/add:z:0/transformer_block_1/dropout_2/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€# 2
transformer_block_1/addё
Htransformer_block_1/layer_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2J
Htransformer_block_1/layer_normalization_2/moments/mean/reduction_indicesѓ
6transformer_block_1/layer_normalization_2/moments/meanMeantransformer_block_1/add:z:0Qtransformer_block_1/layer_normalization_2/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€#*
	keep_dims(28
6transformer_block_1/layer_normalization_2/moments/meanЗ
>transformer_block_1/layer_normalization_2/moments/StopGradientStopGradient?transformer_block_1/layer_normalization_2/moments/mean:output:0*
T0*+
_output_shapes
:€€€€€€€€€#2@
>transformer_block_1/layer_normalization_2/moments/StopGradientї
Ctransformer_block_1/layer_normalization_2/moments/SquaredDifferenceSquaredDifferencetransformer_block_1/add:z:0Gtransformer_block_1/layer_normalization_2/moments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€# 2E
Ctransformer_block_1/layer_normalization_2/moments/SquaredDifferenceж
Ltransformer_block_1/layer_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2N
Ltransformer_block_1/layer_normalization_2/moments/variance/reduction_indicesз
:transformer_block_1/layer_normalization_2/moments/varianceMeanGtransformer_block_1/layer_normalization_2/moments/SquaredDifference:z:0Utransformer_block_1/layer_normalization_2/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€#*
	keep_dims(2<
:transformer_block_1/layer_normalization_2/moments/varianceї
9transformer_block_1/layer_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж52;
9transformer_block_1/layer_normalization_2/batchnorm/add/yЇ
7transformer_block_1/layer_normalization_2/batchnorm/addAddV2Ctransformer_block_1/layer_normalization_2/moments/variance:output:0Btransformer_block_1/layer_normalization_2/batchnorm/add/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€#29
7transformer_block_1/layer_normalization_2/batchnorm/addт
9transformer_block_1/layer_normalization_2/batchnorm/RsqrtRsqrt;transformer_block_1/layer_normalization_2/batchnorm/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€#2;
9transformer_block_1/layer_normalization_2/batchnorm/RsqrtЬ
Ftransformer_block_1/layer_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOpOtransformer_block_1_layer_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02H
Ftransformer_block_1/layer_normalization_2/batchnorm/mul/ReadVariableOpЊ
7transformer_block_1/layer_normalization_2/batchnorm/mulMul=transformer_block_1/layer_normalization_2/batchnorm/Rsqrt:y:0Ntransformer_block_1/layer_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€# 29
7transformer_block_1/layer_normalization_2/batchnorm/mulН
9transformer_block_1/layer_normalization_2/batchnorm/mul_1Multransformer_block_1/add:z:0;transformer_block_1/layer_normalization_2/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2;
9transformer_block_1/layer_normalization_2/batchnorm/mul_1±
9transformer_block_1/layer_normalization_2/batchnorm/mul_2Mul?transformer_block_1/layer_normalization_2/moments/mean:output:0;transformer_block_1/layer_normalization_2/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2;
9transformer_block_1/layer_normalization_2/batchnorm/mul_2Р
Btransformer_block_1/layer_normalization_2/batchnorm/ReadVariableOpReadVariableOpKtransformer_block_1_layer_normalization_2_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02D
Btransformer_block_1/layer_normalization_2/batchnorm/ReadVariableOpЇ
7transformer_block_1/layer_normalization_2/batchnorm/subSubJtransformer_block_1/layer_normalization_2/batchnorm/ReadVariableOp:value:0=transformer_block_1/layer_normalization_2/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 29
7transformer_block_1/layer_normalization_2/batchnorm/sub±
9transformer_block_1/layer_normalization_2/batchnorm/add_1AddV2=transformer_block_1/layer_normalization_2/batchnorm/mul_1:z:0;transformer_block_1/layer_normalization_2/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2;
9transformer_block_1/layer_normalization_2/batchnorm/add_1С
Atransformer_block_1/sequential_1/dense_2/Tensordot/ReadVariableOpReadVariableOpJtransformer_block_1_sequential_1_dense_2_tensordot_readvariableop_resource*
_output_shapes

: @*
dtype02C
Atransformer_block_1/sequential_1/dense_2/Tensordot/ReadVariableOpЉ
7transformer_block_1/sequential_1/dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:29
7transformer_block_1/sequential_1/dense_2/Tensordot/axes√
7transformer_block_1/sequential_1/dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       29
7transformer_block_1/sequential_1/dense_2/Tensordot/freeб
8transformer_block_1/sequential_1/dense_2/Tensordot/ShapeShape=transformer_block_1/layer_normalization_2/batchnorm/add_1:z:0*
T0*
_output_shapes
:2:
8transformer_block_1/sequential_1/dense_2/Tensordot/Shape∆
@transformer_block_1/sequential_1/dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2B
@transformer_block_1/sequential_1/dense_2/Tensordot/GatherV2/axisЮ
;transformer_block_1/sequential_1/dense_2/Tensordot/GatherV2GatherV2Atransformer_block_1/sequential_1/dense_2/Tensordot/Shape:output:0@transformer_block_1/sequential_1/dense_2/Tensordot/free:output:0Itransformer_block_1/sequential_1/dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2=
;transformer_block_1/sequential_1/dense_2/Tensordot/GatherV2 
Btransformer_block_1/sequential_1/dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2D
Btransformer_block_1/sequential_1/dense_2/Tensordot/GatherV2_1/axis§
=transformer_block_1/sequential_1/dense_2/Tensordot/GatherV2_1GatherV2Atransformer_block_1/sequential_1/dense_2/Tensordot/Shape:output:0@transformer_block_1/sequential_1/dense_2/Tensordot/axes:output:0Ktransformer_block_1/sequential_1/dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2?
=transformer_block_1/sequential_1/dense_2/Tensordot/GatherV2_1Њ
8transformer_block_1/sequential_1/dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2:
8transformer_block_1/sequential_1/dense_2/Tensordot/Const§
7transformer_block_1/sequential_1/dense_2/Tensordot/ProdProdDtransformer_block_1/sequential_1/dense_2/Tensordot/GatherV2:output:0Atransformer_block_1/sequential_1/dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: 29
7transformer_block_1/sequential_1/dense_2/Tensordot/Prod¬
:transformer_block_1/sequential_1/dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2<
:transformer_block_1/sequential_1/dense_2/Tensordot/Const_1ђ
9transformer_block_1/sequential_1/dense_2/Tensordot/Prod_1ProdFtransformer_block_1/sequential_1/dense_2/Tensordot/GatherV2_1:output:0Ctransformer_block_1/sequential_1/dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2;
9transformer_block_1/sequential_1/dense_2/Tensordot/Prod_1¬
>transformer_block_1/sequential_1/dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2@
>transformer_block_1/sequential_1/dense_2/Tensordot/concat/axisэ
9transformer_block_1/sequential_1/dense_2/Tensordot/concatConcatV2@transformer_block_1/sequential_1/dense_2/Tensordot/free:output:0@transformer_block_1/sequential_1/dense_2/Tensordot/axes:output:0Gtransformer_block_1/sequential_1/dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2;
9transformer_block_1/sequential_1/dense_2/Tensordot/concat∞
8transformer_block_1/sequential_1/dense_2/Tensordot/stackPack@transformer_block_1/sequential_1/dense_2/Tensordot/Prod:output:0Btransformer_block_1/sequential_1/dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2:
8transformer_block_1/sequential_1/dense_2/Tensordot/stack¬
<transformer_block_1/sequential_1/dense_2/Tensordot/transpose	Transpose=transformer_block_1/layer_normalization_2/batchnorm/add_1:z:0Btransformer_block_1/sequential_1/dense_2/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€# 2>
<transformer_block_1/sequential_1/dense_2/Tensordot/transpose√
:transformer_block_1/sequential_1/dense_2/Tensordot/ReshapeReshape@transformer_block_1/sequential_1/dense_2/Tensordot/transpose:y:0Atransformer_block_1/sequential_1/dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2<
:transformer_block_1/sequential_1/dense_2/Tensordot/Reshape¬
9transformer_block_1/sequential_1/dense_2/Tensordot/MatMulMatMulCtransformer_block_1/sequential_1/dense_2/Tensordot/Reshape:output:0Itransformer_block_1/sequential_1/dense_2/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2;
9transformer_block_1/sequential_1/dense_2/Tensordot/MatMul¬
:transformer_block_1/sequential_1/dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2<
:transformer_block_1/sequential_1/dense_2/Tensordot/Const_2∆
@transformer_block_1/sequential_1/dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2B
@transformer_block_1/sequential_1/dense_2/Tensordot/concat_1/axisК
;transformer_block_1/sequential_1/dense_2/Tensordot/concat_1ConcatV2Dtransformer_block_1/sequential_1/dense_2/Tensordot/GatherV2:output:0Ctransformer_block_1/sequential_1/dense_2/Tensordot/Const_2:output:0Itransformer_block_1/sequential_1/dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2=
;transformer_block_1/sequential_1/dense_2/Tensordot/concat_1і
2transformer_block_1/sequential_1/dense_2/TensordotReshapeCtransformer_block_1/sequential_1/dense_2/Tensordot/MatMul:product:0Dtransformer_block_1/sequential_1/dense_2/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€#@24
2transformer_block_1/sequential_1/dense_2/TensordotЗ
?transformer_block_1/sequential_1/dense_2/BiasAdd/ReadVariableOpReadVariableOpHtransformer_block_1_sequential_1_dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02A
?transformer_block_1/sequential_1/dense_2/BiasAdd/ReadVariableOpЂ
0transformer_block_1/sequential_1/dense_2/BiasAddBiasAdd;transformer_block_1/sequential_1/dense_2/Tensordot:output:0Gtransformer_block_1/sequential_1/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€#@22
0transformer_block_1/sequential_1/dense_2/BiasAdd„
-transformer_block_1/sequential_1/dense_2/ReluRelu9transformer_block_1/sequential_1/dense_2/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€#@2/
-transformer_block_1/sequential_1/dense_2/ReluС
Atransformer_block_1/sequential_1/dense_3/Tensordot/ReadVariableOpReadVariableOpJtransformer_block_1_sequential_1_dense_3_tensordot_readvariableop_resource*
_output_shapes

:@ *
dtype02C
Atransformer_block_1/sequential_1/dense_3/Tensordot/ReadVariableOpЉ
7transformer_block_1/sequential_1/dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:29
7transformer_block_1/sequential_1/dense_3/Tensordot/axes√
7transformer_block_1/sequential_1/dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       29
7transformer_block_1/sequential_1/dense_3/Tensordot/freeя
8transformer_block_1/sequential_1/dense_3/Tensordot/ShapeShape;transformer_block_1/sequential_1/dense_2/Relu:activations:0*
T0*
_output_shapes
:2:
8transformer_block_1/sequential_1/dense_3/Tensordot/Shape∆
@transformer_block_1/sequential_1/dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2B
@transformer_block_1/sequential_1/dense_3/Tensordot/GatherV2/axisЮ
;transformer_block_1/sequential_1/dense_3/Tensordot/GatherV2GatherV2Atransformer_block_1/sequential_1/dense_3/Tensordot/Shape:output:0@transformer_block_1/sequential_1/dense_3/Tensordot/free:output:0Itransformer_block_1/sequential_1/dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2=
;transformer_block_1/sequential_1/dense_3/Tensordot/GatherV2 
Btransformer_block_1/sequential_1/dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2D
Btransformer_block_1/sequential_1/dense_3/Tensordot/GatherV2_1/axis§
=transformer_block_1/sequential_1/dense_3/Tensordot/GatherV2_1GatherV2Atransformer_block_1/sequential_1/dense_3/Tensordot/Shape:output:0@transformer_block_1/sequential_1/dense_3/Tensordot/axes:output:0Ktransformer_block_1/sequential_1/dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2?
=transformer_block_1/sequential_1/dense_3/Tensordot/GatherV2_1Њ
8transformer_block_1/sequential_1/dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2:
8transformer_block_1/sequential_1/dense_3/Tensordot/Const§
7transformer_block_1/sequential_1/dense_3/Tensordot/ProdProdDtransformer_block_1/sequential_1/dense_3/Tensordot/GatherV2:output:0Atransformer_block_1/sequential_1/dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: 29
7transformer_block_1/sequential_1/dense_3/Tensordot/Prod¬
:transformer_block_1/sequential_1/dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2<
:transformer_block_1/sequential_1/dense_3/Tensordot/Const_1ђ
9transformer_block_1/sequential_1/dense_3/Tensordot/Prod_1ProdFtransformer_block_1/sequential_1/dense_3/Tensordot/GatherV2_1:output:0Ctransformer_block_1/sequential_1/dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2;
9transformer_block_1/sequential_1/dense_3/Tensordot/Prod_1¬
>transformer_block_1/sequential_1/dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2@
>transformer_block_1/sequential_1/dense_3/Tensordot/concat/axisэ
9transformer_block_1/sequential_1/dense_3/Tensordot/concatConcatV2@transformer_block_1/sequential_1/dense_3/Tensordot/free:output:0@transformer_block_1/sequential_1/dense_3/Tensordot/axes:output:0Gtransformer_block_1/sequential_1/dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2;
9transformer_block_1/sequential_1/dense_3/Tensordot/concat∞
8transformer_block_1/sequential_1/dense_3/Tensordot/stackPack@transformer_block_1/sequential_1/dense_3/Tensordot/Prod:output:0Btransformer_block_1/sequential_1/dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2:
8transformer_block_1/sequential_1/dense_3/Tensordot/stackј
<transformer_block_1/sequential_1/dense_3/Tensordot/transpose	Transpose;transformer_block_1/sequential_1/dense_2/Relu:activations:0Btransformer_block_1/sequential_1/dense_3/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€#@2>
<transformer_block_1/sequential_1/dense_3/Tensordot/transpose√
:transformer_block_1/sequential_1/dense_3/Tensordot/ReshapeReshape@transformer_block_1/sequential_1/dense_3/Tensordot/transpose:y:0Atransformer_block_1/sequential_1/dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2<
:transformer_block_1/sequential_1/dense_3/Tensordot/Reshape¬
9transformer_block_1/sequential_1/dense_3/Tensordot/MatMulMatMulCtransformer_block_1/sequential_1/dense_3/Tensordot/Reshape:output:0Itransformer_block_1/sequential_1/dense_3/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2;
9transformer_block_1/sequential_1/dense_3/Tensordot/MatMul¬
:transformer_block_1/sequential_1/dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2<
:transformer_block_1/sequential_1/dense_3/Tensordot/Const_2∆
@transformer_block_1/sequential_1/dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2B
@transformer_block_1/sequential_1/dense_3/Tensordot/concat_1/axisК
;transformer_block_1/sequential_1/dense_3/Tensordot/concat_1ConcatV2Dtransformer_block_1/sequential_1/dense_3/Tensordot/GatherV2:output:0Ctransformer_block_1/sequential_1/dense_3/Tensordot/Const_2:output:0Itransformer_block_1/sequential_1/dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2=
;transformer_block_1/sequential_1/dense_3/Tensordot/concat_1і
2transformer_block_1/sequential_1/dense_3/TensordotReshapeCtransformer_block_1/sequential_1/dense_3/Tensordot/MatMul:product:0Dtransformer_block_1/sequential_1/dense_3/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€# 24
2transformer_block_1/sequential_1/dense_3/TensordotЗ
?transformer_block_1/sequential_1/dense_3/BiasAdd/ReadVariableOpReadVariableOpHtransformer_block_1_sequential_1_dense_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02A
?transformer_block_1/sequential_1/dense_3/BiasAdd/ReadVariableOpЂ
0transformer_block_1/sequential_1/dense_3/BiasAddBiasAdd;transformer_block_1/sequential_1/dense_3/Tensordot:output:0Gtransformer_block_1/sequential_1/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€# 22
0transformer_block_1/sequential_1/dense_3/BiasAddЌ
&transformer_block_1/dropout_3/IdentityIdentity9transformer_block_1/sequential_1/dense_3/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€# 2(
&transformer_block_1/dropout_3/Identityе
transformer_block_1/add_1AddV2=transformer_block_1/layer_normalization_2/batchnorm/add_1:z:0/transformer_block_1/dropout_3/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€# 2
transformer_block_1/add_1ё
Htransformer_block_1/layer_normalization_3/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2J
Htransformer_block_1/layer_normalization_3/moments/mean/reduction_indices±
6transformer_block_1/layer_normalization_3/moments/meanMeantransformer_block_1/add_1:z:0Qtransformer_block_1/layer_normalization_3/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€#*
	keep_dims(28
6transformer_block_1/layer_normalization_3/moments/meanЗ
>transformer_block_1/layer_normalization_3/moments/StopGradientStopGradient?transformer_block_1/layer_normalization_3/moments/mean:output:0*
T0*+
_output_shapes
:€€€€€€€€€#2@
>transformer_block_1/layer_normalization_3/moments/StopGradientљ
Ctransformer_block_1/layer_normalization_3/moments/SquaredDifferenceSquaredDifferencetransformer_block_1/add_1:z:0Gtransformer_block_1/layer_normalization_3/moments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€# 2E
Ctransformer_block_1/layer_normalization_3/moments/SquaredDifferenceж
Ltransformer_block_1/layer_normalization_3/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2N
Ltransformer_block_1/layer_normalization_3/moments/variance/reduction_indicesз
:transformer_block_1/layer_normalization_3/moments/varianceMeanGtransformer_block_1/layer_normalization_3/moments/SquaredDifference:z:0Utransformer_block_1/layer_normalization_3/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€#*
	keep_dims(2<
:transformer_block_1/layer_normalization_3/moments/varianceї
9transformer_block_1/layer_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж52;
9transformer_block_1/layer_normalization_3/batchnorm/add/yЇ
7transformer_block_1/layer_normalization_3/batchnorm/addAddV2Ctransformer_block_1/layer_normalization_3/moments/variance:output:0Btransformer_block_1/layer_normalization_3/batchnorm/add/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€#29
7transformer_block_1/layer_normalization_3/batchnorm/addт
9transformer_block_1/layer_normalization_3/batchnorm/RsqrtRsqrt;transformer_block_1/layer_normalization_3/batchnorm/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€#2;
9transformer_block_1/layer_normalization_3/batchnorm/RsqrtЬ
Ftransformer_block_1/layer_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOpOtransformer_block_1_layer_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02H
Ftransformer_block_1/layer_normalization_3/batchnorm/mul/ReadVariableOpЊ
7transformer_block_1/layer_normalization_3/batchnorm/mulMul=transformer_block_1/layer_normalization_3/batchnorm/Rsqrt:y:0Ntransformer_block_1/layer_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€# 29
7transformer_block_1/layer_normalization_3/batchnorm/mulП
9transformer_block_1/layer_normalization_3/batchnorm/mul_1Multransformer_block_1/add_1:z:0;transformer_block_1/layer_normalization_3/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2;
9transformer_block_1/layer_normalization_3/batchnorm/mul_1±
9transformer_block_1/layer_normalization_3/batchnorm/mul_2Mul?transformer_block_1/layer_normalization_3/moments/mean:output:0;transformer_block_1/layer_normalization_3/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2;
9transformer_block_1/layer_normalization_3/batchnorm/mul_2Р
Btransformer_block_1/layer_normalization_3/batchnorm/ReadVariableOpReadVariableOpKtransformer_block_1_layer_normalization_3_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02D
Btransformer_block_1/layer_normalization_3/batchnorm/ReadVariableOpЇ
7transformer_block_1/layer_normalization_3/batchnorm/subSubJtransformer_block_1/layer_normalization_3/batchnorm/ReadVariableOp:value:0=transformer_block_1/layer_normalization_3/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 29
7transformer_block_1/layer_normalization_3/batchnorm/sub±
9transformer_block_1/layer_normalization_3/batchnorm/add_1AddV2=transformer_block_1/layer_normalization_3/batchnorm/mul_1:z:0;transformer_block_1/layer_normalization_3/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2;
9transformer_block_1/layer_normalization_3/batchnorm/add_1o
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€`  2
flatten/ConstЈ
flatten/ReshapeReshape=transformer_block_1/layer_normalization_3/batchnorm/add_1:z:0flatten/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€а2
flatten/Reshapet
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate/concat/axisґ
concatenate/concatConcatV2flatten/Reshape:output:0inputs_1 concatenate/concat/axis:output:0*
N*
T0*(
_output_shapes
:€€€€€€€€€и2
concatenate/concat¶
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes
:	и@*
dtype02
dense_4/MatMul/ReadVariableOp†
dense_4/MatMulMatMulconcatenate/concat:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_4/MatMul§
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_4/BiasAdd/ReadVariableOp°
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_4/BiasAddp
dense_4/ReluReludense_4/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_4/ReluВ
dropout_4/IdentityIdentitydense_4/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dropout_4/Identity•
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
dense_5/MatMul/ReadVariableOp†
dense_5/MatMulMatMuldropout_4/Identity:output:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_5/MatMul§
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_5/BiasAdd/ReadVariableOp°
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_5/BiasAddp
dense_5/ReluReludense_5/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_5/ReluВ
dropout_5/IdentityIdentitydense_5/Relu:activations:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dropout_5/Identity•
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
dense_6/MatMul/ReadVariableOp†
dense_6/MatMulMatMuldropout_5/Identity:output:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_6/MatMul§
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_6/BiasAdd/ReadVariableOp°
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_6/BiasAddг
IdentityIdentitydense_6/BiasAdd:output:0-^batch_normalization/batchnorm/ReadVariableOp/^batch_normalization/batchnorm/ReadVariableOp_1/^batch_normalization/batchnorm/ReadVariableOp_21^batch_normalization/batchnorm/mul/ReadVariableOp/^batch_normalization_1/batchnorm/ReadVariableOp1^batch_normalization_1/batchnorm/ReadVariableOp_11^batch_normalization_1/batchnorm/ReadVariableOp_23^batch_normalization_1/batchnorm/mul/ReadVariableOp^conv1d/BiasAdd/ReadVariableOp*^conv1d/conv1d/ExpandDims_1/ReadVariableOp ^conv1d_1/BiasAdd/ReadVariableOp,^conv1d_1/conv1d/ExpandDims_1/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp8^token_and_position_embedding/embedding/embedding_lookup:^token_and_position_embedding/embedding_1/embedding_lookupC^transformer_block_1/layer_normalization_2/batchnorm/ReadVariableOpG^transformer_block_1/layer_normalization_2/batchnorm/mul/ReadVariableOpC^transformer_block_1/layer_normalization_3/batchnorm/ReadVariableOpG^transformer_block_1/layer_normalization_3/batchnorm/mul/ReadVariableOpO^transformer_block_1/multi_head_attention_1/attention_output/add/ReadVariableOpY^transformer_block_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpB^transformer_block_1/multi_head_attention_1/key/add/ReadVariableOpL^transformer_block_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpD^transformer_block_1/multi_head_attention_1/query/add/ReadVariableOpN^transformer_block_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpD^transformer_block_1/multi_head_attention_1/value/add/ReadVariableOpN^transformer_block_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp@^transformer_block_1/sequential_1/dense_2/BiasAdd/ReadVariableOpB^transformer_block_1/sequential_1/dense_2/Tensordot/ReadVariableOp@^transformer_block_1/sequential_1/dense_3/BiasAdd/ReadVariableOpB^transformer_block_1/sequential_1/dense_3/Tensordot/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*ћ
_input_shapesЇ
Ј:€€€€€€€€€ДR:€€€€€€€€€::::::::::::::::::::::::::::::::::::2\
,batch_normalization/batchnorm/ReadVariableOp,batch_normalization/batchnorm/ReadVariableOp2`
.batch_normalization/batchnorm/ReadVariableOp_1.batch_normalization/batchnorm/ReadVariableOp_12`
.batch_normalization/batchnorm/ReadVariableOp_2.batch_normalization/batchnorm/ReadVariableOp_22d
0batch_normalization/batchnorm/mul/ReadVariableOp0batch_normalization/batchnorm/mul/ReadVariableOp2`
.batch_normalization_1/batchnorm/ReadVariableOp.batch_normalization_1/batchnorm/ReadVariableOp2d
0batch_normalization_1/batchnorm/ReadVariableOp_10batch_normalization_1/batchnorm/ReadVariableOp_12d
0batch_normalization_1/batchnorm/ReadVariableOp_20batch_normalization_1/batchnorm/ReadVariableOp_22h
2batch_normalization_1/batchnorm/mul/ReadVariableOp2batch_normalization_1/batchnorm/mul/ReadVariableOp2>
conv1d/BiasAdd/ReadVariableOpconv1d/BiasAdd/ReadVariableOp2V
)conv1d/conv1d/ExpandDims_1/ReadVariableOp)conv1d/conv1d/ExpandDims_1/ReadVariableOp2B
conv1d_1/BiasAdd/ReadVariableOpconv1d_1/BiasAdd/ReadVariableOp2Z
+conv1d_1/conv1d/ExpandDims_1/ReadVariableOp+conv1d_1/conv1d/ExpandDims_1/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2r
7token_and_position_embedding/embedding/embedding_lookup7token_and_position_embedding/embedding/embedding_lookup2v
9token_and_position_embedding/embedding_1/embedding_lookup9token_and_position_embedding/embedding_1/embedding_lookup2И
Btransformer_block_1/layer_normalization_2/batchnorm/ReadVariableOpBtransformer_block_1/layer_normalization_2/batchnorm/ReadVariableOp2Р
Ftransformer_block_1/layer_normalization_2/batchnorm/mul/ReadVariableOpFtransformer_block_1/layer_normalization_2/batchnorm/mul/ReadVariableOp2И
Btransformer_block_1/layer_normalization_3/batchnorm/ReadVariableOpBtransformer_block_1/layer_normalization_3/batchnorm/ReadVariableOp2Р
Ftransformer_block_1/layer_normalization_3/batchnorm/mul/ReadVariableOpFtransformer_block_1/layer_normalization_3/batchnorm/mul/ReadVariableOp2†
Ntransformer_block_1/multi_head_attention_1/attention_output/add/ReadVariableOpNtransformer_block_1/multi_head_attention_1/attention_output/add/ReadVariableOp2і
Xtransformer_block_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpXtransformer_block_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp2Ж
Atransformer_block_1/multi_head_attention_1/key/add/ReadVariableOpAtransformer_block_1/multi_head_attention_1/key/add/ReadVariableOp2Ъ
Ktransformer_block_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpKtransformer_block_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp2К
Ctransformer_block_1/multi_head_attention_1/query/add/ReadVariableOpCtransformer_block_1/multi_head_attention_1/query/add/ReadVariableOp2Ю
Mtransformer_block_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpMtransformer_block_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp2К
Ctransformer_block_1/multi_head_attention_1/value/add/ReadVariableOpCtransformer_block_1/multi_head_attention_1/value/add/ReadVariableOp2Ю
Mtransformer_block_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpMtransformer_block_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp2В
?transformer_block_1/sequential_1/dense_2/BiasAdd/ReadVariableOp?transformer_block_1/sequential_1/dense_2/BiasAdd/ReadVariableOp2Ж
Atransformer_block_1/sequential_1/dense_2/Tensordot/ReadVariableOpAtransformer_block_1/sequential_1/dense_2/Tensordot/ReadVariableOp2В
?transformer_block_1/sequential_1/dense_3/BiasAdd/ReadVariableOp?transformer_block_1/sequential_1/dense_3/BiasAdd/ReadVariableOp2Ж
Atransformer_block_1/sequential_1/dense_3/Tensordot/ReadVariableOpAtransformer_block_1/sequential_1/dense_3/Tensordot/ReadVariableOp:R N
(
_output_shapes
:€€€€€€€€€ДR
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs/1
Ћ
¶
,__inference_sequential_1_layer_call_fn_99399
dense_2_input
unknown
	unknown_0
	unknown_1
	unknown_2
identityИҐStatefulPartitionedCallЯ
StatefulPartitionedCallStatefulPartitionedCalldense_2_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€# *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_993882
StatefulPartitionedCallТ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:€€€€€€€€€# 2

Identity"
identityIdentity:output:0*:
_input_shapes)
':€€€€€€€€€# ::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
+
_output_shapes
:€€€€€€€€€# 
'
_user_specified_namedense_2_input
ѕ

а
4__inference_transformer_block_1_layer_call_fn_102232

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14
identityИҐStatefulPartitionedCallј
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€# *2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_transformer_block_1_layer_call_and_return_conditional_losses_998562
StatefulPartitionedCallТ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:€€€€€€€€€# 2

Identity"
identityIdentity:output:0*j
_input_shapesY
W:€€€€€€€€€# ::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€# 
 
_user_specified_nameinputs
д0
≈
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_99188

inputs
assignmovingavg_99163
assignmovingavg_1_99169)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identityИҐ#AssignMovingAvg/AssignSubVariableOpҐAssignMovingAvg/ReadVariableOpҐ%AssignMovingAvg_1/AssignSubVariableOpҐ AssignMovingAvg_1/ReadVariableOpҐbatchnorm/ReadVariableOpҐbatchnorm/mul/ReadVariableOpС
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indicesУ
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
: *
	keep_dims(2
moments/meanА
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
: 2
moments/StopGradient±
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
moments/SquaredDifferenceЩ
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indicesґ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
: *
	keep_dims(2
moments/varianceБ
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2
moments/SqueezeЙ
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2
moments/Squeeze_1Ћ
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*(
_class
loc:@AssignMovingAvg/99163*
_output_shapes
: *
dtype0*
valueB
 *
„#<2
AssignMovingAvg/decayТ
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_99163*
_output_shapes
: *
dtype02 
AssignMovingAvg/ReadVariableOpр
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*(
_class
loc:@AssignMovingAvg/99163*
_output_shapes
: 2
AssignMovingAvg/subз
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*(
_class
loc:@AssignMovingAvg/99163*
_output_shapes
: 2
AssignMovingAvg/mul≠
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_99163AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*(
_class
loc:@AssignMovingAvg/99163*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp—
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_1/99169*
_output_shapes
: *
dtype0*
valueB
 *
„#<2
AssignMovingAvg_1/decayШ
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_99169*
_output_shapes
: *
dtype02"
 AssignMovingAvg_1/ReadVariableOpъ
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_1/99169*
_output_shapes
: 2
AssignMovingAvg_1/subс
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_1/99169*
_output_shapes
: 2
AssignMovingAvg_1/mulє
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_99169AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_1/99169*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2
batchnorm/add/yВ
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
: 2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: 2
batchnorm/RsqrtЮ
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/mul/ReadVariableOpЕ
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2
batchnorm/mulГ
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
: 2
batchnorm/mul_2Т
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOpБ
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2
batchnorm/subТ
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
batchnorm/add_1ј
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2

Identity"
identityIdentity:output:0*C
_input_shapes2
0:€€€€€€€€€€€€€€€€€€ ::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs
і
h
>__inference_add_layer_call_and_return_conditional_losses_99699

inputs
inputs_1
identity[
addAddV2inputsinputs_1*
T0*+
_output_shapes
:€€€€€€€€€# 2
add_
IdentityIdentityadd:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2

Identity"
identityIdentity:output:0*A
_input_shapes0
.:€€€€€€€€€# :€€€€€€€€€# :S O
+
_output_shapes
:€€€€€€€€€# 
 
_user_specified_nameinputs:SO
+
_output_shapes
:€€€€€€€€€# 
 
_user_specified_nameinputs
ўH
І
H__inference_sequential_1_layer_call_and_return_conditional_losses_102463

inputs-
)dense_2_tensordot_readvariableop_resource+
'dense_2_biasadd_readvariableop_resource-
)dense_3_tensordot_readvariableop_resource+
'dense_3_biasadd_readvariableop_resource
identityИҐdense_2/BiasAdd/ReadVariableOpҐ dense_2/Tensordot/ReadVariableOpҐdense_3/BiasAdd/ReadVariableOpҐ dense_3/Tensordot/ReadVariableOpЃ
 dense_2/Tensordot/ReadVariableOpReadVariableOp)dense_2_tensordot_readvariableop_resource*
_output_shapes

: @*
dtype02"
 dense_2/Tensordot/ReadVariableOpz
dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_2/Tensordot/axesБ
dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_2/Tensordot/freeh
dense_2/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
dense_2/Tensordot/ShapeД
dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_2/Tensordot/GatherV2/axisщ
dense_2/Tensordot/GatherV2GatherV2 dense_2/Tensordot/Shape:output:0dense_2/Tensordot/free:output:0(dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_2/Tensordot/GatherV2И
!dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_2/Tensordot/GatherV2_1/axis€
dense_2/Tensordot/GatherV2_1GatherV2 dense_2/Tensordot/Shape:output:0dense_2/Tensordot/axes:output:0*dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_2/Tensordot/GatherV2_1|
dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_2/Tensordot/Const†
dense_2/Tensordot/ProdProd#dense_2/Tensordot/GatherV2:output:0 dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_2/Tensordot/ProdА
dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_2/Tensordot/Const_1®
dense_2/Tensordot/Prod_1Prod%dense_2/Tensordot/GatherV2_1:output:0"dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_2/Tensordot/Prod_1А
dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense_2/Tensordot/concat/axisЎ
dense_2/Tensordot/concatConcatV2dense_2/Tensordot/free:output:0dense_2/Tensordot/axes:output:0&dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_2/Tensordot/concatђ
dense_2/Tensordot/stackPackdense_2/Tensordot/Prod:output:0!dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_2/Tensordot/stack®
dense_2/Tensordot/transpose	Transposeinputs!dense_2/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€# 2
dense_2/Tensordot/transposeњ
dense_2/Tensordot/ReshapeReshapedense_2/Tensordot/transpose:y:0 dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
dense_2/Tensordot/ReshapeЊ
dense_2/Tensordot/MatMulMatMul"dense_2/Tensordot/Reshape:output:0(dense_2/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_2/Tensordot/MatMulА
dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2
dense_2/Tensordot/Const_2Д
dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_2/Tensordot/concat_1/axisе
dense_2/Tensordot/concat_1ConcatV2#dense_2/Tensordot/GatherV2:output:0"dense_2/Tensordot/Const_2:output:0(dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_2/Tensordot/concat_1∞
dense_2/TensordotReshape"dense_2/Tensordot/MatMul:product:0#dense_2/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€#@2
dense_2/Tensordot§
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_2/BiasAdd/ReadVariableOpІ
dense_2/BiasAddBiasAdddense_2/Tensordot:output:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€#@2
dense_2/BiasAddt
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€#@2
dense_2/ReluЃ
 dense_3/Tensordot/ReadVariableOpReadVariableOp)dense_3_tensordot_readvariableop_resource*
_output_shapes

:@ *
dtype02"
 dense_3/Tensordot/ReadVariableOpz
dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_3/Tensordot/axesБ
dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_3/Tensordot/free|
dense_3/Tensordot/ShapeShapedense_2/Relu:activations:0*
T0*
_output_shapes
:2
dense_3/Tensordot/ShapeД
dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_3/Tensordot/GatherV2/axisщ
dense_3/Tensordot/GatherV2GatherV2 dense_3/Tensordot/Shape:output:0dense_3/Tensordot/free:output:0(dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_3/Tensordot/GatherV2И
!dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_3/Tensordot/GatherV2_1/axis€
dense_3/Tensordot/GatherV2_1GatherV2 dense_3/Tensordot/Shape:output:0dense_3/Tensordot/axes:output:0*dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_3/Tensordot/GatherV2_1|
dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_3/Tensordot/Const†
dense_3/Tensordot/ProdProd#dense_3/Tensordot/GatherV2:output:0 dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_3/Tensordot/ProdА
dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_3/Tensordot/Const_1®
dense_3/Tensordot/Prod_1Prod%dense_3/Tensordot/GatherV2_1:output:0"dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_3/Tensordot/Prod_1А
dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense_3/Tensordot/concat/axisЎ
dense_3/Tensordot/concatConcatV2dense_3/Tensordot/free:output:0dense_3/Tensordot/axes:output:0&dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_3/Tensordot/concatђ
dense_3/Tensordot/stackPackdense_3/Tensordot/Prod:output:0!dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_3/Tensordot/stackЉ
dense_3/Tensordot/transpose	Transposedense_2/Relu:activations:0!dense_3/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€#@2
dense_3/Tensordot/transposeњ
dense_3/Tensordot/ReshapeReshapedense_3/Tensordot/transpose:y:0 dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
dense_3/Tensordot/ReshapeЊ
dense_3/Tensordot/MatMulMatMul"dense_3/Tensordot/Reshape:output:0(dense_3/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
dense_3/Tensordot/MatMulА
dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_3/Tensordot/Const_2Д
dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_3/Tensordot/concat_1/axisе
dense_3/Tensordot/concat_1ConcatV2#dense_3/Tensordot/GatherV2:output:0"dense_3/Tensordot/Const_2:output:0(dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_3/Tensordot/concat_1∞
dense_3/TensordotReshape"dense_3/Tensordot/MatMul:product:0#dense_3/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€# 2
dense_3/Tensordot§
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
dense_3/BiasAdd/ReadVariableOpІ
dense_3/BiasAddBiasAdddense_3/Tensordot:output:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€# 2
dense_3/BiasAddш
IdentityIdentitydense_3/BiasAdd:output:0^dense_2/BiasAdd/ReadVariableOp!^dense_2/Tensordot/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp!^dense_3/Tensordot/ReadVariableOp*
T0*+
_output_shapes
:€€€€€€€€€# 2

Identity"
identityIdentity:output:0*:
_input_shapes)
':€€€€€€€€€# ::::2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2D
 dense_2/Tensordot/ReadVariableOp dense_2/Tensordot/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2D
 dense_3/Tensordot/ReadVariableOp dense_3/Tensordot/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€# 
 
_user_specified_nameinputs
ЫZ
Ј
A__inference_model_layer_call_and_return_conditional_losses_100263
input_1
input_2&
"token_and_position_embedding_99439&
"token_and_position_embedding_99441
conv1d_99471
conv1d_99473
conv1d_1_99504
conv1d_1_99506
batch_normalization_99593
batch_normalization_99595
batch_normalization_99597
batch_normalization_99599
batch_normalization_1_99684
batch_normalization_1_99686
batch_normalization_1_99688
batch_normalization_1_99690
transformer_block_1_100059
transformer_block_1_100061
transformer_block_1_100063
transformer_block_1_100065
transformer_block_1_100067
transformer_block_1_100069
transformer_block_1_100071
transformer_block_1_100073
transformer_block_1_100075
transformer_block_1_100077
transformer_block_1_100079
transformer_block_1_100081
transformer_block_1_100083
transformer_block_1_100085
transformer_block_1_100087
transformer_block_1_100089
dense_4_100144
dense_4_100146
dense_5_100201
dense_5_100203
dense_6_100257
dense_6_100259
identityИҐ+batch_normalization/StatefulPartitionedCallҐ-batch_normalization_1/StatefulPartitionedCallҐconv1d/StatefulPartitionedCallҐ conv1d_1/StatefulPartitionedCallҐdense_4/StatefulPartitionedCallҐdense_5/StatefulPartitionedCallҐdense_6/StatefulPartitionedCallҐ!dropout_4/StatefulPartitionedCallҐ!dropout_5/StatefulPartitionedCallҐ4token_and_position_embedding/StatefulPartitionedCallҐ+transformer_block_1/StatefulPartitionedCallю
4token_and_position_embedding/StatefulPartitionedCallStatefulPartitionedCallinput_1"token_and_position_embedding_99439"token_and_position_embedding_99441*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:€€€€€€€€€ДR *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *`
f[RY
W__inference_token_and_position_embedding_layer_call_and_return_conditional_losses_9942826
4token_and_position_embedding/StatefulPartitionedCall∆
conv1d/StatefulPartitionedCallStatefulPartitionedCall=token_and_position_embedding/StatefulPartitionedCall:output:0conv1d_99471conv1d_99473*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:€€€€€€€€€ДR *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_conv1d_layer_call_and_return_conditional_losses_994602 
conv1d/StatefulPartitionedCallЧ
!average_pooling1d/PartitionedCallPartitionedCall'conv1d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:€€€€€€€€€ё * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_average_pooling1d_layer_call_and_return_conditional_losses_989162#
!average_pooling1d/PartitionedCallљ
 conv1d_1/StatefulPartitionedCallStatefulPartitionedCall*average_pooling1d/PartitionedCall:output:0conv1d_1_99504conv1d_1_99506*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:€€€€€€€€€ё *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_conv1d_1_layer_call_and_return_conditional_losses_994932"
 conv1d_1/StatefulPartitionedCall≤
#average_pooling1d_2/PartitionedCallPartitionedCall=token_and_position_embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€# * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_average_pooling1d_2_layer_call_and_return_conditional_losses_989462%
#average_pooling1d_2/PartitionedCallЮ
#average_pooling1d_1/PartitionedCallPartitionedCall)conv1d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€# * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_average_pooling1d_1_layer_call_and_return_conditional_losses_989312%
#average_pooling1d_1/PartitionedCall≠
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall,average_pooling1d_1/PartitionedCall:output:0batch_normalization_99593batch_normalization_99595batch_normalization_99597batch_normalization_99599*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€# *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_995462-
+batch_normalization/StatefulPartitionedCallї
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall,average_pooling1d_2/PartitionedCall:output:0batch_normalization_1_99684batch_normalization_1_99686batch_normalization_1_99688batch_normalization_1_99690*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€# *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_996372/
-batch_normalization_1/StatefulPartitionedCall≤
add/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:06batch_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€# * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_add_layer_call_and_return_conditional_losses_996992
add/PartitionedCallЛ
+transformer_block_1/StatefulPartitionedCallStatefulPartitionedCalladd/PartitionedCall:output:0transformer_block_1_100059transformer_block_1_100061transformer_block_1_100063transformer_block_1_100065transformer_block_1_100067transformer_block_1_100069transformer_block_1_100071transformer_block_1_100073transformer_block_1_100075transformer_block_1_100077transformer_block_1_100079transformer_block_1_100081transformer_block_1_100083transformer_block_1_100085transformer_block_1_100087transformer_block_1_100089*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€# *2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_transformer_block_1_layer_call_and_return_conditional_losses_998562-
+transformer_block_1/StatefulPartitionedCallГ
flatten/PartitionedCallPartitionedCall4transformer_block_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€а* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_1000982
flatten/PartitionedCallЕ
concatenate/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0input_2*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€и* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_concatenate_layer_call_and_return_conditional_losses_1001132
concatenate/PartitionedCall∞
dense_4/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0dense_4_100144dense_4_100146*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_1001332!
dense_4/StatefulPartitionedCallФ
!dropout_4/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_4_layer_call_and_return_conditional_losses_1001612#
!dropout_4/StatefulPartitionedCallґ
dense_5/StatefulPartitionedCallStatefulPartitionedCall*dropout_4/StatefulPartitionedCall:output:0dense_5_100201dense_5_100203*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_1001902!
dense_5/StatefulPartitionedCallЄ
!dropout_5/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0"^dropout_4/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_5_layer_call_and_return_conditional_losses_1002182#
!dropout_5/StatefulPartitionedCallґ
dense_6/StatefulPartitionedCallStatefulPartitionedCall*dropout_5/StatefulPartitionedCall:output:0dense_6_100257dense_6_100259*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_1002462!
dense_6/StatefulPartitionedCall±
IdentityIdentity(dense_6/StatefulPartitionedCall:output:0,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall^conv1d/StatefulPartitionedCall!^conv1d_1/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall"^dropout_4/StatefulPartitionedCall"^dropout_5/StatefulPartitionedCall5^token_and_position_embedding/StatefulPartitionedCall,^transformer_block_1/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*ћ
_input_shapesЇ
Ј:€€€€€€€€€ДR:€€€€€€€€€::::::::::::::::::::::::::::::::::::2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2@
conv1d/StatefulPartitionedCallconv1d/StatefulPartitionedCall2D
 conv1d_1/StatefulPartitionedCall conv1d_1/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2F
!dropout_4/StatefulPartitionedCall!dropout_4/StatefulPartitionedCall2F
!dropout_5/StatefulPartitionedCall!dropout_5/StatefulPartitionedCall2l
4token_and_position_embedding/StatefulPartitionedCall4token_and_position_embedding/StatefulPartitionedCall2Z
+transformer_block_1/StatefulPartitionedCall+transformer_block_1/StatefulPartitionedCall:Q M
(
_output_shapes
:€€€€€€€€€ДR
!
_user_specified_name	input_1:PL
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	input_2
о
|
'__inference_conv1d_layer_call_fn_101555

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:€€€€€€€€€ДR *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_conv1d_layer_call_and_return_conditional_losses_994602
StatefulPartitionedCallУ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:€€€€€€€€€ДR 2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :€€€€€€€€€ДR ::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:€€€€€€€€€ДR 
 
_user_specified_nameinputs
ж
Ж
O__inference_batch_normalization_layer_call_and_return_conditional_losses_101718

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identityИҐbatchnorm/ReadVariableOpҐbatchnorm/ReadVariableOp_1Ґbatchnorm/ReadVariableOp_2Ґbatchnorm/mul/ReadVariableOpТ
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2
batchnorm/add/yИ
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
: 2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: 2
batchnorm/RsqrtЮ
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/mul/ReadVariableOpЕ
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2
batchnorm/mulz
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2
batchnorm/mul_1Ш
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp_1Е
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
: 2
batchnorm/mul_2Ш
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp_2Г
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2
batchnorm/subЙ
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2
batchnorm/add_1я
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*+
_output_shapes
:€€€€€€€€€# 2

Identity"
identityIdentity:output:0*:
_input_shapes)
':€€€€€€€€€# ::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€# 
 
_user_specified_nameinputs
р	
№
C__inference_dense_4_layer_call_and_return_conditional_losses_100133

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	и@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
ReluЧ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€и::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€и
 
_user_specified_nameinputs
 
ю
X__inference_token_and_position_embedding_layer_call_and_return_conditional_losses_101521
x'
#embedding_1_embedding_lookup_101508%
!embedding_embedding_lookup_101514
identityИҐembedding/embedding_lookupҐembedding_1/embedding_lookup?
ShapeShapex*
T0*
_output_shapes
:2
Shape}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2в
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice\
range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
range/start\
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
range/deltaА
rangeRangerange/start:output:0strided_slice:output:0range/delta:output:0*#
_output_shapes
:€€€€€€€€€2
rangeѓ
embedding_1/embedding_lookupResourceGather#embedding_1_embedding_lookup_101508range:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*6
_class,
*(loc:@embedding_1/embedding_lookup/101508*'
_output_shapes
:€€€€€€€€€ *
dtype02
embedding_1/embedding_lookupЩ
%embedding_1/embedding_lookup/IdentityIdentity%embedding_1/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*6
_class,
*(loc:@embedding_1/embedding_lookup/101508*'
_output_shapes
:€€€€€€€€€ 2'
%embedding_1/embedding_lookup/Identityј
'embedding_1/embedding_lookup/Identity_1Identity.embedding_1/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2)
'embedding_1/embedding_lookup/Identity_1m
embedding/CastCastx*

DstT0*

SrcT0*(
_output_shapes
:€€€€€€€€€ДR2
embedding/Cast∞
embedding/embedding_lookupResourceGather!embedding_embedding_lookup_101514embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*4
_class*
(&loc:@embedding/embedding_lookup/101514*,
_output_shapes
:€€€€€€€€€ДR *
dtype02
embedding/embedding_lookupЦ
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*4
_class*
(&loc:@embedding/embedding_lookup/101514*,
_output_shapes
:€€€€€€€€€ДR 2%
#embedding/embedding_lookup/Identityњ
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:€€€€€€€€€ДR 2'
%embedding/embedding_lookup/Identity_1ђ
addAddV2.embedding/embedding_lookup/Identity_1:output:00embedding_1/embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:€€€€€€€€€ДR 2
addЬ
IdentityIdentityadd:z:0^embedding/embedding_lookup^embedding_1/embedding_lookup*
T0*,
_output_shapes
:€€€€€€€€€ДR 2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€ДR::28
embedding/embedding_lookupembedding/embedding_lookup2<
embedding_1/embedding_lookupembedding_1/embedding_lookup:K G
(
_output_shapes
:€€€€€€€€€ДR

_user_specified_namex
ўH
І
H__inference_sequential_1_layer_call_and_return_conditional_losses_102520

inputs-
)dense_2_tensordot_readvariableop_resource+
'dense_2_biasadd_readvariableop_resource-
)dense_3_tensordot_readvariableop_resource+
'dense_3_biasadd_readvariableop_resource
identityИҐdense_2/BiasAdd/ReadVariableOpҐ dense_2/Tensordot/ReadVariableOpҐdense_3/BiasAdd/ReadVariableOpҐ dense_3/Tensordot/ReadVariableOpЃ
 dense_2/Tensordot/ReadVariableOpReadVariableOp)dense_2_tensordot_readvariableop_resource*
_output_shapes

: @*
dtype02"
 dense_2/Tensordot/ReadVariableOpz
dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_2/Tensordot/axesБ
dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_2/Tensordot/freeh
dense_2/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
dense_2/Tensordot/ShapeД
dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_2/Tensordot/GatherV2/axisщ
dense_2/Tensordot/GatherV2GatherV2 dense_2/Tensordot/Shape:output:0dense_2/Tensordot/free:output:0(dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_2/Tensordot/GatherV2И
!dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_2/Tensordot/GatherV2_1/axis€
dense_2/Tensordot/GatherV2_1GatherV2 dense_2/Tensordot/Shape:output:0dense_2/Tensordot/axes:output:0*dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_2/Tensordot/GatherV2_1|
dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_2/Tensordot/Const†
dense_2/Tensordot/ProdProd#dense_2/Tensordot/GatherV2:output:0 dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_2/Tensordot/ProdА
dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_2/Tensordot/Const_1®
dense_2/Tensordot/Prod_1Prod%dense_2/Tensordot/GatherV2_1:output:0"dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_2/Tensordot/Prod_1А
dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense_2/Tensordot/concat/axisЎ
dense_2/Tensordot/concatConcatV2dense_2/Tensordot/free:output:0dense_2/Tensordot/axes:output:0&dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_2/Tensordot/concatђ
dense_2/Tensordot/stackPackdense_2/Tensordot/Prod:output:0!dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_2/Tensordot/stack®
dense_2/Tensordot/transpose	Transposeinputs!dense_2/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€# 2
dense_2/Tensordot/transposeњ
dense_2/Tensordot/ReshapeReshapedense_2/Tensordot/transpose:y:0 dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
dense_2/Tensordot/ReshapeЊ
dense_2/Tensordot/MatMulMatMul"dense_2/Tensordot/Reshape:output:0(dense_2/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_2/Tensordot/MatMulА
dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2
dense_2/Tensordot/Const_2Д
dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_2/Tensordot/concat_1/axisе
dense_2/Tensordot/concat_1ConcatV2#dense_2/Tensordot/GatherV2:output:0"dense_2/Tensordot/Const_2:output:0(dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_2/Tensordot/concat_1∞
dense_2/TensordotReshape"dense_2/Tensordot/MatMul:product:0#dense_2/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€#@2
dense_2/Tensordot§
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_2/BiasAdd/ReadVariableOpІ
dense_2/BiasAddBiasAdddense_2/Tensordot:output:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€#@2
dense_2/BiasAddt
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€#@2
dense_2/ReluЃ
 dense_3/Tensordot/ReadVariableOpReadVariableOp)dense_3_tensordot_readvariableop_resource*
_output_shapes

:@ *
dtype02"
 dense_3/Tensordot/ReadVariableOpz
dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense_3/Tensordot/axesБ
dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense_3/Tensordot/free|
dense_3/Tensordot/ShapeShapedense_2/Relu:activations:0*
T0*
_output_shapes
:2
dense_3/Tensordot/ShapeД
dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_3/Tensordot/GatherV2/axisщ
dense_3/Tensordot/GatherV2GatherV2 dense_3/Tensordot/Shape:output:0dense_3/Tensordot/free:output:0(dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_3/Tensordot/GatherV2И
!dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2#
!dense_3/Tensordot/GatherV2_1/axis€
dense_3/Tensordot/GatherV2_1GatherV2 dense_3/Tensordot/Shape:output:0dense_3/Tensordot/axes:output:0*dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense_3/Tensordot/GatherV2_1|
dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense_3/Tensordot/Const†
dense_3/Tensordot/ProdProd#dense_3/Tensordot/GatherV2:output:0 dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense_3/Tensordot/ProdА
dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_3/Tensordot/Const_1®
dense_3/Tensordot/Prod_1Prod%dense_3/Tensordot/GatherV2_1:output:0"dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense_3/Tensordot/Prod_1А
dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense_3/Tensordot/concat/axisЎ
dense_3/Tensordot/concatConcatV2dense_3/Tensordot/free:output:0dense_3/Tensordot/axes:output:0&dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense_3/Tensordot/concatђ
dense_3/Tensordot/stackPackdense_3/Tensordot/Prod:output:0!dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense_3/Tensordot/stackЉ
dense_3/Tensordot/transpose	Transposedense_2/Relu:activations:0!dense_3/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€#@2
dense_3/Tensordot/transposeњ
dense_3/Tensordot/ReshapeReshapedense_3/Tensordot/transpose:y:0 dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
dense_3/Tensordot/ReshapeЊ
dense_3/Tensordot/MatMulMatMul"dense_3/Tensordot/Reshape:output:0(dense_3/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
dense_3/Tensordot/MatMulА
dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2
dense_3/Tensordot/Const_2Д
dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense_3/Tensordot/concat_1/axisе
dense_3/Tensordot/concat_1ConcatV2#dense_3/Tensordot/GatherV2:output:0"dense_3/Tensordot/Const_2:output:0(dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense_3/Tensordot/concat_1∞
dense_3/TensordotReshape"dense_3/Tensordot/MatMul:product:0#dense_3/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€# 2
dense_3/Tensordot§
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
dense_3/BiasAdd/ReadVariableOpІ
dense_3/BiasAddBiasAdddense_3/Tensordot:output:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€# 2
dense_3/BiasAddш
IdentityIdentitydense_3/BiasAdd:output:0^dense_2/BiasAdd/ReadVariableOp!^dense_2/Tensordot/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp!^dense_3/Tensordot/ReadVariableOp*
T0*+
_output_shapes
:€€€€€€€€€# 2

Identity"
identityIdentity:output:0*:
_input_shapes)
':€€€€€€€€€# ::::2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2D
 dense_2/Tensordot/ReadVariableOp dense_2/Tensordot/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2D
 dense_3/Tensordot/ReadVariableOp dense_3/Tensordot/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€# 
 
_user_specified_nameinputs
с0
∆
O__inference_batch_normalization_layer_call_and_return_conditional_losses_101616

inputs
assignmovingavg_101591
assignmovingavg_1_101597)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identityИҐ#AssignMovingAvg/AssignSubVariableOpҐAssignMovingAvg/ReadVariableOpҐ%AssignMovingAvg_1/AssignSubVariableOpҐ AssignMovingAvg_1/ReadVariableOpҐbatchnorm/ReadVariableOpҐbatchnorm/mul/ReadVariableOpС
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indicesУ
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
: *
	keep_dims(2
moments/meanА
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
: 2
moments/StopGradient±
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
moments/SquaredDifferenceЩ
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indicesґ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
: *
	keep_dims(2
moments/varianceБ
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2
moments/SqueezeЙ
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2
moments/Squeeze_1ћ
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*)
_class
loc:@AssignMovingAvg/101591*
_output_shapes
: *
dtype0*
valueB
 *
„#<2
AssignMovingAvg/decayУ
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_101591*
_output_shapes
: *
dtype02 
AssignMovingAvg/ReadVariableOpс
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*)
_class
loc:@AssignMovingAvg/101591*
_output_shapes
: 2
AssignMovingAvg/subи
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*)
_class
loc:@AssignMovingAvg/101591*
_output_shapes
: 2
AssignMovingAvg/mulѓ
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_101591AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*)
_class
loc:@AssignMovingAvg/101591*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp“
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*+
_class!
loc:@AssignMovingAvg_1/101597*
_output_shapes
: *
dtype0*
valueB
 *
„#<2
AssignMovingAvg_1/decayЩ
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_101597*
_output_shapes
: *
dtype02"
 AssignMovingAvg_1/ReadVariableOpы
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/101597*
_output_shapes
: 2
AssignMovingAvg_1/subт
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/101597*
_output_shapes
: 2
AssignMovingAvg_1/mulї
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_101597AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*+
_class!
loc:@AssignMovingAvg_1/101597*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2
batchnorm/add/yВ
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
: 2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: 2
batchnorm/RsqrtЮ
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/mul/ReadVariableOpЕ
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2
batchnorm/mulГ
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
: 2
batchnorm/mul_2Т
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOpБ
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2
batchnorm/subТ
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
batchnorm/add_1ј
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2

Identity"
identityIdentity:output:0*C
_input_shapes2
0:€€€€€€€€€€€€€€€€€€ ::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs
в0
√
N__inference_batch_normalization_layer_call_and_return_conditional_losses_99048

inputs
assignmovingavg_99023
assignmovingavg_1_99029)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identityИҐ#AssignMovingAvg/AssignSubVariableOpҐAssignMovingAvg/ReadVariableOpҐ%AssignMovingAvg_1/AssignSubVariableOpҐ AssignMovingAvg_1/ReadVariableOpҐbatchnorm/ReadVariableOpҐbatchnorm/mul/ReadVariableOpС
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indicesУ
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
: *
	keep_dims(2
moments/meanА
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
: 2
moments/StopGradient±
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
moments/SquaredDifferenceЩ
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indicesґ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
: *
	keep_dims(2
moments/varianceБ
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2
moments/SqueezeЙ
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2
moments/Squeeze_1Ћ
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*(
_class
loc:@AssignMovingAvg/99023*
_output_shapes
: *
dtype0*
valueB
 *
„#<2
AssignMovingAvg/decayТ
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_99023*
_output_shapes
: *
dtype02 
AssignMovingAvg/ReadVariableOpр
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*(
_class
loc:@AssignMovingAvg/99023*
_output_shapes
: 2
AssignMovingAvg/subз
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*(
_class
loc:@AssignMovingAvg/99023*
_output_shapes
: 2
AssignMovingAvg/mul≠
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_99023AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*(
_class
loc:@AssignMovingAvg/99023*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp—
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_1/99029*
_output_shapes
: *
dtype0*
valueB
 *
„#<2
AssignMovingAvg_1/decayШ
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_99029*
_output_shapes
: *
dtype02"
 AssignMovingAvg_1/ReadVariableOpъ
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_1/99029*
_output_shapes
: 2
AssignMovingAvg_1/subс
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_1/99029*
_output_shapes
: 2
AssignMovingAvg_1/mulє
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_99029AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_1/99029*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2
batchnorm/add/yВ
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
: 2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: 2
batchnorm/RsqrtЮ
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/mul/ReadVariableOpЕ
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2
batchnorm/mulГ
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
: 2
batchnorm/mul_2Т
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOpБ
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2
batchnorm/subТ
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
batchnorm/add_1ј
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2

Identity"
identityIdentity:output:0*C
_input_shapes2
0:€€€€€€€€€€€€€€€€€€ ::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs
Ч
F
*__inference_dropout_4_layer_call_fn_102340

inputs
identity∆
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_4_layer_call_and_return_conditional_losses_1001662
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*&
_input_shapes
:€€€€€€€€€@:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
ц
j
N__inference_average_pooling1d_2_layer_call_and_return_conditional_losses_98946

inputs
identityb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dimУ

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2

ExpandDimsЉ
AvgPoolAvgPoolExpandDims:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize	
ђ*
paddingVALID*
strides	
ђ2	
AvgPoolО
SqueezeSqueezeAvgPool:output:0*
T0*=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€*
squeeze_dims
2	
Squeezez
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€:e a
=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ф
Ж
O__inference_batch_normalization_layer_call_and_return_conditional_losses_101636

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identityИҐbatchnorm/ReadVariableOpҐbatchnorm/ReadVariableOp_1Ґbatchnorm/ReadVariableOp_2Ґbatchnorm/mul/ReadVariableOpТ
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2
batchnorm/add/yИ
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
: 2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: 2
batchnorm/RsqrtЮ
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/mul/ReadVariableOpЕ
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2
batchnorm/mulГ
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
batchnorm/mul_1Ш
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp_1Е
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
: 2
batchnorm/mul_2Ш
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp_2Г
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2
batchnorm/subТ
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
batchnorm/add_1и
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2

Identity"
identityIdentity:output:0*C
_input_shapes2
0:€€€€€€€€€€€€€€€€€€ ::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs
 »
Ё0
"__inference__traced_restore_103103
file_prefix"
assignvariableop_conv1d_kernel"
assignvariableop_1_conv1d_bias&
"assignvariableop_2_conv1d_1_kernel$
 assignvariableop_3_conv1d_1_bias0
,assignvariableop_4_batch_normalization_gamma/
+assignvariableop_5_batch_normalization_beta6
2assignvariableop_6_batch_normalization_moving_mean:
6assignvariableop_7_batch_normalization_moving_variance2
.assignvariableop_8_batch_normalization_1_gamma1
-assignvariableop_9_batch_normalization_1_beta9
5assignvariableop_10_batch_normalization_1_moving_mean=
9assignvariableop_11_batch_normalization_1_moving_variance&
"assignvariableop_12_dense_4_kernel$
 assignvariableop_13_dense_4_bias&
"assignvariableop_14_dense_5_kernel$
 assignvariableop_15_dense_5_bias&
"assignvariableop_16_dense_6_kernel$
 assignvariableop_17_dense_6_bias
assignvariableop_18_decay%
!assignvariableop_19_learning_rate 
assignvariableop_20_momentum 
assignvariableop_21_sgd_iterI
Eassignvariableop_22_token_and_position_embedding_embedding_embeddingsK
Gassignvariableop_23_token_and_position_embedding_embedding_1_embeddingsO
Kassignvariableop_24_transformer_block_1_multi_head_attention_1_query_kernelM
Iassignvariableop_25_transformer_block_1_multi_head_attention_1_query_biasM
Iassignvariableop_26_transformer_block_1_multi_head_attention_1_key_kernelK
Gassignvariableop_27_transformer_block_1_multi_head_attention_1_key_biasO
Kassignvariableop_28_transformer_block_1_multi_head_attention_1_value_kernelM
Iassignvariableop_29_transformer_block_1_multi_head_attention_1_value_biasZ
Vassignvariableop_30_transformer_block_1_multi_head_attention_1_attention_output_kernelX
Tassignvariableop_31_transformer_block_1_multi_head_attention_1_attention_output_bias&
"assignvariableop_32_dense_2_kernel$
 assignvariableop_33_dense_2_bias&
"assignvariableop_34_dense_3_kernel$
 assignvariableop_35_dense_3_biasG
Cassignvariableop_36_transformer_block_1_layer_normalization_2_gammaF
Bassignvariableop_37_transformer_block_1_layer_normalization_2_betaG
Cassignvariableop_38_transformer_block_1_layer_normalization_3_gammaF
Bassignvariableop_39_transformer_block_1_layer_normalization_3_beta
assignvariableop_40_total
assignvariableop_41_count2
.assignvariableop_42_sgd_conv1d_kernel_momentum0
,assignvariableop_43_sgd_conv1d_bias_momentum4
0assignvariableop_44_sgd_conv1d_1_kernel_momentum2
.assignvariableop_45_sgd_conv1d_1_bias_momentum>
:assignvariableop_46_sgd_batch_normalization_gamma_momentum=
9assignvariableop_47_sgd_batch_normalization_beta_momentum@
<assignvariableop_48_sgd_batch_normalization_1_gamma_momentum?
;assignvariableop_49_sgd_batch_normalization_1_beta_momentum3
/assignvariableop_50_sgd_dense_4_kernel_momentum1
-assignvariableop_51_sgd_dense_4_bias_momentum3
/assignvariableop_52_sgd_dense_5_kernel_momentum1
-assignvariableop_53_sgd_dense_5_bias_momentum3
/assignvariableop_54_sgd_dense_6_kernel_momentum1
-assignvariableop_55_sgd_dense_6_bias_momentumV
Rassignvariableop_56_sgd_token_and_position_embedding_embedding_embeddings_momentumX
Tassignvariableop_57_sgd_token_and_position_embedding_embedding_1_embeddings_momentum\
Xassignvariableop_58_sgd_transformer_block_1_multi_head_attention_1_query_kernel_momentumZ
Vassignvariableop_59_sgd_transformer_block_1_multi_head_attention_1_query_bias_momentumZ
Vassignvariableop_60_sgd_transformer_block_1_multi_head_attention_1_key_kernel_momentumX
Tassignvariableop_61_sgd_transformer_block_1_multi_head_attention_1_key_bias_momentum\
Xassignvariableop_62_sgd_transformer_block_1_multi_head_attention_1_value_kernel_momentumZ
Vassignvariableop_63_sgd_transformer_block_1_multi_head_attention_1_value_bias_momentumg
cassignvariableop_64_sgd_transformer_block_1_multi_head_attention_1_attention_output_kernel_momentume
aassignvariableop_65_sgd_transformer_block_1_multi_head_attention_1_attention_output_bias_momentum3
/assignvariableop_66_sgd_dense_2_kernel_momentum1
-assignvariableop_67_sgd_dense_2_bias_momentum3
/assignvariableop_68_sgd_dense_3_kernel_momentum1
-assignvariableop_69_sgd_dense_3_bias_momentumT
Passignvariableop_70_sgd_transformer_block_1_layer_normalization_2_gamma_momentumS
Oassignvariableop_71_sgd_transformer_block_1_layer_normalization_2_beta_momentumT
Passignvariableop_72_sgd_transformer_block_1_layer_normalization_3_gamma_momentumS
Oassignvariableop_73_sgd_transformer_block_1_layer_normalization_3_beta_momentum
identity_75ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_25ҐAssignVariableOp_26ҐAssignVariableOp_27ҐAssignVariableOp_28ҐAssignVariableOp_29ҐAssignVariableOp_3ҐAssignVariableOp_30ҐAssignVariableOp_31ҐAssignVariableOp_32ҐAssignVariableOp_33ҐAssignVariableOp_34ҐAssignVariableOp_35ҐAssignVariableOp_36ҐAssignVariableOp_37ҐAssignVariableOp_38ҐAssignVariableOp_39ҐAssignVariableOp_4ҐAssignVariableOp_40ҐAssignVariableOp_41ҐAssignVariableOp_42ҐAssignVariableOp_43ҐAssignVariableOp_44ҐAssignVariableOp_45ҐAssignVariableOp_46ҐAssignVariableOp_47ҐAssignVariableOp_48ҐAssignVariableOp_49ҐAssignVariableOp_5ҐAssignVariableOp_50ҐAssignVariableOp_51ҐAssignVariableOp_52ҐAssignVariableOp_53ҐAssignVariableOp_54ҐAssignVariableOp_55ҐAssignVariableOp_56ҐAssignVariableOp_57ҐAssignVariableOp_58ҐAssignVariableOp_59ҐAssignVariableOp_6ҐAssignVariableOp_60ҐAssignVariableOp_61ҐAssignVariableOp_62ҐAssignVariableOp_63ҐAssignVariableOp_64ҐAssignVariableOp_65ҐAssignVariableOp_66ҐAssignVariableOp_67ҐAssignVariableOp_68ҐAssignVariableOp_69ҐAssignVariableOp_7ҐAssignVariableOp_70ҐAssignVariableOp_71ҐAssignVariableOp_72ҐAssignVariableOp_73ҐAssignVariableOp_8ҐAssignVariableOp_9—(
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:K*
dtype0*Ё'
value”'B–'KB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/0/.ATTRIBUTES/VARIABLE_VALUEB0trainable_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/10/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/11/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/12/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/13/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/14/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/15/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/16/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/17/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/18/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/19/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/20/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/21/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/22/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/23/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/24/.ATTRIBUTES/VARIABLE_VALUEB1trainable_variables/25/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBWlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBStrainable_variables/0/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBStrainable_variables/1/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBTtrainable_variables/10/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBTtrainable_variables/11/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBTtrainable_variables/12/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBTtrainable_variables/13/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBTtrainable_variables/14/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBTtrainable_variables/15/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBTtrainable_variables/16/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBTtrainable_variables/17/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBTtrainable_variables/18/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBTtrainable_variables/19/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBTtrainable_variables/20/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBTtrainable_variables/21/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBTtrainable_variables/22/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBTtrainable_variables/23/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBTtrainable_variables/24/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEBTtrainable_variables/25/.OPTIMIZER_SLOT/optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesІ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:K*
dtype0*Ђ
value°BЮKB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices•
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*¬
_output_shapesѓ
ђ:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*Y
dtypesO
M2K	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

IdentityЭ
AssignVariableOpAssignVariableOpassignvariableop_conv1d_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1£
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv1d_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2І
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv1d_1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3•
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv1d_1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4±
AssignVariableOp_4AssignVariableOp,assignvariableop_4_batch_normalization_gammaIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5∞
AssignVariableOp_5AssignVariableOp+assignvariableop_5_batch_normalization_betaIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6Ј
AssignVariableOp_6AssignVariableOp2assignvariableop_6_batch_normalization_moving_meanIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7ї
AssignVariableOp_7AssignVariableOp6assignvariableop_7_batch_normalization_moving_varianceIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8≥
AssignVariableOp_8AssignVariableOp.assignvariableop_8_batch_normalization_1_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9≤
AssignVariableOp_9AssignVariableOp-assignvariableop_9_batch_normalization_1_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10љ
AssignVariableOp_10AssignVariableOp5assignvariableop_10_batch_normalization_1_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11Ѕ
AssignVariableOp_11AssignVariableOp9assignvariableop_11_batch_normalization_1_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12™
AssignVariableOp_12AssignVariableOp"assignvariableop_12_dense_4_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13®
AssignVariableOp_13AssignVariableOp assignvariableop_13_dense_4_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14™
AssignVariableOp_14AssignVariableOp"assignvariableop_14_dense_5_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15®
AssignVariableOp_15AssignVariableOp assignvariableop_15_dense_5_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16™
AssignVariableOp_16AssignVariableOp"assignvariableop_16_dense_6_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17®
AssignVariableOp_17AssignVariableOp assignvariableop_17_dense_6_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18°
AssignVariableOp_18AssignVariableOpassignvariableop_18_decayIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19©
AssignVariableOp_19AssignVariableOp!assignvariableop_19_learning_rateIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20§
AssignVariableOp_20AssignVariableOpassignvariableop_20_momentumIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_21§
AssignVariableOp_21AssignVariableOpassignvariableop_21_sgd_iterIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22Ќ
AssignVariableOp_22AssignVariableOpEassignvariableop_22_token_and_position_embedding_embedding_embeddingsIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23ѕ
AssignVariableOp_23AssignVariableOpGassignvariableop_23_token_and_position_embedding_embedding_1_embeddingsIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24”
AssignVariableOp_24AssignVariableOpKassignvariableop_24_transformer_block_1_multi_head_attention_1_query_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25—
AssignVariableOp_25AssignVariableOpIassignvariableop_25_transformer_block_1_multi_head_attention_1_query_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26—
AssignVariableOp_26AssignVariableOpIassignvariableop_26_transformer_block_1_multi_head_attention_1_key_kernelIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27ѕ
AssignVariableOp_27AssignVariableOpGassignvariableop_27_transformer_block_1_multi_head_attention_1_key_biasIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28”
AssignVariableOp_28AssignVariableOpKassignvariableop_28_transformer_block_1_multi_head_attention_1_value_kernelIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29—
AssignVariableOp_29AssignVariableOpIassignvariableop_29_transformer_block_1_multi_head_attention_1_value_biasIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30ё
AssignVariableOp_30AssignVariableOpVassignvariableop_30_transformer_block_1_multi_head_attention_1_attention_output_kernelIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31№
AssignVariableOp_31AssignVariableOpTassignvariableop_31_transformer_block_1_multi_head_attention_1_attention_output_biasIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32™
AssignVariableOp_32AssignVariableOp"assignvariableop_32_dense_2_kernelIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33®
AssignVariableOp_33AssignVariableOp assignvariableop_33_dense_2_biasIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34™
AssignVariableOp_34AssignVariableOp"assignvariableop_34_dense_3_kernelIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35®
AssignVariableOp_35AssignVariableOp assignvariableop_35_dense_3_biasIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36Ћ
AssignVariableOp_36AssignVariableOpCassignvariableop_36_transformer_block_1_layer_normalization_2_gammaIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37 
AssignVariableOp_37AssignVariableOpBassignvariableop_37_transformer_block_1_layer_normalization_2_betaIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38Ћ
AssignVariableOp_38AssignVariableOpCassignvariableop_38_transformer_block_1_layer_normalization_3_gammaIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39 
AssignVariableOp_39AssignVariableOpBassignvariableop_39_transformer_block_1_layer_normalization_3_betaIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40°
AssignVariableOp_40AssignVariableOpassignvariableop_40_totalIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41°
AssignVariableOp_41AssignVariableOpassignvariableop_41_countIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42ґ
AssignVariableOp_42AssignVariableOp.assignvariableop_42_sgd_conv1d_kernel_momentumIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43і
AssignVariableOp_43AssignVariableOp,assignvariableop_43_sgd_conv1d_bias_momentumIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44Є
AssignVariableOp_44AssignVariableOp0assignvariableop_44_sgd_conv1d_1_kernel_momentumIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45ґ
AssignVariableOp_45AssignVariableOp.assignvariableop_45_sgd_conv1d_1_bias_momentumIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46¬
AssignVariableOp_46AssignVariableOp:assignvariableop_46_sgd_batch_normalization_gamma_momentumIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47Ѕ
AssignVariableOp_47AssignVariableOp9assignvariableop_47_sgd_batch_normalization_beta_momentumIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48ƒ
AssignVariableOp_48AssignVariableOp<assignvariableop_48_sgd_batch_normalization_1_gamma_momentumIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49√
AssignVariableOp_49AssignVariableOp;assignvariableop_49_sgd_batch_normalization_1_beta_momentumIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50Ј
AssignVariableOp_50AssignVariableOp/assignvariableop_50_sgd_dense_4_kernel_momentumIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51µ
AssignVariableOp_51AssignVariableOp-assignvariableop_51_sgd_dense_4_bias_momentumIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52Ј
AssignVariableOp_52AssignVariableOp/assignvariableop_52_sgd_dense_5_kernel_momentumIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53µ
AssignVariableOp_53AssignVariableOp-assignvariableop_53_sgd_dense_5_bias_momentumIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54Ј
AssignVariableOp_54AssignVariableOp/assignvariableop_54_sgd_dense_6_kernel_momentumIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55µ
AssignVariableOp_55AssignVariableOp-assignvariableop_55_sgd_dense_6_bias_momentumIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56Џ
AssignVariableOp_56AssignVariableOpRassignvariableop_56_sgd_token_and_position_embedding_embedding_embeddings_momentumIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57№
AssignVariableOp_57AssignVariableOpTassignvariableop_57_sgd_token_and_position_embedding_embedding_1_embeddings_momentumIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58а
AssignVariableOp_58AssignVariableOpXassignvariableop_58_sgd_transformer_block_1_multi_head_attention_1_query_kernel_momentumIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59ё
AssignVariableOp_59AssignVariableOpVassignvariableop_59_sgd_transformer_block_1_multi_head_attention_1_query_bias_momentumIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60ё
AssignVariableOp_60AssignVariableOpVassignvariableop_60_sgd_transformer_block_1_multi_head_attention_1_key_kernel_momentumIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61№
AssignVariableOp_61AssignVariableOpTassignvariableop_61_sgd_transformer_block_1_multi_head_attention_1_key_bias_momentumIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62а
AssignVariableOp_62AssignVariableOpXassignvariableop_62_sgd_transformer_block_1_multi_head_attention_1_value_kernel_momentumIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_62n
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:2
Identity_63ё
AssignVariableOp_63AssignVariableOpVassignvariableop_63_sgd_transformer_block_1_multi_head_attention_1_value_bias_momentumIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_63n
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:2
Identity_64л
AssignVariableOp_64AssignVariableOpcassignvariableop_64_sgd_transformer_block_1_multi_head_attention_1_attention_output_kernel_momentumIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_64n
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:2
Identity_65й
AssignVariableOp_65AssignVariableOpaassignvariableop_65_sgd_transformer_block_1_multi_head_attention_1_attention_output_bias_momentumIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_65n
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:2
Identity_66Ј
AssignVariableOp_66AssignVariableOp/assignvariableop_66_sgd_dense_2_kernel_momentumIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_66n
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:2
Identity_67µ
AssignVariableOp_67AssignVariableOp-assignvariableop_67_sgd_dense_2_bias_momentumIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_67n
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:2
Identity_68Ј
AssignVariableOp_68AssignVariableOp/assignvariableop_68_sgd_dense_3_kernel_momentumIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_68n
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:2
Identity_69µ
AssignVariableOp_69AssignVariableOp-assignvariableop_69_sgd_dense_3_bias_momentumIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_69n
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:2
Identity_70Ў
AssignVariableOp_70AssignVariableOpPassignvariableop_70_sgd_transformer_block_1_layer_normalization_2_gamma_momentumIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_70n
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:2
Identity_71„
AssignVariableOp_71AssignVariableOpOassignvariableop_71_sgd_transformer_block_1_layer_normalization_2_beta_momentumIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_71n
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:2
Identity_72Ў
AssignVariableOp_72AssignVariableOpPassignvariableop_72_sgd_transformer_block_1_layer_normalization_3_gamma_momentumIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_72n
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:2
Identity_73„
AssignVariableOp_73AssignVariableOpOassignvariableop_73_sgd_transformer_block_1_layer_normalization_3_beta_momentumIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_739
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpЇ
Identity_74Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_74≠
Identity_75IdentityIdentity_74:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_75"#
identity_75Identity_75:output:0*њ
_input_shapes≠
™: ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
н
©
6__inference_batch_normalization_1_layer_call_fn_101908

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИҐStatefulPartitionedCall™
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_992212
StatefulPartitionedCallЫ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2

Identity"
identityIdentity:output:0*C
_input_shapes2
0:€€€€€€€€€€€€€€€€€€ ::::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs
£
c
*__inference_dropout_5_layer_call_fn_102382

inputs
identityИҐStatefulPartitionedCallё
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_5_layer_call_and_return_conditional_losses_1002182
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*&
_input_shapes
:€€€€€€€€€@22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
“
Ґ
&__inference_model_layer_call_fn_101419
inputs_0
inputs_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34
identityИҐStatefulPartitionedCall–
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34*1
Tin*
(2&*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*B
_read_only_resource_inputs$
" 
 !"#$%*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_1004552
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*ћ
_input_shapesЇ
Ј:€€€€€€€€€ДR:€€€€€€€€€::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:R N
(
_output_shapes
:€€€€€€€€€ДR
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs/1
І
P
$__inference_add_layer_call_fn_101920
inputs_0
inputs_1
identity–
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€# * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_add_layer_call_and_return_conditional_losses_996992
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:€€€€€€€€€# 2

Identity"
identityIdentity:output:0*A
_input_shapes0
.:€€€€€€€€€# :€€€€€€€€€# :U Q
+
_output_shapes
:€€€€€€€€€# 
"
_user_specified_name
inputs/0:UQ
+
_output_shapes
:€€€€€€€€€# 
"
_user_specified_name
inputs/1
Ё
}
(__inference_dense_6_layer_call_fn_102406

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_1002462
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€@::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
Ђ0
√
N__inference_batch_normalization_layer_call_and_return_conditional_losses_99546

inputs
assignmovingavg_99521
assignmovingavg_1_99527)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identityИҐ#AssignMovingAvg/AssignSubVariableOpҐAssignMovingAvg/ReadVariableOpҐ%AssignMovingAvg_1/AssignSubVariableOpҐ AssignMovingAvg_1/ReadVariableOpҐbatchnorm/ReadVariableOpҐbatchnorm/mul/ReadVariableOpС
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indicesУ
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
: *
	keep_dims(2
moments/meanА
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
: 2
moments/StopGradient®
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€# 2
moments/SquaredDifferenceЩ
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indicesґ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
: *
	keep_dims(2
moments/varianceБ
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2
moments/SqueezeЙ
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2
moments/Squeeze_1Ћ
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*(
_class
loc:@AssignMovingAvg/99521*
_output_shapes
: *
dtype0*
valueB
 *
„#<2
AssignMovingAvg/decayТ
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_99521*
_output_shapes
: *
dtype02 
AssignMovingAvg/ReadVariableOpр
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*(
_class
loc:@AssignMovingAvg/99521*
_output_shapes
: 2
AssignMovingAvg/subз
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*(
_class
loc:@AssignMovingAvg/99521*
_output_shapes
: 2
AssignMovingAvg/mul≠
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_99521AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*(
_class
loc:@AssignMovingAvg/99521*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp—
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_1/99527*
_output_shapes
: *
dtype0*
valueB
 *
„#<2
AssignMovingAvg_1/decayШ
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_99527*
_output_shapes
: *
dtype02"
 AssignMovingAvg_1/ReadVariableOpъ
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_1/99527*
_output_shapes
: 2
AssignMovingAvg_1/subс
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg_1/99527*
_output_shapes
: 2
AssignMovingAvg_1/mulє
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_99527AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg_1/99527*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2
batchnorm/add/yВ
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
: 2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: 2
batchnorm/RsqrtЮ
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/mul/ReadVariableOpЕ
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2
batchnorm/mulz
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
: 2
batchnorm/mul_2Т
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOpБ
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2
batchnorm/subЙ
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2
batchnorm/add_1Ј
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*+
_output_shapes
:€€€€€€€€€# 2

Identity"
identityIdentity:output:0*:
_input_shapes)
':€€€€€€€€€# ::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€# 
 
_user_specified_nameinputs
Х
З
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_99221

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identityИҐbatchnorm/ReadVariableOpҐbatchnorm/ReadVariableOp_1Ґbatchnorm/ReadVariableOp_2Ґbatchnorm/mul/ReadVariableOpТ
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2
batchnorm/add/yИ
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
: 2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: 2
batchnorm/RsqrtЮ
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/mul/ReadVariableOpЕ
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2
batchnorm/mulГ
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
batchnorm/mul_1Ш
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp_1Е
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
: 2
batchnorm/mul_2Ш
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp_2Г
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2
batchnorm/subТ
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
batchnorm/add_1и
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2

Identity"
identityIdentity:output:0*C
_input_shapes2
0:€€€€€€€€€€€€€€€€€€ ::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs
Э
D
(__inference_flatten_layer_call_fn_102280

inputs
identity≈
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€а* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_1000982
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:€€€€€€€€€а2

Identity"
identityIdentity:output:0**
_input_shapes
:€€€€€€€€€# :S O
+
_output_shapes
:€€€€€€€€€# 
 
_user_specified_nameinputs
ѕ

а
4__inference_transformer_block_1_layer_call_fn_102269

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14
identityИҐStatefulPartitionedCallј
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€# *2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_transformer_block_1_layer_call_and_return_conditional_losses_999832
StatefulPartitionedCallТ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:€€€€€€€€€# 2

Identity"
identityIdentity:output:0*j
_input_shapesY
W:€€€€€€€€€# ::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€# 
 
_user_specified_nameinputs
м
}
(__inference_dense_2_layer_call_fn_102586

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€#@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_992672
StatefulPartitionedCallТ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:€€€€€€€€€#@2

Identity"
identityIdentity:output:0*2
_input_shapes!
:€€€€€€€€€# ::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€# 
 
_user_specified_nameinputs
Ц
И
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_101882

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identityИҐbatchnorm/ReadVariableOpҐbatchnorm/ReadVariableOp_1Ґbatchnorm/ReadVariableOp_2Ґbatchnorm/mul/ReadVariableOpТ
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2
batchnorm/add/yИ
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
: 2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: 2
batchnorm/RsqrtЮ
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/mul/ReadVariableOpЕ
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2
batchnorm/mulГ
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
batchnorm/mul_1Ш
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp_1Е
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
: 2
batchnorm/mul_2Ш
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp_2Г
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2
batchnorm/subТ
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2
batchnorm/add_1и
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2

Identity"
identityIdentity:output:0*C
_input_shapes2
0:€€€€€€€€€€€€€€€€€€ ::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs
Ё
}
(__inference_dense_5_layer_call_fn_102360

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_1001902
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€@::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
Ј
†
-__inference_sequential_1_layer_call_fn_102546

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИҐStatefulPartitionedCallШ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€# *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_993882
StatefulPartitionedCallТ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:€€€€€€€€€# 2

Identity"
identityIdentity:output:0*:
_input_shapes)
':€€€€€€€€€# ::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€# 
 
_user_specified_nameinputs
ј
s
G__inference_concatenate_layer_call_and_return_conditional_losses_102287
inputs_0
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axisВ
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*(
_output_shapes
:€€€€€€€€€и2
concatd
IdentityIdentityconcat:output:0*
T0*(
_output_shapes
:€€€€€€€€€и2

Identity"
identityIdentity:output:0*:
_input_shapes)
':€€€€€€€€€а:€€€€€€€€€:R N
(
_output_shapes
:€€€€€€€€€а
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs/1
Щ
ц
C__inference_conv1d_1_layer_call_and_return_conditional_losses_99493

inputs/
+conv1d_expanddims_1_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐ"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€2
conv1d/ExpandDims/dimЧ
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:€€€€€€€€€ё 2
conv1d/ExpandDimsЄ
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:	  *
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dimЈ
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:	  2
conv1d/ExpandDims_1Ј
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:€€€€€€€€€ё *
paddingSAME*
strides
2
conv1dУ
conv1d/SqueezeSqueezeconv1d:output:0*
T0*,
_output_shapes
:€€€€€€€€€ё *
squeeze_dims

э€€€€€€€€2
conv1d/SqueezeМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpН
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:€€€€€€€€€ё 2	
BiasAdd]
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:€€€€€€€€€ё 2
Relu©
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*
T0*,
_output_shapes
:€€€€€€€€€ё 2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :€€€€€€€€€ё ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:€€€€€€€€€ё 
 
_user_specified_nameinputs
ъв
ё%
A__inference_model_layer_call_and_return_conditional_losses_101098
inputs_0
inputs_1D
@token_and_position_embedding_embedding_1_embedding_lookup_100800B
>token_and_position_embedding_embedding_embedding_lookup_1008066
2conv1d_conv1d_expanddims_1_readvariableop_resource*
&conv1d_biasadd_readvariableop_resource8
4conv1d_1_conv1d_expanddims_1_readvariableop_resource,
(conv1d_1_biasadd_readvariableop_resource.
*batch_normalization_assignmovingavg_1008560
,batch_normalization_assignmovingavg_1_100862=
9batch_normalization_batchnorm_mul_readvariableop_resource9
5batch_normalization_batchnorm_readvariableop_resource0
,batch_normalization_1_assignmovingavg_1008882
.batch_normalization_1_assignmovingavg_1_100894?
;batch_normalization_1_batchnorm_mul_readvariableop_resource;
7batch_normalization_1_batchnorm_readvariableop_resourceZ
Vtransformer_block_1_multi_head_attention_1_query_einsum_einsum_readvariableop_resourceP
Ltransformer_block_1_multi_head_attention_1_query_add_readvariableop_resourceX
Ttransformer_block_1_multi_head_attention_1_key_einsum_einsum_readvariableop_resourceN
Jtransformer_block_1_multi_head_attention_1_key_add_readvariableop_resourceZ
Vtransformer_block_1_multi_head_attention_1_value_einsum_einsum_readvariableop_resourceP
Ltransformer_block_1_multi_head_attention_1_value_add_readvariableop_resourcee
atransformer_block_1_multi_head_attention_1_attention_output_einsum_einsum_readvariableop_resource[
Wtransformer_block_1_multi_head_attention_1_attention_output_add_readvariableop_resourceS
Otransformer_block_1_layer_normalization_2_batchnorm_mul_readvariableop_resourceO
Ktransformer_block_1_layer_normalization_2_batchnorm_readvariableop_resourceN
Jtransformer_block_1_sequential_1_dense_2_tensordot_readvariableop_resourceL
Htransformer_block_1_sequential_1_dense_2_biasadd_readvariableop_resourceN
Jtransformer_block_1_sequential_1_dense_3_tensordot_readvariableop_resourceL
Htransformer_block_1_sequential_1_dense_3_biasadd_readvariableop_resourceS
Otransformer_block_1_layer_normalization_3_batchnorm_mul_readvariableop_resourceO
Ktransformer_block_1_layer_normalization_3_batchnorm_readvariableop_resource*
&dense_4_matmul_readvariableop_resource+
'dense_4_biasadd_readvariableop_resource*
&dense_5_matmul_readvariableop_resource+
'dense_5_biasadd_readvariableop_resource*
&dense_6_matmul_readvariableop_resource+
'dense_6_biasadd_readvariableop_resource
identityИҐ7batch_normalization/AssignMovingAvg/AssignSubVariableOpҐ2batch_normalization/AssignMovingAvg/ReadVariableOpҐ9batch_normalization/AssignMovingAvg_1/AssignSubVariableOpҐ4batch_normalization/AssignMovingAvg_1/ReadVariableOpҐ,batch_normalization/batchnorm/ReadVariableOpҐ0batch_normalization/batchnorm/mul/ReadVariableOpҐ9batch_normalization_1/AssignMovingAvg/AssignSubVariableOpҐ4batch_normalization_1/AssignMovingAvg/ReadVariableOpҐ;batch_normalization_1/AssignMovingAvg_1/AssignSubVariableOpҐ6batch_normalization_1/AssignMovingAvg_1/ReadVariableOpҐ.batch_normalization_1/batchnorm/ReadVariableOpҐ2batch_normalization_1/batchnorm/mul/ReadVariableOpҐconv1d/BiasAdd/ReadVariableOpҐ)conv1d/conv1d/ExpandDims_1/ReadVariableOpҐconv1d_1/BiasAdd/ReadVariableOpҐ+conv1d_1/conv1d/ExpandDims_1/ReadVariableOpҐdense_4/BiasAdd/ReadVariableOpҐdense_4/MatMul/ReadVariableOpҐdense_5/BiasAdd/ReadVariableOpҐdense_5/MatMul/ReadVariableOpҐdense_6/BiasAdd/ReadVariableOpҐdense_6/MatMul/ReadVariableOpҐ7token_and_position_embedding/embedding/embedding_lookupҐ9token_and_position_embedding/embedding_1/embedding_lookupҐBtransformer_block_1/layer_normalization_2/batchnorm/ReadVariableOpҐFtransformer_block_1/layer_normalization_2/batchnorm/mul/ReadVariableOpҐBtransformer_block_1/layer_normalization_3/batchnorm/ReadVariableOpҐFtransformer_block_1/layer_normalization_3/batchnorm/mul/ReadVariableOpҐNtransformer_block_1/multi_head_attention_1/attention_output/add/ReadVariableOpҐXtransformer_block_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpҐAtransformer_block_1/multi_head_attention_1/key/add/ReadVariableOpҐKtransformer_block_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpҐCtransformer_block_1/multi_head_attention_1/query/add/ReadVariableOpҐMtransformer_block_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpҐCtransformer_block_1/multi_head_attention_1/value/add/ReadVariableOpҐMtransformer_block_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpҐ?transformer_block_1/sequential_1/dense_2/BiasAdd/ReadVariableOpҐAtransformer_block_1/sequential_1/dense_2/Tensordot/ReadVariableOpҐ?transformer_block_1/sequential_1/dense_3/BiasAdd/ReadVariableOpҐAtransformer_block_1/sequential_1/dense_3/Tensordot/ReadVariableOpА
"token_and_position_embedding/ShapeShapeinputs_0*
T0*
_output_shapes
:2$
"token_and_position_embedding/ShapeЈ
0token_and_position_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€22
0token_and_position_embedding/strided_slice/stack≤
2token_and_position_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 24
2token_and_position_embedding/strided_slice/stack_1≤
2token_and_position_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2token_and_position_embedding/strided_slice/stack_2Р
*token_and_position_embedding/strided_sliceStridedSlice+token_and_position_embedding/Shape:output:09token_and_position_embedding/strided_slice/stack:output:0;token_and_position_embedding/strided_slice/stack_1:output:0;token_and_position_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*token_and_position_embedding/strided_sliceЦ
(token_and_position_embedding/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2*
(token_and_position_embedding/range/startЦ
(token_and_position_embedding/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2*
(token_and_position_embedding/range/deltaС
"token_and_position_embedding/rangeRange1token_and_position_embedding/range/start:output:03token_and_position_embedding/strided_slice:output:01token_and_position_embedding/range/delta:output:0*#
_output_shapes
:€€€€€€€€€2$
"token_and_position_embedding/rangeј
9token_and_position_embedding/embedding_1/embedding_lookupResourceGather@token_and_position_embedding_embedding_1_embedding_lookup_100800+token_and_position_embedding/range:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*S
_classI
GEloc:@token_and_position_embedding/embedding_1/embedding_lookup/100800*'
_output_shapes
:€€€€€€€€€ *
dtype02;
9token_and_position_embedding/embedding_1/embedding_lookupН
Btoken_and_position_embedding/embedding_1/embedding_lookup/IdentityIdentityBtoken_and_position_embedding/embedding_1/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*S
_classI
GEloc:@token_and_position_embedding/embedding_1/embedding_lookup/100800*'
_output_shapes
:€€€€€€€€€ 2D
Btoken_and_position_embedding/embedding_1/embedding_lookup/IdentityЧ
Dtoken_and_position_embedding/embedding_1/embedding_lookup/Identity_1IdentityKtoken_and_position_embedding/embedding_1/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:€€€€€€€€€ 2F
Dtoken_and_position_embedding/embedding_1/embedding_lookup/Identity_1Ѓ
+token_and_position_embedding/embedding/CastCastinputs_0*

DstT0*

SrcT0*(
_output_shapes
:€€€€€€€€€ДR2-
+token_and_position_embedding/embedding/CastЅ
7token_and_position_embedding/embedding/embedding_lookupResourceGather>token_and_position_embedding_embedding_embedding_lookup_100806/token_and_position_embedding/embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*Q
_classG
ECloc:@token_and_position_embedding/embedding/embedding_lookup/100806*,
_output_shapes
:€€€€€€€€€ДR *
dtype029
7token_and_position_embedding/embedding/embedding_lookupК
@token_and_position_embedding/embedding/embedding_lookup/IdentityIdentity@token_and_position_embedding/embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*Q
_classG
ECloc:@token_and_position_embedding/embedding/embedding_lookup/100806*,
_output_shapes
:€€€€€€€€€ДR 2B
@token_and_position_embedding/embedding/embedding_lookup/IdentityЦ
Btoken_and_position_embedding/embedding/embedding_lookup/Identity_1IdentityItoken_and_position_embedding/embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:€€€€€€€€€ДR 2D
Btoken_and_position_embedding/embedding/embedding_lookup/Identity_1†
 token_and_position_embedding/addAddV2Ktoken_and_position_embedding/embedding/embedding_lookup/Identity_1:output:0Mtoken_and_position_embedding/embedding_1/embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:€€€€€€€€€ДR 2"
 token_and_position_embedding/addЗ
conv1d/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€2
conv1d/conv1d/ExpandDims/dim 
conv1d/conv1d/ExpandDims
ExpandDims$token_and_position_embedding/add:z:0%conv1d/conv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:€€€€€€€€€ДR 2
conv1d/conv1d/ExpandDimsЌ
)conv1d/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp2conv1d_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype02+
)conv1d/conv1d/ExpandDims_1/ReadVariableOpВ
conv1d/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2 
conv1d/conv1d/ExpandDims_1/dim”
conv1d/conv1d/ExpandDims_1
ExpandDims1conv1d/conv1d/ExpandDims_1/ReadVariableOp:value:0'conv1d/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  2
conv1d/conv1d/ExpandDims_1”
conv1d/conv1dConv2D!conv1d/conv1d/ExpandDims:output:0#conv1d/conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:€€€€€€€€€ДR *
paddingSAME*
strides
2
conv1d/conv1d®
conv1d/conv1d/SqueezeSqueezeconv1d/conv1d:output:0*
T0*,
_output_shapes
:€€€€€€€€€ДR *
squeeze_dims

э€€€€€€€€2
conv1d/conv1d/Squeeze°
conv1d/BiasAdd/ReadVariableOpReadVariableOp&conv1d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
conv1d/BiasAdd/ReadVariableOp©
conv1d/BiasAddBiasAddconv1d/conv1d/Squeeze:output:0%conv1d/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:€€€€€€€€€ДR 2
conv1d/BiasAddr
conv1d/ReluReluconv1d/BiasAdd:output:0*
T0*,
_output_shapes
:€€€€€€€€€ДR 2
conv1d/ReluЖ
 average_pooling1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2"
 average_pooling1d/ExpandDims/dimЋ
average_pooling1d/ExpandDims
ExpandDimsconv1d/Relu:activations:0)average_pooling1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:€€€€€€€€€ДR 2
average_pooling1d/ExpandDimsя
average_pooling1d/AvgPoolAvgPool%average_pooling1d/ExpandDims:output:0*
T0*0
_output_shapes
:€€€€€€€€€ё *
ksize
*
paddingVALID*
strides
2
average_pooling1d/AvgPool≥
average_pooling1d/SqueezeSqueeze"average_pooling1d/AvgPool:output:0*
T0*,
_output_shapes
:€€€€€€€€€ё *
squeeze_dims
2
average_pooling1d/SqueezeЛ
conv1d_1/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€2 
conv1d_1/conv1d/ExpandDims/dimќ
conv1d_1/conv1d/ExpandDims
ExpandDims"average_pooling1d/Squeeze:output:0'conv1d_1/conv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:€€€€€€€€€ё 2
conv1d_1/conv1d/ExpandDims”
+conv1d_1/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_1_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:	  *
dtype02-
+conv1d_1/conv1d/ExpandDims_1/ReadVariableOpЖ
 conv1d_1/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_1/conv1d/ExpandDims_1/dimџ
conv1d_1/conv1d/ExpandDims_1
ExpandDims3conv1d_1/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_1/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:	  2
conv1d_1/conv1d/ExpandDims_1џ
conv1d_1/conv1dConv2D#conv1d_1/conv1d/ExpandDims:output:0%conv1d_1/conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:€€€€€€€€€ё *
paddingSAME*
strides
2
conv1d_1/conv1dЃ
conv1d_1/conv1d/SqueezeSqueezeconv1d_1/conv1d:output:0*
T0*,
_output_shapes
:€€€€€€€€€ё *
squeeze_dims

э€€€€€€€€2
conv1d_1/conv1d/SqueezeІ
conv1d_1/BiasAdd/ReadVariableOpReadVariableOp(conv1d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv1d_1/BiasAdd/ReadVariableOp±
conv1d_1/BiasAddBiasAdd conv1d_1/conv1d/Squeeze:output:0'conv1d_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:€€€€€€€€€ё 2
conv1d_1/BiasAddx
conv1d_1/ReluReluconv1d_1/BiasAdd:output:0*
T0*,
_output_shapes
:€€€€€€€€€ё 2
conv1d_1/ReluК
"average_pooling1d_2/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"average_pooling1d_2/ExpandDims/dim№
average_pooling1d_2/ExpandDims
ExpandDims$token_and_position_embedding/add:z:0+average_pooling1d_2/ExpandDims/dim:output:0*
T0*0
_output_shapes
:€€€€€€€€€ДR 2 
average_pooling1d_2/ExpandDimsж
average_pooling1d_2/AvgPoolAvgPool'average_pooling1d_2/ExpandDims:output:0*
T0*/
_output_shapes
:€€€€€€€€€# *
ksize	
ђ*
paddingVALID*
strides	
ђ2
average_pooling1d_2/AvgPoolЄ
average_pooling1d_2/SqueezeSqueeze$average_pooling1d_2/AvgPool:output:0*
T0*+
_output_shapes
:€€€€€€€€€# *
squeeze_dims
2
average_pooling1d_2/SqueezeК
"average_pooling1d_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"average_pooling1d_1/ExpandDims/dim”
average_pooling1d_1/ExpandDims
ExpandDimsconv1d_1/Relu:activations:0+average_pooling1d_1/ExpandDims/dim:output:0*
T0*0
_output_shapes
:€€€€€€€€€ё 2 
average_pooling1d_1/ExpandDimsд
average_pooling1d_1/AvgPoolAvgPool'average_pooling1d_1/ExpandDims:output:0*
T0*/
_output_shapes
:€€€€€€€€€# *
ksize

*
paddingVALID*
strides

2
average_pooling1d_1/AvgPoolЄ
average_pooling1d_1/SqueezeSqueeze$average_pooling1d_1/AvgPool:output:0*
T0*+
_output_shapes
:€€€€€€€€€# *
squeeze_dims
2
average_pooling1d_1/Squeezeє
2batch_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       24
2batch_normalization/moments/mean/reduction_indicesн
 batch_normalization/moments/meanMean$average_pooling1d_1/Squeeze:output:0;batch_normalization/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
: *
	keep_dims(2"
 batch_normalization/moments/meanЉ
(batch_normalization/moments/StopGradientStopGradient)batch_normalization/moments/mean:output:0*
T0*"
_output_shapes
: 2*
(batch_normalization/moments/StopGradientВ
-batch_normalization/moments/SquaredDifferenceSquaredDifference$average_pooling1d_1/Squeeze:output:01batch_normalization/moments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€# 2/
-batch_normalization/moments/SquaredDifferenceЅ
6batch_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       28
6batch_normalization/moments/variance/reduction_indicesЖ
$batch_normalization/moments/varianceMean1batch_normalization/moments/SquaredDifference:z:0?batch_normalization/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
: *
	keep_dims(2&
$batch_normalization/moments/varianceљ
#batch_normalization/moments/SqueezeSqueeze)batch_normalization/moments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2%
#batch_normalization/moments/Squeeze≈
%batch_normalization/moments/Squeeze_1Squeeze-batch_normalization/moments/variance:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2'
%batch_normalization/moments/Squeeze_1И
)batch_normalization/AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@batch_normalization/AssignMovingAvg/100856*
_output_shapes
: *
dtype0*
valueB
 *
„#<2+
)batch_normalization/AssignMovingAvg/decayѕ
2batch_normalization/AssignMovingAvg/ReadVariableOpReadVariableOp*batch_normalization_assignmovingavg_100856*
_output_shapes
: *
dtype024
2batch_normalization/AssignMovingAvg/ReadVariableOp’
'batch_normalization/AssignMovingAvg/subSub:batch_normalization/AssignMovingAvg/ReadVariableOp:value:0,batch_normalization/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*=
_class3
1/loc:@batch_normalization/AssignMovingAvg/100856*
_output_shapes
: 2)
'batch_normalization/AssignMovingAvg/subћ
'batch_normalization/AssignMovingAvg/mulMul+batch_normalization/AssignMovingAvg/sub:z:02batch_normalization/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*=
_class3
1/loc:@batch_normalization/AssignMovingAvg/100856*
_output_shapes
: 2)
'batch_normalization/AssignMovingAvg/mulІ
7batch_normalization/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp*batch_normalization_assignmovingavg_100856+batch_normalization/AssignMovingAvg/mul:z:03^batch_normalization/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*=
_class3
1/loc:@batch_normalization/AssignMovingAvg/100856*
_output_shapes
 *
dtype029
7batch_normalization/AssignMovingAvg/AssignSubVariableOpО
+batch_normalization/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*?
_class5
31loc:@batch_normalization/AssignMovingAvg_1/100862*
_output_shapes
: *
dtype0*
valueB
 *
„#<2-
+batch_normalization/AssignMovingAvg_1/decay’
4batch_normalization/AssignMovingAvg_1/ReadVariableOpReadVariableOp,batch_normalization_assignmovingavg_1_100862*
_output_shapes
: *
dtype026
4batch_normalization/AssignMovingAvg_1/ReadVariableOpя
)batch_normalization/AssignMovingAvg_1/subSub<batch_normalization/AssignMovingAvg_1/ReadVariableOp:value:0.batch_normalization/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*?
_class5
31loc:@batch_normalization/AssignMovingAvg_1/100862*
_output_shapes
: 2+
)batch_normalization/AssignMovingAvg_1/sub÷
)batch_normalization/AssignMovingAvg_1/mulMul-batch_normalization/AssignMovingAvg_1/sub:z:04batch_normalization/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*?
_class5
31loc:@batch_normalization/AssignMovingAvg_1/100862*
_output_shapes
: 2+
)batch_normalization/AssignMovingAvg_1/mul≥
9batch_normalization/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp,batch_normalization_assignmovingavg_1_100862-batch_normalization/AssignMovingAvg_1/mul:z:05^batch_normalization/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*?
_class5
31loc:@batch_normalization/AssignMovingAvg_1/100862*
_output_shapes
 *
dtype02;
9batch_normalization/AssignMovingAvg_1/AssignSubVariableOpП
#batch_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2%
#batch_normalization/batchnorm/add/y“
!batch_normalization/batchnorm/addAddV2.batch_normalization/moments/Squeeze_1:output:0,batch_normalization/batchnorm/add/y:output:0*
T0*
_output_shapes
: 2#
!batch_normalization/batchnorm/addЯ
#batch_normalization/batchnorm/RsqrtRsqrt%batch_normalization/batchnorm/add:z:0*
T0*
_output_shapes
: 2%
#batch_normalization/batchnorm/RsqrtЏ
0batch_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9batch_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype022
0batch_normalization/batchnorm/mul/ReadVariableOp’
!batch_normalization/batchnorm/mulMul'batch_normalization/batchnorm/Rsqrt:y:08batch_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2#
!batch_normalization/batchnorm/mul‘
#batch_normalization/batchnorm/mul_1Mul$average_pooling1d_1/Squeeze:output:0%batch_normalization/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2%
#batch_normalization/batchnorm/mul_1Ћ
#batch_normalization/batchnorm/mul_2Mul,batch_normalization/moments/Squeeze:output:0%batch_normalization/batchnorm/mul:z:0*
T0*
_output_shapes
: 2%
#batch_normalization/batchnorm/mul_2ќ
,batch_normalization/batchnorm/ReadVariableOpReadVariableOp5batch_normalization_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02.
,batch_normalization/batchnorm/ReadVariableOp—
!batch_normalization/batchnorm/subSub4batch_normalization/batchnorm/ReadVariableOp:value:0'batch_normalization/batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2#
!batch_normalization/batchnorm/subў
#batch_normalization/batchnorm/add_1AddV2'batch_normalization/batchnorm/mul_1:z:0%batch_normalization/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2%
#batch_normalization/batchnorm/add_1љ
4batch_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       26
4batch_normalization_1/moments/mean/reduction_indicesу
"batch_normalization_1/moments/meanMean$average_pooling1d_2/Squeeze:output:0=batch_normalization_1/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
: *
	keep_dims(2$
"batch_normalization_1/moments/mean¬
*batch_normalization_1/moments/StopGradientStopGradient+batch_normalization_1/moments/mean:output:0*
T0*"
_output_shapes
: 2,
*batch_normalization_1/moments/StopGradientИ
/batch_normalization_1/moments/SquaredDifferenceSquaredDifference$average_pooling1d_2/Squeeze:output:03batch_normalization_1/moments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€# 21
/batch_normalization_1/moments/SquaredDifference≈
8batch_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2:
8batch_normalization_1/moments/variance/reduction_indicesО
&batch_normalization_1/moments/varianceMean3batch_normalization_1/moments/SquaredDifference:z:0Abatch_normalization_1/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
: *
	keep_dims(2(
&batch_normalization_1/moments/variance√
%batch_normalization_1/moments/SqueezeSqueeze+batch_normalization_1/moments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2'
%batch_normalization_1/moments/SqueezeЋ
'batch_normalization_1/moments/Squeeze_1Squeeze/batch_normalization_1/moments/variance:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2)
'batch_normalization_1/moments/Squeeze_1О
+batch_normalization_1/AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*?
_class5
31loc:@batch_normalization_1/AssignMovingAvg/100888*
_output_shapes
: *
dtype0*
valueB
 *
„#<2-
+batch_normalization_1/AssignMovingAvg/decay’
4batch_normalization_1/AssignMovingAvg/ReadVariableOpReadVariableOp,batch_normalization_1_assignmovingavg_100888*
_output_shapes
: *
dtype026
4batch_normalization_1/AssignMovingAvg/ReadVariableOpя
)batch_normalization_1/AssignMovingAvg/subSub<batch_normalization_1/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_1/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*?
_class5
31loc:@batch_normalization_1/AssignMovingAvg/100888*
_output_shapes
: 2+
)batch_normalization_1/AssignMovingAvg/sub÷
)batch_normalization_1/AssignMovingAvg/mulMul-batch_normalization_1/AssignMovingAvg/sub:z:04batch_normalization_1/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*?
_class5
31loc:@batch_normalization_1/AssignMovingAvg/100888*
_output_shapes
: 2+
)batch_normalization_1/AssignMovingAvg/mul≥
9batch_normalization_1/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp,batch_normalization_1_assignmovingavg_100888-batch_normalization_1/AssignMovingAvg/mul:z:05^batch_normalization_1/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*?
_class5
31loc:@batch_normalization_1/AssignMovingAvg/100888*
_output_shapes
 *
dtype02;
9batch_normalization_1/AssignMovingAvg/AssignSubVariableOpФ
-batch_normalization_1/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*A
_class7
53loc:@batch_normalization_1/AssignMovingAvg_1/100894*
_output_shapes
: *
dtype0*
valueB
 *
„#<2/
-batch_normalization_1/AssignMovingAvg_1/decayџ
6batch_normalization_1/AssignMovingAvg_1/ReadVariableOpReadVariableOp.batch_normalization_1_assignmovingavg_1_100894*
_output_shapes
: *
dtype028
6batch_normalization_1/AssignMovingAvg_1/ReadVariableOpй
+batch_normalization_1/AssignMovingAvg_1/subSub>batch_normalization_1/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_1/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*A
_class7
53loc:@batch_normalization_1/AssignMovingAvg_1/100894*
_output_shapes
: 2-
+batch_normalization_1/AssignMovingAvg_1/subа
+batch_normalization_1/AssignMovingAvg_1/mulMul/batch_normalization_1/AssignMovingAvg_1/sub:z:06batch_normalization_1/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*A
_class7
53loc:@batch_normalization_1/AssignMovingAvg_1/100894*
_output_shapes
: 2-
+batch_normalization_1/AssignMovingAvg_1/mulњ
;batch_normalization_1/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp.batch_normalization_1_assignmovingavg_1_100894/batch_normalization_1/AssignMovingAvg_1/mul:z:07^batch_normalization_1/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*A
_class7
53loc:@batch_normalization_1/AssignMovingAvg_1/100894*
_output_shapes
 *
dtype02=
;batch_normalization_1/AssignMovingAvg_1/AssignSubVariableOpУ
%batch_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2'
%batch_normalization_1/batchnorm/add/yЏ
#batch_normalization_1/batchnorm/addAddV20batch_normalization_1/moments/Squeeze_1:output:0.batch_normalization_1/batchnorm/add/y:output:0*
T0*
_output_shapes
: 2%
#batch_normalization_1/batchnorm/add•
%batch_normalization_1/batchnorm/RsqrtRsqrt'batch_normalization_1/batchnorm/add:z:0*
T0*
_output_shapes
: 2'
%batch_normalization_1/batchnorm/Rsqrtа
2batch_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype024
2batch_normalization_1/batchnorm/mul/ReadVariableOpЁ
#batch_normalization_1/batchnorm/mulMul)batch_normalization_1/batchnorm/Rsqrt:y:0:batch_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2%
#batch_normalization_1/batchnorm/mulЏ
%batch_normalization_1/batchnorm/mul_1Mul$average_pooling1d_2/Squeeze:output:0'batch_normalization_1/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2'
%batch_normalization_1/batchnorm/mul_1”
%batch_normalization_1/batchnorm/mul_2Mul.batch_normalization_1/moments/Squeeze:output:0'batch_normalization_1/batchnorm/mul:z:0*
T0*
_output_shapes
: 2'
%batch_normalization_1/batchnorm/mul_2‘
.batch_normalization_1/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_1_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype020
.batch_normalization_1/batchnorm/ReadVariableOpў
#batch_normalization_1/batchnorm/subSub6batch_normalization_1/batchnorm/ReadVariableOp:value:0)batch_normalization_1/batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2%
#batch_normalization_1/batchnorm/subб
%batch_normalization_1/batchnorm/add_1AddV2)batch_normalization_1/batchnorm/mul_1:z:0'batch_normalization_1/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2'
%batch_normalization_1/batchnorm/add_1•
add/addAddV2'batch_normalization/batchnorm/add_1:z:0)batch_normalization_1/batchnorm/add_1:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2	
add/addє
Mtransformer_block_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpReadVariableOpVtransformer_block_1_multi_head_attention_1_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02O
Mtransformer_block_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpќ
>transformer_block_1/multi_head_attention_1/query/einsum/EinsumEinsumadd/add:z:0Utransformer_block_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€# *
equationabc,cde->abde2@
>transformer_block_1/multi_head_attention_1/query/einsum/EinsumЧ
Ctransformer_block_1/multi_head_attention_1/query/add/ReadVariableOpReadVariableOpLtransformer_block_1_multi_head_attention_1_query_add_readvariableop_resource*
_output_shapes

: *
dtype02E
Ctransformer_block_1/multi_head_attention_1/query/add/ReadVariableOp≈
4transformer_block_1/multi_head_attention_1/query/addAddV2Gtransformer_block_1/multi_head_attention_1/query/einsum/Einsum:output:0Ktransformer_block_1/multi_head_attention_1/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€# 26
4transformer_block_1/multi_head_attention_1/query/add≥
Ktransformer_block_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpReadVariableOpTtransformer_block_1_multi_head_attention_1_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02M
Ktransformer_block_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp»
<transformer_block_1/multi_head_attention_1/key/einsum/EinsumEinsumadd/add:z:0Stransformer_block_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€# *
equationabc,cde->abde2>
<transformer_block_1/multi_head_attention_1/key/einsum/EinsumС
Atransformer_block_1/multi_head_attention_1/key/add/ReadVariableOpReadVariableOpJtransformer_block_1_multi_head_attention_1_key_add_readvariableop_resource*
_output_shapes

: *
dtype02C
Atransformer_block_1/multi_head_attention_1/key/add/ReadVariableOpљ
2transformer_block_1/multi_head_attention_1/key/addAddV2Etransformer_block_1/multi_head_attention_1/key/einsum/Einsum:output:0Itransformer_block_1/multi_head_attention_1/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€# 24
2transformer_block_1/multi_head_attention_1/key/addє
Mtransformer_block_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpReadVariableOpVtransformer_block_1_multi_head_attention_1_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02O
Mtransformer_block_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpќ
>transformer_block_1/multi_head_attention_1/value/einsum/EinsumEinsumadd/add:z:0Utransformer_block_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€# *
equationabc,cde->abde2@
>transformer_block_1/multi_head_attention_1/value/einsum/EinsumЧ
Ctransformer_block_1/multi_head_attention_1/value/add/ReadVariableOpReadVariableOpLtransformer_block_1_multi_head_attention_1_value_add_readvariableop_resource*
_output_shapes

: *
dtype02E
Ctransformer_block_1/multi_head_attention_1/value/add/ReadVariableOp≈
4transformer_block_1/multi_head_attention_1/value/addAddV2Gtransformer_block_1/multi_head_attention_1/value/einsum/Einsum:output:0Ktransformer_block_1/multi_head_attention_1/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€# 26
4transformer_block_1/multi_head_attention_1/value/add©
0transformer_block_1/multi_head_attention_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *у5>22
0transformer_block_1/multi_head_attention_1/Mul/yЦ
.transformer_block_1/multi_head_attention_1/MulMul8transformer_block_1/multi_head_attention_1/query/add:z:09transformer_block_1/multi_head_attention_1/Mul/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€# 20
.transformer_block_1/multi_head_attention_1/Mulћ
8transformer_block_1/multi_head_attention_1/einsum/EinsumEinsum6transformer_block_1/multi_head_attention_1/key/add:z:02transformer_block_1/multi_head_attention_1/Mul:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€##*
equationaecd,abcd->acbe2:
8transformer_block_1/multi_head_attention_1/einsum/EinsumА
:transformer_block_1/multi_head_attention_1/softmax/SoftmaxSoftmaxAtransformer_block_1/multi_head_attention_1/einsum/Einsum:output:0*
T0*/
_output_shapes
:€€€€€€€€€##2<
:transformer_block_1/multi_head_attention_1/softmax/Softmax…
@transformer_block_1/multi_head_attention_1/dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2B
@transformer_block_1/multi_head_attention_1/dropout/dropout/Const“
>transformer_block_1/multi_head_attention_1/dropout/dropout/MulMulDtransformer_block_1/multi_head_attention_1/softmax/Softmax:softmax:0Itransformer_block_1/multi_head_attention_1/dropout/dropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€##2@
>transformer_block_1/multi_head_attention_1/dropout/dropout/Mulш
@transformer_block_1/multi_head_attention_1/dropout/dropout/ShapeShapeDtransformer_block_1/multi_head_attention_1/softmax/Softmax:softmax:0*
T0*
_output_shapes
:2B
@transformer_block_1/multi_head_attention_1/dropout/dropout/Shapeб
Wtransformer_block_1/multi_head_attention_1/dropout/dropout/random_uniform/RandomUniformRandomUniformItransformer_block_1/multi_head_attention_1/dropout/dropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€##*
dtype0*

seedY2Y
Wtransformer_block_1/multi_head_attention_1/dropout/dropout/random_uniform/RandomUniformџ
Itransformer_block_1/multi_head_attention_1/dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    2K
Itransformer_block_1/multi_head_attention_1/dropout/dropout/GreaterEqual/yТ
Gtransformer_block_1/multi_head_attention_1/dropout/dropout/GreaterEqualGreaterEqual`transformer_block_1/multi_head_attention_1/dropout/dropout/random_uniform/RandomUniform:output:0Rtransformer_block_1/multi_head_attention_1/dropout/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€##2I
Gtransformer_block_1/multi_head_attention_1/dropout/dropout/GreaterEqual†
?transformer_block_1/multi_head_attention_1/dropout/dropout/CastCastKtransformer_block_1/multi_head_attention_1/dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:€€€€€€€€€##2A
?transformer_block_1/multi_head_attention_1/dropout/dropout/Castќ
@transformer_block_1/multi_head_attention_1/dropout/dropout/Mul_1MulBtransformer_block_1/multi_head_attention_1/dropout/dropout/Mul:z:0Ctransformer_block_1/multi_head_attention_1/dropout/dropout/Cast:y:0*
T0*/
_output_shapes
:€€€€€€€€€##2B
@transformer_block_1/multi_head_attention_1/dropout/dropout/Mul_1д
:transformer_block_1/multi_head_attention_1/einsum_1/EinsumEinsumDtransformer_block_1/multi_head_attention_1/dropout/dropout/Mul_1:z:08transformer_block_1/multi_head_attention_1/value/add:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€# *
equationacbe,aecd->abcd2<
:transformer_block_1/multi_head_attention_1/einsum_1/EinsumЏ
Xtransformer_block_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpatransformer_block_1_multi_head_attention_1_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02Z
Xtransformer_block_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp£
Itransformer_block_1/multi_head_attention_1/attention_output/einsum/EinsumEinsumCtransformer_block_1/multi_head_attention_1/einsum_1/Einsum:output:0`transformer_block_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:€€€€€€€€€# *
equationabcd,cde->abe2K
Itransformer_block_1/multi_head_attention_1/attention_output/einsum/Einsumі
Ntransformer_block_1/multi_head_attention_1/attention_output/add/ReadVariableOpReadVariableOpWtransformer_block_1_multi_head_attention_1_attention_output_add_readvariableop_resource*
_output_shapes
: *
dtype02P
Ntransformer_block_1/multi_head_attention_1/attention_output/add/ReadVariableOpн
?transformer_block_1/multi_head_attention_1/attention_output/addAddV2Rtransformer_block_1/multi_head_attention_1/attention_output/einsum/Einsum:output:0Vtransformer_block_1/multi_head_attention_1/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€# 2A
?transformer_block_1/multi_head_attention_1/attention_output/addЯ
+transformer_block_1/dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2-
+transformer_block_1/dropout_2/dropout/ConstО
)transformer_block_1/dropout_2/dropout/MulMulCtransformer_block_1/multi_head_attention_1/attention_output/add:z:04transformer_block_1/dropout_2/dropout/Const:output:0*
T0*+
_output_shapes
:€€€€€€€€€# 2+
)transformer_block_1/dropout_2/dropout/MulЌ
+transformer_block_1/dropout_2/dropout/ShapeShapeCtransformer_block_1/multi_head_attention_1/attention_output/add:z:0*
T0*
_output_shapes
:2-
+transformer_block_1/dropout_2/dropout/ShapeЂ
Btransformer_block_1/dropout_2/dropout/random_uniform/RandomUniformRandomUniform4transformer_block_1/dropout_2/dropout/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€# *
dtype0*

seedY*
seed22D
Btransformer_block_1/dropout_2/dropout/random_uniform/RandomUniform±
4transformer_block_1/dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=26
4transformer_block_1/dropout_2/dropout/GreaterEqual/yЇ
2transformer_block_1/dropout_2/dropout/GreaterEqualGreaterEqualKtransformer_block_1/dropout_2/dropout/random_uniform/RandomUniform:output:0=transformer_block_1/dropout_2/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€# 24
2transformer_block_1/dropout_2/dropout/GreaterEqualЁ
*transformer_block_1/dropout_2/dropout/CastCast6transformer_block_1/dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:€€€€€€€€€# 2,
*transformer_block_1/dropout_2/dropout/Castц
+transformer_block_1/dropout_2/dropout/Mul_1Mul-transformer_block_1/dropout_2/dropout/Mul:z:0.transformer_block_1/dropout_2/dropout/Cast:y:0*
T0*+
_output_shapes
:€€€€€€€€€# 2-
+transformer_block_1/dropout_2/dropout/Mul_1ѓ
transformer_block_1/addAddV2add/add:z:0/transformer_block_1/dropout_2/dropout/Mul_1:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2
transformer_block_1/addё
Htransformer_block_1/layer_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2J
Htransformer_block_1/layer_normalization_2/moments/mean/reduction_indicesѓ
6transformer_block_1/layer_normalization_2/moments/meanMeantransformer_block_1/add:z:0Qtransformer_block_1/layer_normalization_2/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€#*
	keep_dims(28
6transformer_block_1/layer_normalization_2/moments/meanЗ
>transformer_block_1/layer_normalization_2/moments/StopGradientStopGradient?transformer_block_1/layer_normalization_2/moments/mean:output:0*
T0*+
_output_shapes
:€€€€€€€€€#2@
>transformer_block_1/layer_normalization_2/moments/StopGradientї
Ctransformer_block_1/layer_normalization_2/moments/SquaredDifferenceSquaredDifferencetransformer_block_1/add:z:0Gtransformer_block_1/layer_normalization_2/moments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€# 2E
Ctransformer_block_1/layer_normalization_2/moments/SquaredDifferenceж
Ltransformer_block_1/layer_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2N
Ltransformer_block_1/layer_normalization_2/moments/variance/reduction_indicesз
:transformer_block_1/layer_normalization_2/moments/varianceMeanGtransformer_block_1/layer_normalization_2/moments/SquaredDifference:z:0Utransformer_block_1/layer_normalization_2/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€#*
	keep_dims(2<
:transformer_block_1/layer_normalization_2/moments/varianceї
9transformer_block_1/layer_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж52;
9transformer_block_1/layer_normalization_2/batchnorm/add/yЇ
7transformer_block_1/layer_normalization_2/batchnorm/addAddV2Ctransformer_block_1/layer_normalization_2/moments/variance:output:0Btransformer_block_1/layer_normalization_2/batchnorm/add/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€#29
7transformer_block_1/layer_normalization_2/batchnorm/addт
9transformer_block_1/layer_normalization_2/batchnorm/RsqrtRsqrt;transformer_block_1/layer_normalization_2/batchnorm/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€#2;
9transformer_block_1/layer_normalization_2/batchnorm/RsqrtЬ
Ftransformer_block_1/layer_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOpOtransformer_block_1_layer_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02H
Ftransformer_block_1/layer_normalization_2/batchnorm/mul/ReadVariableOpЊ
7transformer_block_1/layer_normalization_2/batchnorm/mulMul=transformer_block_1/layer_normalization_2/batchnorm/Rsqrt:y:0Ntransformer_block_1/layer_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€# 29
7transformer_block_1/layer_normalization_2/batchnorm/mulН
9transformer_block_1/layer_normalization_2/batchnorm/mul_1Multransformer_block_1/add:z:0;transformer_block_1/layer_normalization_2/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2;
9transformer_block_1/layer_normalization_2/batchnorm/mul_1±
9transformer_block_1/layer_normalization_2/batchnorm/mul_2Mul?transformer_block_1/layer_normalization_2/moments/mean:output:0;transformer_block_1/layer_normalization_2/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2;
9transformer_block_1/layer_normalization_2/batchnorm/mul_2Р
Btransformer_block_1/layer_normalization_2/batchnorm/ReadVariableOpReadVariableOpKtransformer_block_1_layer_normalization_2_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02D
Btransformer_block_1/layer_normalization_2/batchnorm/ReadVariableOpЇ
7transformer_block_1/layer_normalization_2/batchnorm/subSubJtransformer_block_1/layer_normalization_2/batchnorm/ReadVariableOp:value:0=transformer_block_1/layer_normalization_2/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 29
7transformer_block_1/layer_normalization_2/batchnorm/sub±
9transformer_block_1/layer_normalization_2/batchnorm/add_1AddV2=transformer_block_1/layer_normalization_2/batchnorm/mul_1:z:0;transformer_block_1/layer_normalization_2/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2;
9transformer_block_1/layer_normalization_2/batchnorm/add_1С
Atransformer_block_1/sequential_1/dense_2/Tensordot/ReadVariableOpReadVariableOpJtransformer_block_1_sequential_1_dense_2_tensordot_readvariableop_resource*
_output_shapes

: @*
dtype02C
Atransformer_block_1/sequential_1/dense_2/Tensordot/ReadVariableOpЉ
7transformer_block_1/sequential_1/dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:29
7transformer_block_1/sequential_1/dense_2/Tensordot/axes√
7transformer_block_1/sequential_1/dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       29
7transformer_block_1/sequential_1/dense_2/Tensordot/freeб
8transformer_block_1/sequential_1/dense_2/Tensordot/ShapeShape=transformer_block_1/layer_normalization_2/batchnorm/add_1:z:0*
T0*
_output_shapes
:2:
8transformer_block_1/sequential_1/dense_2/Tensordot/Shape∆
@transformer_block_1/sequential_1/dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2B
@transformer_block_1/sequential_1/dense_2/Tensordot/GatherV2/axisЮ
;transformer_block_1/sequential_1/dense_2/Tensordot/GatherV2GatherV2Atransformer_block_1/sequential_1/dense_2/Tensordot/Shape:output:0@transformer_block_1/sequential_1/dense_2/Tensordot/free:output:0Itransformer_block_1/sequential_1/dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2=
;transformer_block_1/sequential_1/dense_2/Tensordot/GatherV2 
Btransformer_block_1/sequential_1/dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2D
Btransformer_block_1/sequential_1/dense_2/Tensordot/GatherV2_1/axis§
=transformer_block_1/sequential_1/dense_2/Tensordot/GatherV2_1GatherV2Atransformer_block_1/sequential_1/dense_2/Tensordot/Shape:output:0@transformer_block_1/sequential_1/dense_2/Tensordot/axes:output:0Ktransformer_block_1/sequential_1/dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2?
=transformer_block_1/sequential_1/dense_2/Tensordot/GatherV2_1Њ
8transformer_block_1/sequential_1/dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2:
8transformer_block_1/sequential_1/dense_2/Tensordot/Const§
7transformer_block_1/sequential_1/dense_2/Tensordot/ProdProdDtransformer_block_1/sequential_1/dense_2/Tensordot/GatherV2:output:0Atransformer_block_1/sequential_1/dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: 29
7transformer_block_1/sequential_1/dense_2/Tensordot/Prod¬
:transformer_block_1/sequential_1/dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2<
:transformer_block_1/sequential_1/dense_2/Tensordot/Const_1ђ
9transformer_block_1/sequential_1/dense_2/Tensordot/Prod_1ProdFtransformer_block_1/sequential_1/dense_2/Tensordot/GatherV2_1:output:0Ctransformer_block_1/sequential_1/dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2;
9transformer_block_1/sequential_1/dense_2/Tensordot/Prod_1¬
>transformer_block_1/sequential_1/dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2@
>transformer_block_1/sequential_1/dense_2/Tensordot/concat/axisэ
9transformer_block_1/sequential_1/dense_2/Tensordot/concatConcatV2@transformer_block_1/sequential_1/dense_2/Tensordot/free:output:0@transformer_block_1/sequential_1/dense_2/Tensordot/axes:output:0Gtransformer_block_1/sequential_1/dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2;
9transformer_block_1/sequential_1/dense_2/Tensordot/concat∞
8transformer_block_1/sequential_1/dense_2/Tensordot/stackPack@transformer_block_1/sequential_1/dense_2/Tensordot/Prod:output:0Btransformer_block_1/sequential_1/dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2:
8transformer_block_1/sequential_1/dense_2/Tensordot/stack¬
<transformer_block_1/sequential_1/dense_2/Tensordot/transpose	Transpose=transformer_block_1/layer_normalization_2/batchnorm/add_1:z:0Btransformer_block_1/sequential_1/dense_2/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€# 2>
<transformer_block_1/sequential_1/dense_2/Tensordot/transpose√
:transformer_block_1/sequential_1/dense_2/Tensordot/ReshapeReshape@transformer_block_1/sequential_1/dense_2/Tensordot/transpose:y:0Atransformer_block_1/sequential_1/dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2<
:transformer_block_1/sequential_1/dense_2/Tensordot/Reshape¬
9transformer_block_1/sequential_1/dense_2/Tensordot/MatMulMatMulCtransformer_block_1/sequential_1/dense_2/Tensordot/Reshape:output:0Itransformer_block_1/sequential_1/dense_2/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2;
9transformer_block_1/sequential_1/dense_2/Tensordot/MatMul¬
:transformer_block_1/sequential_1/dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2<
:transformer_block_1/sequential_1/dense_2/Tensordot/Const_2∆
@transformer_block_1/sequential_1/dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2B
@transformer_block_1/sequential_1/dense_2/Tensordot/concat_1/axisК
;transformer_block_1/sequential_1/dense_2/Tensordot/concat_1ConcatV2Dtransformer_block_1/sequential_1/dense_2/Tensordot/GatherV2:output:0Ctransformer_block_1/sequential_1/dense_2/Tensordot/Const_2:output:0Itransformer_block_1/sequential_1/dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2=
;transformer_block_1/sequential_1/dense_2/Tensordot/concat_1і
2transformer_block_1/sequential_1/dense_2/TensordotReshapeCtransformer_block_1/sequential_1/dense_2/Tensordot/MatMul:product:0Dtransformer_block_1/sequential_1/dense_2/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€#@24
2transformer_block_1/sequential_1/dense_2/TensordotЗ
?transformer_block_1/sequential_1/dense_2/BiasAdd/ReadVariableOpReadVariableOpHtransformer_block_1_sequential_1_dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02A
?transformer_block_1/sequential_1/dense_2/BiasAdd/ReadVariableOpЂ
0transformer_block_1/sequential_1/dense_2/BiasAddBiasAdd;transformer_block_1/sequential_1/dense_2/Tensordot:output:0Gtransformer_block_1/sequential_1/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€#@22
0transformer_block_1/sequential_1/dense_2/BiasAdd„
-transformer_block_1/sequential_1/dense_2/ReluRelu9transformer_block_1/sequential_1/dense_2/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€#@2/
-transformer_block_1/sequential_1/dense_2/ReluС
Atransformer_block_1/sequential_1/dense_3/Tensordot/ReadVariableOpReadVariableOpJtransformer_block_1_sequential_1_dense_3_tensordot_readvariableop_resource*
_output_shapes

:@ *
dtype02C
Atransformer_block_1/sequential_1/dense_3/Tensordot/ReadVariableOpЉ
7transformer_block_1/sequential_1/dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:29
7transformer_block_1/sequential_1/dense_3/Tensordot/axes√
7transformer_block_1/sequential_1/dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       29
7transformer_block_1/sequential_1/dense_3/Tensordot/freeя
8transformer_block_1/sequential_1/dense_3/Tensordot/ShapeShape;transformer_block_1/sequential_1/dense_2/Relu:activations:0*
T0*
_output_shapes
:2:
8transformer_block_1/sequential_1/dense_3/Tensordot/Shape∆
@transformer_block_1/sequential_1/dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2B
@transformer_block_1/sequential_1/dense_3/Tensordot/GatherV2/axisЮ
;transformer_block_1/sequential_1/dense_3/Tensordot/GatherV2GatherV2Atransformer_block_1/sequential_1/dense_3/Tensordot/Shape:output:0@transformer_block_1/sequential_1/dense_3/Tensordot/free:output:0Itransformer_block_1/sequential_1/dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2=
;transformer_block_1/sequential_1/dense_3/Tensordot/GatherV2 
Btransformer_block_1/sequential_1/dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2D
Btransformer_block_1/sequential_1/dense_3/Tensordot/GatherV2_1/axis§
=transformer_block_1/sequential_1/dense_3/Tensordot/GatherV2_1GatherV2Atransformer_block_1/sequential_1/dense_3/Tensordot/Shape:output:0@transformer_block_1/sequential_1/dense_3/Tensordot/axes:output:0Ktransformer_block_1/sequential_1/dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2?
=transformer_block_1/sequential_1/dense_3/Tensordot/GatherV2_1Њ
8transformer_block_1/sequential_1/dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2:
8transformer_block_1/sequential_1/dense_3/Tensordot/Const§
7transformer_block_1/sequential_1/dense_3/Tensordot/ProdProdDtransformer_block_1/sequential_1/dense_3/Tensordot/GatherV2:output:0Atransformer_block_1/sequential_1/dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: 29
7transformer_block_1/sequential_1/dense_3/Tensordot/Prod¬
:transformer_block_1/sequential_1/dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2<
:transformer_block_1/sequential_1/dense_3/Tensordot/Const_1ђ
9transformer_block_1/sequential_1/dense_3/Tensordot/Prod_1ProdFtransformer_block_1/sequential_1/dense_3/Tensordot/GatherV2_1:output:0Ctransformer_block_1/sequential_1/dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2;
9transformer_block_1/sequential_1/dense_3/Tensordot/Prod_1¬
>transformer_block_1/sequential_1/dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2@
>transformer_block_1/sequential_1/dense_3/Tensordot/concat/axisэ
9transformer_block_1/sequential_1/dense_3/Tensordot/concatConcatV2@transformer_block_1/sequential_1/dense_3/Tensordot/free:output:0@transformer_block_1/sequential_1/dense_3/Tensordot/axes:output:0Gtransformer_block_1/sequential_1/dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2;
9transformer_block_1/sequential_1/dense_3/Tensordot/concat∞
8transformer_block_1/sequential_1/dense_3/Tensordot/stackPack@transformer_block_1/sequential_1/dense_3/Tensordot/Prod:output:0Btransformer_block_1/sequential_1/dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2:
8transformer_block_1/sequential_1/dense_3/Tensordot/stackј
<transformer_block_1/sequential_1/dense_3/Tensordot/transpose	Transpose;transformer_block_1/sequential_1/dense_2/Relu:activations:0Btransformer_block_1/sequential_1/dense_3/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€#@2>
<transformer_block_1/sequential_1/dense_3/Tensordot/transpose√
:transformer_block_1/sequential_1/dense_3/Tensordot/ReshapeReshape@transformer_block_1/sequential_1/dense_3/Tensordot/transpose:y:0Atransformer_block_1/sequential_1/dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2<
:transformer_block_1/sequential_1/dense_3/Tensordot/Reshape¬
9transformer_block_1/sequential_1/dense_3/Tensordot/MatMulMatMulCtransformer_block_1/sequential_1/dense_3/Tensordot/Reshape:output:0Itransformer_block_1/sequential_1/dense_3/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2;
9transformer_block_1/sequential_1/dense_3/Tensordot/MatMul¬
:transformer_block_1/sequential_1/dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2<
:transformer_block_1/sequential_1/dense_3/Tensordot/Const_2∆
@transformer_block_1/sequential_1/dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2B
@transformer_block_1/sequential_1/dense_3/Tensordot/concat_1/axisК
;transformer_block_1/sequential_1/dense_3/Tensordot/concat_1ConcatV2Dtransformer_block_1/sequential_1/dense_3/Tensordot/GatherV2:output:0Ctransformer_block_1/sequential_1/dense_3/Tensordot/Const_2:output:0Itransformer_block_1/sequential_1/dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2=
;transformer_block_1/sequential_1/dense_3/Tensordot/concat_1і
2transformer_block_1/sequential_1/dense_3/TensordotReshapeCtransformer_block_1/sequential_1/dense_3/Tensordot/MatMul:product:0Dtransformer_block_1/sequential_1/dense_3/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€# 24
2transformer_block_1/sequential_1/dense_3/TensordotЗ
?transformer_block_1/sequential_1/dense_3/BiasAdd/ReadVariableOpReadVariableOpHtransformer_block_1_sequential_1_dense_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02A
?transformer_block_1/sequential_1/dense_3/BiasAdd/ReadVariableOpЂ
0transformer_block_1/sequential_1/dense_3/BiasAddBiasAdd;transformer_block_1/sequential_1/dense_3/Tensordot:output:0Gtransformer_block_1/sequential_1/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€# 22
0transformer_block_1/sequential_1/dense_3/BiasAddЯ
+transformer_block_1/dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2-
+transformer_block_1/dropout_3/dropout/ConstД
)transformer_block_1/dropout_3/dropout/MulMul9transformer_block_1/sequential_1/dense_3/BiasAdd:output:04transformer_block_1/dropout_3/dropout/Const:output:0*
T0*+
_output_shapes
:€€€€€€€€€# 2+
)transformer_block_1/dropout_3/dropout/Mul√
+transformer_block_1/dropout_3/dropout/ShapeShape9transformer_block_1/sequential_1/dense_3/BiasAdd:output:0*
T0*
_output_shapes
:2-
+transformer_block_1/dropout_3/dropout/ShapeЂ
Btransformer_block_1/dropout_3/dropout/random_uniform/RandomUniformRandomUniform4transformer_block_1/dropout_3/dropout/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€# *
dtype0*

seedY*
seed22D
Btransformer_block_1/dropout_3/dropout/random_uniform/RandomUniform±
4transformer_block_1/dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=26
4transformer_block_1/dropout_3/dropout/GreaterEqual/yЇ
2transformer_block_1/dropout_3/dropout/GreaterEqualGreaterEqualKtransformer_block_1/dropout_3/dropout/random_uniform/RandomUniform:output:0=transformer_block_1/dropout_3/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€# 24
2transformer_block_1/dropout_3/dropout/GreaterEqualЁ
*transformer_block_1/dropout_3/dropout/CastCast6transformer_block_1/dropout_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:€€€€€€€€€# 2,
*transformer_block_1/dropout_3/dropout/Castц
+transformer_block_1/dropout_3/dropout/Mul_1Mul-transformer_block_1/dropout_3/dropout/Mul:z:0.transformer_block_1/dropout_3/dropout/Cast:y:0*
T0*+
_output_shapes
:€€€€€€€€€# 2-
+transformer_block_1/dropout_3/dropout/Mul_1е
transformer_block_1/add_1AddV2=transformer_block_1/layer_normalization_2/batchnorm/add_1:z:0/transformer_block_1/dropout_3/dropout/Mul_1:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2
transformer_block_1/add_1ё
Htransformer_block_1/layer_normalization_3/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2J
Htransformer_block_1/layer_normalization_3/moments/mean/reduction_indices±
6transformer_block_1/layer_normalization_3/moments/meanMeantransformer_block_1/add_1:z:0Qtransformer_block_1/layer_normalization_3/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€#*
	keep_dims(28
6transformer_block_1/layer_normalization_3/moments/meanЗ
>transformer_block_1/layer_normalization_3/moments/StopGradientStopGradient?transformer_block_1/layer_normalization_3/moments/mean:output:0*
T0*+
_output_shapes
:€€€€€€€€€#2@
>transformer_block_1/layer_normalization_3/moments/StopGradientљ
Ctransformer_block_1/layer_normalization_3/moments/SquaredDifferenceSquaredDifferencetransformer_block_1/add_1:z:0Gtransformer_block_1/layer_normalization_3/moments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€# 2E
Ctransformer_block_1/layer_normalization_3/moments/SquaredDifferenceж
Ltransformer_block_1/layer_normalization_3/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2N
Ltransformer_block_1/layer_normalization_3/moments/variance/reduction_indicesз
:transformer_block_1/layer_normalization_3/moments/varianceMeanGtransformer_block_1/layer_normalization_3/moments/SquaredDifference:z:0Utransformer_block_1/layer_normalization_3/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€#*
	keep_dims(2<
:transformer_block_1/layer_normalization_3/moments/varianceї
9transformer_block_1/layer_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж52;
9transformer_block_1/layer_normalization_3/batchnorm/add/yЇ
7transformer_block_1/layer_normalization_3/batchnorm/addAddV2Ctransformer_block_1/layer_normalization_3/moments/variance:output:0Btransformer_block_1/layer_normalization_3/batchnorm/add/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€#29
7transformer_block_1/layer_normalization_3/batchnorm/addт
9transformer_block_1/layer_normalization_3/batchnorm/RsqrtRsqrt;transformer_block_1/layer_normalization_3/batchnorm/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€#2;
9transformer_block_1/layer_normalization_3/batchnorm/RsqrtЬ
Ftransformer_block_1/layer_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOpOtransformer_block_1_layer_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02H
Ftransformer_block_1/layer_normalization_3/batchnorm/mul/ReadVariableOpЊ
7transformer_block_1/layer_normalization_3/batchnorm/mulMul=transformer_block_1/layer_normalization_3/batchnorm/Rsqrt:y:0Ntransformer_block_1/layer_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€# 29
7transformer_block_1/layer_normalization_3/batchnorm/mulП
9transformer_block_1/layer_normalization_3/batchnorm/mul_1Multransformer_block_1/add_1:z:0;transformer_block_1/layer_normalization_3/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2;
9transformer_block_1/layer_normalization_3/batchnorm/mul_1±
9transformer_block_1/layer_normalization_3/batchnorm/mul_2Mul?transformer_block_1/layer_normalization_3/moments/mean:output:0;transformer_block_1/layer_normalization_3/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2;
9transformer_block_1/layer_normalization_3/batchnorm/mul_2Р
Btransformer_block_1/layer_normalization_3/batchnorm/ReadVariableOpReadVariableOpKtransformer_block_1_layer_normalization_3_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02D
Btransformer_block_1/layer_normalization_3/batchnorm/ReadVariableOpЇ
7transformer_block_1/layer_normalization_3/batchnorm/subSubJtransformer_block_1/layer_normalization_3/batchnorm/ReadVariableOp:value:0=transformer_block_1/layer_normalization_3/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 29
7transformer_block_1/layer_normalization_3/batchnorm/sub±
9transformer_block_1/layer_normalization_3/batchnorm/add_1AddV2=transformer_block_1/layer_normalization_3/batchnorm/mul_1:z:0;transformer_block_1/layer_normalization_3/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2;
9transformer_block_1/layer_normalization_3/batchnorm/add_1o
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€`  2
flatten/ConstЈ
flatten/ReshapeReshape=transformer_block_1/layer_normalization_3/batchnorm/add_1:z:0flatten/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€а2
flatten/Reshapet
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate/concat/axisґ
concatenate/concatConcatV2flatten/Reshape:output:0inputs_1 concatenate/concat/axis:output:0*
N*
T0*(
_output_shapes
:€€€€€€€€€и2
concatenate/concat¶
dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes
:	и@*
dtype02
dense_4/MatMul/ReadVariableOp†
dense_4/MatMulMatMulconcatenate/concat:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_4/MatMul§
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_4/BiasAdd/ReadVariableOp°
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_4/BiasAddp
dense_4/ReluReludense_4/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_4/Reluw
dropout_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
dropout_4/dropout/Const•
dropout_4/dropout/MulMuldense_4/Relu:activations:0 dropout_4/dropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dropout_4/dropout/Mul|
dropout_4/dropout/ShapeShapedense_4/Relu:activations:0*
T0*
_output_shapes
:2
dropout_4/dropout/Shapeл
.dropout_4/dropout/random_uniform/RandomUniformRandomUniform dropout_4/dropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@*
dtype0*

seedY*
seed220
.dropout_4/dropout/random_uniform/RandomUniformЙ
 dropout_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2"
 dropout_4/dropout/GreaterEqual/yж
dropout_4/dropout/GreaterEqualGreaterEqual7dropout_4/dropout/random_uniform/RandomUniform:output:0)dropout_4/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2 
dropout_4/dropout/GreaterEqualЭ
dropout_4/dropout/CastCast"dropout_4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€@2
dropout_4/dropout/CastҐ
dropout_4/dropout/Mul_1Muldropout_4/dropout/Mul:z:0dropout_4/dropout/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dropout_4/dropout/Mul_1•
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
dense_5/MatMul/ReadVariableOp†
dense_5/MatMulMatMuldropout_4/dropout/Mul_1:z:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_5/MatMul§
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_5/BiasAdd/ReadVariableOp°
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_5/BiasAddp
dense_5/ReluReludense_5/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_5/Reluw
dropout_5/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
dropout_5/dropout/Const•
dropout_5/dropout/MulMuldense_5/Relu:activations:0 dropout_5/dropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dropout_5/dropout/Mul|
dropout_5/dropout/ShapeShapedense_5/Relu:activations:0*
T0*
_output_shapes
:2
dropout_5/dropout/Shapeл
.dropout_5/dropout/random_uniform/RandomUniformRandomUniform dropout_5/dropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@*
dtype0*

seedY*
seed220
.dropout_5/dropout/random_uniform/RandomUniformЙ
 dropout_5/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2"
 dropout_5/dropout/GreaterEqual/yж
dropout_5/dropout/GreaterEqualGreaterEqual7dropout_5/dropout/random_uniform/RandomUniform:output:0)dropout_5/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2 
dropout_5/dropout/GreaterEqualЭ
dropout_5/dropout/CastCast"dropout_5/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€@2
dropout_5/dropout/CastҐ
dropout_5/dropout/Mul_1Muldropout_5/dropout/Mul:z:0dropout_5/dropout/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dropout_5/dropout/Mul_1•
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
dense_6/MatMul/ReadVariableOp†
dense_6/MatMulMatMuldropout_5/dropout/Mul_1:z:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_6/MatMul§
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_6/BiasAdd/ReadVariableOp°
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
dense_6/BiasAddз
IdentityIdentitydense_6/BiasAdd:output:08^batch_normalization/AssignMovingAvg/AssignSubVariableOp3^batch_normalization/AssignMovingAvg/ReadVariableOp:^batch_normalization/AssignMovingAvg_1/AssignSubVariableOp5^batch_normalization/AssignMovingAvg_1/ReadVariableOp-^batch_normalization/batchnorm/ReadVariableOp1^batch_normalization/batchnorm/mul/ReadVariableOp:^batch_normalization_1/AssignMovingAvg/AssignSubVariableOp5^batch_normalization_1/AssignMovingAvg/ReadVariableOp<^batch_normalization_1/AssignMovingAvg_1/AssignSubVariableOp7^batch_normalization_1/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_1/batchnorm/ReadVariableOp3^batch_normalization_1/batchnorm/mul/ReadVariableOp^conv1d/BiasAdd/ReadVariableOp*^conv1d/conv1d/ExpandDims_1/ReadVariableOp ^conv1d_1/BiasAdd/ReadVariableOp,^conv1d_1/conv1d/ExpandDims_1/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp8^token_and_position_embedding/embedding/embedding_lookup:^token_and_position_embedding/embedding_1/embedding_lookupC^transformer_block_1/layer_normalization_2/batchnorm/ReadVariableOpG^transformer_block_1/layer_normalization_2/batchnorm/mul/ReadVariableOpC^transformer_block_1/layer_normalization_3/batchnorm/ReadVariableOpG^transformer_block_1/layer_normalization_3/batchnorm/mul/ReadVariableOpO^transformer_block_1/multi_head_attention_1/attention_output/add/ReadVariableOpY^transformer_block_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpB^transformer_block_1/multi_head_attention_1/key/add/ReadVariableOpL^transformer_block_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpD^transformer_block_1/multi_head_attention_1/query/add/ReadVariableOpN^transformer_block_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpD^transformer_block_1/multi_head_attention_1/value/add/ReadVariableOpN^transformer_block_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp@^transformer_block_1/sequential_1/dense_2/BiasAdd/ReadVariableOpB^transformer_block_1/sequential_1/dense_2/Tensordot/ReadVariableOp@^transformer_block_1/sequential_1/dense_3/BiasAdd/ReadVariableOpB^transformer_block_1/sequential_1/dense_3/Tensordot/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*ћ
_input_shapesЇ
Ј:€€€€€€€€€ДR:€€€€€€€€€::::::::::::::::::::::::::::::::::::2r
7batch_normalization/AssignMovingAvg/AssignSubVariableOp7batch_normalization/AssignMovingAvg/AssignSubVariableOp2h
2batch_normalization/AssignMovingAvg/ReadVariableOp2batch_normalization/AssignMovingAvg/ReadVariableOp2v
9batch_normalization/AssignMovingAvg_1/AssignSubVariableOp9batch_normalization/AssignMovingAvg_1/AssignSubVariableOp2l
4batch_normalization/AssignMovingAvg_1/ReadVariableOp4batch_normalization/AssignMovingAvg_1/ReadVariableOp2\
,batch_normalization/batchnorm/ReadVariableOp,batch_normalization/batchnorm/ReadVariableOp2d
0batch_normalization/batchnorm/mul/ReadVariableOp0batch_normalization/batchnorm/mul/ReadVariableOp2v
9batch_normalization_1/AssignMovingAvg/AssignSubVariableOp9batch_normalization_1/AssignMovingAvg/AssignSubVariableOp2l
4batch_normalization_1/AssignMovingAvg/ReadVariableOp4batch_normalization_1/AssignMovingAvg/ReadVariableOp2z
;batch_normalization_1/AssignMovingAvg_1/AssignSubVariableOp;batch_normalization_1/AssignMovingAvg_1/AssignSubVariableOp2p
6batch_normalization_1/AssignMovingAvg_1/ReadVariableOp6batch_normalization_1/AssignMovingAvg_1/ReadVariableOp2`
.batch_normalization_1/batchnorm/ReadVariableOp.batch_normalization_1/batchnorm/ReadVariableOp2h
2batch_normalization_1/batchnorm/mul/ReadVariableOp2batch_normalization_1/batchnorm/mul/ReadVariableOp2>
conv1d/BiasAdd/ReadVariableOpconv1d/BiasAdd/ReadVariableOp2V
)conv1d/conv1d/ExpandDims_1/ReadVariableOp)conv1d/conv1d/ExpandDims_1/ReadVariableOp2B
conv1d_1/BiasAdd/ReadVariableOpconv1d_1/BiasAdd/ReadVariableOp2Z
+conv1d_1/conv1d/ExpandDims_1/ReadVariableOp+conv1d_1/conv1d/ExpandDims_1/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2r
7token_and_position_embedding/embedding/embedding_lookup7token_and_position_embedding/embedding/embedding_lookup2v
9token_and_position_embedding/embedding_1/embedding_lookup9token_and_position_embedding/embedding_1/embedding_lookup2И
Btransformer_block_1/layer_normalization_2/batchnorm/ReadVariableOpBtransformer_block_1/layer_normalization_2/batchnorm/ReadVariableOp2Р
Ftransformer_block_1/layer_normalization_2/batchnorm/mul/ReadVariableOpFtransformer_block_1/layer_normalization_2/batchnorm/mul/ReadVariableOp2И
Btransformer_block_1/layer_normalization_3/batchnorm/ReadVariableOpBtransformer_block_1/layer_normalization_3/batchnorm/ReadVariableOp2Р
Ftransformer_block_1/layer_normalization_3/batchnorm/mul/ReadVariableOpFtransformer_block_1/layer_normalization_3/batchnorm/mul/ReadVariableOp2†
Ntransformer_block_1/multi_head_attention_1/attention_output/add/ReadVariableOpNtransformer_block_1/multi_head_attention_1/attention_output/add/ReadVariableOp2і
Xtransformer_block_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpXtransformer_block_1/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp2Ж
Atransformer_block_1/multi_head_attention_1/key/add/ReadVariableOpAtransformer_block_1/multi_head_attention_1/key/add/ReadVariableOp2Ъ
Ktransformer_block_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpKtransformer_block_1/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp2К
Ctransformer_block_1/multi_head_attention_1/query/add/ReadVariableOpCtransformer_block_1/multi_head_attention_1/query/add/ReadVariableOp2Ю
Mtransformer_block_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpMtransformer_block_1/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp2К
Ctransformer_block_1/multi_head_attention_1/value/add/ReadVariableOpCtransformer_block_1/multi_head_attention_1/value/add/ReadVariableOp2Ю
Mtransformer_block_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpMtransformer_block_1/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp2В
?transformer_block_1/sequential_1/dense_2/BiasAdd/ReadVariableOp?transformer_block_1/sequential_1/dense_2/BiasAdd/ReadVariableOp2Ж
Atransformer_block_1/sequential_1/dense_2/Tensordot/ReadVariableOpAtransformer_block_1/sequential_1/dense_2/Tensordot/ReadVariableOp2В
?transformer_block_1/sequential_1/dense_3/BiasAdd/ReadVariableOp?transformer_block_1/sequential_1/dense_3/BiasAdd/ReadVariableOp2Ж
Atransformer_block_1/sequential_1/dense_3/Tensordot/ReadVariableOpAtransformer_block_1/sequential_1/dense_3/Tensordot/ReadVariableOp:R N
(
_output_shapes
:€€€€€€€€€ДR
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs/1
»
c
E__inference_dropout_4_layer_call_and_return_conditional_losses_102330

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:€€€€€€€€€@2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2

Identity_1"!

identity_1Identity_1:output:0*&
_input_shapes
:€€€€€€€€€@:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
§
X
,__inference_concatenate_layer_call_fn_102293
inputs_0
inputs_1
identity÷
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€и* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_concatenate_layer_call_and_return_conditional_losses_1001132
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:€€€€€€€€€и2

Identity"
identityIdentity:output:0*:
_input_shapes)
':€€€€€€€€€а:€€€€€€€€€:R N
(
_output_shapes
:€€€€€€€€€а
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs/1
ю
M
1__inference_average_pooling1d_layer_call_fn_98922

inputs
identityг
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_average_pooling1d_layer_call_and_return_conditional_losses_989162
PartitionedCallВ
IdentityIdentityPartitionedCall:output:0*
T0*=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€:e a
=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
з
І
4__inference_batch_normalization_layer_call_fn_101649

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИҐStatefulPartitionedCall¶
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_990482
StatefulPartitionedCallЫ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 2

Identity"
identityIdentity:output:0*C
_input_shapes2
0:€€€€€€€€€€€€€€€€€€ ::::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs
Б№
“
O__inference_transformer_block_1_layer_call_and_return_conditional_losses_102195

inputsF
Bmulti_head_attention_1_query_einsum_einsum_readvariableop_resource<
8multi_head_attention_1_query_add_readvariableop_resourceD
@multi_head_attention_1_key_einsum_einsum_readvariableop_resource:
6multi_head_attention_1_key_add_readvariableop_resourceF
Bmulti_head_attention_1_value_einsum_einsum_readvariableop_resource<
8multi_head_attention_1_value_add_readvariableop_resourceQ
Mmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resourceG
Cmulti_head_attention_1_attention_output_add_readvariableop_resource?
;layer_normalization_2_batchnorm_mul_readvariableop_resource;
7layer_normalization_2_batchnorm_readvariableop_resource:
6sequential_1_dense_2_tensordot_readvariableop_resource8
4sequential_1_dense_2_biasadd_readvariableop_resource:
6sequential_1_dense_3_tensordot_readvariableop_resource8
4sequential_1_dense_3_biasadd_readvariableop_resource?
;layer_normalization_3_batchnorm_mul_readvariableop_resource;
7layer_normalization_3_batchnorm_readvariableop_resource
identityИҐ.layer_normalization_2/batchnorm/ReadVariableOpҐ2layer_normalization_2/batchnorm/mul/ReadVariableOpҐ.layer_normalization_3/batchnorm/ReadVariableOpҐ2layer_normalization_3/batchnorm/mul/ReadVariableOpҐ:multi_head_attention_1/attention_output/add/ReadVariableOpҐDmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpҐ-multi_head_attention_1/key/add/ReadVariableOpҐ7multi_head_attention_1/key/einsum/Einsum/ReadVariableOpҐ/multi_head_attention_1/query/add/ReadVariableOpҐ9multi_head_attention_1/query/einsum/Einsum/ReadVariableOpҐ/multi_head_attention_1/value/add/ReadVariableOpҐ9multi_head_attention_1/value/einsum/Einsum/ReadVariableOpҐ+sequential_1/dense_2/BiasAdd/ReadVariableOpҐ-sequential_1/dense_2/Tensordot/ReadVariableOpҐ+sequential_1/dense_3/BiasAdd/ReadVariableOpҐ-sequential_1/dense_3/Tensordot/ReadVariableOpэ
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02;
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOpН
*multi_head_attention_1/query/einsum/EinsumEinsuminputsAmulti_head_attention_1/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€# *
equationabc,cde->abde2,
*multi_head_attention_1/query/einsum/Einsumџ
/multi_head_attention_1/query/add/ReadVariableOpReadVariableOp8multi_head_attention_1_query_add_readvariableop_resource*
_output_shapes

: *
dtype021
/multi_head_attention_1/query/add/ReadVariableOpх
 multi_head_attention_1/query/addAddV23multi_head_attention_1/query/einsum/Einsum:output:07multi_head_attention_1/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€# 2"
 multi_head_attention_1/query/addч
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_1_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype029
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOpЗ
(multi_head_attention_1/key/einsum/EinsumEinsuminputs?multi_head_attention_1/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€# *
equationabc,cde->abde2*
(multi_head_attention_1/key/einsum/Einsum’
-multi_head_attention_1/key/add/ReadVariableOpReadVariableOp6multi_head_attention_1_key_add_readvariableop_resource*
_output_shapes

: *
dtype02/
-multi_head_attention_1/key/add/ReadVariableOpн
multi_head_attention_1/key/addAddV21multi_head_attention_1/key/einsum/Einsum:output:05multi_head_attention_1/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€# 2 
multi_head_attention_1/key/addэ
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02;
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOpН
*multi_head_attention_1/value/einsum/EinsumEinsuminputsAmulti_head_attention_1/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€# *
equationabc,cde->abde2,
*multi_head_attention_1/value/einsum/Einsumџ
/multi_head_attention_1/value/add/ReadVariableOpReadVariableOp8multi_head_attention_1_value_add_readvariableop_resource*
_output_shapes

: *
dtype021
/multi_head_attention_1/value/add/ReadVariableOpх
 multi_head_attention_1/value/addAddV23multi_head_attention_1/value/einsum/Einsum:output:07multi_head_attention_1/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€# 2"
 multi_head_attention_1/value/addБ
multi_head_attention_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *у5>2
multi_head_attention_1/Mul/y∆
multi_head_attention_1/MulMul$multi_head_attention_1/query/add:z:0%multi_head_attention_1/Mul/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€# 2
multi_head_attention_1/Mulь
$multi_head_attention_1/einsum/EinsumEinsum"multi_head_attention_1/key/add:z:0multi_head_attention_1/Mul:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€##*
equationaecd,abcd->acbe2&
$multi_head_attention_1/einsum/Einsumƒ
&multi_head_attention_1/softmax/SoftmaxSoftmax-multi_head_attention_1/einsum/Einsum:output:0*
T0*/
_output_shapes
:€€€€€€€€€##2(
&multi_head_attention_1/softmax/Softmax 
'multi_head_attention_1/dropout/IdentityIdentity0multi_head_attention_1/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:€€€€€€€€€##2)
'multi_head_attention_1/dropout/IdentityФ
&multi_head_attention_1/einsum_1/EinsumEinsum0multi_head_attention_1/dropout/Identity:output:0$multi_head_attention_1/value/add:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€# *
equationacbe,aecd->abcd2(
&multi_head_attention_1/einsum_1/EinsumЮ
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02F
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp”
5multi_head_attention_1/attention_output/einsum/EinsumEinsum/multi_head_attention_1/einsum_1/Einsum:output:0Lmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:€€€€€€€€€# *
equationabcd,cde->abe27
5multi_head_attention_1/attention_output/einsum/Einsumш
:multi_head_attention_1/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_1_attention_output_add_readvariableop_resource*
_output_shapes
: *
dtype02<
:multi_head_attention_1/attention_output/add/ReadVariableOpЭ
+multi_head_attention_1/attention_output/addAddV2>multi_head_attention_1/attention_output/einsum/Einsum:output:0Bmulti_head_attention_1/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€# 2-
+multi_head_attention_1/attention_output/addЫ
dropout_2/IdentityIdentity/multi_head_attention_1/attention_output/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2
dropout_2/Identityn
addAddV2inputsdropout_2/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€# 2
addґ
4layer_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:26
4layer_normalization_2/moments/mean/reduction_indicesя
"layer_normalization_2/moments/meanMeanadd:z:0=layer_normalization_2/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€#*
	keep_dims(2$
"layer_normalization_2/moments/meanЋ
*layer_normalization_2/moments/StopGradientStopGradient+layer_normalization_2/moments/mean:output:0*
T0*+
_output_shapes
:€€€€€€€€€#2,
*layer_normalization_2/moments/StopGradientл
/layer_normalization_2/moments/SquaredDifferenceSquaredDifferenceadd:z:03layer_normalization_2/moments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€# 21
/layer_normalization_2/moments/SquaredDifferenceЊ
8layer_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2:
8layer_normalization_2/moments/variance/reduction_indicesЧ
&layer_normalization_2/moments/varianceMean3layer_normalization_2/moments/SquaredDifference:z:0Alayer_normalization_2/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€#*
	keep_dims(2(
&layer_normalization_2/moments/varianceУ
%layer_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж52'
%layer_normalization_2/batchnorm/add/yк
#layer_normalization_2/batchnorm/addAddV2/layer_normalization_2/moments/variance:output:0.layer_normalization_2/batchnorm/add/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€#2%
#layer_normalization_2/batchnorm/addґ
%layer_normalization_2/batchnorm/RsqrtRsqrt'layer_normalization_2/batchnorm/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€#2'
%layer_normalization_2/batchnorm/Rsqrtа
2layer_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype024
2layer_normalization_2/batchnorm/mul/ReadVariableOpо
#layer_normalization_2/batchnorm/mulMul)layer_normalization_2/batchnorm/Rsqrt:y:0:layer_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€# 2%
#layer_normalization_2/batchnorm/mulљ
%layer_normalization_2/batchnorm/mul_1Muladd:z:0'layer_normalization_2/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2'
%layer_normalization_2/batchnorm/mul_1б
%layer_normalization_2/batchnorm/mul_2Mul+layer_normalization_2/moments/mean:output:0'layer_normalization_2/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2'
%layer_normalization_2/batchnorm/mul_2‘
.layer_normalization_2/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_2_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype020
.layer_normalization_2/batchnorm/ReadVariableOpк
#layer_normalization_2/batchnorm/subSub6layer_normalization_2/batchnorm/ReadVariableOp:value:0)layer_normalization_2/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2%
#layer_normalization_2/batchnorm/subб
%layer_normalization_2/batchnorm/add_1AddV2)layer_normalization_2/batchnorm/mul_1:z:0'layer_normalization_2/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2'
%layer_normalization_2/batchnorm/add_1’
-sequential_1/dense_2/Tensordot/ReadVariableOpReadVariableOp6sequential_1_dense_2_tensordot_readvariableop_resource*
_output_shapes

: @*
dtype02/
-sequential_1/dense_2/Tensordot/ReadVariableOpФ
#sequential_1/dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2%
#sequential_1/dense_2/Tensordot/axesЫ
#sequential_1/dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2%
#sequential_1/dense_2/Tensordot/free•
$sequential_1/dense_2/Tensordot/ShapeShape)layer_normalization_2/batchnorm/add_1:z:0*
T0*
_output_shapes
:2&
$sequential_1/dense_2/Tensordot/ShapeЮ
,sequential_1/dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_1/dense_2/Tensordot/GatherV2/axisЇ
'sequential_1/dense_2/Tensordot/GatherV2GatherV2-sequential_1/dense_2/Tensordot/Shape:output:0,sequential_1/dense_2/Tensordot/free:output:05sequential_1/dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2)
'sequential_1/dense_2/Tensordot/GatherV2Ґ
.sequential_1/dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 20
.sequential_1/dense_2/Tensordot/GatherV2_1/axisј
)sequential_1/dense_2/Tensordot/GatherV2_1GatherV2-sequential_1/dense_2/Tensordot/Shape:output:0,sequential_1/dense_2/Tensordot/axes:output:07sequential_1/dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2+
)sequential_1/dense_2/Tensordot/GatherV2_1Ц
$sequential_1/dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2&
$sequential_1/dense_2/Tensordot/Const‘
#sequential_1/dense_2/Tensordot/ProdProd0sequential_1/dense_2/Tensordot/GatherV2:output:0-sequential_1/dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: 2%
#sequential_1/dense_2/Tensordot/ProdЪ
&sequential_1/dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential_1/dense_2/Tensordot/Const_1№
%sequential_1/dense_2/Tensordot/Prod_1Prod2sequential_1/dense_2/Tensordot/GatherV2_1:output:0/sequential_1/dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2'
%sequential_1/dense_2/Tensordot/Prod_1Ъ
*sequential_1/dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*sequential_1/dense_2/Tensordot/concat/axisЩ
%sequential_1/dense_2/Tensordot/concatConcatV2,sequential_1/dense_2/Tensordot/free:output:0,sequential_1/dense_2/Tensordot/axes:output:03sequential_1/dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2'
%sequential_1/dense_2/Tensordot/concatа
$sequential_1/dense_2/Tensordot/stackPack,sequential_1/dense_2/Tensordot/Prod:output:0.sequential_1/dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_1/dense_2/Tensordot/stackт
(sequential_1/dense_2/Tensordot/transpose	Transpose)layer_normalization_2/batchnorm/add_1:z:0.sequential_1/dense_2/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€# 2*
(sequential_1/dense_2/Tensordot/transposeу
&sequential_1/dense_2/Tensordot/ReshapeReshape,sequential_1/dense_2/Tensordot/transpose:y:0-sequential_1/dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2(
&sequential_1/dense_2/Tensordot/Reshapeт
%sequential_1/dense_2/Tensordot/MatMulMatMul/sequential_1/dense_2/Tensordot/Reshape:output:05sequential_1/dense_2/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2'
%sequential_1/dense_2/Tensordot/MatMulЪ
&sequential_1/dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2(
&sequential_1/dense_2/Tensordot/Const_2Ю
,sequential_1/dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_1/dense_2/Tensordot/concat_1/axis¶
'sequential_1/dense_2/Tensordot/concat_1ConcatV20sequential_1/dense_2/Tensordot/GatherV2:output:0/sequential_1/dense_2/Tensordot/Const_2:output:05sequential_1/dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2)
'sequential_1/dense_2/Tensordot/concat_1д
sequential_1/dense_2/TensordotReshape/sequential_1/dense_2/Tensordot/MatMul:product:00sequential_1/dense_2/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€#@2 
sequential_1/dense_2/TensordotЋ
+sequential_1/dense_2/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02-
+sequential_1/dense_2/BiasAdd/ReadVariableOpџ
sequential_1/dense_2/BiasAddBiasAdd'sequential_1/dense_2/Tensordot:output:03sequential_1/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€#@2
sequential_1/dense_2/BiasAddЫ
sequential_1/dense_2/ReluRelu%sequential_1/dense_2/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€#@2
sequential_1/dense_2/Relu’
-sequential_1/dense_3/Tensordot/ReadVariableOpReadVariableOp6sequential_1_dense_3_tensordot_readvariableop_resource*
_output_shapes

:@ *
dtype02/
-sequential_1/dense_3/Tensordot/ReadVariableOpФ
#sequential_1/dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2%
#sequential_1/dense_3/Tensordot/axesЫ
#sequential_1/dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2%
#sequential_1/dense_3/Tensordot/free£
$sequential_1/dense_3/Tensordot/ShapeShape'sequential_1/dense_2/Relu:activations:0*
T0*
_output_shapes
:2&
$sequential_1/dense_3/Tensordot/ShapeЮ
,sequential_1/dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_1/dense_3/Tensordot/GatherV2/axisЇ
'sequential_1/dense_3/Tensordot/GatherV2GatherV2-sequential_1/dense_3/Tensordot/Shape:output:0,sequential_1/dense_3/Tensordot/free:output:05sequential_1/dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2)
'sequential_1/dense_3/Tensordot/GatherV2Ґ
.sequential_1/dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 20
.sequential_1/dense_3/Tensordot/GatherV2_1/axisј
)sequential_1/dense_3/Tensordot/GatherV2_1GatherV2-sequential_1/dense_3/Tensordot/Shape:output:0,sequential_1/dense_3/Tensordot/axes:output:07sequential_1/dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2+
)sequential_1/dense_3/Tensordot/GatherV2_1Ц
$sequential_1/dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2&
$sequential_1/dense_3/Tensordot/Const‘
#sequential_1/dense_3/Tensordot/ProdProd0sequential_1/dense_3/Tensordot/GatherV2:output:0-sequential_1/dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: 2%
#sequential_1/dense_3/Tensordot/ProdЪ
&sequential_1/dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential_1/dense_3/Tensordot/Const_1№
%sequential_1/dense_3/Tensordot/Prod_1Prod2sequential_1/dense_3/Tensordot/GatherV2_1:output:0/sequential_1/dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2'
%sequential_1/dense_3/Tensordot/Prod_1Ъ
*sequential_1/dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*sequential_1/dense_3/Tensordot/concat/axisЩ
%sequential_1/dense_3/Tensordot/concatConcatV2,sequential_1/dense_3/Tensordot/free:output:0,sequential_1/dense_3/Tensordot/axes:output:03sequential_1/dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2'
%sequential_1/dense_3/Tensordot/concatа
$sequential_1/dense_3/Tensordot/stackPack,sequential_1/dense_3/Tensordot/Prod:output:0.sequential_1/dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_1/dense_3/Tensordot/stackр
(sequential_1/dense_3/Tensordot/transpose	Transpose'sequential_1/dense_2/Relu:activations:0.sequential_1/dense_3/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€#@2*
(sequential_1/dense_3/Tensordot/transposeу
&sequential_1/dense_3/Tensordot/ReshapeReshape,sequential_1/dense_3/Tensordot/transpose:y:0-sequential_1/dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2(
&sequential_1/dense_3/Tensordot/Reshapeт
%sequential_1/dense_3/Tensordot/MatMulMatMul/sequential_1/dense_3/Tensordot/Reshape:output:05sequential_1/dense_3/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2'
%sequential_1/dense_3/Tensordot/MatMulЪ
&sequential_1/dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential_1/dense_3/Tensordot/Const_2Ю
,sequential_1/dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_1/dense_3/Tensordot/concat_1/axis¶
'sequential_1/dense_3/Tensordot/concat_1ConcatV20sequential_1/dense_3/Tensordot/GatherV2:output:0/sequential_1/dense_3/Tensordot/Const_2:output:05sequential_1/dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2)
'sequential_1/dense_3/Tensordot/concat_1д
sequential_1/dense_3/TensordotReshape/sequential_1/dense_3/Tensordot/MatMul:product:00sequential_1/dense_3/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€# 2 
sequential_1/dense_3/TensordotЋ
+sequential_1/dense_3/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02-
+sequential_1/dense_3/BiasAdd/ReadVariableOpџ
sequential_1/dense_3/BiasAddBiasAdd'sequential_1/dense_3/Tensordot:output:03sequential_1/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€# 2
sequential_1/dense_3/BiasAddС
dropout_3/IdentityIdentity%sequential_1/dense_3/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€# 2
dropout_3/IdentityХ
add_1AddV2)layer_normalization_2/batchnorm/add_1:z:0dropout_3/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€# 2
add_1ґ
4layer_normalization_3/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:26
4layer_normalization_3/moments/mean/reduction_indicesб
"layer_normalization_3/moments/meanMean	add_1:z:0=layer_normalization_3/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€#*
	keep_dims(2$
"layer_normalization_3/moments/meanЋ
*layer_normalization_3/moments/StopGradientStopGradient+layer_normalization_3/moments/mean:output:0*
T0*+
_output_shapes
:€€€€€€€€€#2,
*layer_normalization_3/moments/StopGradientн
/layer_normalization_3/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_3/moments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€# 21
/layer_normalization_3/moments/SquaredDifferenceЊ
8layer_normalization_3/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2:
8layer_normalization_3/moments/variance/reduction_indicesЧ
&layer_normalization_3/moments/varianceMean3layer_normalization_3/moments/SquaredDifference:z:0Alayer_normalization_3/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€#*
	keep_dims(2(
&layer_normalization_3/moments/varianceУ
%layer_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж52'
%layer_normalization_3/batchnorm/add/yк
#layer_normalization_3/batchnorm/addAddV2/layer_normalization_3/moments/variance:output:0.layer_normalization_3/batchnorm/add/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€#2%
#layer_normalization_3/batchnorm/addґ
%layer_normalization_3/batchnorm/RsqrtRsqrt'layer_normalization_3/batchnorm/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€#2'
%layer_normalization_3/batchnorm/Rsqrtа
2layer_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype024
2layer_normalization_3/batchnorm/mul/ReadVariableOpо
#layer_normalization_3/batchnorm/mulMul)layer_normalization_3/batchnorm/Rsqrt:y:0:layer_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€# 2%
#layer_normalization_3/batchnorm/mulњ
%layer_normalization_3/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_3/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2'
%layer_normalization_3/batchnorm/mul_1б
%layer_normalization_3/batchnorm/mul_2Mul+layer_normalization_3/moments/mean:output:0'layer_normalization_3/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2'
%layer_normalization_3/batchnorm/mul_2‘
.layer_normalization_3/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_3_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype020
.layer_normalization_3/batchnorm/ReadVariableOpк
#layer_normalization_3/batchnorm/subSub6layer_normalization_3/batchnorm/ReadVariableOp:value:0)layer_normalization_3/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2%
#layer_normalization_3/batchnorm/subб
%layer_normalization_3/batchnorm/add_1AddV2)layer_normalization_3/batchnorm/mul_1:z:0'layer_normalization_3/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2'
%layer_normalization_3/batchnorm/add_1”
IdentityIdentity)layer_normalization_3/batchnorm/add_1:z:0/^layer_normalization_2/batchnorm/ReadVariableOp3^layer_normalization_2/batchnorm/mul/ReadVariableOp/^layer_normalization_3/batchnorm/ReadVariableOp3^layer_normalization_3/batchnorm/mul/ReadVariableOp;^multi_head_attention_1/attention_output/add/ReadVariableOpE^multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_1/key/add/ReadVariableOp8^multi_head_attention_1/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/query/add/ReadVariableOp:^multi_head_attention_1/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/value/add/ReadVariableOp:^multi_head_attention_1/value/einsum/Einsum/ReadVariableOp,^sequential_1/dense_2/BiasAdd/ReadVariableOp.^sequential_1/dense_2/Tensordot/ReadVariableOp,^sequential_1/dense_3/BiasAdd/ReadVariableOp.^sequential_1/dense_3/Tensordot/ReadVariableOp*
T0*+
_output_shapes
:€€€€€€€€€# 2

Identity"
identityIdentity:output:0*j
_input_shapesY
W:€€€€€€€€€# ::::::::::::::::2`
.layer_normalization_2/batchnorm/ReadVariableOp.layer_normalization_2/batchnorm/ReadVariableOp2h
2layer_normalization_2/batchnorm/mul/ReadVariableOp2layer_normalization_2/batchnorm/mul/ReadVariableOp2`
.layer_normalization_3/batchnorm/ReadVariableOp.layer_normalization_3/batchnorm/ReadVariableOp2h
2layer_normalization_3/batchnorm/mul/ReadVariableOp2layer_normalization_3/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_1/attention_output/add/ReadVariableOp:multi_head_attention_1/attention_output/add/ReadVariableOp2М
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_1/key/add/ReadVariableOp-multi_head_attention_1/key/add/ReadVariableOp2r
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/query/add/ReadVariableOp/multi_head_attention_1/query/add/ReadVariableOp2v
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/value/add/ReadVariableOp/multi_head_attention_1/value/add/ReadVariableOp2v
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp2Z
+sequential_1/dense_2/BiasAdd/ReadVariableOp+sequential_1/dense_2/BiasAdd/ReadVariableOp2^
-sequential_1/dense_2/Tensordot/ReadVariableOp-sequential_1/dense_2/Tensordot/ReadVariableOp2Z
+sequential_1/dense_3/BiasAdd/ReadVariableOp+sequential_1/dense_3/BiasAdd/ReadVariableOp2^
-sequential_1/dense_3/Tensordot/ReadVariableOp-sequential_1/dense_3/Tensordot/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€# 
 
_user_specified_nameinputs
м
}
(__inference_dense_3_layer_call_fn_102625

inputs
unknown
	unknown_0
identityИҐStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€# *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_993132
StatefulPartitionedCallТ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:€€€€€€€€€# 2

Identity"
identityIdentity:output:0*2
_input_shapes!
:€€€€€€€€€#@::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€#@
 
_user_specified_nameinputs
»
c
E__inference_dropout_5_layer_call_and_return_conditional_losses_100223

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:€€€€€€€€€@2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2

Identity_1"!

identity_1Identity_1:output:0*&
_input_shapes
:€€€€€€€€€@:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
Н
d
E__inference_dropout_5_layer_call_and_return_conditional_losses_100218

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeј
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@*
dtype0*

seedY2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2
dropout/GreaterEqual/yЊ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€@2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*&
_input_shapes
:€€€€€€€€€@:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
≠
Ю
$__inference_signature_wrapper_100788
input_1
input_2
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34
identityИҐStatefulPartitionedCall±
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34*1
Tin*
(2&*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*F
_read_only_resource_inputs(
&$	
 !"#$%*0
config_proto 

CPU

GPU2*0J 8В *)
f$R"
 __inference__wrapped_model_989072
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*ћ
_input_shapesЇ
Ј:€€€€€€€€€ДR:€€€€€€€€€::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:€€€€€€€€€ДR
!
_user_specified_name	input_1:PL
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	input_2
∆
ц
G__inference_sequential_1_layer_call_and_return_conditional_losses_99388

inputs
dense_2_99377
dense_2_99379
dense_3_99382
dense_3_99384
identityИҐdense_2/StatefulPartitionedCallҐdense_3/StatefulPartitionedCallУ
dense_2/StatefulPartitionedCallStatefulPartitionedCallinputsdense_2_99377dense_2_99379*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€#@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_992672!
dense_2/StatefulPartitionedCallµ
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_99382dense_3_99384*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€# *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_993132!
dense_3/StatefulPartitionedCallƒ
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0 ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*
T0*+
_output_shapes
:€€€€€€€€€# 2

Identity"
identityIdentity:output:0*:
_input_shapes)
':€€€€€€€€€# ::::2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€# 
 
_user_specified_nameinputs
Ч
ф
A__inference_conv1d_layer_call_and_return_conditional_losses_99460

inputs/
+conv1d_expanddims_1_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐ"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€2
conv1d/ExpandDims/dimЧ
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:€€€€€€€€€ДR 2
conv1d/ExpandDimsЄ
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:  *
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dimЈ
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:  2
conv1d/ExpandDims_1Ј
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:€€€€€€€€€ДR *
paddingSAME*
strides
2
conv1dУ
conv1d/SqueezeSqueezeconv1d:output:0*
T0*,
_output_shapes
:€€€€€€€€€ДR *
squeeze_dims

э€€€€€€€€2
conv1d/SqueezeМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpН
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:€€€€€€€€€ДR 2	
BiasAdd]
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:€€€€€€€€€ДR 2
Relu©
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*
T0*,
_output_shapes
:€€€€€€€€€ДR 2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :€€€€€€€€€ДR ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:€€€€€€€€€ДR 
 
_user_specified_nameinputs
ЈW
э
A__inference_model_layer_call_and_return_conditional_losses_100357
input_1
input_2'
#token_and_position_embedding_100267'
#token_and_position_embedding_100269
conv1d_100272
conv1d_100274
conv1d_1_100278
conv1d_1_100280
batch_normalization_100285
batch_normalization_100287
batch_normalization_100289
batch_normalization_100291 
batch_normalization_1_100294 
batch_normalization_1_100296 
batch_normalization_1_100298 
batch_normalization_1_100300
transformer_block_1_100304
transformer_block_1_100306
transformer_block_1_100308
transformer_block_1_100310
transformer_block_1_100312
transformer_block_1_100314
transformer_block_1_100316
transformer_block_1_100318
transformer_block_1_100320
transformer_block_1_100322
transformer_block_1_100324
transformer_block_1_100326
transformer_block_1_100328
transformer_block_1_100330
transformer_block_1_100332
transformer_block_1_100334
dense_4_100339
dense_4_100341
dense_5_100345
dense_5_100347
dense_6_100351
dense_6_100353
identityИҐ+batch_normalization/StatefulPartitionedCallҐ-batch_normalization_1/StatefulPartitionedCallҐconv1d/StatefulPartitionedCallҐ conv1d_1/StatefulPartitionedCallҐdense_4/StatefulPartitionedCallҐdense_5/StatefulPartitionedCallҐdense_6/StatefulPartitionedCallҐ4token_and_position_embedding/StatefulPartitionedCallҐ+transformer_block_1/StatefulPartitionedCallА
4token_and_position_embedding/StatefulPartitionedCallStatefulPartitionedCallinput_1#token_and_position_embedding_100267#token_and_position_embedding_100269*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:€€€€€€€€€ДR *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *`
f[RY
W__inference_token_and_position_embedding_layer_call_and_return_conditional_losses_9942826
4token_and_position_embedding/StatefulPartitionedCall»
conv1d/StatefulPartitionedCallStatefulPartitionedCall=token_and_position_embedding/StatefulPartitionedCall:output:0conv1d_100272conv1d_100274*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:€€€€€€€€€ДR *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_conv1d_layer_call_and_return_conditional_losses_994602 
conv1d/StatefulPartitionedCallЧ
!average_pooling1d/PartitionedCallPartitionedCall'conv1d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:€€€€€€€€€ё * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_average_pooling1d_layer_call_and_return_conditional_losses_989162#
!average_pooling1d/PartitionedCallњ
 conv1d_1/StatefulPartitionedCallStatefulPartitionedCall*average_pooling1d/PartitionedCall:output:0conv1d_1_100278conv1d_1_100280*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:€€€€€€€€€ё *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_conv1d_1_layer_call_and_return_conditional_losses_994932"
 conv1d_1/StatefulPartitionedCall≤
#average_pooling1d_2/PartitionedCallPartitionedCall=token_and_position_embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€# * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_average_pooling1d_2_layer_call_and_return_conditional_losses_989462%
#average_pooling1d_2/PartitionedCallЮ
#average_pooling1d_1/PartitionedCallPartitionedCall)conv1d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€# * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_average_pooling1d_1_layer_call_and_return_conditional_losses_989312%
#average_pooling1d_1/PartitionedCall≥
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall,average_pooling1d_1/PartitionedCall:output:0batch_normalization_100285batch_normalization_100287batch_normalization_100289batch_normalization_100291*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€# *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_995662-
+batch_normalization/StatefulPartitionedCallЅ
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall,average_pooling1d_2/PartitionedCall:output:0batch_normalization_1_100294batch_normalization_1_100296batch_normalization_1_100298batch_normalization_1_100300*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€# *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_996572/
-batch_normalization_1/StatefulPartitionedCall≤
add/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:06batch_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€# * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_add_layer_call_and_return_conditional_losses_996992
add/PartitionedCallЛ
+transformer_block_1/StatefulPartitionedCallStatefulPartitionedCalladd/PartitionedCall:output:0transformer_block_1_100304transformer_block_1_100306transformer_block_1_100308transformer_block_1_100310transformer_block_1_100312transformer_block_1_100314transformer_block_1_100316transformer_block_1_100318transformer_block_1_100320transformer_block_1_100322transformer_block_1_100324transformer_block_1_100326transformer_block_1_100328transformer_block_1_100330transformer_block_1_100332transformer_block_1_100334*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€# *2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_transformer_block_1_layer_call_and_return_conditional_losses_999832-
+transformer_block_1/StatefulPartitionedCallГ
flatten/PartitionedCallPartitionedCall4transformer_block_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€а* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_1000982
flatten/PartitionedCallЕ
concatenate/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0input_2*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€и* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_concatenate_layer_call_and_return_conditional_losses_1001132
concatenate/PartitionedCall∞
dense_4/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0dense_4_100339dense_4_100341*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_1001332!
dense_4/StatefulPartitionedCallь
dropout_4/PartitionedCallPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_4_layer_call_and_return_conditional_losses_1001662
dropout_4/PartitionedCallЃ
dense_5/StatefulPartitionedCallStatefulPartitionedCall"dropout_4/PartitionedCall:output:0dense_5_100345dense_5_100347*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_1001902!
dense_5/StatefulPartitionedCallь
dropout_5/PartitionedCallPartitionedCall(dense_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_5_layer_call_and_return_conditional_losses_1002232
dropout_5/PartitionedCallЃ
dense_6/StatefulPartitionedCallStatefulPartitionedCall"dropout_5/PartitionedCall:output:0dense_6_100351dense_6_100353*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_1002462!
dense_6/StatefulPartitionedCallй
IdentityIdentity(dense_6/StatefulPartitionedCall:output:0,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall^conv1d/StatefulPartitionedCall!^conv1d_1/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall5^token_and_position_embedding/StatefulPartitionedCall,^transformer_block_1/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*ћ
_input_shapesЇ
Ј:€€€€€€€€€ДR:€€€€€€€€€::::::::::::::::::::::::::::::::::::2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2@
conv1d/StatefulPartitionedCallconv1d/StatefulPartitionedCall2D
 conv1d_1/StatefulPartitionedCall conv1d_1/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2l
4token_and_position_embedding/StatefulPartitionedCall4token_and_position_embedding/StatefulPartitionedCall2Z
+transformer_block_1/StatefulPartitionedCall+transformer_block_1/StatefulPartitionedCall:Q M
(
_output_shapes
:€€€€€€€€€ДR
!
_user_specified_name	input_1:PL
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	input_2
Ъ
ч
D__inference_conv1d_1_layer_call_and_return_conditional_losses_101571

inputs/
+conv1d_expanddims_1_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐ"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€2
conv1d/ExpandDims/dimЧ
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:€€€€€€€€€ё 2
conv1d/ExpandDimsЄ
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:	  *
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dimЈ
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:	  2
conv1d/ExpandDims_1Ј
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:€€€€€€€€€ё *
paddingSAME*
strides
2
conv1dУ
conv1d/SqueezeSqueezeconv1d:output:0*
T0*,
_output_shapes
:€€€€€€€€€ё *
squeeze_dims

э€€€€€€€€2
conv1d/SqueezeМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpН
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:€€€€€€€€€ё 2	
BiasAdd]
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:€€€€€€€€€ё 2
Relu©
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*
T0*,
_output_shapes
:€€€€€€€€€ё 2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :€€€€€€€€€ё ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:T P
,
_output_shapes
:€€€€€€€€€ё 
 
_user_specified_nameinputs
Ї0
∆
O__inference_batch_normalization_layer_call_and_return_conditional_losses_101698

inputs
assignmovingavg_101673
assignmovingavg_1_101679)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identityИҐ#AssignMovingAvg/AssignSubVariableOpҐAssignMovingAvg/ReadVariableOpҐ%AssignMovingAvg_1/AssignSubVariableOpҐ AssignMovingAvg_1/ReadVariableOpҐbatchnorm/ReadVariableOpҐbatchnorm/mul/ReadVariableOpС
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indicesУ
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
: *
	keep_dims(2
moments/meanА
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
: 2
moments/StopGradient®
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€# 2
moments/SquaredDifferenceЩ
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indicesґ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
: *
	keep_dims(2
moments/varianceБ
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2
moments/SqueezeЙ
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2
moments/Squeeze_1ћ
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*)
_class
loc:@AssignMovingAvg/101673*
_output_shapes
: *
dtype0*
valueB
 *
„#<2
AssignMovingAvg/decayУ
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_101673*
_output_shapes
: *
dtype02 
AssignMovingAvg/ReadVariableOpс
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*)
_class
loc:@AssignMovingAvg/101673*
_output_shapes
: 2
AssignMovingAvg/subи
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*)
_class
loc:@AssignMovingAvg/101673*
_output_shapes
: 2
AssignMovingAvg/mulѓ
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_101673AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*)
_class
loc:@AssignMovingAvg/101673*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp“
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*+
_class!
loc:@AssignMovingAvg_1/101679*
_output_shapes
: *
dtype0*
valueB
 *
„#<2
AssignMovingAvg_1/decayЩ
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_101679*
_output_shapes
: *
dtype02"
 AssignMovingAvg_1/ReadVariableOpы
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/101679*
_output_shapes
: 2
AssignMovingAvg_1/subт
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/101679*
_output_shapes
: 2
AssignMovingAvg_1/mulї
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_101679AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*+
_class!
loc:@AssignMovingAvg_1/101679*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2
batchnorm/add/yВ
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
: 2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: 2
batchnorm/RsqrtЮ
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/mul/ReadVariableOpЕ
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2
batchnorm/mulz
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
: 2
batchnorm/mul_2Т
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOpБ
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2
batchnorm/subЙ
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2
batchnorm/add_1Ј
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*+
_output_shapes
:€€€€€€€€€# 2

Identity"
identityIdentity:output:0*:
_input_shapes)
':€€€€€€€€€# ::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€# 
 
_user_specified_nameinputs
∆
ц
G__inference_sequential_1_layer_call_and_return_conditional_losses_99361

inputs
dense_2_99350
dense_2_99352
dense_3_99355
dense_3_99357
identityИҐdense_2/StatefulPartitionedCallҐdense_3/StatefulPartitionedCallУ
dense_2/StatefulPartitionedCallStatefulPartitionedCallinputsdense_2_99350dense_2_99352*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€#@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_992672!
dense_2/StatefulPartitionedCallµ
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_99355dense_3_99357*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€# *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_993132!
dense_3/StatefulPartitionedCallƒ
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0 ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*
T0*+
_output_shapes
:€€€€€€€€€# 2

Identity"
identityIdentity:output:0*:
_input_shapes)
':€€€€€€€€€# ::::2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€# 
 
_user_specified_nameinputs
н	
№
C__inference_dense_5_layer_call_and_return_conditional_losses_100190

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
ReluЧ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
Н
d
E__inference_dropout_5_layer_call_and_return_conditional_losses_102372

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeј
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:€€€€€€€€€@*
dtype0*

seedY2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2
dropout/GreaterEqual/yЊ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:€€€€€€€€€@2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*&
_input_shapes
:€€€€€€€€€@:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
≥
_
C__inference_flatten_layer_call_and_return_conditional_losses_102275

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€`  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€а2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€а2

Identity"
identityIdentity:output:0**
_input_shapes
:€€€€€€€€€# :S O
+
_output_shapes
:€€€€€€€€€# 
 
_user_specified_nameinputs
нь
“
O__inference_transformer_block_1_layer_call_and_return_conditional_losses_102068

inputsF
Bmulti_head_attention_1_query_einsum_einsum_readvariableop_resource<
8multi_head_attention_1_query_add_readvariableop_resourceD
@multi_head_attention_1_key_einsum_einsum_readvariableop_resource:
6multi_head_attention_1_key_add_readvariableop_resourceF
Bmulti_head_attention_1_value_einsum_einsum_readvariableop_resource<
8multi_head_attention_1_value_add_readvariableop_resourceQ
Mmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resourceG
Cmulti_head_attention_1_attention_output_add_readvariableop_resource?
;layer_normalization_2_batchnorm_mul_readvariableop_resource;
7layer_normalization_2_batchnorm_readvariableop_resource:
6sequential_1_dense_2_tensordot_readvariableop_resource8
4sequential_1_dense_2_biasadd_readvariableop_resource:
6sequential_1_dense_3_tensordot_readvariableop_resource8
4sequential_1_dense_3_biasadd_readvariableop_resource?
;layer_normalization_3_batchnorm_mul_readvariableop_resource;
7layer_normalization_3_batchnorm_readvariableop_resource
identityИҐ.layer_normalization_2/batchnorm/ReadVariableOpҐ2layer_normalization_2/batchnorm/mul/ReadVariableOpҐ.layer_normalization_3/batchnorm/ReadVariableOpҐ2layer_normalization_3/batchnorm/mul/ReadVariableOpҐ:multi_head_attention_1/attention_output/add/ReadVariableOpҐDmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpҐ-multi_head_attention_1/key/add/ReadVariableOpҐ7multi_head_attention_1/key/einsum/Einsum/ReadVariableOpҐ/multi_head_attention_1/query/add/ReadVariableOpҐ9multi_head_attention_1/query/einsum/Einsum/ReadVariableOpҐ/multi_head_attention_1/value/add/ReadVariableOpҐ9multi_head_attention_1/value/einsum/Einsum/ReadVariableOpҐ+sequential_1/dense_2/BiasAdd/ReadVariableOpҐ-sequential_1/dense_2/Tensordot/ReadVariableOpҐ+sequential_1/dense_3/BiasAdd/ReadVariableOpҐ-sequential_1/dense_3/Tensordot/ReadVariableOpэ
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02;
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOpН
*multi_head_attention_1/query/einsum/EinsumEinsuminputsAmulti_head_attention_1/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€# *
equationabc,cde->abde2,
*multi_head_attention_1/query/einsum/Einsumџ
/multi_head_attention_1/query/add/ReadVariableOpReadVariableOp8multi_head_attention_1_query_add_readvariableop_resource*
_output_shapes

: *
dtype021
/multi_head_attention_1/query/add/ReadVariableOpх
 multi_head_attention_1/query/addAddV23multi_head_attention_1/query/einsum/Einsum:output:07multi_head_attention_1/query/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€# 2"
 multi_head_attention_1/query/addч
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_1_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype029
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOpЗ
(multi_head_attention_1/key/einsum/EinsumEinsuminputs?multi_head_attention_1/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€# *
equationabc,cde->abde2*
(multi_head_attention_1/key/einsum/Einsum’
-multi_head_attention_1/key/add/ReadVariableOpReadVariableOp6multi_head_attention_1_key_add_readvariableop_resource*
_output_shapes

: *
dtype02/
-multi_head_attention_1/key/add/ReadVariableOpн
multi_head_attention_1/key/addAddV21multi_head_attention_1/key/einsum/Einsum:output:05multi_head_attention_1/key/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€# 2 
multi_head_attention_1/key/addэ
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02;
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOpН
*multi_head_attention_1/value/einsum/EinsumEinsuminputsAmulti_head_attention_1/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*/
_output_shapes
:€€€€€€€€€# *
equationabc,cde->abde2,
*multi_head_attention_1/value/einsum/Einsumџ
/multi_head_attention_1/value/add/ReadVariableOpReadVariableOp8multi_head_attention_1_value_add_readvariableop_resource*
_output_shapes

: *
dtype021
/multi_head_attention_1/value/add/ReadVariableOpх
 multi_head_attention_1/value/addAddV23multi_head_attention_1/value/einsum/Einsum:output:07multi_head_attention_1/value/add/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€# 2"
 multi_head_attention_1/value/addБ
multi_head_attention_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *у5>2
multi_head_attention_1/Mul/y∆
multi_head_attention_1/MulMul$multi_head_attention_1/query/add:z:0%multi_head_attention_1/Mul/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€# 2
multi_head_attention_1/Mulь
$multi_head_attention_1/einsum/EinsumEinsum"multi_head_attention_1/key/add:z:0multi_head_attention_1/Mul:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€##*
equationaecd,abcd->acbe2&
$multi_head_attention_1/einsum/Einsumƒ
&multi_head_attention_1/softmax/SoftmaxSoftmax-multi_head_attention_1/einsum/Einsum:output:0*
T0*/
_output_shapes
:€€€€€€€€€##2(
&multi_head_attention_1/softmax/Softmax°
,multi_head_attention_1/dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?2.
,multi_head_attention_1/dropout/dropout/ConstВ
*multi_head_attention_1/dropout/dropout/MulMul0multi_head_attention_1/softmax/Softmax:softmax:05multi_head_attention_1/dropout/dropout/Const:output:0*
T0*/
_output_shapes
:€€€€€€€€€##2,
*multi_head_attention_1/dropout/dropout/MulЉ
,multi_head_attention_1/dropout/dropout/ShapeShape0multi_head_attention_1/softmax/Softmax:softmax:0*
T0*
_output_shapes
:2.
,multi_head_attention_1/dropout/dropout/Shape•
Cmulti_head_attention_1/dropout/dropout/random_uniform/RandomUniformRandomUniform5multi_head_attention_1/dropout/dropout/Shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€##*
dtype0*

seedY2E
Cmulti_head_attention_1/dropout/dropout/random_uniform/RandomUniform≥
5multi_head_attention_1/dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *    27
5multi_head_attention_1/dropout/dropout/GreaterEqual/y¬
3multi_head_attention_1/dropout/dropout/GreaterEqualGreaterEqualLmulti_head_attention_1/dropout/dropout/random_uniform/RandomUniform:output:0>multi_head_attention_1/dropout/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:€€€€€€€€€##25
3multi_head_attention_1/dropout/dropout/GreaterEqualд
+multi_head_attention_1/dropout/dropout/CastCast7multi_head_attention_1/dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:€€€€€€€€€##2-
+multi_head_attention_1/dropout/dropout/Castю
,multi_head_attention_1/dropout/dropout/Mul_1Mul.multi_head_attention_1/dropout/dropout/Mul:z:0/multi_head_attention_1/dropout/dropout/Cast:y:0*
T0*/
_output_shapes
:€€€€€€€€€##2.
,multi_head_attention_1/dropout/dropout/Mul_1Ф
&multi_head_attention_1/einsum_1/EinsumEinsum0multi_head_attention_1/dropout/dropout/Mul_1:z:0$multi_head_attention_1/value/add:z:0*
N*
T0*/
_output_shapes
:€€€€€€€€€# *
equationacbe,aecd->abcd2(
&multi_head_attention_1/einsum_1/EinsumЮ
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
:  *
dtype02F
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp”
5multi_head_attention_1/attention_output/einsum/EinsumEinsum/multi_head_attention_1/einsum_1/Einsum:output:0Lmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*+
_output_shapes
:€€€€€€€€€# *
equationabcd,cde->abe27
5multi_head_attention_1/attention_output/einsum/Einsumш
:multi_head_attention_1/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_1_attention_output_add_readvariableop_resource*
_output_shapes
: *
dtype02<
:multi_head_attention_1/attention_output/add/ReadVariableOpЭ
+multi_head_attention_1/attention_output/addAddV2>multi_head_attention_1/attention_output/einsum/Einsum:output:0Bmulti_head_attention_1/attention_output/add/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€# 2-
+multi_head_attention_1/attention_output/addw
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
dropout_2/dropout/ConstЊ
dropout_2/dropout/MulMul/multi_head_attention_1/attention_output/add:z:0 dropout_2/dropout/Const:output:0*
T0*+
_output_shapes
:€€€€€€€€€# 2
dropout_2/dropout/MulС
dropout_2/dropout/ShapeShape/multi_head_attention_1/attention_output/add:z:0*
T0*
_output_shapes
:2
dropout_2/dropout/Shapeп
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€# *
dtype0*

seedY*
seed220
.dropout_2/dropout/random_uniform/RandomUniformЙ
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2"
 dropout_2/dropout/GreaterEqual/yк
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€# 2 
dropout_2/dropout/GreaterEqual°
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:€€€€€€€€€# 2
dropout_2/dropout/Cast¶
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*+
_output_shapes
:€€€€€€€€€# 2
dropout_2/dropout/Mul_1n
addAddV2inputsdropout_2/dropout/Mul_1:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2
addґ
4layer_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:26
4layer_normalization_2/moments/mean/reduction_indicesя
"layer_normalization_2/moments/meanMeanadd:z:0=layer_normalization_2/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€#*
	keep_dims(2$
"layer_normalization_2/moments/meanЋ
*layer_normalization_2/moments/StopGradientStopGradient+layer_normalization_2/moments/mean:output:0*
T0*+
_output_shapes
:€€€€€€€€€#2,
*layer_normalization_2/moments/StopGradientл
/layer_normalization_2/moments/SquaredDifferenceSquaredDifferenceadd:z:03layer_normalization_2/moments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€# 21
/layer_normalization_2/moments/SquaredDifferenceЊ
8layer_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2:
8layer_normalization_2/moments/variance/reduction_indicesЧ
&layer_normalization_2/moments/varianceMean3layer_normalization_2/moments/SquaredDifference:z:0Alayer_normalization_2/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€#*
	keep_dims(2(
&layer_normalization_2/moments/varianceУ
%layer_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж52'
%layer_normalization_2/batchnorm/add/yк
#layer_normalization_2/batchnorm/addAddV2/layer_normalization_2/moments/variance:output:0.layer_normalization_2/batchnorm/add/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€#2%
#layer_normalization_2/batchnorm/addґ
%layer_normalization_2/batchnorm/RsqrtRsqrt'layer_normalization_2/batchnorm/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€#2'
%layer_normalization_2/batchnorm/Rsqrtа
2layer_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype024
2layer_normalization_2/batchnorm/mul/ReadVariableOpо
#layer_normalization_2/batchnorm/mulMul)layer_normalization_2/batchnorm/Rsqrt:y:0:layer_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€# 2%
#layer_normalization_2/batchnorm/mulљ
%layer_normalization_2/batchnorm/mul_1Muladd:z:0'layer_normalization_2/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2'
%layer_normalization_2/batchnorm/mul_1б
%layer_normalization_2/batchnorm/mul_2Mul+layer_normalization_2/moments/mean:output:0'layer_normalization_2/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2'
%layer_normalization_2/batchnorm/mul_2‘
.layer_normalization_2/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_2_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype020
.layer_normalization_2/batchnorm/ReadVariableOpк
#layer_normalization_2/batchnorm/subSub6layer_normalization_2/batchnorm/ReadVariableOp:value:0)layer_normalization_2/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2%
#layer_normalization_2/batchnorm/subб
%layer_normalization_2/batchnorm/add_1AddV2)layer_normalization_2/batchnorm/mul_1:z:0'layer_normalization_2/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2'
%layer_normalization_2/batchnorm/add_1’
-sequential_1/dense_2/Tensordot/ReadVariableOpReadVariableOp6sequential_1_dense_2_tensordot_readvariableop_resource*
_output_shapes

: @*
dtype02/
-sequential_1/dense_2/Tensordot/ReadVariableOpФ
#sequential_1/dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2%
#sequential_1/dense_2/Tensordot/axesЫ
#sequential_1/dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2%
#sequential_1/dense_2/Tensordot/free•
$sequential_1/dense_2/Tensordot/ShapeShape)layer_normalization_2/batchnorm/add_1:z:0*
T0*
_output_shapes
:2&
$sequential_1/dense_2/Tensordot/ShapeЮ
,sequential_1/dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_1/dense_2/Tensordot/GatherV2/axisЇ
'sequential_1/dense_2/Tensordot/GatherV2GatherV2-sequential_1/dense_2/Tensordot/Shape:output:0,sequential_1/dense_2/Tensordot/free:output:05sequential_1/dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2)
'sequential_1/dense_2/Tensordot/GatherV2Ґ
.sequential_1/dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 20
.sequential_1/dense_2/Tensordot/GatherV2_1/axisј
)sequential_1/dense_2/Tensordot/GatherV2_1GatherV2-sequential_1/dense_2/Tensordot/Shape:output:0,sequential_1/dense_2/Tensordot/axes:output:07sequential_1/dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2+
)sequential_1/dense_2/Tensordot/GatherV2_1Ц
$sequential_1/dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2&
$sequential_1/dense_2/Tensordot/Const‘
#sequential_1/dense_2/Tensordot/ProdProd0sequential_1/dense_2/Tensordot/GatherV2:output:0-sequential_1/dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: 2%
#sequential_1/dense_2/Tensordot/ProdЪ
&sequential_1/dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential_1/dense_2/Tensordot/Const_1№
%sequential_1/dense_2/Tensordot/Prod_1Prod2sequential_1/dense_2/Tensordot/GatherV2_1:output:0/sequential_1/dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2'
%sequential_1/dense_2/Tensordot/Prod_1Ъ
*sequential_1/dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*sequential_1/dense_2/Tensordot/concat/axisЩ
%sequential_1/dense_2/Tensordot/concatConcatV2,sequential_1/dense_2/Tensordot/free:output:0,sequential_1/dense_2/Tensordot/axes:output:03sequential_1/dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2'
%sequential_1/dense_2/Tensordot/concatа
$sequential_1/dense_2/Tensordot/stackPack,sequential_1/dense_2/Tensordot/Prod:output:0.sequential_1/dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_1/dense_2/Tensordot/stackт
(sequential_1/dense_2/Tensordot/transpose	Transpose)layer_normalization_2/batchnorm/add_1:z:0.sequential_1/dense_2/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€# 2*
(sequential_1/dense_2/Tensordot/transposeу
&sequential_1/dense_2/Tensordot/ReshapeReshape,sequential_1/dense_2/Tensordot/transpose:y:0-sequential_1/dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2(
&sequential_1/dense_2/Tensordot/Reshapeт
%sequential_1/dense_2/Tensordot/MatMulMatMul/sequential_1/dense_2/Tensordot/Reshape:output:05sequential_1/dense_2/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2'
%sequential_1/dense_2/Tensordot/MatMulЪ
&sequential_1/dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2(
&sequential_1/dense_2/Tensordot/Const_2Ю
,sequential_1/dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_1/dense_2/Tensordot/concat_1/axis¶
'sequential_1/dense_2/Tensordot/concat_1ConcatV20sequential_1/dense_2/Tensordot/GatherV2:output:0/sequential_1/dense_2/Tensordot/Const_2:output:05sequential_1/dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2)
'sequential_1/dense_2/Tensordot/concat_1д
sequential_1/dense_2/TensordotReshape/sequential_1/dense_2/Tensordot/MatMul:product:00sequential_1/dense_2/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€#@2 
sequential_1/dense_2/TensordotЋ
+sequential_1/dense_2/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02-
+sequential_1/dense_2/BiasAdd/ReadVariableOpџ
sequential_1/dense_2/BiasAddBiasAdd'sequential_1/dense_2/Tensordot:output:03sequential_1/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€#@2
sequential_1/dense_2/BiasAddЫ
sequential_1/dense_2/ReluRelu%sequential_1/dense_2/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€#@2
sequential_1/dense_2/Relu’
-sequential_1/dense_3/Tensordot/ReadVariableOpReadVariableOp6sequential_1_dense_3_tensordot_readvariableop_resource*
_output_shapes

:@ *
dtype02/
-sequential_1/dense_3/Tensordot/ReadVariableOpФ
#sequential_1/dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2%
#sequential_1/dense_3/Tensordot/axesЫ
#sequential_1/dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2%
#sequential_1/dense_3/Tensordot/free£
$sequential_1/dense_3/Tensordot/ShapeShape'sequential_1/dense_2/Relu:activations:0*
T0*
_output_shapes
:2&
$sequential_1/dense_3/Tensordot/ShapeЮ
,sequential_1/dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_1/dense_3/Tensordot/GatherV2/axisЇ
'sequential_1/dense_3/Tensordot/GatherV2GatherV2-sequential_1/dense_3/Tensordot/Shape:output:0,sequential_1/dense_3/Tensordot/free:output:05sequential_1/dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2)
'sequential_1/dense_3/Tensordot/GatherV2Ґ
.sequential_1/dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 20
.sequential_1/dense_3/Tensordot/GatherV2_1/axisј
)sequential_1/dense_3/Tensordot/GatherV2_1GatherV2-sequential_1/dense_3/Tensordot/Shape:output:0,sequential_1/dense_3/Tensordot/axes:output:07sequential_1/dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2+
)sequential_1/dense_3/Tensordot/GatherV2_1Ц
$sequential_1/dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2&
$sequential_1/dense_3/Tensordot/Const‘
#sequential_1/dense_3/Tensordot/ProdProd0sequential_1/dense_3/Tensordot/GatherV2:output:0-sequential_1/dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: 2%
#sequential_1/dense_3/Tensordot/ProdЪ
&sequential_1/dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential_1/dense_3/Tensordot/Const_1№
%sequential_1/dense_3/Tensordot/Prod_1Prod2sequential_1/dense_3/Tensordot/GatherV2_1:output:0/sequential_1/dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2'
%sequential_1/dense_3/Tensordot/Prod_1Ъ
*sequential_1/dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2,
*sequential_1/dense_3/Tensordot/concat/axisЩ
%sequential_1/dense_3/Tensordot/concatConcatV2,sequential_1/dense_3/Tensordot/free:output:0,sequential_1/dense_3/Tensordot/axes:output:03sequential_1/dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2'
%sequential_1/dense_3/Tensordot/concatа
$sequential_1/dense_3/Tensordot/stackPack,sequential_1/dense_3/Tensordot/Prod:output:0.sequential_1/dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2&
$sequential_1/dense_3/Tensordot/stackр
(sequential_1/dense_3/Tensordot/transpose	Transpose'sequential_1/dense_2/Relu:activations:0.sequential_1/dense_3/Tensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€#@2*
(sequential_1/dense_3/Tensordot/transposeу
&sequential_1/dense_3/Tensordot/ReshapeReshape,sequential_1/dense_3/Tensordot/transpose:y:0-sequential_1/dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2(
&sequential_1/dense_3/Tensordot/Reshapeт
%sequential_1/dense_3/Tensordot/MatMulMatMul/sequential_1/dense_3/Tensordot/Reshape:output:05sequential_1/dense_3/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2'
%sequential_1/dense_3/Tensordot/MatMulЪ
&sequential_1/dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2(
&sequential_1/dense_3/Tensordot/Const_2Ю
,sequential_1/dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2.
,sequential_1/dense_3/Tensordot/concat_1/axis¶
'sequential_1/dense_3/Tensordot/concat_1ConcatV20sequential_1/dense_3/Tensordot/GatherV2:output:0/sequential_1/dense_3/Tensordot/Const_2:output:05sequential_1/dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2)
'sequential_1/dense_3/Tensordot/concat_1д
sequential_1/dense_3/TensordotReshape/sequential_1/dense_3/Tensordot/MatMul:product:00sequential_1/dense_3/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€# 2 
sequential_1/dense_3/TensordotЋ
+sequential_1/dense_3/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02-
+sequential_1/dense_3/BiasAdd/ReadVariableOpџ
sequential_1/dense_3/BiasAddBiasAdd'sequential_1/dense_3/Tensordot:output:03sequential_1/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€# 2
sequential_1/dense_3/BiasAddw
dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?2
dropout_3/dropout/Constі
dropout_3/dropout/MulMul%sequential_1/dense_3/BiasAdd:output:0 dropout_3/dropout/Const:output:0*
T0*+
_output_shapes
:€€€€€€€€€# 2
dropout_3/dropout/MulЗ
dropout_3/dropout/ShapeShape%sequential_1/dense_3/BiasAdd:output:0*
T0*
_output_shapes
:2
dropout_3/dropout/Shapeп
.dropout_3/dropout/random_uniform/RandomUniformRandomUniform dropout_3/dropout/Shape:output:0*
T0*+
_output_shapes
:€€€€€€€€€# *
dtype0*

seedY*
seed220
.dropout_3/dropout/random_uniform/RandomUniformЙ
 dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=2"
 dropout_3/dropout/GreaterEqual/yк
dropout_3/dropout/GreaterEqualGreaterEqual7dropout_3/dropout/random_uniform/RandomUniform:output:0)dropout_3/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€# 2 
dropout_3/dropout/GreaterEqual°
dropout_3/dropout/CastCast"dropout_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:€€€€€€€€€# 2
dropout_3/dropout/Cast¶
dropout_3/dropout/Mul_1Muldropout_3/dropout/Mul:z:0dropout_3/dropout/Cast:y:0*
T0*+
_output_shapes
:€€€€€€€€€# 2
dropout_3/dropout/Mul_1Х
add_1AddV2)layer_normalization_2/batchnorm/add_1:z:0dropout_3/dropout/Mul_1:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2
add_1ґ
4layer_normalization_3/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:26
4layer_normalization_3/moments/mean/reduction_indicesб
"layer_normalization_3/moments/meanMean	add_1:z:0=layer_normalization_3/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€#*
	keep_dims(2$
"layer_normalization_3/moments/meanЋ
*layer_normalization_3/moments/StopGradientStopGradient+layer_normalization_3/moments/mean:output:0*
T0*+
_output_shapes
:€€€€€€€€€#2,
*layer_normalization_3/moments/StopGradientн
/layer_normalization_3/moments/SquaredDifferenceSquaredDifference	add_1:z:03layer_normalization_3/moments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€# 21
/layer_normalization_3/moments/SquaredDifferenceЊ
8layer_normalization_3/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:2:
8layer_normalization_3/moments/variance/reduction_indicesЧ
&layer_normalization_3/moments/varianceMean3layer_normalization_3/moments/SquaredDifference:z:0Alayer_normalization_3/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:€€€€€€€€€#*
	keep_dims(2(
&layer_normalization_3/moments/varianceУ
%layer_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж52'
%layer_normalization_3/batchnorm/add/yк
#layer_normalization_3/batchnorm/addAddV2/layer_normalization_3/moments/variance:output:0.layer_normalization_3/batchnorm/add/y:output:0*
T0*+
_output_shapes
:€€€€€€€€€#2%
#layer_normalization_3/batchnorm/addґ
%layer_normalization_3/batchnorm/RsqrtRsqrt'layer_normalization_3/batchnorm/add:z:0*
T0*+
_output_shapes
:€€€€€€€€€#2'
%layer_normalization_3/batchnorm/Rsqrtа
2layer_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOp;layer_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype024
2layer_normalization_3/batchnorm/mul/ReadVariableOpо
#layer_normalization_3/batchnorm/mulMul)layer_normalization_3/batchnorm/Rsqrt:y:0:layer_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€# 2%
#layer_normalization_3/batchnorm/mulњ
%layer_normalization_3/batchnorm/mul_1Mul	add_1:z:0'layer_normalization_3/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2'
%layer_normalization_3/batchnorm/mul_1б
%layer_normalization_3/batchnorm/mul_2Mul+layer_normalization_3/moments/mean:output:0'layer_normalization_3/batchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2'
%layer_normalization_3/batchnorm/mul_2‘
.layer_normalization_3/batchnorm/ReadVariableOpReadVariableOp7layer_normalization_3_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype020
.layer_normalization_3/batchnorm/ReadVariableOpк
#layer_normalization_3/batchnorm/subSub6layer_normalization_3/batchnorm/ReadVariableOp:value:0)layer_normalization_3/batchnorm/mul_2:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2%
#layer_normalization_3/batchnorm/subб
%layer_normalization_3/batchnorm/add_1AddV2)layer_normalization_3/batchnorm/mul_1:z:0'layer_normalization_3/batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2'
%layer_normalization_3/batchnorm/add_1”
IdentityIdentity)layer_normalization_3/batchnorm/add_1:z:0/^layer_normalization_2/batchnorm/ReadVariableOp3^layer_normalization_2/batchnorm/mul/ReadVariableOp/^layer_normalization_3/batchnorm/ReadVariableOp3^layer_normalization_3/batchnorm/mul/ReadVariableOp;^multi_head_attention_1/attention_output/add/ReadVariableOpE^multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_1/key/add/ReadVariableOp8^multi_head_attention_1/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/query/add/ReadVariableOp:^multi_head_attention_1/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/value/add/ReadVariableOp:^multi_head_attention_1/value/einsum/Einsum/ReadVariableOp,^sequential_1/dense_2/BiasAdd/ReadVariableOp.^sequential_1/dense_2/Tensordot/ReadVariableOp,^sequential_1/dense_3/BiasAdd/ReadVariableOp.^sequential_1/dense_3/Tensordot/ReadVariableOp*
T0*+
_output_shapes
:€€€€€€€€€# 2

Identity"
identityIdentity:output:0*j
_input_shapesY
W:€€€€€€€€€# ::::::::::::::::2`
.layer_normalization_2/batchnorm/ReadVariableOp.layer_normalization_2/batchnorm/ReadVariableOp2h
2layer_normalization_2/batchnorm/mul/ReadVariableOp2layer_normalization_2/batchnorm/mul/ReadVariableOp2`
.layer_normalization_3/batchnorm/ReadVariableOp.layer_normalization_3/batchnorm/ReadVariableOp2h
2layer_normalization_3/batchnorm/mul/ReadVariableOp2layer_normalization_3/batchnorm/mul/ReadVariableOp2x
:multi_head_attention_1/attention_output/add/ReadVariableOp:multi_head_attention_1/attention_output/add/ReadVariableOp2М
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_1/key/add/ReadVariableOp-multi_head_attention_1/key/add/ReadVariableOp2r
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/query/add/ReadVariableOp/multi_head_attention_1/query/add/ReadVariableOp2v
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/value/add/ReadVariableOp/multi_head_attention_1/value/add/ReadVariableOp2v
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp2Z
+sequential_1/dense_2/BiasAdd/ReadVariableOp+sequential_1/dense_2/BiasAdd/ReadVariableOp2^
-sequential_1/dense_2/Tensordot/ReadVariableOp-sequential_1/dense_2/Tensordot/ReadVariableOp2Z
+sequential_1/dense_3/BiasAdd/ReadVariableOp+sequential_1/dense_3/BiasAdd/ReadVariableOp2^
-sequential_1/dense_3/Tensordot/ReadVariableOp-sequential_1/dense_3/Tensordot/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€# 
 
_user_specified_nameinputs
р	
№
C__inference_dense_4_layer_call_and_return_conditional_losses_102304

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	и@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
ReluЧ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*/
_input_shapes
:€€€€€€€€€и::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€и
 
_user_specified_nameinputs
µZ
≈
A__inference_model_layer_call_and_return_conditional_losses_100455

inputs
inputs_1'
#token_and_position_embedding_100365'
#token_and_position_embedding_100367
conv1d_100370
conv1d_100372
conv1d_1_100376
conv1d_1_100378
batch_normalization_100383
batch_normalization_100385
batch_normalization_100387
batch_normalization_100389 
batch_normalization_1_100392 
batch_normalization_1_100394 
batch_normalization_1_100396 
batch_normalization_1_100398
transformer_block_1_100402
transformer_block_1_100404
transformer_block_1_100406
transformer_block_1_100408
transformer_block_1_100410
transformer_block_1_100412
transformer_block_1_100414
transformer_block_1_100416
transformer_block_1_100418
transformer_block_1_100420
transformer_block_1_100422
transformer_block_1_100424
transformer_block_1_100426
transformer_block_1_100428
transformer_block_1_100430
transformer_block_1_100432
dense_4_100437
dense_4_100439
dense_5_100443
dense_5_100445
dense_6_100449
dense_6_100451
identityИҐ+batch_normalization/StatefulPartitionedCallҐ-batch_normalization_1/StatefulPartitionedCallҐconv1d/StatefulPartitionedCallҐ conv1d_1/StatefulPartitionedCallҐdense_4/StatefulPartitionedCallҐdense_5/StatefulPartitionedCallҐdense_6/StatefulPartitionedCallҐ!dropout_4/StatefulPartitionedCallҐ!dropout_5/StatefulPartitionedCallҐ4token_and_position_embedding/StatefulPartitionedCallҐ+transformer_block_1/StatefulPartitionedCall€
4token_and_position_embedding/StatefulPartitionedCallStatefulPartitionedCallinputs#token_and_position_embedding_100365#token_and_position_embedding_100367*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:€€€€€€€€€ДR *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *`
f[RY
W__inference_token_and_position_embedding_layer_call_and_return_conditional_losses_9942826
4token_and_position_embedding/StatefulPartitionedCall»
conv1d/StatefulPartitionedCallStatefulPartitionedCall=token_and_position_embedding/StatefulPartitionedCall:output:0conv1d_100370conv1d_100372*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:€€€€€€€€€ДR *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_conv1d_layer_call_and_return_conditional_losses_994602 
conv1d/StatefulPartitionedCallЧ
!average_pooling1d/PartitionedCallPartitionedCall'conv1d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:€€€€€€€€€ё * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_average_pooling1d_layer_call_and_return_conditional_losses_989162#
!average_pooling1d/PartitionedCallњ
 conv1d_1/StatefulPartitionedCallStatefulPartitionedCall*average_pooling1d/PartitionedCall:output:0conv1d_1_100376conv1d_1_100378*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:€€€€€€€€€ё *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_conv1d_1_layer_call_and_return_conditional_losses_994932"
 conv1d_1/StatefulPartitionedCall≤
#average_pooling1d_2/PartitionedCallPartitionedCall=token_and_position_embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€# * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_average_pooling1d_2_layer_call_and_return_conditional_losses_989462%
#average_pooling1d_2/PartitionedCallЮ
#average_pooling1d_1/PartitionedCallPartitionedCall)conv1d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€# * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_average_pooling1d_1_layer_call_and_return_conditional_losses_989312%
#average_pooling1d_1/PartitionedCall±
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall,average_pooling1d_1/PartitionedCall:output:0batch_normalization_100383batch_normalization_100385batch_normalization_100387batch_normalization_100389*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€# *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_995462-
+batch_normalization/StatefulPartitionedCallњ
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall,average_pooling1d_2/PartitionedCall:output:0batch_normalization_1_100392batch_normalization_1_100394batch_normalization_1_100396batch_normalization_1_100398*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€# *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_996372/
-batch_normalization_1/StatefulPartitionedCall≤
add/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:06batch_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€# * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_add_layer_call_and_return_conditional_losses_996992
add/PartitionedCallЛ
+transformer_block_1/StatefulPartitionedCallStatefulPartitionedCalladd/PartitionedCall:output:0transformer_block_1_100402transformer_block_1_100404transformer_block_1_100406transformer_block_1_100408transformer_block_1_100410transformer_block_1_100412transformer_block_1_100414transformer_block_1_100416transformer_block_1_100418transformer_block_1_100420transformer_block_1_100422transformer_block_1_100424transformer_block_1_100426transformer_block_1_100428transformer_block_1_100430transformer_block_1_100432*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€# *2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_transformer_block_1_layer_call_and_return_conditional_losses_998562-
+transformer_block_1/StatefulPartitionedCallГ
flatten/PartitionedCallPartitionedCall4transformer_block_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€а* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_1000982
flatten/PartitionedCallЖ
concatenate/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€и* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_concatenate_layer_call_and_return_conditional_losses_1001132
concatenate/PartitionedCall∞
dense_4/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0dense_4_100437dense_4_100439*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_1001332!
dense_4/StatefulPartitionedCallФ
!dropout_4/StatefulPartitionedCallStatefulPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_4_layer_call_and_return_conditional_losses_1001612#
!dropout_4/StatefulPartitionedCallґ
dense_5/StatefulPartitionedCallStatefulPartitionedCall*dropout_4/StatefulPartitionedCall:output:0dense_5_100443dense_5_100445*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_1001902!
dense_5/StatefulPartitionedCallЄ
!dropout_5/StatefulPartitionedCallStatefulPartitionedCall(dense_5/StatefulPartitionedCall:output:0"^dropout_4/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_5_layer_call_and_return_conditional_losses_1002182#
!dropout_5/StatefulPartitionedCallґ
dense_6/StatefulPartitionedCallStatefulPartitionedCall*dropout_5/StatefulPartitionedCall:output:0dense_6_100449dense_6_100451*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_1002462!
dense_6/StatefulPartitionedCall±
IdentityIdentity(dense_6/StatefulPartitionedCall:output:0,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall^conv1d/StatefulPartitionedCall!^conv1d_1/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall"^dropout_4/StatefulPartitionedCall"^dropout_5/StatefulPartitionedCall5^token_and_position_embedding/StatefulPartitionedCall,^transformer_block_1/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*ћ
_input_shapesЇ
Ј:€€€€€€€€€ДR:€€€€€€€€€::::::::::::::::::::::::::::::::::::2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2@
conv1d/StatefulPartitionedCallconv1d/StatefulPartitionedCall2D
 conv1d_1/StatefulPartitionedCall conv1d_1/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2F
!dropout_4/StatefulPartitionedCall!dropout_4/StatefulPartitionedCall2F
!dropout_5/StatefulPartitionedCall!dropout_5/StatefulPartitionedCall2l
4token_and_position_embedding/StatefulPartitionedCall4token_and_position_embedding/StatefulPartitionedCall2Z
+transformer_block_1/StatefulPartitionedCall+transformer_block_1/StatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€ДR
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
н	
№
C__inference_dense_5_layer_call_and_return_conditional_losses_102351

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
ReluЧ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*.
_input_shapes
:€€€€€€€€€@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
»
c
E__inference_dropout_4_layer_call_and_return_conditional_losses_100166

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:€€€€€€€€€@2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2

Identity_1"!

identity_1Identity_1:output:0*&
_input_shapes
:€€€€€€€€€@:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
–
†
&__inference_model_layer_call_fn_100702
input_1
input_2
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34
identityИҐStatefulPartitionedCall“
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34*1
Tin*
(2&*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*F
_read_only_resource_inputs(
&$	
 !"#$%*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_1006272
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*ћ
_input_shapesЇ
Ј:€€€€€€€€€ДR:€€€€€€€€€::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:€€€€€€€€€ДR
!
_user_specified_name	input_1:PL
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	input_2
µW
э
A__inference_model_layer_call_and_return_conditional_losses_100627

inputs
inputs_1'
#token_and_position_embedding_100537'
#token_and_position_embedding_100539
conv1d_100542
conv1d_100544
conv1d_1_100548
conv1d_1_100550
batch_normalization_100555
batch_normalization_100557
batch_normalization_100559
batch_normalization_100561 
batch_normalization_1_100564 
batch_normalization_1_100566 
batch_normalization_1_100568 
batch_normalization_1_100570
transformer_block_1_100574
transformer_block_1_100576
transformer_block_1_100578
transformer_block_1_100580
transformer_block_1_100582
transformer_block_1_100584
transformer_block_1_100586
transformer_block_1_100588
transformer_block_1_100590
transformer_block_1_100592
transformer_block_1_100594
transformer_block_1_100596
transformer_block_1_100598
transformer_block_1_100600
transformer_block_1_100602
transformer_block_1_100604
dense_4_100609
dense_4_100611
dense_5_100615
dense_5_100617
dense_6_100621
dense_6_100623
identityИҐ+batch_normalization/StatefulPartitionedCallҐ-batch_normalization_1/StatefulPartitionedCallҐconv1d/StatefulPartitionedCallҐ conv1d_1/StatefulPartitionedCallҐdense_4/StatefulPartitionedCallҐdense_5/StatefulPartitionedCallҐdense_6/StatefulPartitionedCallҐ4token_and_position_embedding/StatefulPartitionedCallҐ+transformer_block_1/StatefulPartitionedCall€
4token_and_position_embedding/StatefulPartitionedCallStatefulPartitionedCallinputs#token_and_position_embedding_100537#token_and_position_embedding_100539*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:€€€€€€€€€ДR *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *`
f[RY
W__inference_token_and_position_embedding_layer_call_and_return_conditional_losses_9942826
4token_and_position_embedding/StatefulPartitionedCall»
conv1d/StatefulPartitionedCallStatefulPartitionedCall=token_and_position_embedding/StatefulPartitionedCall:output:0conv1d_100542conv1d_100544*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:€€€€€€€€€ДR *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_conv1d_layer_call_and_return_conditional_losses_994602 
conv1d/StatefulPartitionedCallЧ
!average_pooling1d/PartitionedCallPartitionedCall'conv1d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:€€€€€€€€€ё * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_average_pooling1d_layer_call_and_return_conditional_losses_989162#
!average_pooling1d/PartitionedCallњ
 conv1d_1/StatefulPartitionedCallStatefulPartitionedCall*average_pooling1d/PartitionedCall:output:0conv1d_1_100548conv1d_1_100550*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:€€€€€€€€€ё *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_conv1d_1_layer_call_and_return_conditional_losses_994932"
 conv1d_1/StatefulPartitionedCall≤
#average_pooling1d_2/PartitionedCallPartitionedCall=token_and_position_embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€# * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_average_pooling1d_2_layer_call_and_return_conditional_losses_989462%
#average_pooling1d_2/PartitionedCallЮ
#average_pooling1d_1/PartitionedCallPartitionedCall)conv1d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€# * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_average_pooling1d_1_layer_call_and_return_conditional_losses_989312%
#average_pooling1d_1/PartitionedCall≥
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall,average_pooling1d_1/PartitionedCall:output:0batch_normalization_100555batch_normalization_100557batch_normalization_100559batch_normalization_100561*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€# *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_995662-
+batch_normalization/StatefulPartitionedCallЅ
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall,average_pooling1d_2/PartitionedCall:output:0batch_normalization_1_100564batch_normalization_1_100566batch_normalization_1_100568batch_normalization_1_100570*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€# *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_996572/
-batch_normalization_1/StatefulPartitionedCall≤
add/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:06batch_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€# * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *G
fBR@
>__inference_add_layer_call_and_return_conditional_losses_996992
add/PartitionedCallЛ
+transformer_block_1/StatefulPartitionedCallStatefulPartitionedCalladd/PartitionedCall:output:0transformer_block_1_100574transformer_block_1_100576transformer_block_1_100578transformer_block_1_100580transformer_block_1_100582transformer_block_1_100584transformer_block_1_100586transformer_block_1_100588transformer_block_1_100590transformer_block_1_100592transformer_block_1_100594transformer_block_1_100596transformer_block_1_100598transformer_block_1_100600transformer_block_1_100602transformer_block_1_100604*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€# *2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_transformer_block_1_layer_call_and_return_conditional_losses_999832-
+transformer_block_1/StatefulPartitionedCallГ
flatten/PartitionedCallPartitionedCall4transformer_block_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€а* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_flatten_layer_call_and_return_conditional_losses_1000982
flatten/PartitionedCallЖ
concatenate/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€и* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_concatenate_layer_call_and_return_conditional_losses_1001132
concatenate/PartitionedCall∞
dense_4/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0dense_4_100609dense_4_100611*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_1001332!
dense_4/StatefulPartitionedCallь
dropout_4/PartitionedCallPartitionedCall(dense_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_4_layer_call_and_return_conditional_losses_1001662
dropout_4/PartitionedCallЃ
dense_5/StatefulPartitionedCallStatefulPartitionedCall"dropout_4/PartitionedCall:output:0dense_5_100615dense_5_100617*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_1001902!
dense_5/StatefulPartitionedCallь
dropout_5/PartitionedCallPartitionedCall(dense_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_5_layer_call_and_return_conditional_losses_1002232
dropout_5/PartitionedCallЃ
dense_6/StatefulPartitionedCallStatefulPartitionedCall"dropout_5/PartitionedCall:output:0dense_6_100621dense_6_100623*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_1002462!
dense_6/StatefulPartitionedCallй
IdentityIdentity(dense_6/StatefulPartitionedCall:output:0,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall^conv1d/StatefulPartitionedCall!^conv1d_1/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall5^token_and_position_embedding/StatefulPartitionedCall,^transformer_block_1/StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€2

Identity"
identityIdentity:output:0*ћ
_input_shapesЇ
Ј:€€€€€€€€€ДR:€€€€€€€€€::::::::::::::::::::::::::::::::::::2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2@
conv1d/StatefulPartitionedCallconv1d/StatefulPartitionedCall2D
 conv1d_1/StatefulPartitionedCall conv1d_1/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2l
4token_and_position_embedding/StatefulPartitionedCall4token_and_position_embedding/StatefulPartitionedCall2Z
+transformer_block_1/StatefulPartitionedCall+transformer_block_1/StatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€ДR
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
≈
І
4__inference_batch_normalization_layer_call_fn_101744

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИҐStatefulPartitionedCallЯ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€# *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_995662
StatefulPartitionedCallТ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:€€€€€€€€€# 2

Identity"
identityIdentity:output:0*:
_input_shapes)
':€€€€€€€€€# ::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€# 
 
_user_specified_nameinputs
и
И
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_101800

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identityИҐbatchnorm/ReadVariableOpҐbatchnorm/ReadVariableOp_1Ґbatchnorm/ReadVariableOp_2Ґbatchnorm/mul/ReadVariableOpТ
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2
batchnorm/add/yИ
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
: 2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: 2
batchnorm/RsqrtЮ
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/mul/ReadVariableOpЕ
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2
batchnorm/mulz
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2
batchnorm/mul_1Ш
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp_1Е
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
: 2
batchnorm/mul_2Ш
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp_2Г
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2
batchnorm/subЙ
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2
batchnorm/add_1я
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*+
_output_shapes
:€€€€€€€€€# 2

Identity"
identityIdentity:output:0*:
_input_shapes)
':€€€€€€€€€# ::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€# 
 
_user_specified_nameinputs
–
в
C__inference_dense_3_layer_call_and_return_conditional_losses_102616

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐTensordot/ReadVariableOpЦ
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:@ *
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis—
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis„
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/ConstА
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1И
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis∞
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concatМ
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stackР
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€#@2
Tensordot/transposeЯ
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
Tensordot/ReshapeЮ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axisљ
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1Р
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€# 2
	TensordotМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpЗ
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€# 2	
BiasAddЬ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*+
_output_shapes
:€€€€€€€€€# 2

Identity"
identityIdentity:output:0*2
_input_shapes!
:€€€€€€€€€#@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€#@
 
_user_specified_nameinputs
Є
q
G__inference_concatenate_layer_call_and_return_conditional_losses_100113

inputs
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axisА
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*(
_output_shapes
:€€€€€€€€€и2
concatd
IdentityIdentityconcat:output:0*
T0*(
_output_shapes
:€€€€€€€€€и2

Identity"
identityIdentity:output:0*:
_input_shapes)
':€€€€€€€€€а:€€€€€€€€€:P L
(
_output_shapes
:€€€€€€€€€а
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
√
І
4__inference_batch_normalization_layer_call_fn_101731

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИҐStatefulPartitionedCallЭ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€# *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_995462
StatefulPartitionedCallТ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:€€€€€€€€€# 2

Identity"
identityIdentity:output:0*:
_input_shapes)
':€€€€€€€€€# ::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€# 
 
_user_specified_nameinputs
∞ 
в
C__inference_dense_2_layer_call_and_return_conditional_losses_102577

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐTensordot/ReadVariableOpЦ
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

: @*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis—
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis„
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/ConstА
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1И
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis∞
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concatМ
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stackР
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€# 2
Tensordot/transposeЯ
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
Tensordot/ReshapeЮ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axisљ
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1Р
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€#@2
	TensordotМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpЗ
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€#@2	
BiasAdd\
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€#@2
ReluЮ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*+
_output_shapes
:€€€€€€€€€#@2

Identity"
identityIdentity:output:0*2
_input_shapes!
:€€€€€€€€€# ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€# 
 
_user_specified_nameinputs
е
Е
N__inference_batch_normalization_layer_call_and_return_conditional_losses_99566

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identityИҐbatchnorm/ReadVariableOpҐbatchnorm/ReadVariableOp_1Ґbatchnorm/ReadVariableOp_2Ґbatchnorm/mul/ReadVariableOpТ
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2
batchnorm/add/yИ
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
: 2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: 2
batchnorm/RsqrtЮ
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/mul/ReadVariableOpЕ
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2
batchnorm/mulz
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2
batchnorm/mul_1Ш
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp_1Е
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
: 2
batchnorm/mul_2Ш
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp_2Г
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2
batchnorm/subЙ
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2
batchnorm/add_1я
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*+
_output_shapes
:€€€€€€€€€# 2

Identity"
identityIdentity:output:0*:
_input_shapes)
':€€€€€€€€€# ::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€# 
 
_user_specified_nameinputs
ф
j
N__inference_average_pooling1d_1_layer_call_and_return_conditional_losses_98931

inputs
identityb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dimУ

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€2

ExpandDimsЇ
AvgPoolAvgPoolExpandDims:output:0*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize

*
paddingVALID*
strides

2	
AvgPoolО
SqueezeSqueezeAvgPool:output:0*
T0*=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€*
squeeze_dims
2	
Squeezez
IdentityIdentitySqueeze:output:0*
T0*=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€:e a
=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ј
†
-__inference_sequential_1_layer_call_fn_102533

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИҐStatefulPartitionedCallШ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€# *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_993612
StatefulPartitionedCallТ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:€€€€€€€€€# 2

Identity"
identityIdentity:output:0*:
_input_shapes)
':€€€€€€€€€# ::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€# 
 
_user_specified_nameinputs
£
c
*__inference_dropout_4_layer_call_fn_102335

inputs
identityИҐStatefulPartitionedCallё
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dropout_4_layer_call_and_return_conditional_losses_1001612
StatefulPartitionedCallО
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:€€€€€€€€€@2

Identity"
identityIdentity:output:0*&
_input_shapes
:€€€€€€€€€@22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
ѕ
б
B__inference_dense_3_layer_call_and_return_conditional_losses_99313

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐTensordot/ReadVariableOpЦ
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:@ *
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis—
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis„
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/ConstА
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1И
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis∞
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concatМ
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stackР
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€#@2
Tensordot/transposeЯ
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
Tensordot/ReshapeЮ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ 2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axisљ
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1Р
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€# 2
	TensordotМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpЗ
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€# 2	
BiasAddЬ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*+
_output_shapes
:€€€€€€€€€# 2

Identity"
identityIdentity:output:0*2
_input_shapes!
:€€€€€€€€€#@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€#@
 
_user_specified_nameinputs
ѓ 
б
B__inference_dense_2_layer_call_and_return_conditional_losses_99267

inputs%
!tensordot_readvariableop_resource#
biasadd_readvariableop_resource
identityИҐBiasAdd/ReadVariableOpҐTensordot/ReadVariableOpЦ
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

: @*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis—
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis„
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/ConstА
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1И
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis∞
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concatМ
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stackР
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:€€€€€€€€€# 2
Tensordot/transposeЯ
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
Tensordot/ReshapeЮ
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axisљ
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1Р
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:€€€€€€€€€#@2
	TensordotМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpЗ
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€#@2	
BiasAdd\
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€#@2
ReluЮ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*+
_output_shapes
:€€€€€€€€€#@2

Identity"
identityIdentity:output:0*2
_input_shapes!
:€€€€€€€€€# ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€# 
 
_user_specified_nameinputs
џ
э
G__inference_sequential_1_layer_call_and_return_conditional_losses_99330
dense_2_input
dense_2_99278
dense_2_99280
dense_3_99324
dense_3_99326
identityИҐdense_2/StatefulPartitionedCallҐdense_3/StatefulPartitionedCallЪ
dense_2/StatefulPartitionedCallStatefulPartitionedCalldense_2_inputdense_2_99278dense_2_99280*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€#@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_992672!
dense_2/StatefulPartitionedCallµ
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_99324dense_3_99326*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€# *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_993132!
dense_3/StatefulPartitionedCallƒ
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0 ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*
T0*+
_output_shapes
:€€€€€€€€€# 2

Identity"
identityIdentity:output:0*:
_input_shapes)
':€€€€€€€€€# ::::2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:Z V
+
_output_shapes
:€€€€€€€€€# 
'
_user_specified_namedense_2_input
«
©
6__inference_batch_normalization_1_layer_call_fn_101813

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИҐStatefulPartitionedCallЯ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€# *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_996372
StatefulPartitionedCallТ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:€€€€€€€€€# 2

Identity"
identityIdentity:output:0*:
_input_shapes)
':€€€€€€€€€# ::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€# 
 
_user_specified_nameinputs
Љ0
»
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_101780

inputs
assignmovingavg_101755
assignmovingavg_1_101761)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identityИҐ#AssignMovingAvg/AssignSubVariableOpҐAssignMovingAvg/ReadVariableOpҐ%AssignMovingAvg_1/AssignSubVariableOpҐ AssignMovingAvg_1/ReadVariableOpҐbatchnorm/ReadVariableOpҐbatchnorm/mul/ReadVariableOpС
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2 
moments/mean/reduction_indicesУ
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
: *
	keep_dims(2
moments/meanА
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
: 2
moments/StopGradient®
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*+
_output_shapes
:€€€€€€€€€# 2
moments/SquaredDifferenceЩ
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       2$
"moments/variance/reduction_indicesґ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
: *
	keep_dims(2
moments/varianceБ
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2
moments/SqueezeЙ
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2
moments/Squeeze_1ћ
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*)
_class
loc:@AssignMovingAvg/101755*
_output_shapes
: *
dtype0*
valueB
 *
„#<2
AssignMovingAvg/decayУ
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_101755*
_output_shapes
: *
dtype02 
AssignMovingAvg/ReadVariableOpс
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*)
_class
loc:@AssignMovingAvg/101755*
_output_shapes
: 2
AssignMovingAvg/subи
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*)
_class
loc:@AssignMovingAvg/101755*
_output_shapes
: 2
AssignMovingAvg/mulѓ
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_101755AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*)
_class
loc:@AssignMovingAvg/101755*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp“
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*+
_class!
loc:@AssignMovingAvg_1/101761*
_output_shapes
: *
dtype0*
valueB
 *
„#<2
AssignMovingAvg_1/decayЩ
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_101761*
_output_shapes
: *
dtype02"
 AssignMovingAvg_1/ReadVariableOpы
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/101761*
_output_shapes
: 2
AssignMovingAvg_1/subт
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*+
_class!
loc:@AssignMovingAvg_1/101761*
_output_shapes
: 2
AssignMovingAvg_1/mulї
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_101761AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*+
_class!
loc:@AssignMovingAvg_1/101761*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2
batchnorm/add/yВ
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
: 2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: 2
batchnorm/RsqrtЮ
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/mul/ReadVariableOpЕ
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2
batchnorm/mulz
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
: 2
batchnorm/mul_2Т
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOpБ
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2
batchnorm/subЙ
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*+
_output_shapes
:€€€€€€€€€# 2
batchnorm/add_1Ј
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*+
_output_shapes
:€€€€€€€€€# 2

Identity"
identityIdentity:output:0*:
_input_shapes)
':€€€€€€€€€# ::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€# 
 
_user_specified_nameinputs"±L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*и
serving_default‘
<
input_11
serving_default_input_1:0€€€€€€€€€ДR
;
input_20
serving_default_input_2:0€€€€€€€€€;
dense_60
StatefulPartitionedCall:0€€€€€€€€€tensorflow/serving/predict:Ўщ
ПG
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer-6
layer_with_weights-3
layer-7
	layer_with_weights-4
	layer-8

layer-9
layer_with_weights-5
layer-10
layer-11
layer-12
layer-13
layer_with_weights-6
layer-14
layer-15
layer_with_weights-7
layer-16
layer-17
layer_with_weights-8
layer-18
	optimizer
trainable_variables
	variables
regularization_losses
	keras_api

signatures
+±&call_and_return_all_conditional_losses
≤_default_save_signature
≥__call__"„A
_tf_keras_networkїA{"class_name": "Functional", "name": "model", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 10500]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": []}, {"class_name": "TokenAndPositionEmbedding", "config": {"layer was saved without config": true}, "name": "token_and_position_embedding", "inbound_nodes": [[["input_1", 0, 0, {}]]]}, {"class_name": "Conv1D", "config": {"name": "conv1d", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [6]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv1d", "inbound_nodes": [[["token_and_position_embedding", 0, 0, {}]]]}, {"class_name": "AveragePooling1D", "config": {"name": "average_pooling1d", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [30]}, "pool_size": {"class_name": "__tuple__", "items": [30]}, "padding": "valid", "data_format": "channels_last"}, "name": "average_pooling1d", "inbound_nodes": [[["conv1d", 0, 0, {}]]]}, {"class_name": "Conv1D", "config": {"name": "conv1d_1", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [9]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv1d_1", "inbound_nodes": [[["average_pooling1d", 0, 0, {}]]]}, {"class_name": "AveragePooling1D", "config": {"name": "average_pooling1d_1", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [10]}, "pool_size": {"class_name": "__tuple__", "items": [10]}, "padding": "valid", "data_format": "channels_last"}, "name": "average_pooling1d_1", "inbound_nodes": [[["conv1d_1", 0, 0, {}]]]}, {"class_name": "AveragePooling1D", "config": {"name": "average_pooling1d_2", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [300]}, "pool_size": {"class_name": "__tuple__", "items": [300]}, "padding": "valid", "data_format": "channels_last"}, "name": "average_pooling1d_2", "inbound_nodes": [[["token_and_position_embedding", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization", "trainable": true, "dtype": "float32", "axis": [2], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization", "inbound_nodes": [[["average_pooling1d_1", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_1", "trainable": true, "dtype": "float32", "axis": [2], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_1", "inbound_nodes": [[["average_pooling1d_2", 0, 0, {}]]]}, {"class_name": "Add", "config": {"name": "add", "trainable": true, "dtype": "float32"}, "name": "add", "inbound_nodes": [[["batch_normalization", 0, 0, {}], ["batch_normalization_1", 0, 0, {}]]]}, {"class_name": "TransformerBlock", "config": {"layer was saved without config": true}, "name": "transformer_block_1", "inbound_nodes": [[["add", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten", "inbound_nodes": [[["transformer_block_1", 0, 0, {}]]]}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 8]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_2"}, "name": "input_2", "inbound_nodes": []}, {"class_name": "Concatenate", "config": {"name": "concatenate", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate", "inbound_nodes": [[["flatten", 0, 0, {}], ["input_2", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_4", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_4", "inbound_nodes": [[["concatenate", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_4", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}, "name": "dropout_4", "inbound_nodes": [[["dense_4", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_5", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_5", "inbound_nodes": [[["dropout_4", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_5", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}, "name": "dropout_5", "inbound_nodes": [[["dense_5", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_6", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_6", "inbound_nodes": [[["dropout_5", 0, 0, {}]]]}], "input_layers": [["input_1", 0, 0], ["input_2", 0, 0]], "output_layers": [["dense_6", 0, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 10500]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 8]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": [{"class_name": "TensorShape", "items": [null, 10500]}, {"class_name": "TensorShape", "items": [null, 8]}], "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional"}, "training_config": {"loss": "mean_squared_error", "metrics": null, "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "SGD", "config": {"name": "SGD", "learning_rate": 0.0010000000474974513, "decay": 0.0, "momentum": 0.8999999761581421, "nesterov": false}}}}
с"о
_tf_keras_input_layerќ{"class_name": "InputLayer", "name": "input_1", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 10500]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 10500]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}}
е
	token_emb
pos_emb
trainable_variables
regularization_losses
	variables
	keras_api
+і&call_and_return_all_conditional_losses
µ__call__"Є
_tf_keras_layerЮ{"class_name": "TokenAndPositionEmbedding", "name": "token_and_position_embedding", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
е	

 kernel
!bias
"trainable_variables
#regularization_losses
$	variables
%	keras_api
+ґ&call_and_return_all_conditional_losses
Ј__call__"Њ
_tf_keras_layer§{"class_name": "Conv1D", "name": "conv1d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv1d", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [6]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 10500, 32]}}
Е
&trainable_variables
'regularization_losses
(	variables
)	keras_api
+Є&call_and_return_all_conditional_losses
є__call__"ф
_tf_keras_layerЏ{"class_name": "AveragePooling1D", "name": "average_pooling1d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "average_pooling1d", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [30]}, "pool_size": {"class_name": "__tuple__", "items": [30]}, "padding": "valid", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}}
з	

*kernel
+bias
,trainable_variables
-regularization_losses
.	variables
/	keras_api
+Ї&call_and_return_all_conditional_losses
ї__call__"ј
_tf_keras_layer¶{"class_name": "Conv1D", "name": "conv1d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv1d_1", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [9]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 350, 32]}}
Й
0trainable_variables
1regularization_losses
2	variables
3	keras_api
+Љ&call_and_return_all_conditional_losses
љ__call__"ш
_tf_keras_layerё{"class_name": "AveragePooling1D", "name": "average_pooling1d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "average_pooling1d_1", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [10]}, "pool_size": {"class_name": "__tuple__", "items": [10]}, "padding": "valid", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}}
Л
4trainable_variables
5regularization_losses
6	variables
7	keras_api
+Њ&call_and_return_all_conditional_losses
њ__call__"ъ
_tf_keras_layerа{"class_name": "AveragePooling1D", "name": "average_pooling1d_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "average_pooling1d_2", "trainable": true, "dtype": "float32", "strides": {"class_name": "__tuple__", "items": [300]}, "pool_size": {"class_name": "__tuple__", "items": [300]}, "padding": "valid", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}}
і	
8axis
	9gamma
:beta
;moving_mean
<moving_variance
=trainable_variables
>regularization_losses
?	variables
@	keras_api
+ј&call_and_return_all_conditional_losses
Ѕ__call__"ё
_tf_keras_layerƒ{"class_name": "BatchNormalization", "name": "batch_normalization", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization", "trainable": true, "dtype": "float32", "axis": [2], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {"2": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 35, 32]}}
Є	
Aaxis
	Bgamma
Cbeta
Dmoving_mean
Emoving_variance
Ftrainable_variables
Gregularization_losses
H	variables
I	keras_api
+¬&call_and_return_all_conditional_losses
√__call__"в
_tf_keras_layer»{"class_name": "BatchNormalization", "name": "batch_normalization_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_1", "trainable": true, "dtype": "float32", "axis": [2], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {"2": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 35, 32]}}
ѓ
Jtrainable_variables
Kregularization_losses
L	variables
M	keras_api
+ƒ&call_and_return_all_conditional_losses
≈__call__"Ю
_tf_keras_layerД{"class_name": "Add", "name": "add", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "add", "trainable": true, "dtype": "float32"}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 35, 32]}, {"class_name": "TensorShape", "items": [null, 35, 32]}]}
Д
Natt
Offn
P
layernorm1
Q
layernorm2
Rdropout1
Sdropout2
Ttrainable_variables
Uregularization_losses
V	variables
W	keras_api
+∆&call_and_return_all_conditional_losses
«__call__"•
_tf_keras_layerЛ{"class_name": "TransformerBlock", "name": "transformer_block_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"layer was saved without config": true}}
д
Xtrainable_variables
Yregularization_losses
Z	variables
[	keras_api
+»&call_and_return_all_conditional_losses
…__call__"”
_tf_keras_layerє{"class_name": "Flatten", "name": "flatten", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
й"ж
_tf_keras_input_layer∆{"class_name": "InputLayer", "name": "input_2", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 8]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 8]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_2"}}
ћ
\trainable_variables
]regularization_losses
^	variables
_	keras_api
+ &call_and_return_all_conditional_losses
Ћ__call__"ї
_tf_keras_layer°{"class_name": "Concatenate", "name": "concatenate", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "concatenate", "trainable": true, "dtype": "float32", "axis": -1}, "build_input_shape": [{"class_name": "TensorShape", "items": [null, 1120]}, {"class_name": "TensorShape", "items": [null, 8]}]}
ц

`kernel
abias
btrainable_variables
cregularization_losses
d	variables
e	keras_api
+ћ&call_and_return_all_conditional_losses
Ќ__call__"ѕ
_tf_keras_layerµ{"class_name": "Dense", "name": "dense_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_4", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 1128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1128]}}
з
ftrainable_variables
gregularization_losses
h	variables
i	keras_api
+ќ&call_and_return_all_conditional_losses
ѕ__call__"÷
_tf_keras_layerЉ{"class_name": "Dropout", "name": "dropout_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_4", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}
т

jkernel
kbias
ltrainable_variables
mregularization_losses
n	variables
o	keras_api
+–&call_and_return_all_conditional_losses
—__call__"Ћ
_tf_keras_layer±{"class_name": "Dense", "name": "dense_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_5", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
з
ptrainable_variables
qregularization_losses
r	variables
s	keras_api
+“&call_and_return_all_conditional_losses
”__call__"÷
_tf_keras_layerЉ{"class_name": "Dropout", "name": "dropout_5", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_5", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}
у

tkernel
ubias
vtrainable_variables
wregularization_losses
x	variables
y	keras_api
+‘&call_and_return_all_conditional_losses
’__call__"ћ
_tf_keras_layer≤{"class_name": "Dense", "name": "dense_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_6", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
щ
	zdecay
{learning_rate
|momentum
}iter momentumС!momentumТ*momentumУ+momentumФ9momentumХ:momentumЦBmomentumЧCmomentumШ`momentumЩamomentumЪjmomentumЫkmomentumЬtmomentumЭumomentumЮ~momentumЯmomentum†Аmomentum°БmomentumҐВmomentum£Гmomentum§Дmomentum•Еmomentum¶ЖmomentumІЗmomentum®Иmomentum©Йmomentum™КmomentumЂЛmomentumђМmomentum≠НmomentumЃОmomentumѓПmomentum∞"
	optimizer
¶
~0
1
 2
!3
*4
+5
96
:7
B8
C9
А10
Б11
В12
Г13
Д14
Е15
Ж16
З17
И18
Й19
К20
Л21
М22
Н23
О24
П25
`26
a27
j28
k29
t30
u31"
trackable_list_wrapper
∆
~0
1
 2
!3
*4
+5
96
:7
;8
<9
B10
C11
D12
E13
А14
Б15
В16
Г17
Д18
Е19
Ж20
З21
И22
Й23
К24
Л25
М26
Н27
О28
П29
`30
a31
j32
k33
t34
u35"
trackable_list_wrapper
 "
trackable_list_wrapper
”
trainable_variables
 Рlayer_regularization_losses
	variables
Сlayer_metrics
Тmetrics
Уnon_trainable_variables
regularization_losses
Фlayers
≥__call__
≤_default_save_signature
+±&call_and_return_all_conditional_losses
'±"call_and_return_conditional_losses"
_generic_user_object
-
÷serving_default"
signature_map
∞
~
embeddings
Хtrainable_variables
Цregularization_losses
Ч	variables
Ш	keras_api
+„&call_and_return_all_conditional_losses
Ў__call__"Л
_tf_keras_layerс{"class_name": "Embedding", "name": "embedding", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "embedding", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 4, "output_dim": 32, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 10500]}}
±

embeddings
Щtrainable_variables
Ъregularization_losses
Ы	variables
Ь	keras_api
+ў&call_and_return_all_conditional_losses
Џ__call__"М
_tf_keras_layerт{"class_name": "Embedding", "name": "embedding_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "embedding_1", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 10500, "output_dim": 32, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null]}}
.
~0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
~0
1"
trackable_list_wrapper
µ
trainable_variables
 Эlayer_regularization_losses
regularization_losses
	variables
Юlayer_metrics
Яnon_trainable_variables
†metrics
°layers
µ__call__
+і&call_and_return_all_conditional_losses
'і"call_and_return_conditional_losses"
_generic_user_object
#:!  2conv1d/kernel
: 2conv1d/bias
.
 0
!1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
µ
"trainable_variables
 Ґlayer_regularization_losses
#regularization_losses
$	variables
£layer_metrics
§non_trainable_variables
•metrics
¶layers
Ј__call__
+ґ&call_and_return_all_conditional_losses
'ґ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
&trainable_variables
 Іlayer_regularization_losses
'regularization_losses
(	variables
®layer_metrics
©non_trainable_variables
™metrics
Ђlayers
є__call__
+Є&call_and_return_all_conditional_losses
'Є"call_and_return_conditional_losses"
_generic_user_object
%:#	  2conv1d_1/kernel
: 2conv1d_1/bias
.
*0
+1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
µ
,trainable_variables
 ђlayer_regularization_losses
-regularization_losses
.	variables
≠layer_metrics
Ѓnon_trainable_variables
ѓmetrics
∞layers
ї__call__
+Ї&call_and_return_all_conditional_losses
'Ї"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
0trainable_variables
 ±layer_regularization_losses
1regularization_losses
2	variables
≤layer_metrics
≥non_trainable_variables
іmetrics
µlayers
љ__call__
+Љ&call_and_return_all_conditional_losses
'Љ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
4trainable_variables
 ґlayer_regularization_losses
5regularization_losses
6	variables
Јlayer_metrics
Єnon_trainable_variables
єmetrics
Їlayers
њ__call__
+Њ&call_and_return_all_conditional_losses
'Њ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
':% 2batch_normalization/gamma
&:$ 2batch_normalization/beta
/:-  (2batch_normalization/moving_mean
3:1  (2#batch_normalization/moving_variance
.
90
:1"
trackable_list_wrapper
 "
trackable_list_wrapper
<
90
:1
;2
<3"
trackable_list_wrapper
µ
=trainable_variables
 їlayer_regularization_losses
>regularization_losses
?	variables
Љlayer_metrics
љnon_trainable_variables
Њmetrics
њlayers
Ѕ__call__
+ј&call_and_return_all_conditional_losses
'ј"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
):' 2batch_normalization_1/gamma
(:& 2batch_normalization_1/beta
1:/  (2!batch_normalization_1/moving_mean
5:3  (2%batch_normalization_1/moving_variance
.
B0
C1"
trackable_list_wrapper
 "
trackable_list_wrapper
<
B0
C1
D2
E3"
trackable_list_wrapper
µ
Ftrainable_variables
 јlayer_regularization_losses
Gregularization_losses
H	variables
Ѕlayer_metrics
¬non_trainable_variables
√metrics
ƒlayers
√__call__
+¬&call_and_return_all_conditional_losses
'¬"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Jtrainable_variables
 ≈layer_regularization_losses
Kregularization_losses
L	variables
∆layer_metrics
«non_trainable_variables
»metrics
…layers
≈__call__
+ƒ&call_and_return_all_conditional_losses
'ƒ"call_and_return_conditional_losses"
_generic_user_object
И
 _query_dense
Ћ
_key_dense
ћ_value_dense
Ќ_softmax
ќ_dropout_layer
ѕ_output_dense
–trainable_variables
—regularization_losses
“	variables
”	keras_api
+џ&call_and_return_all_conditional_losses
№__call__"Д
_tf_keras_layerк{"class_name": "MultiHeadAttention", "name": "multi_head_attention_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "multi_head_attention_1", "trainable": true, "dtype": "float32", "num_heads": 1, "key_dim": 32, "value_dim": 32, "dropout": 0.0, "use_bias": true, "output_shape": null, "attention_axes": {"class_name": "__tuple__", "items": [1]}, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}
©
‘layer_with_weights-0
‘layer-0
’layer_with_weights-1
’layer-1
÷trainable_variables
„	variables
Ўregularization_losses
ў	keras_api
+Ё&call_and_return_all_conditional_losses
ё__call__"¬
_tf_keras_sequential£{"class_name": "Sequential", "name": "sequential_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 35, 32]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_2_input"}}, {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 32, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 35, 32]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 35, 32]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_2_input"}}, {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 32, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}}
к
	Џaxis

Мgamma
	Нbeta
џtrainable_variables
№regularization_losses
Ё	variables
ё	keras_api
+я&call_and_return_all_conditional_losses
а__call__"≥
_tf_keras_layerЩ{"class_name": "LayerNormalization", "name": "layer_normalization_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "layer_normalization_2", "trainable": true, "dtype": "float32", "axis": [2], "epsilon": 1e-06, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 35, 32]}}
к
	яaxis

Оgamma
	Пbeta
аtrainable_variables
бregularization_losses
в	variables
г	keras_api
+б&call_and_return_all_conditional_losses
в__call__"≥
_tf_keras_layerЩ{"class_name": "LayerNormalization", "name": "layer_normalization_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "layer_normalization_3", "trainable": true, "dtype": "float32", "axis": [2], "epsilon": 1e-06, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 35, 32]}}
л
дtrainable_variables
еregularization_losses
ж	variables
з	keras_api
+г&call_and_return_all_conditional_losses
д__call__"÷
_tf_keras_layerЉ{"class_name": "Dropout", "name": "dropout_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_2", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}
л
иtrainable_variables
йregularization_losses
к	variables
л	keras_api
+е&call_and_return_all_conditional_losses
ж__call__"÷
_tf_keras_layerЉ{"class_name": "Dropout", "name": "dropout_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_3", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}
¶
А0
Б1
В2
Г3
Д4
Е5
Ж6
З7
И8
Й9
К10
Л11
М12
Н13
О14
П15"
trackable_list_wrapper
 "
trackable_list_wrapper
¶
А0
Б1
В2
Г3
Д4
Е5
Ж6
З7
И8
Й9
К10
Л11
М12
Н13
О14
П15"
trackable_list_wrapper
µ
Ttrainable_variables
 мlayer_regularization_losses
Uregularization_losses
V	variables
нlayer_metrics
оnon_trainable_variables
пmetrics
рlayers
«__call__
+∆&call_and_return_all_conditional_losses
'∆"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Xtrainable_variables
 сlayer_regularization_losses
Yregularization_losses
Z	variables
тlayer_metrics
уnon_trainable_variables
фmetrics
хlayers
…__call__
+»&call_and_return_all_conditional_losses
'»"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
\trainable_variables
 цlayer_regularization_losses
]regularization_losses
^	variables
чlayer_metrics
шnon_trainable_variables
щmetrics
ъlayers
Ћ__call__
+ &call_and_return_all_conditional_losses
' "call_and_return_conditional_losses"
_generic_user_object
!:	и@2dense_4/kernel
:@2dense_4/bias
.
`0
a1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
`0
a1"
trackable_list_wrapper
µ
btrainable_variables
 ыlayer_regularization_losses
cregularization_losses
d	variables
ьlayer_metrics
эnon_trainable_variables
юmetrics
€layers
Ќ__call__
+ћ&call_and_return_all_conditional_losses
'ћ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
ftrainable_variables
 Аlayer_regularization_losses
gregularization_losses
h	variables
Бlayer_metrics
Вnon_trainable_variables
Гmetrics
Дlayers
ѕ__call__
+ќ&call_and_return_all_conditional_losses
'ќ"call_and_return_conditional_losses"
_generic_user_object
 :@@2dense_5/kernel
:@2dense_5/bias
.
j0
k1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
j0
k1"
trackable_list_wrapper
µ
ltrainable_variables
 Еlayer_regularization_losses
mregularization_losses
n	variables
Жlayer_metrics
Зnon_trainable_variables
Иmetrics
Йlayers
—__call__
+–&call_and_return_all_conditional_losses
'–"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
ptrainable_variables
 Кlayer_regularization_losses
qregularization_losses
r	variables
Лlayer_metrics
Мnon_trainable_variables
Нmetrics
Оlayers
”__call__
+“&call_and_return_all_conditional_losses
'“"call_and_return_conditional_losses"
_generic_user_object
 :@2dense_6/kernel
:2dense_6/bias
.
t0
u1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
t0
u1"
trackable_list_wrapper
µ
vtrainable_variables
 Пlayer_regularization_losses
wregularization_losses
x	variables
Рlayer_metrics
Сnon_trainable_variables
Тmetrics
Уlayers
’__call__
+‘&call_and_return_all_conditional_losses
'‘"call_and_return_conditional_losses"
_generic_user_object
: (2decay
: (2learning_rate
: (2momentum
:	 (2SGD/iter
C:A 21token_and_position_embedding/embedding/embeddings
F:D	ДR 23token_and_position_embedding/embedding_1/embeddings
M:K  27transformer_block_1/multi_head_attention_1/query/kernel
G:E 25transformer_block_1/multi_head_attention_1/query/bias
K:I  25transformer_block_1/multi_head_attention_1/key/kernel
E:C 23transformer_block_1/multi_head_attention_1/key/bias
M:K  27transformer_block_1/multi_head_attention_1/value/kernel
G:E 25transformer_block_1/multi_head_attention_1/value/bias
X:V  2Btransformer_block_1/multi_head_attention_1/attention_output/kernel
N:L 2@transformer_block_1/multi_head_attention_1/attention_output/bias
 : @2dense_2/kernel
:@2dense_2/bias
 :@ 2dense_3/kernel
: 2dense_3/bias
=:; 2/transformer_block_1/layer_normalization_2/gamma
<:: 2.transformer_block_1/layer_normalization_2/beta
=:; 2/transformer_block_1/layer_normalization_3/gamma
<:: 2.transformer_block_1/layer_normalization_3/beta
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
(
Ф0"
trackable_list_wrapper
<
;0
<1
D2
E3"
trackable_list_wrapper
Ѓ
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18"
trackable_list_wrapper
'
~0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
~0"
trackable_list_wrapper
Є
Хtrainable_variables
 Хlayer_regularization_losses
Цregularization_losses
Ч	variables
Цlayer_metrics
Чnon_trainable_variables
Шmetrics
Щlayers
Ў__call__
+„&call_and_return_all_conditional_losses
'„"call_and_return_conditional_losses"
_generic_user_object
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
Є
Щtrainable_variables
 Ъlayer_regularization_losses
Ъregularization_losses
Ы	variables
Ыlayer_metrics
Ьnon_trainable_variables
Эmetrics
Юlayers
Џ__call__
+ў&call_and_return_all_conditional_losses
'ў"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
;0
<1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
D0
E1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Ћ
Яpartial_output_shape
†full_output_shape
Аkernel
	Бbias
°trainable_variables
Ґregularization_losses
£	variables
§	keras_api
+з&call_and_return_all_conditional_losses
и__call__"л
_tf_keras_layer—{"class_name": "EinsumDense", "name": "query", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "query", "trainable": true, "dtype": "float32", "output_shape": [null, 1, 32], "equation": "abc,cde->abde", "activation": "linear", "bias_axes": "de", "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 35, 32]}}
«
•partial_output_shape
¶full_output_shape
Вkernel
	Гbias
Іtrainable_variables
®regularization_losses
©	variables
™	keras_api
+й&call_and_return_all_conditional_losses
к__call__"з
_tf_keras_layerЌ{"class_name": "EinsumDense", "name": "key", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "key", "trainable": true, "dtype": "float32", "output_shape": [null, 1, 32], "equation": "abc,cde->abde", "activation": "linear", "bias_axes": "de", "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 35, 32]}}
Ћ
Ђpartial_output_shape
ђfull_output_shape
Дkernel
	Еbias
≠trainable_variables
Ѓregularization_losses
ѓ	variables
∞	keras_api
+л&call_and_return_all_conditional_losses
м__call__"л
_tf_keras_layer—{"class_name": "EinsumDense", "name": "value", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "value", "trainable": true, "dtype": "float32", "output_shape": [null, 1, 32], "equation": "abc,cde->abde", "activation": "linear", "bias_axes": "de", "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 35, 32]}}
л
±trainable_variables
≤regularization_losses
≥	variables
і	keras_api
+н&call_and_return_all_conditional_losses
о__call__"÷
_tf_keras_layerЉ{"class_name": "Softmax", "name": "softmax", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "softmax", "trainable": true, "dtype": "float32", "axis": {"class_name": "__tuple__", "items": [3]}}}
з
µtrainable_variables
ґregularization_losses
Ј	variables
Є	keras_api
+п&call_and_return_all_conditional_losses
р__call__"“
_tf_keras_layerЄ{"class_name": "Dropout", "name": "dropout", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.0, "noise_shape": null, "seed": null}}
а
єpartial_output_shape
Їfull_output_shape
Жkernel
	Зbias
їtrainable_variables
Љregularization_losses
љ	variables
Њ	keras_api
+с&call_and_return_all_conditional_losses
т__call__"А
_tf_keras_layerж{"class_name": "EinsumDense", "name": "attention_output", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "attention_output", "trainable": true, "dtype": "float32", "output_shape": [null, 32], "equation": "abcd,cde->abe", "activation": "linear", "bias_axes": "e", "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 35, 1, 32]}}
`
А0
Б1
В2
Г3
Д4
Е5
Ж6
З7"
trackable_list_wrapper
 "
trackable_list_wrapper
`
А0
Б1
В2
Г3
Д4
Е5
Ж6
З7"
trackable_list_wrapper
Є
–trainable_variables
 њlayer_regularization_losses
—regularization_losses
“	variables
јlayer_metrics
Ѕnon_trainable_variables
¬metrics
√layers
№__call__
+џ&call_and_return_all_conditional_losses
'џ"call_and_return_conditional_losses"
_generic_user_object
ь
Иkernel
	Йbias
ƒtrainable_variables
≈regularization_losses
∆	variables
«	keras_api
+у&call_and_return_all_conditional_losses
ф__call__"ѕ
_tf_keras_layerµ{"class_name": "Dense", "name": "dense_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 35, 32]}}
ю
Кkernel
	Лbias
»trainable_variables
…regularization_losses
 	variables
Ћ	keras_api
+х&call_and_return_all_conditional_losses
ц__call__"—
_tf_keras_layerЈ{"class_name": "Dense", "name": "dense_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 32, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 35, 64]}}
@
И0
Й1
К2
Л3"
trackable_list_wrapper
@
И0
Й1
К2
Л3"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
÷trainable_variables
 ћlayer_regularization_losses
„	variables
Ќlayer_metrics
ќmetrics
ѕnon_trainable_variables
Ўregularization_losses
–layers
ё__call__
+Ё&call_and_return_all_conditional_losses
'Ё"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
0
М0
Н1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
М0
Н1"
trackable_list_wrapper
Є
џtrainable_variables
 —layer_regularization_losses
№regularization_losses
Ё	variables
“layer_metrics
”non_trainable_variables
‘metrics
’layers
а__call__
+я&call_and_return_all_conditional_losses
'я"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
0
О0
П1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
О0
П1"
trackable_list_wrapper
Є
аtrainable_variables
 ÷layer_regularization_losses
бregularization_losses
в	variables
„layer_metrics
Ўnon_trainable_variables
ўmetrics
Џlayers
в__call__
+б&call_and_return_all_conditional_losses
'б"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
дtrainable_variables
 џlayer_regularization_losses
еregularization_losses
ж	variables
№layer_metrics
Ёnon_trainable_variables
ёmetrics
яlayers
д__call__
+г&call_and_return_all_conditional_losses
'г"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
иtrainable_variables
 аlayer_regularization_losses
йregularization_losses
к	variables
бlayer_metrics
вnon_trainable_variables
гmetrics
дlayers
ж__call__
+е&call_and_return_all_conditional_losses
'е"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
J
N0
O1
P2
Q3
R4
S5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
њ

еtotal

жcount
з	variables
и	keras_api"Д
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
А0
Б1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
А0
Б1"
trackable_list_wrapper
Є
°trainable_variables
 йlayer_regularization_losses
Ґregularization_losses
£	variables
кlayer_metrics
лnon_trainable_variables
мmetrics
нlayers
и__call__
+з&call_and_return_all_conditional_losses
'з"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
В0
Г1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
В0
Г1"
trackable_list_wrapper
Є
Іtrainable_variables
 оlayer_regularization_losses
®regularization_losses
©	variables
пlayer_metrics
рnon_trainable_variables
сmetrics
тlayers
к__call__
+й&call_and_return_all_conditional_losses
'й"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
Д0
Е1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
Д0
Е1"
trackable_list_wrapper
Є
≠trainable_variables
 уlayer_regularization_losses
Ѓregularization_losses
ѓ	variables
фlayer_metrics
хnon_trainable_variables
цmetrics
чlayers
м__call__
+л&call_and_return_all_conditional_losses
'л"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
±trainable_variables
 шlayer_regularization_losses
≤regularization_losses
≥	variables
щlayer_metrics
ъnon_trainable_variables
ыmetrics
ьlayers
о__call__
+н&call_and_return_all_conditional_losses
'н"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
µtrainable_variables
 эlayer_regularization_losses
ґregularization_losses
Ј	variables
юlayer_metrics
€non_trainable_variables
Аmetrics
Бlayers
р__call__
+п&call_and_return_all_conditional_losses
'п"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
Ж0
З1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
Ж0
З1"
trackable_list_wrapper
Є
їtrainable_variables
 Вlayer_regularization_losses
Љregularization_losses
љ	variables
Гlayer_metrics
Дnon_trainable_variables
Еmetrics
Жlayers
т__call__
+с&call_and_return_all_conditional_losses
'с"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
P
 0
Ћ1
ћ2
Ќ3
ќ4
ѕ5"
trackable_list_wrapper
0
И0
Й1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
И0
Й1"
trackable_list_wrapper
Є
ƒtrainable_variables
 Зlayer_regularization_losses
≈regularization_losses
∆	variables
Иlayer_metrics
Йnon_trainable_variables
Кmetrics
Лlayers
ф__call__
+у&call_and_return_all_conditional_losses
'у"call_and_return_conditional_losses"
_generic_user_object
0
К0
Л1"
trackable_list_wrapper
 "
trackable_list_wrapper
0
К0
Л1"
trackable_list_wrapper
Є
»trainable_variables
 Мlayer_regularization_losses
…regularization_losses
 	variables
Нlayer_metrics
Оnon_trainable_variables
Пmetrics
Рlayers
ц__call__
+х&call_and_return_all_conditional_losses
'х"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
‘0
’1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
:  (2total
:  (2count
0
е0
ж1"
trackable_list_wrapper
.
з	variables"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.:,  2SGD/conv1d/kernel/momentum
$:" 2SGD/conv1d/bias/momentum
0:.	  2SGD/conv1d_1/kernel/momentum
&:$ 2SGD/conv1d_1/bias/momentum
2:0 2&SGD/batch_normalization/gamma/momentum
1:/ 2%SGD/batch_normalization/beta/momentum
4:2 2(SGD/batch_normalization_1/gamma/momentum
3:1 2'SGD/batch_normalization_1/beta/momentum
,:*	и@2SGD/dense_4/kernel/momentum
%:#@2SGD/dense_4/bias/momentum
+:)@@2SGD/dense_5/kernel/momentum
%:#@2SGD/dense_5/bias/momentum
+:)@2SGD/dense_6/kernel/momentum
%:#2SGD/dense_6/bias/momentum
N:L 2>SGD/token_and_position_embedding/embedding/embeddings/momentum
Q:O	ДR 2@SGD/token_and_position_embedding/embedding_1/embeddings/momentum
X:V  2DSGD/transformer_block_1/multi_head_attention_1/query/kernel/momentum
R:P 2BSGD/transformer_block_1/multi_head_attention_1/query/bias/momentum
V:T  2BSGD/transformer_block_1/multi_head_attention_1/key/kernel/momentum
P:N 2@SGD/transformer_block_1/multi_head_attention_1/key/bias/momentum
X:V  2DSGD/transformer_block_1/multi_head_attention_1/value/kernel/momentum
R:P 2BSGD/transformer_block_1/multi_head_attention_1/value/bias/momentum
c:a  2OSGD/transformer_block_1/multi_head_attention_1/attention_output/kernel/momentum
Y:W 2MSGD/transformer_block_1/multi_head_attention_1/attention_output/bias/momentum
+:) @2SGD/dense_2/kernel/momentum
%:#@2SGD/dense_2/bias/momentum
+:)@ 2SGD/dense_3/kernel/momentum
%:# 2SGD/dense_3/bias/momentum
H:F 2<SGD/transformer_block_1/layer_normalization_2/gamma/momentum
G:E 2;SGD/transformer_block_1/layer_normalization_2/beta/momentum
H:F 2<SGD/transformer_block_1/layer_normalization_3/gamma/momentum
G:E 2;SGD/transformer_block_1/layer_normalization_3/beta/momentum
“2ѕ
A__inference_model_layer_call_and_return_conditional_losses_100357
A__inference_model_layer_call_and_return_conditional_losses_101098
A__inference_model_layer_call_and_return_conditional_losses_101341
A__inference_model_layer_call_and_return_conditional_losses_100263ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
З2Д
 __inference__wrapped_model_98907я
Л≤З
FullArgSpec
argsЪ 
varargsjargs
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *OҐL
JЪG
"К
input_1€€€€€€€€€ДR
!К
input_2€€€€€€€€€
ж2г
&__inference_model_layer_call_fn_100530
&__inference_model_layer_call_fn_101497
&__inference_model_layer_call_fn_100702
&__inference_model_layer_call_fn_101419ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
э2ъ
X__inference_token_and_position_embedding_layer_call_and_return_conditional_losses_101521Э
Ф≤Р
FullArgSpec
argsЪ
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
в2я
=__inference_token_and_position_embedding_layer_call_fn_101530Э
Ф≤Р
FullArgSpec
argsЪ
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
м2й
B__inference_conv1d_layer_call_and_return_conditional_losses_101546Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
—2ќ
'__inference_conv1d_layer_call_fn_101555Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
І2§
L__inference_average_pooling1d_layer_call_and_return_conditional_losses_98916”
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *3Ґ0
.К+'€€€€€€€€€€€€€€€€€€€€€€€€€€€
М2Й
1__inference_average_pooling1d_layer_call_fn_98922”
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *3Ґ0
.К+'€€€€€€€€€€€€€€€€€€€€€€€€€€€
о2л
D__inference_conv1d_1_layer_call_and_return_conditional_losses_101571Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
”2–
)__inference_conv1d_1_layer_call_fn_101580Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
©2¶
N__inference_average_pooling1d_1_layer_call_and_return_conditional_losses_98931”
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *3Ґ0
.К+'€€€€€€€€€€€€€€€€€€€€€€€€€€€
О2Л
3__inference_average_pooling1d_1_layer_call_fn_98937”
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *3Ґ0
.К+'€€€€€€€€€€€€€€€€€€€€€€€€€€€
©2¶
N__inference_average_pooling1d_2_layer_call_and_return_conditional_losses_98946”
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *3Ґ0
.К+'€€€€€€€€€€€€€€€€€€€€€€€€€€€
О2Л
3__inference_average_pooling1d_2_layer_call_fn_98952”
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *3Ґ0
.К+'€€€€€€€€€€€€€€€€€€€€€€€€€€€
ю2ы
O__inference_batch_normalization_layer_call_and_return_conditional_losses_101616
O__inference_batch_normalization_layer_call_and_return_conditional_losses_101636
O__inference_batch_normalization_layer_call_and_return_conditional_losses_101718
O__inference_batch_normalization_layer_call_and_return_conditional_losses_101698і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
Т2П
4__inference_batch_normalization_layer_call_fn_101649
4__inference_batch_normalization_layer_call_fn_101744
4__inference_batch_normalization_layer_call_fn_101662
4__inference_batch_normalization_layer_call_fn_101731і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
Ж2Г
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_101800
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_101882
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_101862
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_101780і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
Ъ2Ч
6__inference_batch_normalization_1_layer_call_fn_101826
6__inference_batch_normalization_1_layer_call_fn_101813
6__inference_batch_normalization_1_layer_call_fn_101895
6__inference_batch_normalization_1_layer_call_fn_101908і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
й2ж
?__inference_add_layer_call_and_return_conditional_losses_101914Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ќ2Ћ
$__inference_add_layer_call_fn_101920Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ў2’
O__inference_transformer_block_1_layer_call_and_return_conditional_losses_102068
O__inference_transformer_block_1_layer_call_and_return_conditional_losses_102195∞
І≤£
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
Ґ2Я
4__inference_transformer_block_1_layer_call_fn_102232
4__inference_transformer_block_1_layer_call_fn_102269∞
І≤£
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
н2к
C__inference_flatten_layer_call_and_return_conditional_losses_102275Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
“2ѕ
(__inference_flatten_layer_call_fn_102280Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
с2о
G__inference_concatenate_layer_call_and_return_conditional_losses_102287Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
÷2”
,__inference_concatenate_layer_call_fn_102293Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
н2к
C__inference_dense_4_layer_call_and_return_conditional_losses_102304Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
“2ѕ
(__inference_dense_4_layer_call_fn_102313Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
»2≈
E__inference_dropout_4_layer_call_and_return_conditional_losses_102330
E__inference_dropout_4_layer_call_and_return_conditional_losses_102325і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
Т2П
*__inference_dropout_4_layer_call_fn_102335
*__inference_dropout_4_layer_call_fn_102340і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
н2к
C__inference_dense_5_layer_call_and_return_conditional_losses_102351Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
“2ѕ
(__inference_dense_5_layer_call_fn_102360Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
»2≈
E__inference_dropout_5_layer_call_and_return_conditional_losses_102372
E__inference_dropout_5_layer_call_and_return_conditional_losses_102377і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
Т2П
*__inference_dropout_5_layer_call_fn_102387
*__inference_dropout_5_layer_call_fn_102382і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
н2к
C__inference_dense_6_layer_call_and_return_conditional_losses_102397Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
“2ѕ
(__inference_dense_6_layer_call_fn_102406Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
“Bѕ
$__inference_signature_wrapper_100788input_1input_2"Ф
Н≤Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
В2€ь
у≤п
FullArgSpece
args]ЪZ
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
varargs
 
varkw
 
defaultsЪ

 

 
p 
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
В2€ь
у≤п
FullArgSpece
args]ЪZ
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
varargs
 
varkw
 
defaultsЪ

 

 
p 
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
м2й
H__inference_sequential_1_layer_call_and_return_conditional_losses_102520
H__inference_sequential_1_layer_call_and_return_conditional_losses_102463
G__inference_sequential_1_layer_call_and_return_conditional_losses_99330
G__inference_sequential_1_layer_call_and_return_conditional_losses_99344ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
А2э
,__inference_sequential_1_layer_call_fn_99399
-__inference_sequential_1_layer_call_fn_102533
,__inference_sequential_1_layer_call_fn_99372
-__inference_sequential_1_layer_call_fn_102546ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ї2Јі
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
Ї2Јі
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
Ї2Јі
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
Ї2Јі
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
µ2≤ѓ
¶≤Ґ
FullArgSpec%
argsЪ
jself
jinputs
jmask
varargs
 
varkw
 
defaultsҐ

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
µ2≤ѓ
¶≤Ґ
FullArgSpec%
argsЪ
jself
jinputs
jmask
varargs
 
varkw
 
defaultsҐ

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ї2Јі
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
Ї2Јі
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
н2к
C__inference_dense_2_layer_call_and_return_conditional_losses_102577Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
“2ѕ
(__inference_dense_2_layer_call_fn_102586Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
н2к
C__inference_dense_3_layer_call_and_return_conditional_losses_102616Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
“2ѕ
(__inference_dense_3_layer_call_fn_102625Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 й
 __inference__wrapped_model_98907ƒ4~ !*+<9;:EBDCАБВГДЕЖЗМНИЙКЛОП`ajktuYҐV
OҐL
JЪG
"К
input_1€€€€€€€€€ДR
!К
input_2€€€€€€€€€
™ "1™.
,
dense_6!К
dense_6€€€€€€€€€”
?__inference_add_layer_call_and_return_conditional_losses_101914ПbҐ_
XҐU
SЪP
&К#
inputs/0€€€€€€€€€# 
&К#
inputs/1€€€€€€€€€# 
™ ")Ґ&
К
0€€€€€€€€€# 
Ъ Ђ
$__inference_add_layer_call_fn_101920ВbҐ_
XҐU
SЪP
&К#
inputs/0€€€€€€€€€# 
&К#
inputs/1€€€€€€€€€# 
™ "К€€€€€€€€€# „
N__inference_average_pooling1d_1_layer_call_and_return_conditional_losses_98931ДEҐB
;Ґ8
6К3
inputs'€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";Ґ8
1К.
0'€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ Ѓ
3__inference_average_pooling1d_1_layer_call_fn_98937wEҐB
;Ґ8
6К3
inputs'€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ".К+'€€€€€€€€€€€€€€€€€€€€€€€€€€€„
N__inference_average_pooling1d_2_layer_call_and_return_conditional_losses_98946ДEҐB
;Ґ8
6К3
inputs'€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";Ґ8
1К.
0'€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ Ѓ
3__inference_average_pooling1d_2_layer_call_fn_98952wEҐB
;Ґ8
6К3
inputs'€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ".К+'€€€€€€€€€€€€€€€€€€€€€€€€€€€’
L__inference_average_pooling1d_layer_call_and_return_conditional_losses_98916ДEҐB
;Ґ8
6К3
inputs'€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";Ґ8
1К.
0'€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ђ
1__inference_average_pooling1d_layer_call_fn_98922wEҐB
;Ґ8
6К3
inputs'€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ".К+'€€€€€€€€€€€€€€€€€€€€€€€€€€€њ
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_101780jDEBC7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€# 
p
™ ")Ґ&
К
0€€€€€€€€€# 
Ъ њ
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_101800jEBDC7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€# 
p 
™ ")Ґ&
К
0€€€€€€€€€# 
Ъ —
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_101862|DEBC@Ґ=
6Ґ3
-К*
inputs€€€€€€€€€€€€€€€€€€ 
p
™ "2Ґ/
(К%
0€€€€€€€€€€€€€€€€€€ 
Ъ —
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_101882|EBDC@Ґ=
6Ґ3
-К*
inputs€€€€€€€€€€€€€€€€€€ 
p 
™ "2Ґ/
(К%
0€€€€€€€€€€€€€€€€€€ 
Ъ Ч
6__inference_batch_normalization_1_layer_call_fn_101813]DEBC7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€# 
p
™ "К€€€€€€€€€# Ч
6__inference_batch_normalization_1_layer_call_fn_101826]EBDC7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€# 
p 
™ "К€€€€€€€€€# ©
6__inference_batch_normalization_1_layer_call_fn_101895oDEBC@Ґ=
6Ґ3
-К*
inputs€€€€€€€€€€€€€€€€€€ 
p
™ "%К"€€€€€€€€€€€€€€€€€€ ©
6__inference_batch_normalization_1_layer_call_fn_101908oEBDC@Ґ=
6Ґ3
-К*
inputs€€€€€€€€€€€€€€€€€€ 
p 
™ "%К"€€€€€€€€€€€€€€€€€€ ѕ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_101616|;<9:@Ґ=
6Ґ3
-К*
inputs€€€€€€€€€€€€€€€€€€ 
p
™ "2Ґ/
(К%
0€€€€€€€€€€€€€€€€€€ 
Ъ ѕ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_101636|<9;:@Ґ=
6Ґ3
-К*
inputs€€€€€€€€€€€€€€€€€€ 
p 
™ "2Ґ/
(К%
0€€€€€€€€€€€€€€€€€€ 
Ъ љ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_101698j;<9:7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€# 
p
™ ")Ґ&
К
0€€€€€€€€€# 
Ъ љ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_101718j<9;:7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€# 
p 
™ ")Ґ&
К
0€€€€€€€€€# 
Ъ І
4__inference_batch_normalization_layer_call_fn_101649o;<9:@Ґ=
6Ґ3
-К*
inputs€€€€€€€€€€€€€€€€€€ 
p
™ "%К"€€€€€€€€€€€€€€€€€€ І
4__inference_batch_normalization_layer_call_fn_101662o<9;:@Ґ=
6Ґ3
-К*
inputs€€€€€€€€€€€€€€€€€€ 
p 
™ "%К"€€€€€€€€€€€€€€€€€€ Х
4__inference_batch_normalization_layer_call_fn_101731];<9:7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€# 
p
™ "К€€€€€€€€€# Х
4__inference_batch_normalization_layer_call_fn_101744]<9;:7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€# 
p 
™ "К€€€€€€€€€# —
G__inference_concatenate_layer_call_and_return_conditional_losses_102287Е[ҐX
QҐN
LЪI
#К 
inputs/0€€€€€€€€€а
"К
inputs/1€€€€€€€€€
™ "&Ґ#
К
0€€€€€€€€€и
Ъ ®
,__inference_concatenate_layer_call_fn_102293x[ҐX
QҐN
LЪI
#К 
inputs/0€€€€€€€€€а
"К
inputs/1€€€€€€€€€
™ "К€€€€€€€€€иЃ
D__inference_conv1d_1_layer_call_and_return_conditional_losses_101571f*+4Ґ1
*Ґ'
%К"
inputs€€€€€€€€€ё 
™ "*Ґ'
 К
0€€€€€€€€€ё 
Ъ Ж
)__inference_conv1d_1_layer_call_fn_101580Y*+4Ґ1
*Ґ'
%К"
inputs€€€€€€€€€ё 
™ "К€€€€€€€€€ё ђ
B__inference_conv1d_layer_call_and_return_conditional_losses_101546f !4Ґ1
*Ґ'
%К"
inputs€€€€€€€€€ДR 
™ "*Ґ'
 К
0€€€€€€€€€ДR 
Ъ Д
'__inference_conv1d_layer_call_fn_101555Y !4Ґ1
*Ґ'
%К"
inputs€€€€€€€€€ДR 
™ "К€€€€€€€€€ДR ≠
C__inference_dense_2_layer_call_and_return_conditional_losses_102577fИЙ3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€# 
™ ")Ґ&
К
0€€€€€€€€€#@
Ъ Е
(__inference_dense_2_layer_call_fn_102586YИЙ3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€# 
™ "К€€€€€€€€€#@≠
C__inference_dense_3_layer_call_and_return_conditional_losses_102616fКЛ3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€#@
™ ")Ґ&
К
0€€€€€€€€€# 
Ъ Е
(__inference_dense_3_layer_call_fn_102625YКЛ3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€#@
™ "К€€€€€€€€€# §
C__inference_dense_4_layer_call_and_return_conditional_losses_102304]`a0Ґ-
&Ґ#
!К
inputs€€€€€€€€€и
™ "%Ґ"
К
0€€€€€€€€€@
Ъ |
(__inference_dense_4_layer_call_fn_102313P`a0Ґ-
&Ґ#
!К
inputs€€€€€€€€€и
™ "К€€€€€€€€€@£
C__inference_dense_5_layer_call_and_return_conditional_losses_102351\jk/Ґ,
%Ґ"
 К
inputs€€€€€€€€€@
™ "%Ґ"
К
0€€€€€€€€€@
Ъ {
(__inference_dense_5_layer_call_fn_102360Ojk/Ґ,
%Ґ"
 К
inputs€€€€€€€€€@
™ "К€€€€€€€€€@£
C__inference_dense_6_layer_call_and_return_conditional_losses_102397\tu/Ґ,
%Ґ"
 К
inputs€€€€€€€€€@
™ "%Ґ"
К
0€€€€€€€€€
Ъ {
(__inference_dense_6_layer_call_fn_102406Otu/Ґ,
%Ґ"
 К
inputs€€€€€€€€€@
™ "К€€€€€€€€€•
E__inference_dropout_4_layer_call_and_return_conditional_losses_102325\3Ґ0
)Ґ&
 К
inputs€€€€€€€€€@
p
™ "%Ґ"
К
0€€€€€€€€€@
Ъ •
E__inference_dropout_4_layer_call_and_return_conditional_losses_102330\3Ґ0
)Ґ&
 К
inputs€€€€€€€€€@
p 
™ "%Ґ"
К
0€€€€€€€€€@
Ъ }
*__inference_dropout_4_layer_call_fn_102335O3Ґ0
)Ґ&
 К
inputs€€€€€€€€€@
p
™ "К€€€€€€€€€@}
*__inference_dropout_4_layer_call_fn_102340O3Ґ0
)Ґ&
 К
inputs€€€€€€€€€@
p 
™ "К€€€€€€€€€@•
E__inference_dropout_5_layer_call_and_return_conditional_losses_102372\3Ґ0
)Ґ&
 К
inputs€€€€€€€€€@
p
™ "%Ґ"
К
0€€€€€€€€€@
Ъ •
E__inference_dropout_5_layer_call_and_return_conditional_losses_102377\3Ґ0
)Ґ&
 К
inputs€€€€€€€€€@
p 
™ "%Ґ"
К
0€€€€€€€€€@
Ъ }
*__inference_dropout_5_layer_call_fn_102382O3Ґ0
)Ґ&
 К
inputs€€€€€€€€€@
p
™ "К€€€€€€€€€@}
*__inference_dropout_5_layer_call_fn_102387O3Ґ0
)Ґ&
 К
inputs€€€€€€€€€@
p 
™ "К€€€€€€€€€@§
C__inference_flatten_layer_call_and_return_conditional_losses_102275]3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€# 
™ "&Ґ#
К
0€€€€€€€€€а
Ъ |
(__inference_flatten_layer_call_fn_102280P3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€# 
™ "К€€€€€€€€€аЖ
A__inference_model_layer_call_and_return_conditional_losses_100263ј4~ !*+;<9:DEBCАБВГДЕЖЗМНИЙКЛОП`ajktuaҐ^
WҐT
JЪG
"К
input_1€€€€€€€€€ДR
!К
input_2€€€€€€€€€
p

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ Ж
A__inference_model_layer_call_and_return_conditional_losses_100357ј4~ !*+<9;:EBDCАБВГДЕЖЗМНИЙКЛОП`ajktuaҐ^
WҐT
JЪG
"К
input_1€€€€€€€€€ДR
!К
input_2€€€€€€€€€
p 

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ И
A__inference_model_layer_call_and_return_conditional_losses_101098¬4~ !*+;<9:DEBCАБВГДЕЖЗМНИЙКЛОП`ajktucҐ`
YҐV
LЪI
#К 
inputs/0€€€€€€€€€ДR
"К
inputs/1€€€€€€€€€
p

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ И
A__inference_model_layer_call_and_return_conditional_losses_101341¬4~ !*+<9;:EBDCАБВГДЕЖЗМНИЙКЛОП`ajktucҐ`
YҐV
LЪI
#К 
inputs/0€€€€€€€€€ДR
"К
inputs/1€€€€€€€€€
p 

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ ё
&__inference_model_layer_call_fn_100530≥4~ !*+;<9:DEBCАБВГДЕЖЗМНИЙКЛОП`ajktuaҐ^
WҐT
JЪG
"К
input_1€€€€€€€€€ДR
!К
input_2€€€€€€€€€
p

 
™ "К€€€€€€€€€ё
&__inference_model_layer_call_fn_100702≥4~ !*+<9;:EBDCАБВГДЕЖЗМНИЙКЛОП`ajktuaҐ^
WҐT
JЪG
"К
input_1€€€€€€€€€ДR
!К
input_2€€€€€€€€€
p 

 
™ "К€€€€€€€€€а
&__inference_model_layer_call_fn_101419µ4~ !*+;<9:DEBCАБВГДЕЖЗМНИЙКЛОП`ajktucҐ`
YҐV
LЪI
#К 
inputs/0€€€€€€€€€ДR
"К
inputs/1€€€€€€€€€
p

 
™ "К€€€€€€€€€а
&__inference_model_layer_call_fn_101497µ4~ !*+<9;:EBDCАБВГДЕЖЗМНИЙКЛОП`ajktucҐ`
YҐV
LЪI
#К 
inputs/0€€€€€€€€€ДR
"К
inputs/1€€€€€€€€€
p 

 
™ "К€€€€€€€€€Њ
H__inference_sequential_1_layer_call_and_return_conditional_losses_102463rИЙКЛ;Ґ8
1Ґ.
$К!
inputs€€€€€€€€€# 
p

 
™ ")Ґ&
К
0€€€€€€€€€# 
Ъ Њ
H__inference_sequential_1_layer_call_and_return_conditional_losses_102520rИЙКЛ;Ґ8
1Ґ.
$К!
inputs€€€€€€€€€# 
p 

 
™ ")Ґ&
К
0€€€€€€€€€# 
Ъ ƒ
G__inference_sequential_1_layer_call_and_return_conditional_losses_99330yИЙКЛBҐ?
8Ґ5
+К(
dense_2_input€€€€€€€€€# 
p

 
™ ")Ґ&
К
0€€€€€€€€€# 
Ъ ƒ
G__inference_sequential_1_layer_call_and_return_conditional_losses_99344yИЙКЛBҐ?
8Ґ5
+К(
dense_2_input€€€€€€€€€# 
p 

 
™ ")Ґ&
К
0€€€€€€€€€# 
Ъ Ц
-__inference_sequential_1_layer_call_fn_102533eИЙКЛ;Ґ8
1Ґ.
$К!
inputs€€€€€€€€€# 
p

 
™ "К€€€€€€€€€# Ц
-__inference_sequential_1_layer_call_fn_102546eИЙКЛ;Ґ8
1Ґ.
$К!
inputs€€€€€€€€€# 
p 

 
™ "К€€€€€€€€€# Ь
,__inference_sequential_1_layer_call_fn_99372lИЙКЛBҐ?
8Ґ5
+К(
dense_2_input€€€€€€€€€# 
p

 
™ "К€€€€€€€€€# Ь
,__inference_sequential_1_layer_call_fn_99399lИЙКЛBҐ?
8Ґ5
+К(
dense_2_input€€€€€€€€€# 
p 

 
™ "К€€€€€€€€€# ю
$__inference_signature_wrapper_100788’4~ !*+<9;:EBDCАБВГДЕЖЗМНИЙКЛОП`ajktujҐg
Ґ 
`™]
-
input_1"К
input_1€€€€€€€€€ДR
,
input_2!К
input_2€€€€€€€€€"1™.
,
dense_6!К
dense_6€€€€€€€€€є
X__inference_token_and_position_embedding_layer_call_and_return_conditional_losses_101521]~+Ґ(
!Ґ
К
x€€€€€€€€€ДR
™ "*Ґ'
 К
0€€€€€€€€€ДR 
Ъ С
=__inference_token_and_position_embedding_layer_call_fn_101530P~+Ґ(
!Ґ
К
x€€€€€€€€€ДR
™ "К€€€€€€€€€ДR Џ
O__inference_transformer_block_1_layer_call_and_return_conditional_losses_102068Ж АБВГДЕЖЗМНИЙКЛОП7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€# 
p
™ ")Ґ&
К
0€€€€€€€€€# 
Ъ Џ
O__inference_transformer_block_1_layer_call_and_return_conditional_losses_102195Ж АБВГДЕЖЗМНИЙКЛОП7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€# 
p 
™ ")Ґ&
К
0€€€€€€€€€# 
Ъ ±
4__inference_transformer_block_1_layer_call_fn_102232y АБВГДЕЖЗМНИЙКЛОП7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€# 
p
™ "К€€€€€€€€€# ±
4__inference_transformer_block_1_layer_call_fn_102269y АБВГДЕЖЗМНИЙКЛОП7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€# 
p 
™ "К€€€€€€€€€# 