.class public final Lwallet/core/jni/proto/Decred$Transaction;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Decred.java"

# interfaces
.implements Lwallet/core/jni/proto/Decred$TransactionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Decred;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Transaction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Decred$Transaction$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Decred$Transaction;",
        "Lwallet/core/jni/proto/Decred$Transaction$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Decred$TransactionOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$Transaction;

.field public static final EXPIRY_FIELD_NUMBER:I = 0x6

.field public static final INPUTS_FIELD_NUMBER:I = 0x3

.field public static final LOCKTIME_FIELD_NUMBER:I = 0x5

.field public static final OUTPUTS_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Decred$Transaction;",
            ">;"
        }
    .end annotation
.end field

.field public static final SERIALIZETYPE_FIELD_NUMBER:I = 0x1

.field public static final VERSION_FIELD_NUMBER:I = 0x2


# instance fields
.field private expiry_:I

.field private inputs_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lwallet/core/jni/proto/Decred$TransactionInput;",
            ">;"
        }
    .end annotation
.end field

.field private lockTime_:I

.field private outputs_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lwallet/core/jni/proto/Decred$TransactionOutput;",
            ">;"
        }
    .end annotation
.end field

.field private serializeType_:I

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1173
    new-instance v0, Lwallet/core/jni/proto/Decred$Transaction;

    invoke-direct {v0}, Lwallet/core/jni/proto/Decred$Transaction;-><init>()V

    .line 1176
    sput-object v0, Lwallet/core/jni/proto/Decred$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$Transaction;

    .line 1177
    const-class v1, Lwallet/core/jni/proto/Decred$Transaction;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 119
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 120
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Decred$Transaction;->inputs_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 121
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Decred$Transaction;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$000()Lwallet/core/jni/proto/Decred$Transaction;
    .locals 1

    .line 114
    sget-object v0, Lwallet/core/jni/proto/Decred$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$Transaction;

    return-object v0
.end method

.method static synthetic access$100(Lwallet/core/jni/proto/Decred$Transaction;I)V
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Decred$Transaction;->setSerializeType(I)V

    return-void
.end method

.method static synthetic access$1000(Lwallet/core/jni/proto/Decred$Transaction;I)V
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Decred$Transaction;->removeInputs(I)V

    return-void
.end method

.method static synthetic access$1100(Lwallet/core/jni/proto/Decred$Transaction;ILwallet/core/jni/proto/Decred$TransactionOutput;)V
    .locals 0

    .line 114
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Decred$Transaction;->setOutputs(ILwallet/core/jni/proto/Decred$TransactionOutput;)V

    return-void
.end method

.method static synthetic access$1200(Lwallet/core/jni/proto/Decred$Transaction;Lwallet/core/jni/proto/Decred$TransactionOutput;)V
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Decred$Transaction;->addOutputs(Lwallet/core/jni/proto/Decred$TransactionOutput;)V

    return-void
.end method

.method static synthetic access$1300(Lwallet/core/jni/proto/Decred$Transaction;ILwallet/core/jni/proto/Decred$TransactionOutput;)V
    .locals 0

    .line 114
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Decred$Transaction;->addOutputs(ILwallet/core/jni/proto/Decred$TransactionOutput;)V

    return-void
.end method

