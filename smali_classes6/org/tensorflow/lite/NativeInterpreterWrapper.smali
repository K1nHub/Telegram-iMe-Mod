.class final Lorg/tensorflow/lite/NativeInterpreterWrapper;
.super Ljava/lang/Object;
.source "NativeInterpreterWrapper.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field private final delegates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/tensorflow/lite/Delegate;",
            ">;"
        }
    .end annotation
.end field

.field private errorHandle:J

.field private inputTensors:[Lorg/tensorflow/lite/Tensor;

.field private inputsIndexes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private interpreterHandle:J

.field private isMemoryAllocated:Z

.field private modelByteBuffer:Ljava/nio/ByteBuffer;

.field private modelHandle:J

.field private outputTensors:[Lorg/tensorflow/lite/Tensor;

.field private outputsIndexes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 373
    invoke-static {}, Lorg/tensorflow/lite/TensorFlowLite;->init()Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lorg/tensorflow/lite/Interpreter$Options;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "modelPath",
            "options"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 333
    iput-boolean v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->isMemoryAllocated:Z

    .line 337
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->delegates:Ljava/util/List;

    const/16 v0, 0x200

    .line 40
    invoke-static {v0}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->createErrorReporter(I)J

    move-result-wide v2

    .line 41
    invoke-static {p1, v2, v3}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->createModel(Ljava/lang/String;J)J

    move-result-wide v4

    move-object v1, p0

    move-object v6, p2

    .line 42
    invoke-direct/range {v1 .. v6}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->init(JJLorg/tensorflow/lite/Interpreter$Options;)V

    return-void
.end method

.method constructor <init>(Ljava/nio/ByteBuffer;Lorg/tensorflow/lite/Interpreter$Options;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buffer",
            "options"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 333
    iput-boolean v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->isMemoryAllocated:Z

    .line 337
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->delegates:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 50
    instance-of v0, p1, Ljava/nio/MappedByteBuffer;

    if-nez v0, :cond_0

    .line 52
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 57
    :cond_0
    iput-object p1, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->modelByteBuffer:Ljava/nio/ByteBuffer;

    const/16 p1, 0x200

    .line 58
    invoke-static {p1}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->createErrorReporter(I)J

    move-result-wide v1

    .line 59
    iget-object p1, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->modelByteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {p1, v1, v2}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->createModelWithBuffer(Ljava/nio/ByteBuffer;J)J

    move-result-wide v3

    move-object v0, p0

    move-object v5, p2

    .line 60
    invoke-direct/range {v0 .. v5}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->init(JJLorg/tensorflow/lite/Interpreter$Options;)V

    return-void

    .line 53
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Model ByteBuffer should be either a MappedByteBuffer of the model file, or a direct ByteBuffer using ByteOrder.nativeOrder() which contains bytes of model content."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static native allocateTensors(JJ)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "interpreterHandle",
            "errorHandle"
        }
    .end annotation
.end method

.method private static native allowFp16PrecisionForFp32(JZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "interpreterHandle",
            "allow"
        }
    .end annotation
.end method

.method private static native applyDelegate(JJJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "interpreterHandle",
            "errorHandle",
            "delegateHandle"
        }
    .end annotation
.end method

.method private static native createErrorReporter(I)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation
.end method

.method private static native createInterpreter(JJI)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "modelHandle",
            "errorHandle",
            "numThreads"
        }
    .end annotation
.end method

.method private static native createModel(Ljava/lang/String;J)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "modelPathOrBuffer",
            "errorHandle"
        }
    .end annotation
.end method

.method private static native createModelWithBuffer(Ljava/nio/ByteBuffer;J)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "modelBuffer",
            "errorHandle"
        }
    .end annotation
.end method

.method private static native delete(JJJ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "errorHandle",
            "modelHandle",
            "interpreterHandle"
        }
    .end annotation
.end method

.method private static native getInputCount(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "interpreterHandle"
        }
    .end annotation
.end method

.method private static native getInputNames(J)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "interpreterHandle"
        }
    .end annotation
.end method

.method private static native getInputTensorIndex(JI)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "interpreterHandle",
            "inputIdx"
        }
    .end annotation
.end method

