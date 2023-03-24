.class public final Lwallet/core/jni/proto/Bitcoin$TransactionPlan;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Bitcoin.java"

# interfaces
.implements Lwallet/core/jni/proto/Bitcoin$TransactionPlanOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Bitcoin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TransactionPlan"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Bitcoin$TransactionPlan$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Bitcoin$TransactionPlan;",
        "Lwallet/core/jni/proto/Bitcoin$TransactionPlan$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Bitcoin$TransactionPlanOrBuilder;"
    }
.end annotation


# static fields
.field public static final AMOUNT_FIELD_NUMBER:I = 0x1

.field public static final AVAILABLE_AMOUNT_FIELD_NUMBER:I = 0x2

.field public static final BRANCH_ID_FIELD_NUMBER:I = 0x6

.field public static final CHANGE_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

.field public static final ERROR_FIELD_NUMBER:I = 0x7

.field public static final FEE_FIELD_NUMBER:I = 0x3

.field public static final OUTPUT_OP_RETURN_FIELD_NUMBER:I = 0x8

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Bitcoin$TransactionPlan;",
            ">;"
        }
    .end annotation
.end field

.field public static final UTXOS_FIELD_NUMBER:I = 0x5


# instance fields
.field private amount_:J

.field private availableAmount_:J

.field private branchId_:Lcom/google/protobuf/ByteString;

.field private change_:J

.field private error_:I

.field private fee_:J

.field private outputOpReturn_:Lcom/google/protobuf/ByteString;

.field private utxos_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 6248
    new-instance v0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    invoke-direct {v0}, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;-><init>()V

    .line 6251
    sput-object v0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    .line 6252
    const-class v1, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5194
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 5195
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->utxos_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 5196
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->branchId_:Lcom/google/protobuf/ByteString;

    .line 5197
    iput-object v0, p0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->outputOpReturn_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$10000(Lwallet/core/jni/proto/Bitcoin$TransactionPlan;I)V
    .locals 0

    .line 5189
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->removeUtxos(I)V

    return-void
.end method

