.class public final Lwallet/core/jni/proto/NEO$TransactionPlan;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "NEO.java"

# interfaces
.implements Lwallet/core/jni/proto/NEO$TransactionPlanOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/NEO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TransactionPlan"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/NEO$TransactionPlan$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/NEO$TransactionPlan;",
        "Lwallet/core/jni/proto/NEO$TransactionPlan$Builder;",
        ">;",
        "Lwallet/core/jni/proto/NEO$TransactionPlanOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionPlan;

.field public static final ERROR_FIELD_NUMBER:I = 0x4

.field public static final FEE_FIELD_NUMBER:I = 0x3

.field public static final INPUTS_FIELD_NUMBER:I = 0x2

.field public static final OUTPUTS_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/NEO$TransactionPlan;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private error_:I

.field private fee_:J

.field private inputs_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lwallet/core/jni/proto/NEO$TransactionInput;",
            ">;"
        }
    .end annotation
.end field

.field private outputs_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lwallet/core/jni/proto/NEO$TransactionOutputPlan;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5265
    new-instance v0, Lwallet/core/jni/proto/NEO$TransactionPlan;

    invoke-direct {v0}, Lwallet/core/jni/proto/NEO$TransactionPlan;-><init>()V

    .line 5268
    sput-object v0, Lwallet/core/jni/proto/NEO$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionPlan;

    .line 5269
    const-class v1, Lwallet/core/jni/proto/NEO$TransactionPlan;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 4319
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 4320
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/NEO$TransactionPlan;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 4321
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/NEO$TransactionPlan;->inputs_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$7500()Lwallet/core/jni/proto/NEO$TransactionPlan;
    .locals 1

    .line 4314
    sget-object v0, Lwallet/core/jni/proto/NEO$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionPlan;

    return-object v0
.end method

.method static synthetic access$7600(Lwallet/core/jni/proto/NEO$TransactionPlan;ILwallet/core/jni/proto/NEO$TransactionOutputPlan;)V
    .locals 0

    .line 4314
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/NEO$TransactionPlan;->setOutputs(ILwallet/core/jni/proto/NEO$TransactionOutputPlan;)V

    return-void
.end method

.method static synthetic access$7700(Lwallet/core/jni/proto/NEO$TransactionPlan;Lwallet/core/jni/proto/NEO$TransactionOutputPlan;)V
    .locals 0

    .line 4314
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEO$TransactionPlan;->addOutputs(Lwallet/core/jni/proto/NEO$TransactionOutputPlan;)V

    return-void
.end method

.method static synthetic access$7800(Lwallet/core/jni/proto/NEO$TransactionPlan;ILwallet/core/jni/proto/NEO$TransactionOutputPlan;)V
    .locals 0

    .line 4314
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/NEO$TransactionPlan;->addOutputs(ILwallet/core/jni/proto/NEO$TransactionOutputPlan;)V

    return-void
.end method