.method private static native getOutputCount(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "interpreterHandle"
        }
    .end annotation
.end method

.method private static native getOutputNames(J)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "interpreterHandle"
        }
    .end annotation
.end method

.method private static native getOutputTensorIndex(JI)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "interpreterHandle",
            "outputIdx"
        }
    .end annotation
.end method

.method private init(JJLorg/tensorflow/lite/Interpreter$Options;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "errorHandle",
            "modelHandle",
            "options"
        }
    .end annotation

    if-nez p5, :cond_0

    .line 65
    new-instance p5, Lorg/tensorflow/lite/Interpreter$Options;

    invoke-direct {p5}, Lorg/tensorflow/lite/Interpreter$Options;-><init>()V

    .line 67
    :cond_0
    iput-wide p1, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->errorHandle:J

    .line 68
    iput-wide p3, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->modelHandle:J

    .line 69
    iget v0, p5, Lorg/tensorflow/lite/Interpreter$Options;->numThreads:I

    invoke-static {p3, p4, p1, p2, v0}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->createInterpreter(JJI)J

    move-result-wide p3

    iput-wide p3, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->interpreterHandle:J

    .line 70
    invoke-static {p3, p4}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->getInputCount(J)I

    move-result p3

    new-array p3, p3, [Lorg/tensorflow/lite/Tensor;

    iput-object p3, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->inputTensors:[Lorg/tensorflow/lite/Tensor;

    .line 71
    iget-wide p3, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->interpreterHandle:J

    invoke-static {p3, p4}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->getOutputCount(J)I

    move-result p3

    new-array p3, p3, [Lorg/tensorflow/lite/Tensor;

    iput-object p3, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->outputTensors:[Lorg/tensorflow/lite/Tensor;

    .line 72
    iget-boolean p3, p5, Lorg/tensorflow/lite/Interpreter$Options;->useNNAPI:Z

    if-eqz p3, :cond_1

    .line 73
    invoke-virtual {p0, p3}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->setUseNNAPI(Z)V

    .line 75
    :cond_1
    iget-boolean p3, p5, Lorg/tensorflow/lite/Interpreter$Options;->allowFp16PrecisionForFp32:Z

    if-eqz p3, :cond_2

    .line 76
    invoke-virtual {p0, p3}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->setAllowFp16PrecisionForFp32(Z)V

    .line 78
    :cond_2
    iget-object p3, p5, Lorg/tensorflow/lite/Interpreter$Options;->delegates:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/tensorflow/lite/Delegate;

    .line 79
    iget-wide v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->interpreterHandle:J

    invoke-interface {p4}, Lorg/tensorflow/lite/Delegate;->getNativeHandle()J

    move-result-wide v4

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->applyDelegate(JJJ)V

    .line 80
    iget-object p5, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->delegates:Ljava/util/List;

    invoke-interface {p5, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 82
    :cond_3
    iget-wide p3, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->interpreterHandle:J

    invoke-static {p3, p4, p1, p2}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->allocateTensors(JJ)J

    const/4 p1, 0x1

    .line 83
    iput-boolean p1, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->isMemoryAllocated:Z

    return-void
.end method

.method private static native resizeInput(JJI[I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "interpreterHandle",
            "errorHandle",
            "inputIdx",
            "dims"
        }
    .end annotation
.end method

.method private static native run(JJ)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "interpreterHandle",
            "errorHandle"
        }
    .end annotation
.end method

.method private static native useNNAPI(JZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "interpreterHandle",
            "state"
        }
    .end annotation
.end method


# virtual methods
.method public close()V
    .locals 11

    const/4 v0, 0x0

    move v1, v0

    .line 90
    :goto_0
    iget-object v2, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->inputTensors:[Lorg/tensorflow/lite/Tensor;

    array-length v3, v2

    const/4 v4, 0x0

    if-ge v1, v3, :cond_1

    .line 91
    aget-object v3, v2, v1

    if-eqz v3, :cond_0

    .line 92
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/tensorflow/lite/Tensor;->close()V

    .line 93
    iget-object v2, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->inputTensors:[Lorg/tensorflow/lite/Tensor;

    aput-object v4, v2, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 96
    :goto_1
    iget-object v2, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->outputTensors:[Lorg/tensorflow/lite/Tensor;

    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 97
    aget-object v3, v2, v1

    if-eqz v3, :cond_2

    .line 98
    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/tensorflow/lite/Tensor;->close()V

    .line 99
    iget-object v2, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->outputTensors:[Lorg/tensorflow/lite/Tensor;

    aput-object v4, v2, v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 102
    :cond_3
    iget-wide v5, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->errorHandle:J

    iget-wide v7, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->modelHandle:J

    iget-wide v9, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->interpreterHandle:J

    invoke-static/range {v5 .. v10}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->delete(JJJ)V

    const-wide/16 v1, 0x0

    .line 103
    iput-wide v1, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->errorHandle:J

    .line 104
    iput-wide v1, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->modelHandle:J

    .line 105
    iput-wide v1, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->interpreterHandle:J

    .line 106
    iput-object v4, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->modelByteBuffer:Ljava/nio/ByteBuffer;

    .line 107
    iput-object v4, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->inputsIndexes:Ljava/util/Map;

    .line 108
    iput-object v4, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->outputsIndexes:Ljava/util/Map;

    .line 109
    iput-boolean v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->isMemoryAllocated:Z

    .line 110
    iget-object v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->delegates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method getInputIndex(Ljava/lang/String;)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->inputsIndexes:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 194
    iget-wide v2, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->interpreterHandle:J

    invoke-static {v2, v3}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->getInputNames(J)[Ljava/lang/String;

    move-result-object v0

    .line 195
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->inputsIndexes:Ljava/util/Map;

    if-eqz v0, :cond_0

    move v2, v1

    .line 197
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 198
    iget-object v3, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->inputsIndexes:Ljava/util/Map;

    aget-object v4, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 202
    :cond_0
    iget-object v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->inputsIndexes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->inputsIndexes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 205
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    iget-object p1, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->inputsIndexes:Ljava/util/Map;

    .line 209
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v2, v1

    const-string p1, "Input error: \'%s\' is not a valid name for any input. Names of inputs and their indexes are %s"

    .line 206
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getInputTensor(I)Lorg/tensorflow/lite/Tensor;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    if-ltz p1, :cond_1

    .line 272
    iget-object v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->inputTensors:[Lorg/tensorflow/lite/Tensor;

    array-length v1, v0

    if-ge p1, v1, :cond_1

    .line 275
    aget-object v1, v0, p1

    if-nez v1, :cond_0

    .line 277
    iget-wide v1, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->interpreterHandle:J

    .line 279
    invoke-static {v1, v2, p1}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->getInputTensorIndex(JI)I

    move-result v3

    invoke-static {v1, v2, v3}, Lorg/tensorflow/lite/Tensor;->fromIndex(JI)Lorg/tensorflow/lite/Tensor;

    move-result-object v1

    aput-object v1, v0, p1

    :cond_0
    return-object v1

    .line 273
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid input Tensor index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getOutputIndex(Ljava/lang/String;)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->outputsIndexes:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 216
    iget-wide v2, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->interpreterHandle:J

    invoke-static {v2, v3}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->getOutputNames(J)[Ljava/lang/String;

    move-result-object v0

    .line 217
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->outputsIndexes:Ljava/util/Map;

    if-eqz v0, :cond_0

    move v2, v1

    .line 219
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 220
    iget-object v3, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->outputsIndexes:Ljava/util/Map;

    aget-object v4, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 224
    :cond_0
    iget-object v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->outputsIndexes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    iget-object v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->outputsIndexes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 227
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    iget-object p1, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->outputsIndexes:Ljava/util/Map;

    .line 231
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v2, v1

    const-string p1, "Input error: \'%s\' is not a valid name for any output. Names of outputs and their indexes are %s"

    .line 228
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getOutputTensor(I)Lorg/tensorflow/lite/Tensor;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    if-ltz p1, :cond_1

    .line 295
    iget-object v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->outputTensors:[Lorg/tensorflow/lite/Tensor;

    array-length v1, v0

    if-ge p1, v1, :cond_1

    .line 298
    aget-object v1, v0, p1

    if-nez v1, :cond_0

    .line 300
    iget-wide v1, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->interpreterHandle:J

    .line 302
    invoke-static {v1, v2, p1}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->getOutputTensorIndex(JI)I

    move-result v3

    invoke-static {v1, v2, v3}, Lorg/tensorflow/lite/Tensor;->fromIndex(JI)Lorg/tensorflow/lite/Tensor;

    move-result-object v1

    aput-object v1, v0, p1

    :cond_0
    return-object v1

    .line 296
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid output Tensor index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method resizeInput(I[I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "idx",
            "dims"
        }
    .end annotation

    .line 168
    iget-wide v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->interpreterHandle:J

    iget-wide v2, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->errorHandle:J

    move v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->resizeInput(JJI[I)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 169
    iput-boolean p2, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->isMemoryAllocated:Z

    .line 170
    iget-object p2, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->inputTensors:[Lorg/tensorflow/lite/Tensor;

    aget-object v0, p2, p1

    if-eqz v0, :cond_0

    .line 171
    aget-object p1, p2, p1

    invoke-virtual {p1}, Lorg/tensorflow/lite/Tensor;->refreshShape()V

    :cond_0
    return-void
.end method

.method run([Ljava/lang/Object;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inputs",
            "outputs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_8

    .line 116
    array-length v0, p1

    if-eqz v0, :cond_8

    if-eqz p2, :cond_7

    .line 119
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    move v1, v0

    .line 126
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 127
    invoke-virtual {p0, v1}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->getInputTensor(I)Lorg/tensorflow/lite/Tensor;

    move-result-object v2

    .line 128
    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Lorg/tensorflow/lite/Tensor;->getInputShapeIfDifferent(Ljava/lang/Object;)[I

    move-result-object v2

    if-eqz v2, :cond_0

    .line 130
    invoke-virtual {p0, v1, v2}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->resizeInput(I[I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 134
    :cond_1
    iget-boolean v1, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->isMemoryAllocated:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_2

    .line 136
    iget-wide v3, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->interpreterHandle:J

    iget-wide v5, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->errorHandle:J

    invoke-static {v3, v4, v5, v6}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->allocateTensors(JJ)J

    .line 137
    iput-boolean v2, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->isMemoryAllocated:Z

    :cond_2
    move v2, v0

    .line 140
    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_3

    .line 141
    invoke-virtual {p0, v2}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->getInputTensor(I)Lorg/tensorflow/lite/Tensor;

    move-result-object v3

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Lorg/tensorflow/lite/Tensor;->setTo(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 144
    :cond_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 145
    iget-wide v2, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->interpreterHandle:J

    iget-wide v4, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->errorHandle:J

    invoke-static {v2, v3, v4, v5}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->run(JJ)Z

    .line 146
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    if-eqz v1, :cond_5

    .line 150
    :goto_2
    iget-object p1, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->outputTensors:[Lorg/tensorflow/lite/Tensor;

    array-length v1, p1

    if-ge v0, v1, :cond_5

    .line 151
    aget-object v1, p1, v0

    if-eqz v1, :cond_4

    .line 152
    aget-object p1, p1, v0

    invoke-virtual {p1}, Lorg/tensorflow/lite/Tensor;->refreshShape()V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 156
    :cond_5
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 157
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->getOutputTensor(I)Lorg/tensorflow/lite/Tensor;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/tensorflow/lite/Tensor;->copyTo(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    return-void

    .line 120
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Input error: Outputs should not be null or empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 117
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Input error: Inputs should not be null or empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setAllowFp16PrecisionForFp32(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allow"
        }
    .end annotation

    .line 184
    iget-wide v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->interpreterHandle:J

    invoke-static {v0, v1, p1}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->allowFp16PrecisionForFp32(JZ)V

    return-void
.end method

.method setUseNNAPI(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "useNNAPI"
        }
    .end annotation

    .line 180
    iget-wide v0, p0, Lorg/tensorflow/lite/NativeInterpreterWrapper;->interpreterHandle:J

    invoke-static {v0, v1, p1}, Lorg/tensorflow/lite/NativeInterpreterWrapper;->useNNAPI(JZ)V

    return-void
.end method
