??	
??
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
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
@
ReadVariableOp
resource
value"dtype"
dtypetype?
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
?
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
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.9.12v2.9.0-18-gd8ce9f9c3018??
?
RMSprop/output/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*(
shared_nameRMSprop/output/bias/rms

+RMSprop/output/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/output/bias/rms*
_output_shapes
:	*
dtype0
?
RMSprop/output/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:	**
shared_nameRMSprop/output/kernel/rms
?
-RMSprop/output/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/output/kernel/rms*
_output_shapes

:	*
dtype0
~
RMSprop/h3/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameRMSprop/h3/bias/rms
w
'RMSprop/h3/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/h3/bias/rms*
_output_shapes
:*
dtype0
?
RMSprop/h3/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameRMSprop/h3/kernel/rms

)RMSprop/h3/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/h3/kernel/rms*
_output_shapes

:*
dtype0
~
RMSprop/h2/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameRMSprop/h2/bias/rms
w
'RMSprop/h2/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/h2/bias/rms*
_output_shapes
:*
dtype0
?
RMSprop/h2/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameRMSprop/h2/kernel/rms

)RMSprop/h2/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/h2/kernel/rms*
_output_shapes

:*
dtype0
~
RMSprop/h1/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameRMSprop/h1/bias/rms
w
'RMSprop/h1/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/h1/bias/rms*
_output_shapes
:*
dtype0
?
RMSprop/h1/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameRMSprop/h1/kernel/rms

)RMSprop/h1/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/h1/kernel/rms*
_output_shapes

:*
dtype0
~
RMSprop/h0/bias/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameRMSprop/h0/bias/rms
w
'RMSprop/h0/bias/rms/Read/ReadVariableOpReadVariableOpRMSprop/h0/bias/rms*
_output_shapes
:*
dtype0
?
RMSprop/h0/kernel/rmsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:	*&
shared_nameRMSprop/h0/kernel/rms

)RMSprop/h0/kernel/rms/Read/ReadVariableOpReadVariableOpRMSprop/h0/kernel/rms*
_output_shapes

:	*
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
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
j
RMSprop/rhoVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameRMSprop/rho
c
RMSprop/rho/Read/ReadVariableOpReadVariableOpRMSprop/rho*
_output_shapes
: *
dtype0
t
RMSprop/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameRMSprop/momentum
m
$RMSprop/momentum/Read/ReadVariableOpReadVariableOpRMSprop/momentum*
_output_shapes
: *
dtype0
~
RMSprop/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameRMSprop/learning_rate
w
)RMSprop/learning_rate/Read/ReadVariableOpReadVariableOpRMSprop/learning_rate*
_output_shapes
: *
dtype0
n
RMSprop/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameRMSprop/decay
g
!RMSprop/decay/Read/ReadVariableOpReadVariableOpRMSprop/decay*
_output_shapes
: *
dtype0
l
RMSprop/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_nameRMSprop/iter
e
 RMSprop/iter/Read/ReadVariableOpReadVariableOpRMSprop/iter*
_output_shapes
: *
dtype0	
n
output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*
shared_nameoutput/bias
g
output/bias/Read/ReadVariableOpReadVariableOpoutput/bias*
_output_shapes
:	*
dtype0
v
output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:	*
shared_nameoutput/kernel
o
!output/kernel/Read/ReadVariableOpReadVariableOpoutput/kernel*
_output_shapes

:	*
dtype0
f
h3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	h3/bias
_
h3/bias/Read/ReadVariableOpReadVariableOph3/bias*
_output_shapes
:*
dtype0
n
	h3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_name	h3/kernel
g
h3/kernel/Read/ReadVariableOpReadVariableOp	h3/kernel*
_output_shapes

:*
dtype0
f
h2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	h2/bias
_
h2/bias/Read/ReadVariableOpReadVariableOph2/bias*
_output_shapes
:*
dtype0
n
	h2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_name	h2/kernel
g
h2/kernel/Read/ReadVariableOpReadVariableOp	h2/kernel*
_output_shapes

:*
dtype0
f
h1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	h1/bias
_
h1/bias/Read/ReadVariableOpReadVariableOph1/bias*
_output_shapes
:*
dtype0
n
	h1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_name	h1/kernel
g
h1/kernel/Read/ReadVariableOpReadVariableOp	h1/kernel*
_output_shapes

:*
dtype0
f
h0/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	h0/bias
_
h0/bias/Read/ReadVariableOpReadVariableOph0/bias*
_output_shapes
:*
dtype0
n
	h0/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:	*
shared_name	h0/kernel
g
h0/kernel/Read/ReadVariableOpReadVariableOp	h0/kernel*
_output_shapes

:	*
dtype0

NoOpNoOp
?L
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?K
value?KB?K B?K
?
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
	layer-8

layer_with_weights-4

layer-9
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
* 
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias*
?
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses
"_random_generator* 
?
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses

)kernel
*bias*
?
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses
1_random_generator* 
?
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses

8kernel
9bias*
?
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses
@_random_generator* 
?
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses

Gkernel
Hbias*
?
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses
O_random_generator* 
?
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses

Vkernel
Wbias*
J
0
1
)2
*3
84
95
G6
H7
V8
W9*
J
0
1
)2
*3
84
95
G6
H7
V8
W9*
* 
?
Xnon_trainable_variables

