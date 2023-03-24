.class public final Lwallet/core/jni/proto/Bitcoin$Transaction;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Bitcoin.java"

# interfaces
.implements Lwallet/core/jni/proto/Bitcoin$TransactionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Bitcoin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Transaction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Bitcoin$Transaction$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Bitcoin$Transaction;",
        "Lwallet/core/jni/proto/Bitcoin$Transaction$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Bitcoin$TransactionOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$Transaction;

.field public static final INPUTS_FIELD_NUMBER:I = 0x3

.field public static final LOCKTIME_FIELD_NUMBER:I = 0x2

.field public static final OUTPUTS_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Bitcoin$Transaction;",
            ">;"
        }
    .end annotation
.end field

.field public static final VERSION_FIELD_NUMBER:I = 0x1


# instance fields
.field private inputs_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lwallet/core/jni/proto/Bitcoin$TransactionInput;",
            ">;"
        }
    .end annotation
.end field

.field private lockTime_:I

.field private outputs_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lwallet/core/jni/proto/Bitcoin$TransactionOutput;",
            ">;"
        }
    .end annotation
.end field

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 995
    new-instance v0, Lwallet/core/jni/proto/Bitcoin$Transaction;

    invoke-direct {v0}, Lwallet/core/jni/proto/Bitcoin$Transaction;-><init>()V

    .line 998
    sput-object v0, Lwallet/core/jni/proto/Bitcoin$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$Transaction;

    .line 999
    const-class v1, Lwallet/core/jni/proto/Bitcoin$Transaction;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 99
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 100
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Bitcoin$Transaction;->inputs_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 101
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Bitcoin$Transaction;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$000()Lwallet/core/jni/proto/Bitcoin$Transaction;
    .locals 1

    .line 94
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$Transaction;

    return-object v0
.end method

.method static synthetic access$100(Lwallet/core/jni/proto/Bitcoin$Transaction;I)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Bitcoin$Transaction;->setVersion(I)V

    return-void
.end method

.method static synthetic access$1000(Lwallet/core/jni/proto/Bitcoin$Transaction;I)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Bitcoin$Transaction;->removeInputs(I)V

    return-void
.end method