.method static synthetic access$7900(Lwallet/core/jni/proto/NEO$TransactionPlan;Ljava/lang/Iterable;)V
    .locals 0

    .line 4314
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEO$TransactionPlan;->addAllOutputs(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$8000(Lwallet/core/jni/proto/NEO$TransactionPlan;)V
    .locals 0

    .line 4314
    invoke-direct {p0}, Lwallet/core/jni/proto/NEO$TransactionPlan;->clearOutputs()V

    return-void
.end method

.method static synthetic access$8100(Lwallet/core/jni/proto/NEO$TransactionPlan;I)V
    .locals 0

    .line 4314
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEO$TransactionPlan;->removeOutputs(I)V

    return-void
.end method

.method static synthetic access$8200(Lwallet/core/jni/proto/NEO$TransactionPlan;ILwallet/core/jni/proto/NEO$TransactionInput;)V
    .locals 0

    .line 4314
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/NEO$TransactionPlan;->setInputs(ILwallet/core/jni/proto/NEO$TransactionInput;)V

    return-void
.end method

.method static synthetic access$8300(Lwallet/core/jni/proto/NEO$TransactionPlan;Lwallet/core/jni/proto/NEO$TransactionInput;)V
    .locals 0

    .line 4314
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEO$TransactionPlan;->addInputs(Lwallet/core/jni/proto/NEO$TransactionInput;)V

    return-void
.end method

.method static synthetic access$8400(Lwallet/core/jni/proto/NEO$TransactionPlan;ILwallet/core/jni/proto/NEO$TransactionInput;)V
    .locals 0

    .line 4314
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/NEO$TransactionPlan;->addInputs(ILwallet/core/jni/proto/NEO$TransactionInput;)V

    return-void
.end method

.method static synthetic access$8500(Lwallet/core/jni/proto/NEO$TransactionPlan;Ljava/lang/Iterable;)V
    .locals 0

    .line 4314
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEO$TransactionPlan;->addAllInputs(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$8600(Lwallet/core/jni/proto/NEO$TransactionPlan;)V
    .locals 0

    .line 4314
    invoke-direct {p0}, Lwallet/core/jni/proto/NEO$TransactionPlan;->clearInputs()V

    return-void
.end method

.method static synthetic access$8700(Lwallet/core/jni/proto/NEO$TransactionPlan;I)V
    .locals 0

    .line 4314
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEO$TransactionPlan;->removeInputs(I)V

    return-void
.end method

.method static synthetic access$8800(Lwallet/core/jni/proto/NEO$TransactionPlan;J)V
    .locals 0

    .line 4314
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/NEO$TransactionPlan;->setFee(J)V

    return-void
.end method

.method static synthetic access$8900(Lwallet/core/jni/proto/NEO$TransactionPlan;)V
    .locals 0

    .line 4314
    invoke-direct {p0}, Lwallet/core/jni/proto/NEO$TransactionPlan;->clearFee()V

    return-void
.end method

.method static synthetic access$9000(Lwallet/core/jni/proto/NEO$TransactionPlan;I)V
    .locals 0

    .line 4314
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEO$TransactionPlan;->setErrorValue(I)V

    return-void
.end method

.method static synthetic access$9100(Lwallet/core/jni/proto/NEO$TransactionPlan;Lwallet/core/jni/proto/Common$SigningError;)V
    .locals 0

    .line 4314
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEO$TransactionPlan;->setError(Lwallet/core/jni/proto/Common$SigningError;)V

    return-void
.end method

.method static synthetic access$9200(Lwallet/core/jni/proto/NEO$TransactionPlan;)V
    .locals 0

    .line 4314
    invoke-direct {p0}, Lwallet/core/jni/proto/NEO$TransactionPlan;->clearError()V

    return-void
.end method

.method private addAllInputs(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lwallet/core/jni/proto/NEO$TransactionInput;",
            ">;)V"
        }
    .end annotation

    .line 4573
    invoke-direct {p0}, Lwallet/core/jni/proto/NEO$TransactionPlan;->ensureInputsIsMutable()V

    .line 4574
    iget-object v0, p0, Lwallet/core/jni/proto/NEO$TransactionPlan;->inputs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllOutputs(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lwallet/core/jni/proto/NEO$TransactionOutputPlan;",
            ">;)V"
        }
    .end annotation

    .line 4435
    invoke-direct {p0}, Lwallet/core/jni/proto/NEO$TransactionPlan;->ensureOutputsIsMutable()V

    .line 4436
    iget-object v0, p0, Lwallet/core/jni/proto/NEO$TransactionPlan;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addInputs(ILwallet/core/jni/proto/NEO$TransactionInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 4560
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4561
    invoke-direct {p0}, Lwallet/core/jni/proto/NEO$TransactionPlan;->ensureInputsIsMutable()V

    .line 4562
    iget-object v0, p0, Lwallet/core/jni/proto/NEO$TransactionPlan;->inputs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addInputs(Lwallet/core/jni/proto/NEO$TransactionInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4547
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4548
    invoke-direct {p0}, Lwallet/core/jni/proto/NEO$TransactionPlan;->ensureInputsIsMutable()V

    .line 4549
    iget-object v0, p0, Lwallet/core/jni/proto/NEO$TransactionPlan;->inputs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addOutputs(ILwallet/core/jni/proto/NEO$TransactionOutputPlan;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 4422
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4423
    invoke-direct {p0}, Lwallet/core/jni/proto/NEO$TransactionPlan;->ensureOutputsIsMutable()V

    .line 4424
    iget-object v0, p0, Lwallet/core/jni/proto/NEO$TransactionPlan;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addOutputs(Lwallet/core/jni/proto/NEO$TransactionOutputPlan;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4409
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4410
    invoke-direct {p0}, Lwallet/core/jni/proto/NEO$TransactionPlan;->ensureOutputsIsMutable()V

    .line 4411
    iget-object v0, p0, Lwallet/core/jni/proto/NEO$TransactionPlan;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearError()V
    .locals 1

    const/4 v0, 0x0

    .line 4696
    iput v0, p0, Lwallet/core/jni/proto/NEO$TransactionPlan;->error_:I

    return-void
.end method

.method private clearFee()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 4634
    iput-wide v0, p0, Lwallet/core/jni/proto/NEO$TransactionPlan;->fee_:J

    return-void
.end method

.method private clearInputs()V
    .locals 1

    .line 4585
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/NEO$TransactionPlan;->inputs_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearOutputs()V
    .locals 1

    .line 4447
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/NEO$TransactionPlan;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureInputsIsMutable()V
    .locals 2

    .line 4519
    iget-object v0, p0, Lwallet/core/jni/proto/NEO$TransactionPlan;->inputs_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 4520
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4522
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/NEO$TransactionPlan;->inputs_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureOutputsIsMutable()V
    .locals 2

    .line 4381
    iget-object v0, p0, Lwallet/core/jni/proto/NEO$TransactionPlan;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 4382
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4384
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/NEO$TransactionPlan;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/NEO$TransactionPlan;
    .locals 1

    .line 5274
    sget-object v0, Lwallet/core/jni/proto/NEO$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionPlan;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/NEO$TransactionPlan$Builder;
    .locals 1

    .line 4774
    sget-object v0, Lwallet/core/jni/proto/NEO$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionPlan;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/NEO$TransactionPlan$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/NEO$TransactionPlan;)Lwallet/core/jni/proto/NEO$TransactionPlan$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 4777
    sget-object v0, Lwallet/core/jni/proto/NEO$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionPlan;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$TransactionPlan$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/NEO$TransactionPlan;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4751
    sget-object v0, Lwallet/core/jni/proto/NEO$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionPlan;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$TransactionPlan;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEO$TransactionPlan;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4757
    sget-object v0, Lwallet/core/jni/proto/NEO$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionPlan;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$TransactionPlan;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/NEO$TransactionPlan;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4715
    sget-object v0, Lwallet/core/jni/proto/NEO$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionPlan;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$TransactionPlan;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEO$TransactionPlan;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4722
    sget-object v0, Lwallet/core/jni/proto/NEO$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionPlan;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$TransactionPlan;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/NEO$TransactionPlan;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4762
    sget-object v0, Lwallet/core/jni/proto/NEO$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionPlan;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$TransactionPlan;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEO$TransactionPlan;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4769
    sget-object v0, Lwallet/core/jni/proto/NEO$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionPlan;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$TransactionPlan;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/NEO$TransactionPlan;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4739
    sget-object v0, Lwallet/core/jni/proto/NEO$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionPlan;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$TransactionPlan;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEO$TransactionPlan;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4746
    sget-object v0, Lwallet/core/jni/proto/NEO$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionPlan;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$TransactionPlan;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/NEO$TransactionPlan;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4702
    sget-object v0, Lwallet/core/jni/proto/NEO$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionPlan;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$TransactionPlan;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEO$TransactionPlan;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4709
    sget-object v0, Lwallet/core/jni/proto/NEO$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionPlan;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$TransactionPlan;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/NEO$TransactionPlan;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4727
    sget-object v0, Lwallet/core/jni/proto/NEO$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionPlan;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$TransactionPlan;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEO$TransactionPlan;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4734
    sget-object v0, Lwallet/core/jni/proto/NEO$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionPlan;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$TransactionPlan;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/NEO$TransactionPlan;",
            ">;"
        }
    .end annotation

    .line 5280
    sget-object v0, Lwallet/core/jni/proto/NEO$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionPlan;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeInputs(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 4595
    invoke-direct {p0}, Lwallet/core/jni/proto/NEO$TransactionPlan;->ensureInputsIsMutable()V

    .line 4596
    iget-object v0, p0, Lwallet/core/jni/proto/NEO$TransactionPlan;->inputs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private removeOutputs(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 4457
    invoke-direct {p0}, Lwallet/core/jni/proto/NEO$TransactionPlan;->ensureOutputsIsMutable()V

    .line 4458
    iget-object v0, p0, Lwallet/core/jni/proto/NEO$TransactionPlan;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setError(Lwallet/core/jni/proto/Common$SigningError;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4684
    invoke-virtual {p1}, Lwallet/core/jni/proto/Common$SigningError;->getNumber()I

    move-result p1

    iput p1, p0, Lwallet/core/jni/proto/NEO$TransactionPlan;->error_:I

    return-void
.end method

.method private setErrorValue(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4673
    iput p1, p0, Lwallet/core/jni/proto/NEO$TransactionPlan;->error_:I

    return-void
.end method

.method private setFee(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4623
    iput-wide p1, p0, Lwallet/core/jni/proto/NEO$TransactionPlan;->fee_:J

    return-void
.end method

.method private setInputs(ILwallet/core/jni/proto/NEO$TransactionInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 4535
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4536
    invoke-direct {p0}, Lwallet/core/jni/proto/NEO$TransactionPlan;->ensureInputsIsMutable()V

    .line 4537
    iget-object v0, p0, Lwallet/core/jni/proto/NEO$TransactionPlan;->inputs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setOutputs(ILwallet/core/jni/proto/NEO$TransactionOutputPlan;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 4397
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4398
    invoke-direct {p0}, Lwallet/core/jni/proto/NEO$TransactionPlan;->ensureOutputsIsMutable()V

    .line 4399
    iget-object v0, p0, Lwallet/core/jni/proto/NEO$TransactionPlan;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "method",
            "arg0",
            "arg1"
        }
    .end annotation

    .line 5211
    sget-object p2, Lwallet/core/jni/proto/NEO$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 5258
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 5252
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 5237
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/NEO$TransactionPlan;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5239
    const-class p2, Lwallet/core/jni/proto/NEO$TransactionPlan;

    monitor-enter p2

    .line 5240
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/NEO$TransactionPlan;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 5242
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/NEO$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionPlan;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 5245
    sput-object p1, Lwallet/core/jni/proto/NEO$TransactionPlan;->PARSER:Lcom/google/protobuf/Parser;

    .line 5247
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 5234
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/NEO$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionPlan;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "outputs_"

    aput-object v0, p1, p3

    .line 5219
    const-class p3, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "inputs_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-class p3, Lwallet/core/jni/proto/NEO$TransactionInput;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "fee_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "error_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0002\u0000\u0001\u001b\u0002\u001b\u0003\u0002\u0004\u000c"

    .line 5230
    sget-object p3, Lwallet/core/jni/proto/NEO$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$TransactionPlan;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5216
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/NEO$TransactionPlan$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/NEO$TransactionPlan$Builder;-><init>(Lwallet/core/jni/proto/NEO$1;)V

    return-object p1

    .line 5213
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/NEO$TransactionPlan;

    invoke-direct {p1}, Lwallet/core/jni/proto/NEO$TransactionPlan;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getError()Lwallet/core/jni/proto/Common$SigningError;
    .locals 1

    .line 4661
    iget v0, p0, Lwallet/core/jni/proto/NEO$TransactionPlan;->error_:I

    invoke-static {v0}, Lwallet/core/jni/proto/Common$SigningError;->forNumber(I)Lwallet/core/jni/proto/Common$SigningError;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4662
    sget-object v0, Lwallet/core/jni/proto/Common$SigningError;->UNRECOGNIZED:Lwallet/core/jni/proto/Common$SigningError;

    :cond_0
    return-object v0
.end method

.method public getErrorValue()I
    .locals 1

    .line 4649
    iget v0, p0, Lwallet/core/jni/proto/NEO$TransactionPlan;->error_:I

    return v0
.end method

.method public getFee()J
    .locals 2

    .line 4611
    iget-wide v0, p0, Lwallet/core/jni/proto/NEO$TransactionPlan;->fee_:J

    return-wide v0
.end method

.method public getInputs(I)Lwallet/core/jni/proto/NEO$TransactionInput;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 4505
    iget-object v0, p0, Lwallet/core/jni/proto/NEO$TransactionPlan;->inputs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/NEO$TransactionInput;

    return-object p1
.end method

.method public getInputsCount()I
    .locals 1

    .line 4494
    iget-object v0, p0, Lwallet/core/jni/proto/NEO$TransactionPlan;->inputs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getInputsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/NEO$TransactionInput;",
            ">;"
        }
    .end annotation

    .line 4472
    iget-object v0, p0, Lwallet/core/jni/proto/NEO$TransactionPlan;->inputs_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getInputsOrBuilder(I)Lwallet/core/jni/proto/NEO$TransactionInputOrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 4516
    iget-object v0, p0, Lwallet/core/jni/proto/NEO$TransactionPlan;->inputs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/NEO$TransactionInputOrBuilder;

    return-object p1
.end method

.method public getInputsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lwallet/core/jni/proto/NEO$TransactionInputOrBuilder;",
            ">;"
        }
    .end annotation

    .line 4483
    iget-object v0, p0, Lwallet/core/jni/proto/NEO$TransactionPlan;->inputs_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getOutputs(I)Lwallet/core/jni/proto/NEO$TransactionOutputPlan;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 4367
    iget-object v0, p0, Lwallet/core/jni/proto/NEO$TransactionPlan;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/NEO$TransactionOutputPlan;

    return-object p1
.end method

.method public getOutputsCount()I
    .locals 1

    .line 4356
    iget-object v0, p0, Lwallet/core/jni/proto/NEO$TransactionPlan;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOutputsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/NEO$TransactionOutputPlan;",
            ">;"
        }
    .end annotation

    .line 4334
    iget-object v0, p0, Lwallet/core/jni/proto/NEO$TransactionPlan;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getOutputsOrBuilder(I)Lwallet/core/jni/proto/NEO$TransactionOutputPlanOrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 4378
    iget-object v0, p0, Lwallet/core/jni/proto/NEO$TransactionPlan;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/NEO$TransactionOutputPlanOrBuilder;

    return-object p1
.end method

.method public getOutputsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lwallet/core/jni/proto/NEO$TransactionOutputPlanOrBuilder;",
            ">;"
        }
    .end annotation

    .line 4345
    iget-object v0, p0, Lwallet/core/jni/proto/NEO$TransactionPlan;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method