Ylayers
Zmetrics
[layer_regularization_losses
\layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
]trace_0
^trace_1
_trace_2
`trace_3* 
6
atrace_0
btrace_1
ctrace_2
dtrace_3* 
* 
?
eiter
	fdecay
glearning_rate
hmomentum
irho
rms?
rms?
)rms?
*rms?
8rms?
9rms?
Grms?
Hrms?
Vrms?
Wrms?*

jserving_default* 

0
1*

0
1*
* 
?
knon_trainable_variables

llayers
mmetrics
nlayer_regularization_losses
olayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

ptrace_0* 

qtrace_0* 
YS
VARIABLE_VALUE	h0/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEh0/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
?
rnon_trainable_variables

slayers
tmetrics
ulayer_regularization_losses
vlayer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses* 

wtrace_0
xtrace_1* 

ytrace_0
ztrace_1* 
* 

)0
*1*

)0
*1*
* 
?
{non_trainable_variables

|layers
}metrics
~layer_regularization_losses
layer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
YS
VARIABLE_VALUE	h1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEh1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses* 

?trace_0
?trace_1* 

?trace_0
?trace_1* 
* 

80
91*

80
91*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
YS
VARIABLE_VALUE	h2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEh2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses* 

?trace_0
?trace_1* 

?trace_0
?trace_1* 
* 

G0
H1*

G0
H1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
YS
VARIABLE_VALUE	h3/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEh3/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses* 

?trace_0
?trace_1* 

?trace_0
?trace_1* 
* 

V0
W1*

V0
W1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
]W
VARIABLE_VALUEoutput/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEoutput/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
J
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
9*

?0
?1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
OI
VARIABLE_VALUERMSprop/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
QK
VARIABLE_VALUERMSprop/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUERMSprop/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUERMSprop/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUERMSprop/rho(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
?	variables
?	keras_api

?total

?count*
M
?	variables
?	keras_api

?total

?count
?
_fn_kwargs*

?0
?1*

?	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

?0
?1*

?	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
?}
VARIABLE_VALUERMSprop/h0/kernel/rmsTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUERMSprop/h0/bias/rmsRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUERMSprop/h1/kernel/rmsTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUERMSprop/h1/bias/rmsRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUERMSprop/h2/kernel/rmsTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUERMSprop/h2/bias/rmsRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUERMSprop/h3/kernel/rmsTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUERMSprop/h3/bias/rmsRlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUERMSprop/output/kernel/rmsTlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUERMSprop/output/bias/rmsRlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUE*
x
serving_default_inputPlaceholder*'
_output_shapes
:?????????	*
dtype0*
shape:?????????	
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input	h0/kernelh0/bias	h1/kernelh1/bias	h2/kernelh2/bias	h3/kernelh3/biasoutput/kerneloutput/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference_signature_wrapper_756094
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameh0/kernel/Read/ReadVariableOph0/bias/Read/ReadVariableOph1/kernel/Read/ReadVariableOph1/bias/Read/ReadVariableOph2/kernel/Read/ReadVariableOph2/bias/Read/ReadVariableOph3/kernel/Read/ReadVariableOph3/bias/Read/ReadVariableOp!output/kernel/Read/ReadVariableOpoutput/bias/Read/ReadVariableOp RMSprop/iter/Read/ReadVariableOp!RMSprop/decay/Read/ReadVariableOp)RMSprop/learning_rate/Read/ReadVariableOp$RMSprop/momentum/Read/ReadVariableOpRMSprop/rho/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp)RMSprop/h0/kernel/rms/Read/ReadVariableOp'RMSprop/h0/bias/rms/Read/ReadVariableOp)RMSprop/h1/kernel/rms/Read/ReadVariableOp'RMSprop/h1/bias/rms/Read/ReadVariableOp)RMSprop/h2/kernel/rms/Read/ReadVariableOp'RMSprop/h2/bias/rms/Read/ReadVariableOp)RMSprop/h3/kernel/rms/Read/ReadVariableOp'RMSprop/h3/bias/rms/Read/ReadVariableOp-RMSprop/output/kernel/rms/Read/ReadVariableOp+RMSprop/output/bias/rms/Read/ReadVariableOpConst**
Tin#
!2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *(
f#R!
__inference__traced_save_756576
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename	h0/kernelh0/bias	h1/kernelh1/bias	h2/kernelh2/bias	h3/kernelh3/biasoutput/kerneloutput/biasRMSprop/iterRMSprop/decayRMSprop/learning_rateRMSprop/momentumRMSprop/rhototal_1count_1totalcountRMSprop/h0/kernel/rmsRMSprop/h0/bias/rmsRMSprop/h1/kernel/rmsRMSprop/h1/bias/rmsRMSprop/h2/kernel/rmsRMSprop/h2/bias/rmsRMSprop/h3/kernel/rmsRMSprop/h3/bias/rmsRMSprop/output/kernel/rmsRMSprop/output/bias/rms*)
Tin"
 2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference__traced_restore_756673??
?

?
>__inference_h1_layer_call_and_return_conditional_losses_756325

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
_
A__inference_drop3_layer_call_and_return_conditional_losses_756434

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
#__inference_h3_layer_call_fn_756408

inputs
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_h3_layer_call_and_return_conditional_losses_755691o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
'__inference_DeepNN_layer_call_fn_756144

inputs
unknown:	
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:	
	unknown_8:	
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_DeepNN_layer_call_and_return_conditional_losses_755947o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????	: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
?+
?
B__inference_DeepNN_layer_call_and_return_conditional_losses_756187

inputs3
!h0_matmul_readvariableop_resource:	0
"h0_biasadd_readvariableop_resource:3
!h1_matmul_readvariableop_resource:0
"h1_biasadd_readvariableop_resource:3
!h2_matmul_readvariableop_resource:0
"h2_biasadd_readvariableop_resource:3
!h3_matmul_readvariableop_resource:0
"h3_biasadd_readvariableop_resource:7
%output_matmul_readvariableop_resource:	4
&output_biasadd_readvariableop_resource:	
identity??h0/BiasAdd/ReadVariableOp?h0/MatMul/ReadVariableOp?h1/BiasAdd/ReadVariableOp?h1/MatMul/ReadVariableOp?h2/BiasAdd/ReadVariableOp?h2/MatMul/ReadVariableOp?h3/BiasAdd/ReadVariableOp?h3/MatMul/ReadVariableOp?output/BiasAdd/ReadVariableOp?output/MatMul/ReadVariableOpz
h0/MatMul/ReadVariableOpReadVariableOp!h0_matmul_readvariableop_resource*
_output_shapes

:	*
dtype0o
	h0/MatMulMatMulinputs h0/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
h0/BiasAdd/ReadVariableOpReadVariableOp"h0_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0

h0/BiasAddBiasAddh0/MatMul:product:0!h0/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
h0/ReluReluh0/BiasAdd:output:0*
T0*'
_output_shapes
:?????????c
drop0/IdentityIdentityh0/Relu:activations:0*
T0*'
_output_shapes
:?????????z
h1/MatMul/ReadVariableOpReadVariableOp!h1_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
	h1/MatMulMatMuldrop0/Identity:output:0 h1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
h1/BiasAdd/ReadVariableOpReadVariableOp"h1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0

h1/BiasAddBiasAddh1/MatMul:product:0!h1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
h1/ReluReluh1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????c
drop1/IdentityIdentityh1/Relu:activations:0*
T0*'
_output_shapes
:?????????z
h2/MatMul/ReadVariableOpReadVariableOp!h2_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
	h2/MatMulMatMuldrop1/Identity:output:0 h2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
h2/BiasAdd/ReadVariableOpReadVariableOp"h2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0

h2/BiasAddBiasAddh2/MatMul:product:0!h2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
h2/ReluReluh2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????c
drop2/IdentityIdentityh2/Relu:activations:0*
T0*'
_output_shapes
:?????????z
h3/MatMul/ReadVariableOpReadVariableOp!h3_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
	h3/MatMulMatMuldrop2/Identity:output:0 h3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
h3/BiasAdd/ReadVariableOpReadVariableOp"h3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0

h3/BiasAddBiasAddh3/MatMul:product:0!h3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
h3/ReluReluh3/BiasAdd:output:0*
T0*'
_output_shapes
:?????????c
drop3/IdentityIdentityh3/Relu:activations:0*
T0*'
_output_shapes
:??????????
output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

:	*
dtype0?
output/MatMulMatMuldrop3/Identity:output:0$output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	?
output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0?
output/BiasAddBiasAddoutput/MatMul:product:0%output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	d
output/SigmoidSigmoidoutput/BiasAdd:output:0*
T0*'
_output_shapes
:?????????	a
IdentityIdentityoutput/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????	?
NoOpNoOp^h0/BiasAdd/ReadVariableOp^h0/MatMul/ReadVariableOp^h1/BiasAdd/ReadVariableOp^h1/MatMul/ReadVariableOp^h2/BiasAdd/ReadVariableOp^h2/MatMul/ReadVariableOp^h3/BiasAdd/ReadVariableOp^h3/MatMul/ReadVariableOp^output/BiasAdd/ReadVariableOp^output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????	: : : : : : : : : : 26
h0/BiasAdd/ReadVariableOph0/BiasAdd/ReadVariableOp24
h0/MatMul/ReadVariableOph0/MatMul/ReadVariableOp26
h1/BiasAdd/ReadVariableOph1/BiasAdd/ReadVariableOp24
h1/MatMul/ReadVariableOph1/MatMul/ReadVariableOp26
h2/BiasAdd/ReadVariableOph2/BiasAdd/ReadVariableOp24
h2/MatMul/ReadVariableOph2/MatMul/ReadVariableOp26
h3/BiasAdd/ReadVariableOph3/BiasAdd/ReadVariableOp24
h3/MatMul/ReadVariableOph3/MatMul/ReadVariableOp2>
output/BiasAdd/ReadVariableOpoutput/BiasAdd/ReadVariableOp2<
output/MatMul/ReadVariableOpoutput/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
_
A__inference_drop2_layer_call_and_return_conditional_losses_756387

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
_
&__inference_drop0_layer_call_fn_756288

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_drop0_layer_call_and_return_conditional_losses_755874o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
`
A__inference_drop3_layer_call_and_return_conditional_losses_756446

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
`
A__inference_drop0_layer_call_and_return_conditional_losses_755874

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
>__inference_h0_layer_call_and_return_conditional_losses_756278

inputs0
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
B
&__inference_drop3_layer_call_fn_756424

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_drop3_layer_call_and_return_conditional_losses_755702`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
_
&__inference_drop3_layer_call_fn_756429

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_drop3_layer_call_and_return_conditional_losses_755775o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?G
?
B__inference_DeepNN_layer_call_and_return_conditional_losses_756258