.method static synthetic access$10100(Lwallet/core/jni/proto/Bitcoin$TransactionPlan;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 5189
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->setBranchId(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$10200(Lwallet/core/jni/proto/Bitcoin$TransactionPlan;)V
    .locals 0

    .line 5189
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->clearBranchId()V

    return-void
.end method

.method static synthetic access$10300(Lwallet/core/jni/proto/Bitcoin$TransactionPlan;I)V
    .locals 0

    .line 5189
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->setErrorValue(I)V

    return-void
.end method

.method static synthetic access$10400(Lwallet/core/jni/proto/Bitcoin$TransactionPlan;Lwallet/core/jni/proto/Common$SigningError;)V
    .locals 0

    .line 5189
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->setError(Lwallet/core/jni/proto/Common$SigningError;)V

    return-void
.end method

.method static synthetic access$10500(Lwallet/core/jni/proto/Bitcoin$TransactionPlan;)V
    .locals 0

    .line 5189
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->clearError()V

    return-void
.end method

.method static synthetic access$10600(Lwallet/core/jni/proto/Bitcoin$TransactionPlan;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 5189
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->setOutputOpReturn(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$10700(Lwallet/core/jni/proto/Bitcoin$TransactionPlan;)V
    .locals 0

    .line 5189
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->clearOutputOpReturn()V

    return-void
.end method

.method static synthetic access$8600()Lwallet/core/jni/proto/Bitcoin$TransactionPlan;
    .locals 1

    .line 5189
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    return-object v0
.end method

.method static synthetic access$8700(Lwallet/core/jni/proto/Bitcoin$TransactionPlan;J)V
    .locals 0

    .line 5189
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->setAmount(J)V

    return-void
.end method

.method static synthetic access$8800(Lwallet/core/jni/proto/Bitcoin$TransactionPlan;)V
    .locals 0

    .line 5189
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->clearAmount()V

    return-void
.end method

.method static synthetic access$8900(Lwallet/core/jni/proto/Bitcoin$TransactionPlan;J)V
    .locals 0

    .line 5189
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->setAvailableAmount(J)V

    return-void
.end method

.method static synthetic access$9000(Lwallet/core/jni/proto/Bitcoin$TransactionPlan;)V
    .locals 0

    .line 5189
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->clearAvailableAmount()V

    return-void
.end method

.method static synthetic access$9100(Lwallet/core/jni/proto/Bitcoin$TransactionPlan;J)V
    .locals 0

    .line 5189
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->setFee(J)V

    return-void
.end method

.method static synthetic access$9200(Lwallet/core/jni/proto/Bitcoin$TransactionPlan;)V
    .locals 0

    .line 5189
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->clearFee()V

    return-void
.end method

.method static synthetic access$9300(Lwallet/core/jni/proto/Bitcoin$TransactionPlan;J)V
    .locals 0

    .line 5189
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->setChange(J)V

    return-void
.end method

.method static synthetic access$9400(Lwallet/core/jni/proto/Bitcoin$TransactionPlan;)V
    .locals 0

    .line 5189
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->clearChange()V

    return-void
.end method

.method static synthetic access$9500(Lwallet/core/jni/proto/Bitcoin$TransactionPlan;ILwallet/core/jni/proto/Bitcoin$UnspentTransaction;)V
    .locals 0

    .line 5189
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->setUtxos(ILwallet/core/jni/proto/Bitcoin$UnspentTransaction;)V

    return-void
.end method

.method static synthetic access$9600(Lwallet/core/jni/proto/Bitcoin$TransactionPlan;Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;)V
    .locals 0

    .line 5189
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->addUtxos(Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;)V

    return-void
.end method

.method static synthetic access$9700(Lwallet/core/jni/proto/Bitcoin$TransactionPlan;ILwallet/core/jni/proto/Bitcoin$UnspentTransaction;)V
    .locals 0

    .line 5189
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->addUtxos(ILwallet/core/jni/proto/Bitcoin$UnspentTransaction;)V

    return-void
.end method

.method static synthetic access$9800(Lwallet/core/jni/proto/Bitcoin$TransactionPlan;Ljava/lang/Iterable;)V
    .locals 0

    .line 5189
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->addAllUtxos(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$9900(Lwallet/core/jni/proto/Bitcoin$TransactionPlan;)V
    .locals 0

    .line 5189
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->clearUtxos()V

    return-void
.end method

.method private addAllUtxos(Ljava/lang/Iterable;)V
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
            "Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;",
            ">;)V"
        }
    .end annotation

    .line 5463
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->ensureUtxosIsMutable()V

    .line 5464
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->utxos_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addUtxos(ILwallet/core/jni/proto/Bitcoin$UnspentTransaction;)V
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

    .line 5450
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5451
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->ensureUtxosIsMutable()V

    .line 5452
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->utxos_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addUtxos(Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5437
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5438
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->ensureUtxosIsMutable()V

    .line 5439
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->utxos_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearAmount()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 5234
    iput-wide v0, p0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->amount_:J

    return-void
.end method

.method private clearAvailableAmount()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 5272
    iput-wide v0, p0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->availableAmount_:J

    return-void
.end method

.method private clearBranchId()V
    .locals 1

    .line 5525
    invoke-static {}, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->getDefaultInstance()Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->getBranchId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->branchId_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearChange()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 5348
    iput-wide v0, p0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->change_:J

    return-void
.end method

.method private clearError()V
    .locals 1

    const/4 v0, 0x0

    .line 5587
    iput v0, p0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->error_:I

    return-void
.end method

.method private clearFee()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 5310
    iput-wide v0, p0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->fee_:J

    return-void
.end method

.method private clearOutputOpReturn()V
    .locals 1

    .line 5626
    invoke-static {}, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->getDefaultInstance()Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->getOutputOpReturn()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->outputOpReturn_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearUtxos()V
    .locals 1

    .line 5475
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->utxos_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureUtxosIsMutable()V
    .locals 2

    .line 5409
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->utxos_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 5410
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5412
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->utxos_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Bitcoin$TransactionPlan;
    .locals 1

    .line 6257
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Bitcoin$TransactionPlan$Builder;
    .locals 1

    .line 5704
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Bitcoin$TransactionPlan;)Lwallet/core/jni/proto/Bitcoin$TransactionPlan$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 5707
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Bitcoin$TransactionPlan;
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

    .line 5681
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Bitcoin$TransactionPlan;
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

    .line 5687
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Bitcoin$TransactionPlan;
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

    .line 5645
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Bitcoin$TransactionPlan;
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

    .line 5652
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Bitcoin$TransactionPlan;
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

    .line 5692
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Bitcoin$TransactionPlan;
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

    .line 5699
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Bitcoin$TransactionPlan;
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

    .line 5669
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Bitcoin$TransactionPlan;
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

    .line 5676
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Bitcoin$TransactionPlan;
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

    .line 5632
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Bitcoin$TransactionPlan;
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

    .line 5639
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Bitcoin$TransactionPlan;
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

    .line 5657
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Bitcoin$TransactionPlan;
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

    .line 5664
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Bitcoin$TransactionPlan;",
            ">;"
        }
    .end annotation

    .line 6263
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeUtxos(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 5485
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->ensureUtxosIsMutable()V

    .line 5486
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->utxos_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setAmount(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5223
    iput-wide p1, p0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->amount_:J

    return-void
.end method

.method private setAvailableAmount(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5261
    iput-wide p1, p0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->availableAmount_:J

    return-void
.end method

.method private setBranchId(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5512
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5514
    iput-object p1, p0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->branchId_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setChange(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5337
    iput-wide p1, p0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->change_:J

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

    .line 5575
    invoke-virtual {p1}, Lwallet/core/jni/proto/Common$SigningError;->getNumber()I

    move-result p1

    iput p1, p0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->error_:I

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

    .line 5564
    iput p1, p0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->error_:I

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

    .line 5299
    iput-wide p1, p0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->fee_:J

    return-void
.end method

.method private setOutputOpReturn(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5613
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5615
    iput-object p1, p0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->outputOpReturn_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setUtxos(ILwallet/core/jni/proto/Bitcoin$UnspentTransaction;)V
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

    .line 5425
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5426
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->ensureUtxosIsMutable()V

    .line 5427
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->utxos_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 6191
    sget-object p2, Lwallet/core/jni/proto/Bitcoin$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 6241
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 6235
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 6220
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 6222
    const-class p2, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    monitor-enter p2

    .line 6223
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 6225
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 6228
    sput-object p1, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->PARSER:Lcom/google/protobuf/Parser;

    .line 6230
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

    .line 6217
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    return-object p1

    :pswitch_4
    const/16 p1, 0x9

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "amount_"

    aput-object v0, p1, p3

    const-string p3, "availableAmount_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "fee_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "change_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "utxos_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    .line 6199
    const-class p3, Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "branchId_"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "error_"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "outputOpReturn_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0008\u0000\u0000\u0001\u0008\u0008\u0000\u0001\u0000\u0001\u0002\u0002\u0002\u0003\u0002\u0004\u0002\u0005\u001b\u0006\n\u0007\u000c\u0008\n"

    .line 6213
    sget-object p3, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6196
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Bitcoin$TransactionPlan$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Bitcoin$TransactionPlan$Builder;-><init>(Lwallet/core/jni/proto/Bitcoin$1;)V

    return-object p1

    .line 6193
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    invoke-direct {p1}, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;-><init>()V

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

.method public getAmount()J
    .locals 2

    .line 5211
    iget-wide v0, p0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->amount_:J

    return-wide v0
.end method

.method public getAvailableAmount()J
    .locals 2

    .line 5249
    iget-wide v0, p0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->availableAmount_:J

    return-wide v0
.end method

.method public getBranchId()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5501
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->branchId_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getChange()J
    .locals 2

    .line 5325
    iget-wide v0, p0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->change_:J

    return-wide v0
.end method

.method public getError()Lwallet/core/jni/proto/Common$SigningError;
    .locals 1

    .line 5552
    iget v0, p0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->error_:I

    invoke-static {v0}, Lwallet/core/jni/proto/Common$SigningError;->forNumber(I)Lwallet/core/jni/proto/Common$SigningError;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5553
    sget-object v0, Lwallet/core/jni/proto/Common$SigningError;->UNRECOGNIZED:Lwallet/core/jni/proto/Common$SigningError;

    :cond_0
    return-object v0
.end method

.method public getErrorValue()I
    .locals 1

    .line 5540
    iget v0, p0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->error_:I

    return v0
.end method

.method public getFee()J
    .locals 2

    .line 5287
    iget-wide v0, p0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->fee_:J

    return-wide v0
.end method

.method public getOutputOpReturn()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5602
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->outputOpReturn_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getUtxos(I)Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 5395
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->utxos_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;

    return-object p1
.end method

.method public getUtxosCount()I
    .locals 1

    .line 5384
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->utxos_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getUtxosList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;",
            ">;"
        }
    .end annotation

    .line 5362
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->utxos_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getUtxosOrBuilder(I)Lwallet/core/jni/proto/Bitcoin$UnspentTransactionOrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 5406
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->utxos_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Bitcoin$UnspentTransactionOrBuilder;

    return-object p1
.end method

.method public getUtxosOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lwallet/core/jni/proto/Bitcoin$UnspentTransactionOrBuilder;",
            ">;"
        }
    .end annotation

    .line 5373
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->utxos_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method