.method static synthetic access$1100(Lwallet/core/jni/proto/Bitcoin$Transaction;ILwallet/core/jni/proto/Bitcoin$TransactionOutput;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Bitcoin$Transaction;->setOutputs(ILwallet/core/jni/proto/Bitcoin$TransactionOutput;)V

    return-void
.end method

.method static synthetic access$1200(Lwallet/core/jni/proto/Bitcoin$Transaction;Lwallet/core/jni/proto/Bitcoin$TransactionOutput;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Bitcoin$Transaction;->addOutputs(Lwallet/core/jni/proto/Bitcoin$TransactionOutput;)V

    return-void
.end method

.method static synthetic access$1300(Lwallet/core/jni/proto/Bitcoin$Transaction;ILwallet/core/jni/proto/Bitcoin$TransactionOutput;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Bitcoin$Transaction;->addOutputs(ILwallet/core/jni/proto/Bitcoin$TransactionOutput;)V

    return-void
.end method

.method static synthetic access$1400(Lwallet/core/jni/proto/Bitcoin$Transaction;Ljava/lang/Iterable;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Bitcoin$Transaction;->addAllOutputs(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$1500(Lwallet/core/jni/proto/Bitcoin$Transaction;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$Transaction;->clearOutputs()V

    return-void
.end method

.method static synthetic access$1600(Lwallet/core/jni/proto/Bitcoin$Transaction;I)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Bitcoin$Transaction;->removeOutputs(I)V

    return-void
.end method

.method static synthetic access$200(Lwallet/core/jni/proto/Bitcoin$Transaction;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$Transaction;->clearVersion()V

    return-void
.end method

.method static synthetic access$300(Lwallet/core/jni/proto/Bitcoin$Transaction;I)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Bitcoin$Transaction;->setLockTime(I)V

    return-void
.end method

.method static synthetic access$400(Lwallet/core/jni/proto/Bitcoin$Transaction;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$Transaction;->clearLockTime()V

    return-void
.end method

.method static synthetic access$500(Lwallet/core/jni/proto/Bitcoin$Transaction;ILwallet/core/jni/proto/Bitcoin$TransactionInput;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Bitcoin$Transaction;->setInputs(ILwallet/core/jni/proto/Bitcoin$TransactionInput;)V

    return-void
.end method

.method static synthetic access$600(Lwallet/core/jni/proto/Bitcoin$Transaction;Lwallet/core/jni/proto/Bitcoin$TransactionInput;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Bitcoin$Transaction;->addInputs(Lwallet/core/jni/proto/Bitcoin$TransactionInput;)V

    return-void
.end method

.method static synthetic access$700(Lwallet/core/jni/proto/Bitcoin$Transaction;ILwallet/core/jni/proto/Bitcoin$TransactionInput;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Bitcoin$Transaction;->addInputs(ILwallet/core/jni/proto/Bitcoin$TransactionInput;)V

    return-void
.end method

.method static synthetic access$800(Lwallet/core/jni/proto/Bitcoin$Transaction;Ljava/lang/Iterable;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Bitcoin$Transaction;->addAllInputs(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$900(Lwallet/core/jni/proto/Bitcoin$Transaction;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$Transaction;->clearInputs()V

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
            "Lwallet/core/jni/proto/Bitcoin$TransactionInput;",
            ">;)V"
        }
    .end annotation

    .line 291
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$Transaction;->ensureInputsIsMutable()V

    .line 292
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$Transaction;->inputs_:Lcom/google/protobuf/Internal$ProtobufList;

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
            "Lwallet/core/jni/proto/Bitcoin$TransactionOutput;",
            ">;)V"
        }
    .end annotation

    .line 429
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$Transaction;->ensureOutputsIsMutable()V

    .line 430
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$Transaction;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addInputs(ILwallet/core/jni/proto/Bitcoin$TransactionInput;)V
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

    .line 278
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 279
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$Transaction;->ensureInputsIsMutable()V

    .line 280
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$Transaction;->inputs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addInputs(Lwallet/core/jni/proto/Bitcoin$TransactionInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 265
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 266
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$Transaction;->ensureInputsIsMutable()V

    .line 267
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$Transaction;->inputs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addOutputs(ILwallet/core/jni/proto/Bitcoin$TransactionOutput;)V
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

    .line 416
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 417
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$Transaction;->ensureOutputsIsMutable()V

    .line 418
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$Transaction;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addOutputs(Lwallet/core/jni/proto/Bitcoin$TransactionOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 403
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 404
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$Transaction;->ensureOutputsIsMutable()V

    .line 405
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$Transaction;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearInputs()V
    .locals 1

    .line 303
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Bitcoin$Transaction;->inputs_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearLockTime()V
    .locals 1

    const/4 v0, 0x0

    .line 176
    iput v0, p0, Lwallet/core/jni/proto/Bitcoin$Transaction;->lockTime_:I

    return-void
.end method

.method private clearOutputs()V
    .locals 1

    .line 441
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Bitcoin$Transaction;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearVersion()V
    .locals 1

    const/4 v0, 0x0

    .line 138
    iput v0, p0, Lwallet/core/jni/proto/Bitcoin$Transaction;->version_:I

    return-void
.end method

.method private ensureInputsIsMutable()V
    .locals 2

    .line 237
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$Transaction;->inputs_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 238
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 240
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Bitcoin$Transaction;->inputs_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureOutputsIsMutable()V
    .locals 2

    .line 375
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$Transaction;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 376
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 378
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Bitcoin$Transaction;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Bitcoin$Transaction;
    .locals 1

    .line 1004
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$Transaction;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Bitcoin$Transaction$Builder;
    .locals 1

    .line 530
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$Transaction;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$Transaction$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Bitcoin$Transaction;)Lwallet/core/jni/proto/Bitcoin$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 533
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$Transaction;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$Transaction$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Bitcoin$Transaction;
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

    .line 507
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$Transaction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$Transaction;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Bitcoin$Transaction;
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

    .line 513
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$Transaction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$Transaction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Bitcoin$Transaction;
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

    .line 471
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$Transaction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$Transaction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Bitcoin$Transaction;
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

    .line 478
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$Transaction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$Transaction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Bitcoin$Transaction;
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

    .line 518
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$Transaction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$Transaction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Bitcoin$Transaction;
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

    .line 525
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$Transaction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$Transaction;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Bitcoin$Transaction;
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

    .line 495
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$Transaction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$Transaction;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Bitcoin$Transaction;
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

    .line 502
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$Transaction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$Transaction;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Bitcoin$Transaction;
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

    .line 458
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$Transaction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$Transaction;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Bitcoin$Transaction;
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

    .line 465
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$Transaction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$Transaction;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Bitcoin$Transaction;
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

    .line 483
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$Transaction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$Transaction;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Bitcoin$Transaction;
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

    .line 490
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$Transaction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$Transaction;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Bitcoin$Transaction;",
            ">;"
        }
    .end annotation

    .line 1010
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$Transaction;

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

    .line 313
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$Transaction;->ensureInputsIsMutable()V

    .line 314
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$Transaction;->inputs_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 451
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$Transaction;->ensureOutputsIsMutable()V

    .line 452
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$Transaction;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setInputs(ILwallet/core/jni/proto/Bitcoin$TransactionInput;)V
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

    .line 253
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 254
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$Transaction;->ensureInputsIsMutable()V

    .line 255
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$Transaction;->inputs_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 165
    iput p1, p0, Lwallet/core/jni/proto/Bitcoin$Transaction;->lockTime_:I

    return-void
.end method

.method private setOutputs(ILwallet/core/jni/proto/Bitcoin$TransactionOutput;)V
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

    .line 391
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 392
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$Transaction;->ensureOutputsIsMutable()V

    .line 393
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$Transaction;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

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

    .line 127
    iput p1, p0, Lwallet/core/jni/proto/Bitcoin$Transaction;->version_:I

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

    .line 941
    sget-object p2, Lwallet/core/jni/proto/Bitcoin$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 988
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 982
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 967
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Bitcoin$Transaction;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 969
    const-class p2, Lwallet/core/jni/proto/Bitcoin$Transaction;

    monitor-enter p2

    .line 970
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Bitcoin$Transaction;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 972
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Bitcoin$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$Transaction;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 975
    sput-object p1, Lwallet/core/jni/proto/Bitcoin$Transaction;->PARSER:Lcom/google/protobuf/Parser;

    .line 977
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

    .line 964
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Bitcoin$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$Transaction;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "version_"

    aput-object v0, p1, p3

    const-string p3, "lockTime_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "inputs_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 949
    const-class p3, Lwallet/core/jni/proto/Bitcoin$TransactionInput;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "outputs_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-class p3, Lwallet/core/jni/proto/Bitcoin$TransactionOutput;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0002\u0000\u0001\u000f\u0002\u000b\u0003\u001b\u0004\u001b"

    .line 960
    sget-object p3, Lwallet/core/jni/proto/Bitcoin$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$Transaction;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 946
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Bitcoin$Transaction$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Bitcoin$Transaction$Builder;-><init>(Lwallet/core/jni/proto/Bitcoin$1;)V

    return-object p1

    .line 943
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Bitcoin$Transaction;

    invoke-direct {p1}, Lwallet/core/jni/proto/Bitcoin$Transaction;-><init>()V

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

.method public getInputs(I)Lwallet/core/jni/proto/Bitcoin$TransactionInput;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$Transaction;->inputs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Bitcoin$TransactionInput;

    return-object p1
.end method

.method public getInputsCount()I
    .locals 1

    .line 212
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$Transaction;->inputs_:Lcom/google/protobuf/Internal$ProtobufList;

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
            "Lwallet/core/jni/proto/Bitcoin$TransactionInput;",
            ">;"
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$Transaction;->inputs_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getInputsOrBuilder(I)Lwallet/core/jni/proto/Bitcoin$TransactionInputOrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$Transaction;->inputs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Bitcoin$TransactionInputOrBuilder;

    return-object p1
.end method

.method public getInputsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lwallet/core/jni/proto/Bitcoin$TransactionInputOrBuilder;",
            ">;"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$Transaction;->inputs_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getLockTime()I
    .locals 1

    .line 153
    iget v0, p0, Lwallet/core/jni/proto/Bitcoin$Transaction;->lockTime_:I

    return v0
.end method

.method public getOutputs(I)Lwallet/core/jni/proto/Bitcoin$TransactionOutput;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 361
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$Transaction;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Bitcoin$TransactionOutput;

    return-object p1
.end method

.method public getOutputsCount()I
    .locals 1

    .line 350
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$Transaction;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

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
            "Lwallet/core/jni/proto/Bitcoin$TransactionOutput;",
            ">;"
        }
    .end annotation

    .line 328
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$Transaction;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getOutputsOrBuilder(I)Lwallet/core/jni/proto/Bitcoin$TransactionOutputOrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 372
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$Transaction;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Bitcoin$TransactionOutputOrBuilder;

    return-object p1
.end method

.method public getOutputsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lwallet/core/jni/proto/Bitcoin$TransactionOutputOrBuilder;",
            ">;"
        }
    .end annotation

    .line 339
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$Transaction;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 115
    iget v0, p0, Lwallet/core/jni/proto/Bitcoin$Transaction;->version_:I

    return v0
.end method