inputs3
!h0_matmul_readvariableop_resource:	0
"h0_biasadd_readvariableop_resource:3
!h1_matmul_readvariableop_resource:0
"h1_biasadd_readvariableop_resource:3
!h2_matmul_readvariableop_resource:0
"h2_biasadd_readvariableop_resource:3
!h3_matmul_readvariableop_resource:0
"h3_biasadd_readvariableop_resource:7
%output_matmul_readvariableop_resource:	4
&output_biasadd_readvariableop_resource:	
identity??h0/BiasAdd/ReadVariableOp?h0/MatMul/ReadVariableOp?h1/BiasAdd/ReadVariableOp?h1/MatMul/ReadVariableOp?h2/BiasAdd/ReadVariableOp?h2/MatMul/ReadVariableOp?h3/BiasAdd/ReadVariableOp?h3/MatMul/ReadVariableOp?output/BiasAdd/ReadVariableOp?output/MatMul/ReadVariableOpz
h0/MatMul/ReadVariableOpReadVariableOp!h0_matmul_readvariableop_resource*
_output_shapes

:	*
dtype0o
	h0/MatMulMatMulinputs h0/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
h0/BiasAdd/ReadVariableOpReadVariableOp"h0_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0

h0/BiasAddBiasAddh0/MatMul:product:0!h0/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
h0/ReluReluh0/BiasAdd:output:0*
T0*'
_output_shapes
:?????????X
drop0/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
drop0/dropout/MulMulh0/Relu:activations:0drop0/dropout/Const:output:0*
T0*'
_output_shapes
:?????????X
drop0/dropout/ShapeShapeh0/Relu:activations:0*
T0*
_output_shapes
:?
*drop0/dropout/random_uniform/RandomUniformRandomUniformdrop0/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype0a
drop0/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
drop0/dropout/GreaterEqualGreaterEqual3drop0/dropout/random_uniform/RandomUniform:output:0%drop0/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????{
drop0/dropout/CastCastdrop0/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????{
drop0/dropout/Mul_1Muldrop0/dropout/Mul:z:0drop0/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????z
h1/MatMul/ReadVariableOpReadVariableOp!h1_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
	h1/MatMulMatMuldrop0/dropout/Mul_1:z:0 h1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
h1/BiasAdd/ReadVariableOpReadVariableOp"h1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0

h1/BiasAddBiasAddh1/MatMul:product:0!h1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
h1/ReluReluh1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????X
drop1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
drop1/dropout/MulMulh1/Relu:activations:0drop1/dropout/Const:output:0*
T0*'
_output_shapes
:?????????X
drop1/dropout/ShapeShapeh1/Relu:activations:0*
T0*
_output_shapes
:?
*drop1/dropout/random_uniform/RandomUniformRandomUniformdrop1/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype0a
drop1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
drop1/dropout/GreaterEqualGreaterEqual3drop1/dropout/random_uniform/RandomUniform:output:0%drop1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????{
drop1/dropout/CastCastdrop1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????{
drop1/dropout/Mul_1Muldrop1/dropout/Mul:z:0drop1/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????z
h2/MatMul/ReadVariableOpReadVariableOp!h2_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
	h2/MatMulMatMuldrop1/dropout/Mul_1:z:0 h2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
h2/BiasAdd/ReadVariableOpReadVariableOp"h2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0

h2/BiasAddBiasAddh2/MatMul:product:0!h2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
h2/ReluReluh2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????X
drop2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
drop2/dropout/MulMulh2/Relu:activations:0drop2/dropout/Const:output:0*
T0*'
_output_shapes
:?????????X
drop2/dropout/ShapeShapeh2/Relu:activations:0*
T0*
_output_shapes
:?
*drop2/dropout/random_uniform/RandomUniformRandomUniformdrop2/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype0a
drop2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
drop2/dropout/GreaterEqualGreaterEqual3drop2/dropout/random_uniform/RandomUniform:output:0%drop2/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????{
drop2/dropout/CastCastdrop2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????{
drop2/dropout/Mul_1Muldrop2/dropout/Mul:z:0drop2/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????z
h3/MatMul/ReadVariableOpReadVariableOp!h3_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
	h3/MatMulMatMuldrop2/dropout/Mul_1:z:0 h3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
h3/BiasAdd/ReadVariableOpReadVariableOp"h3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0

h3/BiasAddBiasAddh3/MatMul:product:0!h3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
h3/ReluReluh3/BiasAdd:output:0*
T0*'
_output_shapes
:?????????X
drop3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
drop3/dropout/MulMulh3/Relu:activations:0drop3/dropout/Const:output:0*
T0*'
_output_shapes
:?????????X
drop3/dropout/ShapeShapeh3/Relu:activations:0*
T0*
_output_shapes
:?
*drop3/dropout/random_uniform/RandomUniformRandomUniformdrop3/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype0a
drop3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
drop3/dropout/GreaterEqualGreaterEqual3drop3/dropout/random_uniform/RandomUniform:output:0%drop3/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????{
drop3/dropout/CastCastdrop3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????{
drop3/dropout/Mul_1Muldrop3/dropout/Mul:z:0drop3/dropout/Cast:y:0*
T0*'
_output_shapes
:??????????
output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

:	*
dtype0?
output/MatMulMatMuldrop3/dropout/Mul_1:z:0$output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	?
output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0?
output/BiasAddBiasAddoutput/MatMul:product:0%output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	d
output/SigmoidSigmoidoutput/BiasAdd:output:0*
T0*'
_output_shapes
:?????????	a
IdentityIdentityoutput/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????	?
NoOpNoOp^h0/BiasAdd/ReadVariableOp^h0/MatMul/ReadVariableOp^h1/BiasAdd/ReadVariableOp^h1/MatMul/ReadVariableOp^h2/BiasAdd/ReadVariableOp^h2/MatMul/ReadVariableOp^h3/BiasAdd/ReadVariableOp^h3/MatMul/ReadVariableOp^output/BiasAdd/ReadVariableOp^output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????	: : : : : : : : : : 26
h0/BiasAdd/ReadVariableOph0/BiasAdd/ReadVariableOp24
h0/MatMul/ReadVariableOph0/MatMul/ReadVariableOp26
h1/BiasAdd/ReadVariableOph1/BiasAdd/ReadVariableOp24
h1/MatMul/ReadVariableOph1/MatMul/ReadVariableOp26
h2/BiasAdd/ReadVariableOph2/BiasAdd/ReadVariableOp24
h2/MatMul/ReadVariableOph2/MatMul/ReadVariableOp26
h3/BiasAdd/ReadVariableOph3/BiasAdd/ReadVariableOp24
h3/MatMul/ReadVariableOph3/MatMul/ReadVariableOp2>
output/BiasAdd/ReadVariableOpoutput/BiasAdd/ReadVariableOp2<
output/MatMul/ReadVariableOpoutput/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
_
A__inference_drop3_layer_call_and_return_conditional_losses_755702

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
_
A__inference_drop1_layer_call_and_return_conditional_losses_755654

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
#__inference_h1_layer_call_fn_756314

inputs
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_h1_layer_call_and_return_conditional_losses_755643o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
B__inference_output_layer_call_and_return_conditional_losses_756466

inputs0
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:	
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:	*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????	Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????	w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
>__inference_h2_layer_call_and_return_conditional_losses_755667

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
_
A__inference_drop0_layer_call_and_return_conditional_losses_756293

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
>__inference_h0_layer_call_and_return_conditional_losses_755619

inputs0
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
?#
?
B__inference_DeepNN_layer_call_and_return_conditional_losses_755722

inputs
	h0_755620:	
	h0_755622:
	h1_755644:
	h1_755646:
	h2_755668:
	h2_755670:
	h3_755692:
	h3_755694:
output_755716:	
output_755718:	
identity??h0/StatefulPartitionedCall?h1/StatefulPartitionedCall?h2/StatefulPartitionedCall?h3/StatefulPartitionedCall?output/StatefulPartitionedCall?
h0/StatefulPartitionedCallStatefulPartitionedCallinputs	h0_755620	h0_755622*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_h0_layer_call_and_return_conditional_losses_755619?
drop0/PartitionedCallPartitionedCall#h0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_drop0_layer_call_and_return_conditional_losses_755630?
h1/StatefulPartitionedCallStatefulPartitionedCalldrop0/PartitionedCall:output:0	h1_755644	h1_755646*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_h1_layer_call_and_return_conditional_losses_755643?
drop1/PartitionedCallPartitionedCall#h1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_drop1_layer_call_and_return_conditional_losses_755654?
h2/StatefulPartitionedCallStatefulPartitionedCalldrop1/PartitionedCall:output:0	h2_755668	h2_755670*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_h2_layer_call_and_return_conditional_losses_755667?
drop2/PartitionedCallPartitionedCall#h2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_drop2_layer_call_and_return_conditional_losses_755678?
h3/StatefulPartitionedCallStatefulPartitionedCalldrop2/PartitionedCall:output:0	h3_755692	h3_755694*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_h3_layer_call_and_return_conditional_losses_755691?
drop3/PartitionedCallPartitionedCall#h3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_drop3_layer_call_and_return_conditional_losses_755702?
output/StatefulPartitionedCallStatefulPartitionedCalldrop3/PartitionedCall:output:0output_755716output_755718*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_755715v
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????	?
NoOpNoOp^h0/StatefulPartitionedCall^h1/StatefulPartitionedCall^h2/StatefulPartitionedCall^h3/StatefulPartitionedCall^output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????	: : : : : : : : : : 28
h0/StatefulPartitionedCallh0/StatefulPartitionedCall28
h1/StatefulPartitionedCallh1/StatefulPartitionedCall28
h2/StatefulPartitionedCallh2/StatefulPartitionedCall28
h3/StatefulPartitionedCallh3/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
_
A__inference_drop1_layer_call_and_return_conditional_losses_756340

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
>__inference_h3_layer_call_and_return_conditional_losses_756419

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
`
A__inference_drop2_layer_call_and_return_conditional_losses_756399

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
B__inference_output_layer_call_and_return_conditional_losses_755715

inputs0
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:	
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:	*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????	Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????	w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
'__inference_DeepNN_layer_call_fn_756119

inputs
unknown:	
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:	
	unknown_8:	
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_DeepNN_layer_call_and_return_conditional_losses_755722o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????	: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
?)
?
B__inference_DeepNN_layer_call_and_return_conditional_losses_756061	
input
	h0_756031:	
	h0_756033:
	h1_756037:
	h1_756039:
	h2_756043:
	h2_756045:
	h3_756049:
	h3_756051:
output_756055:	
output_756057:	
identity??drop0/StatefulPartitionedCall?drop1/StatefulPartitionedCall?drop2/StatefulPartitionedCall?drop3/StatefulPartitionedCall?h0/StatefulPartitionedCall?h1/StatefulPartitionedCall?h2/StatefulPartitionedCall?h3/StatefulPartitionedCall?output/StatefulPartitionedCall?
h0/StatefulPartitionedCallStatefulPartitionedCallinput	h0_756031	h0_756033*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_h0_layer_call_and_return_conditional_losses_755619?
drop0/StatefulPartitionedCallStatefulPartitionedCall#h0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_drop0_layer_call_and_return_conditional_losses_755874?
h1/StatefulPartitionedCallStatefulPartitionedCall&drop0/StatefulPartitionedCall:output:0	h1_756037	h1_756039*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_h1_layer_call_and_return_conditional_losses_755643?
drop1/StatefulPartitionedCallStatefulPartitionedCall#h1/StatefulPartitionedCall:output:0^drop0/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_drop1_layer_call_and_return_conditional_losses_755841?
h2/StatefulPartitionedCallStatefulPartitionedCall&drop1/StatefulPartitionedCall:output:0	h2_756043	h2_756045*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_h2_layer_call_and_return_conditional_losses_755667?
drop2/StatefulPartitionedCallStatefulPartitionedCall#h2/StatefulPartitionedCall:output:0^drop1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_drop2_layer_call_and_return_conditional_losses_755808?
h3/StatefulPartitionedCallStatefulPartitionedCall&drop2/StatefulPartitionedCall:output:0	h3_756049	h3_756051*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_h3_layer_call_and_return_conditional_losses_755691?
drop3/StatefulPartitionedCallStatefulPartitionedCall#h3/StatefulPartitionedCall:output:0^drop2/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_drop3_layer_call_and_return_conditional_losses_755775?
output/StatefulPartitionedCallStatefulPartitionedCall&drop3/StatefulPartitionedCall:output:0output_756055output_756057*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_755715v
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????	?
NoOpNoOp^drop0/StatefulPartitionedCall^drop1/StatefulPartitionedCall^drop2/StatefulPartitionedCall^drop3/StatefulPartitionedCall^h0/StatefulPartitionedCall^h1/StatefulPartitionedCall^h2/StatefulPartitionedCall^h3/StatefulPartitionedCall^output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????	: : : : : : : : : : 2>
drop0/StatefulPartitionedCalldrop0/StatefulPartitionedCall2>
drop1/StatefulPartitionedCalldrop1/StatefulPartitionedCall2>
drop2/StatefulPartitionedCalldrop2/StatefulPartitionedCall2>
drop3/StatefulPartitionedCalldrop3/StatefulPartitionedCall28
h0/StatefulPartitionedCallh0/StatefulPartitionedCall28
h1/StatefulPartitionedCallh1/StatefulPartitionedCall28
h2/StatefulPartitionedCallh2/StatefulPartitionedCall28
h3/StatefulPartitionedCallh3/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:N J
'
_output_shapes
:?????????	

_user_specified_nameinput
?
?
#__inference_h0_layer_call_fn_756267

inputs
unknown:	
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_h0_layer_call_and_return_conditional_losses_755619o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????	: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
?	
`
A__inference_drop2_layer_call_and_return_conditional_losses_755808

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
`
A__inference_drop1_layer_call_and_return_conditional_losses_755841

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
#__inference_h2_layer_call_fn_756361

inputs
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_h2_layer_call_and_return_conditional_losses_755667o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
B
&__inference_drop1_layer_call_fn_756330

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_drop1_layer_call_and_return_conditional_losses_755654`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?=
?
__inference__traced_save_756576
file_prefix(
$savev2_h0_kernel_read_readvariableop&
"savev2_h0_bias_read_readvariableop(
$savev2_h1_kernel_read_readvariableop&
"savev2_h1_bias_read_readvariableop(
$savev2_h2_kernel_read_readvariableop&
"savev2_h2_bias_read_readvariableop(
$savev2_h3_kernel_read_readvariableop&
"savev2_h3_bias_read_readvariableop,
(savev2_output_kernel_read_readvariableop*
&savev2_output_bias_read_readvariableop+
'savev2_rmsprop_iter_read_readvariableop	,
(savev2_rmsprop_decay_read_readvariableop4
0savev2_rmsprop_learning_rate_read_readvariableop/
+savev2_rmsprop_momentum_read_readvariableop*
&savev2_rmsprop_rho_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop4
0savev2_rmsprop_h0_kernel_rms_read_readvariableop2
.savev2_rmsprop_h0_bias_rms_read_readvariableop4
0savev2_rmsprop_h1_kernel_rms_read_readvariableop2
.savev2_rmsprop_h1_bias_rms_read_readvariableop4
0savev2_rmsprop_h2_kernel_rms_read_readvariableop2
.savev2_rmsprop_h2_bias_rms_read_readvariableop4
0savev2_rmsprop_h3_kernel_rms_read_readvariableop2
.savev2_rmsprop_h3_bias_rms_read_readvariableop8
4savev2_rmsprop_output_kernel_rms_read_readvariableop6
2savev2_rmsprop_output_bias_rms_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*O
valueFBDB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0$savev2_h0_kernel_read_readvariableop"savev2_h0_bias_read_readvariableop$savev2_h1_kernel_read_readvariableop"savev2_h1_bias_read_readvariableop$savev2_h2_kernel_read_readvariableop"savev2_h2_bias_read_readvariableop$savev2_h3_kernel_read_readvariableop"savev2_h3_bias_read_readvariableop(savev2_output_kernel_read_readvariableop&savev2_output_bias_read_readvariableop'savev2_rmsprop_iter_read_readvariableop(savev2_rmsprop_decay_read_readvariableop0savev2_rmsprop_learning_rate_read_readvariableop+savev2_rmsprop_momentum_read_readvariableop&savev2_rmsprop_rho_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop0savev2_rmsprop_h0_kernel_rms_read_readvariableop.savev2_rmsprop_h0_bias_rms_read_readvariableop0savev2_rmsprop_h1_kernel_rms_read_readvariableop.savev2_rmsprop_h1_bias_rms_read_readvariableop0savev2_rmsprop_h2_kernel_rms_read_readvariableop.savev2_rmsprop_h2_bias_rms_read_readvariableop0savev2_rmsprop_h3_kernel_rms_read_readvariableop.savev2_rmsprop_h3_bias_rms_read_readvariableop4savev2_rmsprop_output_kernel_rms_read_readvariableop2savev2_rmsprop_output_bias_rms_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *,
dtypes"
 2	?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*?
_input_shapes?
?: :	::::::::	:	: : : : : : : : : :	::::::::	:	: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:	: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$	 

_output_shapes

:	: 


_output_shapes
:	:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:	: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:	: 

_output_shapes
:	:

_output_shapes
: 
?r
?
"__inference__traced_restore_756673
file_prefix,
assignvariableop_h0_kernel:	(
assignvariableop_1_h0_bias:.
assignvariableop_2_h1_kernel:(
assignvariableop_3_h1_bias:.
assignvariableop_4_h2_kernel:(
assignvariableop_5_h2_bias:.
assignvariableop_6_h3_kernel:(
assignvariableop_7_h3_bias:2
 assignvariableop_8_output_kernel:	,
assignvariableop_9_output_bias:	*
 assignvariableop_10_rmsprop_iter:	 +
!assignvariableop_11_rmsprop_decay: 3
)assignvariableop_12_rmsprop_learning_rate: .
$assignvariableop_13_rmsprop_momentum: )
assignvariableop_14_rmsprop_rho: %
assignvariableop_15_total_1: %
assignvariableop_16_count_1: #
assignvariableop_17_total: #
assignvariableop_18_count: ;
)assignvariableop_19_rmsprop_h0_kernel_rms:	5
'assignvariableop_20_rmsprop_h0_bias_rms:;
)assignvariableop_21_rmsprop_h1_kernel_rms:5
'assignvariableop_22_rmsprop_h1_bias_rms:;
)assignvariableop_23_rmsprop_h2_kernel_rms:5
'assignvariableop_24_rmsprop_h2_bias_rms:;
)assignvariableop_25_rmsprop_h3_kernel_rms:5
'assignvariableop_26_rmsprop_h3_bias_rms:?
-assignvariableop_27_rmsprop_output_kernel_rms:	9
+assignvariableop_28_rmsprop_output_bias_rms:	
identity_30??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/rms/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*O
valueFBDB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapesz
x::::::::::::::::::::::::::::::*,
dtypes"
 2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOpassignvariableop_h0_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOpassignvariableop_1_h0_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOpassignvariableop_2_h1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOpassignvariableop_3_h1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOpassignvariableop_4_h2_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOpassignvariableop_5_h2_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOpassignvariableop_6_h3_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOpassignvariableop_7_h3_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp assignvariableop_8_output_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOpassignvariableop_9_output_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp assignvariableop_10_rmsprop_iterIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp!assignvariableop_11_rmsprop_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp)assignvariableop_12_rmsprop_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp$assignvariableop_13_rmsprop_momentumIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOpassignvariableop_14_rmsprop_rhoIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOpassignvariableop_15_total_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOpassignvariableop_17_totalIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOpassignvariableop_18_countIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp)assignvariableop_19_rmsprop_h0_kernel_rmsIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp'assignvariableop_20_rmsprop_h0_bias_rmsIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp)assignvariableop_21_rmsprop_h1_kernel_rmsIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp'assignvariableop_22_rmsprop_h1_bias_rmsIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp)assignvariableop_23_rmsprop_h2_kernel_rmsIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOp'assignvariableop_24_rmsprop_h2_bias_rmsIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp)assignvariableop_25_rmsprop_h3_kernel_rmsIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp'assignvariableop_26_rmsprop_h3_bias_rmsIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOp-assignvariableop_27_rmsprop_output_kernel_rmsIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp+assignvariableop_28_rmsprop_output_bias_rmsIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_29Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_30IdentityIdentity_29:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_30Identity_30:output:0*O
_input_shapes>
<: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_28AssignVariableOp_282(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
_
&__inference_drop1_layer_call_fn_756335

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_drop1_layer_call_and_return_conditional_losses_755841o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
`
A__inference_drop1_layer_call_and_return_conditional_losses_756352

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
_
A__inference_drop0_layer_call_and_return_conditional_losses_755630

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
B
&__inference_drop0_layer_call_fn_756283

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_drop0_layer_call_and_return_conditional_losses_755630`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
>__inference_h1_layer_call_and_return_conditional_losses_755643

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?1
?
!__inference__wrapped_model_755601	
input:
(deepnn_h0_matmul_readvariableop_resource:	7
)deepnn_h0_biasadd_readvariableop_resource::
(deepnn_h1_matmul_readvariableop_resource:7
)deepnn_h1_biasadd_readvariableop_resource::
(deepnn_h2_matmul_readvariableop_resource:7
)deepnn_h2_biasadd_readvariableop_resource::
(deepnn_h3_matmul_readvariableop_resource:7
)deepnn_h3_biasadd_readvariableop_resource:>
,deepnn_output_matmul_readvariableop_resource:	;
-deepnn_output_biasadd_readvariableop_resource:	
identity?? DeepNN/h0/BiasAdd/ReadVariableOp?DeepNN/h0/MatMul/ReadVariableOp? DeepNN/h1/BiasAdd/ReadVariableOp?DeepNN/h1/MatMul/ReadVariableOp? DeepNN/h2/BiasAdd/ReadVariableOp?DeepNN/h2/MatMul/ReadVariableOp? DeepNN/h3/BiasAdd/ReadVariableOp?DeepNN/h3/MatMul/ReadVariableOp?$DeepNN/output/BiasAdd/ReadVariableOp?#DeepNN/output/MatMul/ReadVariableOp?
DeepNN/h0/MatMul/ReadVariableOpReadVariableOp(deepnn_h0_matmul_readvariableop_resource*
_output_shapes

:	*
dtype0|
DeepNN/h0/MatMulMatMulinput'DeepNN/h0/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 DeepNN/h0/BiasAdd/ReadVariableOpReadVariableOp)deepnn_h0_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
DeepNN/h0/BiasAddBiasAddDeepNN/h0/MatMul:product:0(DeepNN/h0/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d
DeepNN/h0/ReluReluDeepNN/h0/BiasAdd:output:0*
T0*'
_output_shapes
:?????????q
DeepNN/drop0/IdentityIdentityDeepNN/h0/Relu:activations:0*
T0*'
_output_shapes
:??????????
DeepNN/h1/MatMul/ReadVariableOpReadVariableOp(deepnn_h1_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
DeepNN/h1/MatMulMatMulDeepNN/drop0/Identity:output:0'DeepNN/h1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 DeepNN/h1/BiasAdd/ReadVariableOpReadVariableOp)deepnn_h1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
DeepNN/h1/BiasAddBiasAddDeepNN/h1/MatMul:product:0(DeepNN/h1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d
DeepNN/h1/ReluReluDeepNN/h1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????q
DeepNN/drop1/IdentityIdentityDeepNN/h1/Relu:activations:0*
T0*'
_output_shapes
:??????????
DeepNN/h2/MatMul/ReadVariableOpReadVariableOp(deepnn_h2_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
DeepNN/h2/MatMulMatMulDeepNN/drop1/Identity:output:0'DeepNN/h2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 DeepNN/h2/BiasAdd/ReadVariableOpReadVariableOp)deepnn_h2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
DeepNN/h2/BiasAddBiasAddDeepNN/h2/MatMul:product:0(DeepNN/h2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d
DeepNN/h2/ReluReluDeepNN/h2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????q
DeepNN/drop2/IdentityIdentityDeepNN/h2/Relu:activations:0*
T0*'
_output_shapes
:??????????
DeepNN/h3/MatMul/ReadVariableOpReadVariableOp(deepnn_h3_matmul_readvariableop_resource*
_output_shapes

:*
dtype0?
DeepNN/h3/MatMulMatMulDeepNN/drop2/Identity:output:0'DeepNN/h3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
 DeepNN/h3/BiasAdd/ReadVariableOpReadVariableOp)deepnn_h3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
DeepNN/h3/BiasAddBiasAddDeepNN/h3/MatMul:product:0(DeepNN/h3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????d
DeepNN/h3/ReluReluDeepNN/h3/BiasAdd:output:0*
T0*'
_output_shapes
:?????????q
DeepNN/drop3/IdentityIdentityDeepNN/h3/Relu:activations:0*
T0*'
_output_shapes
:??????????
#DeepNN/output/MatMul/ReadVariableOpReadVariableOp,deepnn_output_matmul_readvariableop_resource*
_output_shapes

:	*
dtype0?
DeepNN/output/MatMulMatMulDeepNN/drop3/Identity:output:0+DeepNN/output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	?
$DeepNN/output/BiasAdd/ReadVariableOpReadVariableOp-deepnn_output_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0?
DeepNN/output/BiasAddBiasAddDeepNN/output/MatMul:product:0,DeepNN/output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????	r
DeepNN/output/SigmoidSigmoidDeepNN/output/BiasAdd:output:0*
T0*'
_output_shapes
:?????????	h
IdentityIdentityDeepNN/output/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:?????????	?
NoOpNoOp!^DeepNN/h0/BiasAdd/ReadVariableOp ^DeepNN/h0/MatMul/ReadVariableOp!^DeepNN/h1/BiasAdd/ReadVariableOp ^DeepNN/h1/MatMul/ReadVariableOp!^DeepNN/h2/BiasAdd/ReadVariableOp ^DeepNN/h2/MatMul/ReadVariableOp!^DeepNN/h3/BiasAdd/ReadVariableOp ^DeepNN/h3/MatMul/ReadVariableOp%^DeepNN/output/BiasAdd/ReadVariableOp$^DeepNN/output/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????	: : : : : : : : : : 2D
 DeepNN/h0/BiasAdd/ReadVariableOp DeepNN/h0/BiasAdd/ReadVariableOp2B
DeepNN/h0/MatMul/ReadVariableOpDeepNN/h0/MatMul/ReadVariableOp2D
 DeepNN/h1/BiasAdd/ReadVariableOp DeepNN/h1/BiasAdd/ReadVariableOp2B
DeepNN/h1/MatMul/ReadVariableOpDeepNN/h1/MatMul/ReadVariableOp2D
 DeepNN/h2/BiasAdd/ReadVariableOp DeepNN/h2/BiasAdd/ReadVariableOp2B
DeepNN/h2/MatMul/ReadVariableOpDeepNN/h2/MatMul/ReadVariableOp2D
 DeepNN/h3/BiasAdd/ReadVariableOp DeepNN/h3/BiasAdd/ReadVariableOp2B
DeepNN/h3/MatMul/ReadVariableOpDeepNN/h3/MatMul/ReadVariableOp2L
$DeepNN/output/BiasAdd/ReadVariableOp$DeepNN/output/BiasAdd/ReadVariableOp2J
#DeepNN/output/MatMul/ReadVariableOp#DeepNN/output/MatMul/ReadVariableOp:N J
'
_output_shapes
:?????????	

_user_specified_nameinput
?	
`
A__inference_drop0_layer_call_and_return_conditional_losses_756305

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
_
A__inference_drop2_layer_call_and_return_conditional_losses_755678

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
>__inference_h3_layer_call_and_return_conditional_losses_755691

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?)
?
B__inference_DeepNN_layer_call_and_return_conditional_losses_755947

inputs
	h0_755917:	
	h0_755919:
	h1_755923:
	h1_755925:
	h2_755929:
	h2_755931:
	h3_755935:
	h3_755937:
output_755941:	
output_755943:	
identity??drop0/StatefulPartitionedCall?drop1/StatefulPartitionedCall?drop2/StatefulPartitionedCall?drop3/StatefulPartitionedCall?h0/StatefulPartitionedCall?h1/StatefulPartitionedCall?h2/StatefulPartitionedCall?h3/StatefulPartitionedCall?output/StatefulPartitionedCall?
h0/StatefulPartitionedCallStatefulPartitionedCallinputs	h0_755917	h0_755919*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_h0_layer_call_and_return_conditional_losses_755619?
drop0/StatefulPartitionedCallStatefulPartitionedCall#h0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_drop0_layer_call_and_return_conditional_losses_755874?
h1/StatefulPartitionedCallStatefulPartitionedCall&drop0/StatefulPartitionedCall:output:0	h1_755923	h1_755925*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_h1_layer_call_and_return_conditional_losses_755643?
drop1/StatefulPartitionedCallStatefulPartitionedCall#h1/StatefulPartitionedCall:output:0^drop0/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_drop1_layer_call_and_return_conditional_losses_755841?
h2/StatefulPartitionedCallStatefulPartitionedCall&drop1/StatefulPartitionedCall:output:0	h2_755929	h2_755931*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_h2_layer_call_and_return_conditional_losses_755667?
drop2/StatefulPartitionedCallStatefulPartitionedCall#h2/StatefulPartitionedCall:output:0^drop1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_drop2_layer_call_and_return_conditional_losses_755808?
h3/StatefulPartitionedCallStatefulPartitionedCall&drop2/StatefulPartitionedCall:output:0	h3_755935	h3_755937*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_h3_layer_call_and_return_conditional_losses_755691?
drop3/StatefulPartitionedCallStatefulPartitionedCall#h3/StatefulPartitionedCall:output:0^drop2/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_drop3_layer_call_and_return_conditional_losses_755775?
output/StatefulPartitionedCallStatefulPartitionedCall&drop3/StatefulPartitionedCall:output:0output_755941output_755943*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_755715v
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????	?
NoOpNoOp^drop0/StatefulPartitionedCall^drop1/StatefulPartitionedCall^drop2/StatefulPartitionedCall^drop3/StatefulPartitionedCall^h0/StatefulPartitionedCall^h1/StatefulPartitionedCall^h2/StatefulPartitionedCall^h3/StatefulPartitionedCall^output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????	: : : : : : : : : : 2>
drop0/StatefulPartitionedCalldrop0/StatefulPartitionedCall2>
drop1/StatefulPartitionedCalldrop1/StatefulPartitionedCall2>
drop2/StatefulPartitionedCalldrop2/StatefulPartitionedCall2>
drop3/StatefulPartitionedCalldrop3/StatefulPartitionedCall28
h0/StatefulPartitionedCallh0/StatefulPartitionedCall28
h1/StatefulPartitionedCallh1/StatefulPartitionedCall28
h2/StatefulPartitionedCallh2/StatefulPartitionedCall28
h3/StatefulPartitionedCallh3/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
?

?
'__inference_DeepNN_layer_call_fn_755995	
input
unknown:	
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:	
	unknown_8:	
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_DeepNN_layer_call_and_return_conditional_losses_755947o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????	: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:N J
'
_output_shapes
:?????????	

_user_specified_nameinput
?
B
&__inference_drop2_layer_call_fn_756377

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_drop2_layer_call_and_return_conditional_losses_755678`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
`
A__inference_drop3_layer_call_and_return_conditional_losses_755775

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
_
&__inference_drop2_layer_call_fn_756382

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_drop2_layer_call_and_return_conditional_losses_755808o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
$__inference_signature_wrapper_756094	
input
unknown:	
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:	
	unknown_8:	
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__wrapped_model_755601o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????	: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:N J
'
_output_shapes
:?????????	

_user_specified_nameinput
?

?
>__inference_h2_layer_call_and_return_conditional_losses_756372

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
'__inference_DeepNN_layer_call_fn_755745	
input
unknown:	
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:	
	unknown_8:	
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_DeepNN_layer_call_and_return_conditional_losses_755722o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????	: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:N J
'
_output_shapes
:?????????	

_user_specified_nameinput
?#
?
B__inference_DeepNN_layer_call_and_return_conditional_losses_756028	
input
	h0_755998:	
	h0_756000:
	h1_756004:
	h1_756006:
	h2_756010:
	h2_756012:
	h3_756016:
	h3_756018:
output_756022:	
output_756024:	
identity??h0/StatefulPartitionedCall?h1/StatefulPartitionedCall?h2/StatefulPartitionedCall?h3/StatefulPartitionedCall?output/StatefulPartitionedCall?
h0/StatefulPartitionedCallStatefulPartitionedCallinput	h0_755998	h0_756000*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_h0_layer_call_and_return_conditional_losses_755619?
drop0/PartitionedCallPartitionedCall#h0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_drop0_layer_call_and_return_conditional_losses_755630?
h1/StatefulPartitionedCallStatefulPartitionedCalldrop0/PartitionedCall:output:0	h1_756004	h1_756006*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_h1_layer_call_and_return_conditional_losses_755643?
drop1/PartitionedCallPartitionedCall#h1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_drop1_layer_call_and_return_conditional_losses_755654?
h2/StatefulPartitionedCallStatefulPartitionedCalldrop1/PartitionedCall:output:0	h2_756010	h2_756012*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_h2_layer_call_and_return_conditional_losses_755667?
drop2/PartitionedCallPartitionedCall#h2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_drop2_layer_call_and_return_conditional_losses_755678?
h3/StatefulPartitionedCallStatefulPartitionedCalldrop2/PartitionedCall:output:0	h3_756016	h3_756018*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *G
fBR@
>__inference_h3_layer_call_and_return_conditional_losses_755691?
drop3/PartitionedCallPartitionedCall#h3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *J
fERC
A__inference_drop3_layer_call_and_return_conditional_losses_755702?
output/StatefulPartitionedCallStatefulPartitionedCalldrop3/PartitionedCall:output:0output_756022output_756024*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_755715v
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????	?
NoOpNoOp^h0/StatefulPartitionedCall^h1/StatefulPartitionedCall^h2/StatefulPartitionedCall^h3/StatefulPartitionedCall^output/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':?????????	: : : : : : : : : : 28
h0/StatefulPartitionedCallh0/StatefulPartitionedCall28
h1/StatefulPartitionedCallh1/StatefulPartitionedCall28
h2/StatefulPartitionedCallh2/StatefulPartitionedCall28
h3/StatefulPartitionedCallh3/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall:N J
'
_output_shapes
:?????????	

_user_specified_nameinput
?
?
'__inference_output_layer_call_fn_756455

inputs
unknown:	
	unknown_0:	
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_755715o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
7
input.
serving_default_input:0?????????	:
output0
StatefulPartitionedCall:0?????????	tensorflow/serving/predict:??
?
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
	layer-8

layer_with_weights-4

layer-9
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_network
"
_tf_keras_input_layer
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
?
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses
"_random_generator"
_tf_keras_layer
?
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses

)kernel
*bias"
_tf_keras_layer
?
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses
1_random_generator"
_tf_keras_layer
?
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses

8kernel
9bias"
_tf_keras_layer
?
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses
@_random_generator"
_tf_keras_layer
?
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses

Gkernel
Hbias"
_tf_keras_layer
?
I	variables
Jtrainable_variables
Kregularization_losses
L	keras_api
M__call__
*N&call_and_return_all_conditional_losses
O_random_generator"
_tf_keras_layer
?
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses

Vkernel
Wbias"
_tf_keras_layer
f
0
1
)2
*3
84
95
G6
H7
V8
W9"
trackable_list_wrapper
f
0
1
)2
*3
84
95
G6
H7
V8
W9"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Xnon_trainable_variables

Ylayers
Zmetrics
[layer_regularization_losses
\layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?
]trace_0
^trace_1
_trace_2
`trace_32?
'__inference_DeepNN_layer_call_fn_755745
'__inference_DeepNN_layer_call_fn_756119
'__inference_DeepNN_layer_call_fn_756144
'__inference_DeepNN_layer_call_fn_755995?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z]trace_0z^trace_1z_trace_2z`trace_3
?
atrace_0
btrace_1
ctrace_2
dtrace_32?
B__inference_DeepNN_layer_call_and_return_conditional_losses_756187
B__inference_DeepNN_layer_call_and_return_conditional_losses_756258
B__inference_DeepNN_layer_call_and_return_conditional_losses_756028
B__inference_DeepNN_layer_call_and_return_conditional_losses_756061?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 zatrace_0zbtrace_1zctrace_2zdtrace_3
?B?
!__inference__wrapped_model_755601input"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?
eiter
	fdecay
glearning_rate
hmomentum
irho
rms?
rms?
)rms?
*rms?
8rms?
9rms?
Grms?
Hrms?
Vrms?
Wrms?"
	optimizer
,
jserving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
knon_trainable_variables

llayers
mmetrics
nlayer_regularization_losses
olayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?
ptrace_02?
#__inference_h0_layer_call_fn_756267?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 zptrace_0
?
qtrace_02?
>__inference_h0_layer_call_and_return_conditional_losses_756278?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 zqtrace_0
:	2	h0/kernel
:2h0/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
rnon_trainable_variables

slayers
tmetrics
ulayer_regularization_losses
vlayer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses"
_generic_user_object
?
wtrace_0
xtrace_12?
&__inference_drop0_layer_call_fn_756283
&__inference_drop0_layer_call_fn_756288?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 zwtrace_0zxtrace_1
?
ytrace_0
ztrace_12?
A__inference_drop0_layer_call_and_return_conditional_losses_756293
A__inference_drop0_layer_call_and_return_conditional_losses_756305?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 zytrace_0zztrace_1
"
_generic_user_object
.
)0
*1"
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
{non_trainable_variables

|layers
}metrics
~layer_regularization_losses
layer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
#__inference_h1_layer_call_fn_756314?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
>__inference_h1_layer_call_and_return_conditional_losses_756325?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
:2	h1/kernel
:2h1/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses"
_generic_user_object
?
?trace_0
?trace_12?
&__inference_drop1_layer_call_fn_756330
&__inference_drop1_layer_call_fn_756335?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
?
?trace_0
?trace_12?
A__inference_drop1_layer_call_and_return_conditional_losses_756340
A__inference_drop1_layer_call_and_return_conditional_losses_756352?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
"
_generic_user_object
.
80
91"
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
#__inference_h2_layer_call_fn_756361?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
>__inference_h2_layer_call_and_return_conditional_losses_756372?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
:2	h2/kernel
:2h2/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_0
?trace_12?
&__inference_drop2_layer_call_fn_756377
&__inference_drop2_layer_call_fn_756382?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
?
?trace_0
?trace_12?
A__inference_drop2_layer_call_and_return_conditional_losses_756387
A__inference_drop2_layer_call_and_return_conditional_losses_756399?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
"
_generic_user_object
.
G0
H1"
trackable_list_wrapper
.
G0
H1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
#__inference_h3_layer_call_fn_756408?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
>__inference_h3_layer_call_and_return_conditional_losses_756419?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
:2	h3/kernel
:2h3/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
I	variables
Jtrainable_variables
Kregularization_losses
M__call__
*N&call_and_return_all_conditional_losses
&N"call_and_return_conditional_losses"
_generic_user_object
?
?trace_0
?trace_12?
&__inference_drop3_layer_call_fn_756424
&__inference_drop3_layer_call_fn_756429?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
?
?trace_0
?trace_12?
A__inference_drop3_layer_call_and_return_conditional_losses_756434
A__inference_drop3_layer_call_and_return_conditional_losses_756446?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
"
_generic_user_object
.
V0
W1"
trackable_list_wrapper
.
V0
W1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
'__inference_output_layer_call_fn_756455?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
B__inference_output_layer_call_and_return_conditional_losses_756466?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
:	2output/kernel
:	2output/bias
 "
trackable_list_wrapper
f
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
9"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
'__inference_DeepNN_layer_call_fn_755745input"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
'__inference_DeepNN_layer_call_fn_756119inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
'__inference_DeepNN_layer_call_fn_756144inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
'__inference_DeepNN_layer_call_fn_755995input"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
B__inference_DeepNN_layer_call_and_return_conditional_losses_756187inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
B__inference_DeepNN_layer_call_and_return_conditional_losses_756258inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
B__inference_DeepNN_layer_call_and_return_conditional_losses_756028input"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
B__inference_DeepNN_layer_call_and_return_conditional_losses_756061input"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
:	 (2RMSprop/iter
: (2RMSprop/decay
: (2RMSprop/learning_rate
: (2RMSprop/momentum
: (2RMSprop/rho
?B?
$__inference_signature_wrapper_756094input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
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
?B?
#__inference_h0_layer_call_fn_756267inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
>__inference_h0_layer_call_and_return_conditional_losses_756278inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
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
?B?
&__inference_drop0_layer_call_fn_756283inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
&__inference_drop0_layer_call_fn_756288inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
A__inference_drop0_layer_call_and_return_conditional_losses_756293inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
A__inference_drop0_layer_call_and_return_conditional_losses_756305inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
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
?B?
#__inference_h1_layer_call_fn_756314inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
>__inference_h1_layer_call_and_return_conditional_losses_756325inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
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
?B?
&__inference_drop1_layer_call_fn_756330inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
&__inference_drop1_layer_call_fn_756335inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
A__inference_drop1_layer_call_and_return_conditional_losses_756340inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
A__inference_drop1_layer_call_and_return_conditional_losses_756352inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
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
?B?
#__inference_h2_layer_call_fn_756361inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
>__inference_h2_layer_call_and_return_conditional_losses_756372inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
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
?B?
&__inference_drop2_layer_call_fn_756377inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
&__inference_drop2_layer_call_fn_756382inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
A__inference_drop2_layer_call_and_return_conditional_losses_756387inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
A__inference_drop2_layer_call_and_return_conditional_losses_756399inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
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
?B?
#__inference_h3_layer_call_fn_756408inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
>__inference_h3_layer_call_and_return_conditional_losses_756419inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
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
?B?
&__inference_drop3_layer_call_fn_756424inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
&__inference_drop3_layer_call_fn_756429inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
A__inference_drop3_layer_call_and_return_conditional_losses_756434inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
A__inference_drop3_layer_call_and_return_conditional_losses_756446inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
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
?B?
'__inference_output_layer_call_fn_756455inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
B__inference_output_layer_call_and_return_conditional_losses_756466inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
R
?	variables
?	keras_api

?total

?count"
_tf_keras_metric
c
?	variables
?	keras_api

?total

?count
?
_fn_kwargs"
_tf_keras_metric
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
%:#	2RMSprop/h0/kernel/rms
:2RMSprop/h0/bias/rms
%:#2RMSprop/h1/kernel/rms
:2RMSprop/h1/bias/rms
%:#2RMSprop/h2/kernel/rms
:2RMSprop/h2/bias/rms
%:#2RMSprop/h3/kernel/rms
:2RMSprop/h3/bias/rms
):'	2RMSprop/output/kernel/rms
#:!	2RMSprop/output/bias/rms?
B__inference_DeepNN_layer_call_and_return_conditional_losses_756028k
)*89GHVW6?3
,?)
?
input?????????	
p 

 
? "%?"
?
0?????????	
? ?
B__inference_DeepNN_layer_call_and_return_conditional_losses_756061k
)*89GHVW6?3
,?)
?
input?????????	
p

 
? "%?"
?
0?????????	
? ?
B__inference_DeepNN_layer_call_and_return_conditional_losses_756187l
)*89GHVW7?4
-?*
 ?
inputs?????????	
p 

 
? "%?"
?
0?????????	
? ?
B__inference_DeepNN_layer_call_and_return_conditional_losses_756258l
)*89GHVW7?4
-?*
 ?
inputs?????????	
p

 
? "%?"
?
0?????????	
? ?
'__inference_DeepNN_layer_call_fn_755745^
)*89GHVW6?3
,?)
?
input?????????	
p 

 
? "??????????	?
'__inference_DeepNN_layer_call_fn_755995^
)*89GHVW6?3
,?)
?
input?????????	
p

 
? "??????????	?
'__inference_DeepNN_layer_call_fn_756119_
)*89GHVW7?4
-?*
 ?
inputs?????????	
p 

 
? "??????????	?
'__inference_DeepNN_layer_call_fn_756144_
)*89GHVW7?4
-?*
 ?
inputs?????????	
p

 
? "??????????	?
!__inference__wrapped_model_755601m
)*89GHVW.?+
$?!
?
input?????????	
? "/?,
*
output ?
output?????????	?
A__inference_drop0_layer_call_and_return_conditional_losses_756293\3?0
)?&
 ?
inputs?????????
p 
? "%?"
?
0?????????
? ?
A__inference_drop0_layer_call_and_return_conditional_losses_756305\3?0
)?&
 ?
inputs?????????
p
? "%?"
?
0?????????
? y
&__inference_drop0_layer_call_fn_756283O3?0
)?&
 ?
inputs?????????
p 
? "??????????y
&__inference_drop0_layer_call_fn_756288O3?0
)?&
 ?