.method static synthetic access$1400(Lwallet/core/jni/proto/Decred$Transaction;Ljava/lang/Iterable;)V
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Decred$Transaction;->addAllOutputs(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$1500(Lwallet/core/jni/proto/Decred$Transaction;)V
    .locals 0

    .line 114
    invoke-direct {p0}, Lwallet/core/jni/proto/Decred$Transaction;->clearOutputs()V

    return-void
.end method

.method static synthetic access$1600(Lwallet/core/jni/proto/Decred$Transaction;I)V
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Decred$Transaction;->removeOutputs(I)V

    return-void
.end method

.method static synthetic access$1700(Lwallet/core/jni/proto/Decred$Transaction;I)V
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Decred$Transaction;->setLockTime(I)V

    return-void
.end method

.method static synthetic access$1800(Lwallet/core/jni/proto/Decred$Transaction;)V
    .locals 0

    .line 114
    invoke-direct {p0}, Lwallet/core/jni/proto/Decred$Transaction;->clearLockTime()V

    return-void
.end method

.method static synthetic access$1900(Lwallet/core/jni/proto/Decred$Transaction;I)V
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Decred$Transaction;->setExpiry(I)V

    return-void
.end method

.method static synthetic access$200(Lwallet/core/jni/proto/Decred$Transaction;)V
    .locals 0

    .line 114
    invoke-direct {p0}, Lwallet/core/jni/proto/Decred$Transaction;->clearSerializeType()V

    return-void
.end method

.method static synthetic access$2000(Lwallet/core/jni/proto/Decred$Transaction;)V
    .locals 0

    .line 114
    invoke-direct {p0}, Lwallet/core/jni/proto/Decred$Transaction;->clearExpiry()V

    return-void
.end method

.method static synthetic access$300(Lwallet/core/jni/proto/Decred$Transaction;I)V
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Decred$Transaction;->setVersion(I)V

    return-void
.end method

.method static synthetic access$400(Lwallet/core/jni/proto/Decred$Transaction;)V
    .locals 0

    .line 114
    invoke-direct {p0}, Lwallet/core/jni/proto/Decred$Transaction;->clearVersion()V

    return-void
.end method

.method static synthetic access$500(Lwallet/core/jni/proto/Decred$Transaction;ILwallet/core/jni/proto/Decred$TransactionInput;)V
    .locals 0

    .line 114
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Decred$Transaction;->setInputs(ILwallet/core/jni/proto/Decred$TransactionInput;)V

    return-void
.end method

.method static synthetic access$600(Lwallet/core/jni/proto/Decred$Transaction;Lwallet/core/jni/proto/Decred$TransactionInput;)V
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Decred$Transaction;->addInputs(Lwallet/core/jni/proto/Decred$TransactionInput;)V

    return-void
.end method

.method static synthetic access$700(Lwallet/core/jni/proto/Decred$Transaction;ILwallet/core/jni/proto/Decred$TransactionInput;)V
    .locals 0

    .line 114
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Decred$Transaction;->addInputs(ILwallet/core/jni/proto/Decred$TransactionInput;)V

    return-void
.end method

.method static synthetic access$800(Lwallet/core/jni/proto/Decred$Transaction;Ljava/lang/Iterable;)V
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Decred$Transaction;->addAllInputs(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$900(Lwallet/core/jni/proto/Decred$Transaction;)V
    .locals 0

    .line 114
    invoke-direct {p0}, Lwallet/core/jni/proto/Decred$Transaction;->clearInputs()V

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
            "Lwallet/core/jni/proto/Decred$TransactionInput;",
            ">;)V"
        }
    .end annotation

    .line 311
    invoke-direct {p0}, Lwallet/core/jni/proto/Decred$Transaction;->ensureInputsIsMutable()V

    .line 312
    iget-object v0, p0, Lwallet/core/jni/proto/Decred$Transaction;->inputs_:Lcom/google/protobuf/Internal$ProtobufList;

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
            "Lwallet/core/jni/proto/Decred$TransactionOutput;",
            ">;)V"
        }
    .end annotation

    .line 449
    invoke-direct {p0}, Lwallet/core/jni/proto/Decred$Transaction;->ensureOutputsIsMutable()V

    .line 450
    iget-object v0, p0, Lwallet/core/jni/proto/Decred$Transaction;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addInputs(ILwallet/core/jni/proto/Decred$TransactionInput;)V
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

    .line 298
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 299
    invoke-direct {p0}, Lwallet/core/jni/proto/Decred$Transaction;->ensureInputsIsMutable()V

    .line 300
    iget-object v0, p0, Lwallet/core/jni/proto/Decred$Transaction;->inputs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addInputs(Lwallet/core/jni/proto/Decred$TransactionInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 285
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 286
    invoke-direct {p0}, Lwallet/core/jni/proto/Decred$Transaction;->ensureInputsIsMutable()V

    .line 287
    iget-object v0, p0, Lwallet/core/jni/proto/Decred$Transaction;->inputs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addOutputs(ILwallet/core/jni/proto/Decred$TransactionOutput;)V
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

    .line 436
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 437
    invoke-direct {p0}, Lwallet/core/jni/proto/Decred$Transaction;->ensureOutputsIsMutable()V

    .line 438
    iget-object v0, p0, Lwallet/core/jni/proto/Decred$Transaction;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addOutputs(Lwallet/core/jni/proto/Decred$TransactionOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 423
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 424
    invoke-direct {p0}, Lwallet/core/jni/proto/Decred$Transaction;->ensureOutputsIsMutable()V

    .line 425
    iget-object v0, p0, Lwallet/core/jni/proto/Decred$Transaction;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearExpiry()V
    .locals 1

    const/4 v0, 0x0

    .line 548
    iput v0, p0, Lwallet/core/jni/proto/Decred$Transaction;->expiry_:I

    return-void
.end method

.method private clearInputs()V
    .locals 1

    .line 323
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Decred$Transaction;->inputs_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearLockTime()V
    .locals 1

    const/4 v0, 0x0

    .line 510
    iput v0, p0, Lwallet/core/jni/proto/Decred$Transaction;->lockTime_:I

    return-void
.end method

.method private clearOutputs()V
    .locals 1

    .line 461
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Decred$Transaction;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearSerializeType()V
    .locals 1

    const/4 v0, 0x0

    .line 158
    iput v0, p0, Lwallet/core/jni/proto/Decred$Transaction;->serializeType_:I

    return-void
.end method

.method private clearVersion()V
    .locals 1

    const/4 v0, 0x0

    .line 196
    iput v0, p0, Lwallet/core/jni/proto/Decred$Transaction;->version_:I

    return-void
.end method

.method private ensureInputsIsMutable()V
    .locals 2

    .line 257
    iget-object v0, p0, Lwallet/core/jni/proto/Decred$Transaction;->inputs_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 258
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 260
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Decred$Transaction;->inputs_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureOutputsIsMutable()V
    .locals 2

    .line 395
    iget-object v0, p0, Lwallet/core/jni/proto/Decred$Transaction;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 396
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 398
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Decred$Transaction;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Decred$Transaction;
    .locals 1

    .line 1182
    sget-object v0, Lwallet/core/jni/proto/Decred$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$Transaction;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Decred$Transaction$Builder;
    .locals 1

    .line 626
    sget-object v0, Lwallet/core/jni/proto/Decred$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$Transaction;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Decred$Transaction$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Decred$Transaction;)Lwallet/core/jni/proto/Decred$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 629
    sget-object v0, Lwallet/core/jni/proto/Decred$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$Transaction;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Decred$Transaction$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Decred$Transaction;
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

    .line 603
    sget-object v0, Lwallet/core/jni/proto/Decred$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$Transaction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Decred$Transaction;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Decred$Transaction;
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

    .line 609
    sget-object v0, Lwallet/core/jni/proto/Decred$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$Transaction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Decred$Transaction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Decred$Transaction;
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

    .line 567
    sget-object v0, Lwallet/core/jni/proto/Decred$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$Transaction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Decred$Transaction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Decred$Transaction;
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

    .line 574
    sget-object v0, Lwallet/core/jni/proto/Decred$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$Transaction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Decred$Transaction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Decred$Transaction;
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

    .line 614
    sget-object v0, Lwallet/core/jni/proto/Decred$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$Transaction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Decred$Transaction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Decred$Transaction;
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

    .line 621
    sget-object v0, Lwallet/core/jni/proto/Decred$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$Transaction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Decred$Transaction;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Decred$Transaction;
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

    .line 591
    sget-object v0, Lwallet/core/jni/proto/Decred$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$Transaction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Decred$Transaction;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Decred$Transaction;
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

    .line 598
    sget-object v0, Lwallet/core/jni/proto/Decred$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$Transaction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Decred$Transaction;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Decred$Transaction;
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

    .line 554
    sget-object v0, Lwallet/core/jni/proto/Decred$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$Transaction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Decred$Transaction;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Decred$Transaction;
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

    .line 561
    sget-object v0, Lwallet/core/jni/proto/Decred$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$Transaction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Decred$Transaction;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Decred$Transaction;
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

    .line 579
    sget-object v0, Lwallet/core/jni/proto/Decred$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$Transaction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Decred$Transaction;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Decred$Transaction;
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

    .line 586
    sget-object v0, Lwallet/core/jni/proto/Decred$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$Transaction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Decred$Transaction;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Decred$Transaction;",
            ">;"
        }
    .end annotation

    .line 1188
    sget-object v0, Lwallet/core/jni/proto/Decred$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$Transaction;

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

    .line 333
    invoke-direct {p0}, Lwallet/core/jni/proto/Decred$Transaction;->ensureInputsIsMutable()V

    .line 334
    iget-object v0, p0, Lwallet/core/jni/proto/Decred$Transaction;->inputs_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 471
    invoke-direct {p0}, Lwallet/core/jni/proto/Decred$Transaction;->ensureOutputsIsMutable()V

    .line 472
    iget-object v0, p0, Lwallet/core/jni/proto/Decred$Transaction;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setExpiry(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 537
    iput p1, p0, Lwallet/core/jni/proto/Decred$Transaction;->expiry_:I

    return-void
.end method

.method private setInputs(ILwallet/core/jni/proto/Decred$TransactionInput;)V
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

    .line 273
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 274
    invoke-direct {p0}, Lwallet/core/jni/proto/Decred$Transaction;->ensureInputsIsMutable()V

    .line 275
    iget-object v0, p0, Lwallet/core/jni/proto/Decred$Transaction;->inputs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setLockTime(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 499
    iput p1, p0, Lwallet/core/jni/proto/Decred$Transaction;->lockTime_:I

    return-void
.end method

.method private setOutputs(ILwallet/core/jni/proto/Decred$TransactionOutput;)V
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

    .line 411
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 412
    invoke-direct {p0}, Lwallet/core/jni/proto/Decred$Transaction;->ensureOutputsIsMutable()V

    .line 413
    iget-object v0, p0, Lwallet/core/jni/proto/Decred$Transaction;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSerializeType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 147
    iput p1, p0, Lwallet/core/jni/proto/Decred$Transaction;->serializeType_:I

    return-void
.end method

.method private setVersion(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 185
    iput p1, p0, Lwallet/core/jni/proto/Decred$Transaction;->version_:I

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

    .line 1117
    sget-object p2, Lwallet/core/jni/proto/Decred$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1166
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 1160
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1145
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Decred$Transaction;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1147
    const-class p2, Lwallet/core/jni/proto/Decred$Transaction;

    monitor-enter p2

    .line 1148
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Decred$Transaction;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1150
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Decred$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$Transaction;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1153
    sput-object p1, Lwallet/core/jni/proto/Decred$Transaction;->PARSER:Lcom/google/protobuf/Parser;

    .line 1155
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

    .line 1142
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Decred$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$Transaction;

    return-object p1

    :pswitch_4
    const/16 p1, 0x8

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "serializeType_"

    aput-object v0, p1, p3

    const-string p3, "version_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "inputs_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 1125
    const-class p3, Lwallet/core/jni/proto/Decred$TransactionInput;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "outputs_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-class p3, Lwallet/core/jni/proto/Decred$TransactionOutput;

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "lockTime_"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "expiry_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0006\u0000\u0000\u0001\u0006\u0006\u0000\u0002\u0000\u0001\u000b\u0002\u000b\u0003\u001b\u0004\u001b\u0005\u000b\u0006\u000b"

    .line 1138
    sget-object p3, Lwallet/core/jni/proto/Decred$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$Transaction;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1122
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Decred$Transaction$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Decred$Transaction$Builder;-><init>(Lwallet/core/jni/proto/Decred$1;)V

    return-object p1

    .line 1119
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Decred$Transaction;

    invoke-direct {p1}, Lwallet/core/jni/proto/Decred$Transaction;-><init>()V

    return-object p1

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

.method public getExpiry()I
    .locals 1

    .line 525
    iget v0, p0, Lwallet/core/jni/proto/Decred$Transaction;->expiry_:I

    return v0
.end method

.method public getInputs(I)Lwallet/core/jni/proto/Decred$TransactionInput;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lwallet/core/jni/proto/Decred$Transaction;->inputs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Decred$TransactionInput;

    return-object p1
.end method

.method public getInputsCount()I
    .locals 1

    .line 232
    iget-object v0, p0, Lwallet/core/jni/proto/Decred$Transaction;->inputs_:Lcom/google/protobuf/Internal$ProtobufList;

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
            "Lwallet/core/jni/proto/Decred$TransactionInput;",
            ">;"
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lwallet/core/jni/proto/Decred$Transaction;->inputs_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getInputsOrBuilder(I)Lwallet/core/jni/proto/Decred$TransactionInputOrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lwallet/core/jni/proto/Decred$Transaction;->inputs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Decred$TransactionInputOrBuilder;

    return-object p1
.end method

.method public getInputsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lwallet/core/jni/proto/Decred$TransactionInputOrBuilder;",
            ">;"
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lwallet/core/jni/proto/Decred$Transaction;->inputs_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getLockTime()I
    .locals 1

    .line 487
    iget v0, p0, Lwallet/core/jni/proto/Decred$Transaction;->lockTime_:I

    return v0
.end method

.method public getOutputs(I)Lwallet/core/jni/proto/Decred$TransactionOutput;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 381
    iget-object v0, p0, Lwallet/core/jni/proto/Decred$Transaction;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Decred$TransactionOutput;

    return-object p1
.end method

.method public getOutputsCount()I
    .locals 1

    .line 370
    iget-object v0, p0, Lwallet/core/jni/proto/Decred$Transaction;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

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
            "Lwallet/core/jni/proto/Decred$TransactionOutput;",
            ">;"
        }
    .end annotation

    .line 348
    iget-object v0, p0, Lwallet/core/jni/proto/Decred$Transaction;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getOutputsOrBuilder(I)Lwallet/core/jni/proto/Decred$TransactionOutputOrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 392
    iget-object v0, p0, Lwallet/core/jni/proto/Decred$Transaction;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Decred$TransactionOutputOrBuilder;

    return-object p1
.end method

.method public getOutputsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lwallet/core/jni/proto/Decred$TransactionOutputOrBuilder;",
            ">;"
        }
    .end annotation

    .line 359
    iget-object v0, p0, Lwallet/core/jni/proto/Decred$Transaction;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSerializeType()I
    .locals 1

    .line 135
    iget v0, p0, Lwallet/core/jni/proto/Decred$Transaction;->serializeType_:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    .line 173
    iget v0, p0, Lwallet/core/jni/proto/Decred$Transaction;->version_:I

    return v0
.end method