inputs?????????
p
? "???????????
A__inference_drop1_layer_call_and_return_conditional_losses_756340\3?0
)?&
 ?
inputs?????????
p 
? "%?"
?
0?????????
? ?
A__inference_drop1_layer_call_and_return_conditional_losses_756352\3?0
)?&
 ?
inputs?????????
p
? "%?"
?
0?????????
? y
&__inference_drop1_layer_call_fn_756330O3?0
)?&
 ?
inputs?????????
p 
? "??????????y
&__inference_drop1_layer_call_fn_756335O3?0
)?&
 ?
inputs?????????
p
? "???????????
A__inference_drop2_layer_call_and_return_conditional_losses_756387\3?0
)?&
 ?
inputs?????????
p 
? "%?"
?
0?????????
? ?
A__inference_drop2_layer_call_and_return_conditional_losses_756399\3?0
)?&
 ?
inputs?????????
p
? "%?"
?
0?????????
? y
&__inference_drop2_layer_call_fn_756377O3?0
)?&
 ?
inputs?????????
p 
? "??????????y
&__inference_drop2_layer_call_fn_756382O3?0
)?&
 ?
inputs?????????
p
? "???????????
A__inference_drop3_layer_call_and_return_conditional_losses_756434\3?0
)?&
 ?
inputs?????????
p 
? "%?"
?
0?????????
? ?
A__inference_drop3_layer_call_and_return_conditional_losses_756446\3?0
)?&
 ?
inputs?????????
p
? "%?"
?
0?????????
? y
&__inference_drop3_layer_call_fn_756424O3?0
)?&
 ?
inputs?????????
p 
? "??????????y
&__inference_drop3_layer_call_fn_756429O3?0
)?&
 ?
inputs?????????
p
? "???????????
>__inference_h0_layer_call_and_return_conditional_losses_756278\/?,
%?"
 ?
inputs?????????	
? "%?"
?
0?????????
? v
#__inference_h0_layer_call_fn_756267O/?,
%?"
 ?
inputs?????????	
? "???????????
>__inference_h1_layer_call_and_return_conditional_losses_756325\)*/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? v
#__inference_h1_layer_call_fn_756314O)*/?,
%?"
 ?
inputs?????????
? "???????????
>__inference_h2_layer_call_and_return_conditional_losses_756372\89/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? v
#__inference_h2_layer_call_fn_756361O89/?,
%?"
 ?
inputs?????????
? "???????????
>__inference_h3_layer_call_and_return_conditional_losses_756419\GH/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????
? v
#__inference_h3_layer_call_fn_756408OGH/?,
%?"
 ?
inputs?????????
? "???????????
B__inference_output_layer_call_and_return_conditional_losses_756466\VW/?,
%?"
 ?
inputs?????????
? "%?"
?
0?????????	
? z
'__inference_output_layer_call_fn_756455OVW/?,
%?"
 ?
inputs?????????
? "??????????	?
$__inference_signature_wrapper_756094v
)*89GHVW7?4
? 
-?*
(
input?
input?????????	"/?,
*
output ?
output?????????	