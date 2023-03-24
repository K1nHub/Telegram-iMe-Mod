.class public final Lwallet/core/jni/proto/NEO$SigningInput;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "NEO.java"

# interfaces
.implements Lwallet/core/jni/proto/NEO$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/NEO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SigningInput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/NEO$SigningInput$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/NEO$SigningInput;",
        "Lwallet/core/jni/proto/NEO$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/NEO$SigningInputOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$SigningInput;

.field public static final FEE_FIELD_NUMBER:I = 0x4

.field public static final GAS_ASSET_ID_FIELD_NUMBER:I = 0x5

.field public static final GAS_CHANGE_ADDRESS_FIELD_NUMBER:I = 0x6

.field public static final INPUTS_FIELD_NUMBER:I = 0x1

.field public static final OUTPUTS_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/NEO$SigningInput;",
            ">;"
        }
    .end annotation
.end field

.field public static final PLAN_FIELD_NUMBER:I = 0x7

.field public static final PRIVATE_KEY_FIELD_NUMBER:I = 0x3


# instance fields
.field private fee_:J

.field private gasAssetId_:Ljava/lang/String;

.field private gasChangeAddress_:Ljava/lang/String;

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
            "Lwallet/core/jni/proto/NEO$TransactionOutput;",
            ">;"
        }
    .end annotation
.end field

.field private plan_:Lwallet/core/jni/proto/NEO$TransactionPlan;

.field private privateKey_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2842
    new-instance v0, Lwallet/core/jni/proto/NEO$SigningInput;

    invoke-direct {v0}, Lwallet/core/jni/proto/NEO$SigningInput;-><init>()V

    .line 2845
    sput-object v0, Lwallet/core/jni/proto/NEO$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$SigningInput;

    .line 2846
    const-class v1, Lwallet/core/jni/proto/NEO$SigningInput;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1530
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1531
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/NEO$SigningInput;->inputs_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1532
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/NEO$SigningInput;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1533
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/NEO$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    const-string v0, ""

    .line 1534
    iput-object v0, p0, Lwallet/core/jni/proto/NEO$SigningInput;->gasAssetId_:Ljava/lang/String;

    .line 1535
    iput-object v0, p0, Lwallet/core/jni/proto/NEO$SigningInput;->gasChangeAddress_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2400()Lwallet/core/jni/proto/NEO$SigningInput;
    .locals 1

    .line 1525
    sget-object v0, Lwallet/core/jni/proto/NEO$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$SigningInput;

    return-object v0
.end method

.method static synthetic access$2500(Lwallet/core/jni/proto/NEO$SigningInput;ILwallet/core/jni/proto/NEO$TransactionInput;)V
    .locals 0

    .line 1525
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/NEO$SigningInput;->setInputs(ILwallet/core/jni/proto/NEO$TransactionInput;)V

    return-void
.end method

.method static synthetic access$2600(Lwallet/core/jni/proto/NEO$SigningInput;Lwallet/core/jni/proto/NEO$TransactionInput;)V
    .locals 0

    .line 1525
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEO$SigningInput;->addInputs(Lwallet/core/jni/proto/NEO$TransactionInput;)V

    return-void
.end method

.method static synthetic access$2700(Lwallet/core/jni/proto/NEO$SigningInput;ILwallet/core/jni/proto/NEO$TransactionInput;)V
    .locals 0

    .line 1525
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/NEO$SigningInput;->addInputs(ILwallet/core/jni/proto/NEO$TransactionInput;)V

    return-void
.end method

.method static synthetic access$2800(Lwallet/core/jni/proto/NEO$SigningInput;Ljava/lang/Iterable;)V
    .locals 0

    .line 1525
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEO$SigningInput;->addAllInputs(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$2900(Lwallet/core/jni/proto/NEO$SigningInput;)V
    .locals 0

    .line 1525
    invoke-direct {p0}, Lwallet/core/jni/proto/NEO$SigningInput;->clearInputs()V

    return-void
.end method

.method static synthetic access$3000(Lwallet/core/jni/proto/NEO$SigningInput;I)V
    .locals 0

    .line 1525
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEO$SigningInput;->removeInputs(I)V

    return-void
.end method

.method static synthetic access$3100(Lwallet/core/jni/proto/NEO$SigningInput;ILwallet/core/jni/proto/NEO$TransactionOutput;)V
    .locals 0

    .line 1525
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/NEO$SigningInput;->setOutputs(ILwallet/core/jni/proto/NEO$TransactionOutput;)V

    return-void
.end method

.method static synthetic access$3200(Lwallet/core/jni/proto/NEO$SigningInput;Lwallet/core/jni/proto/NEO$TransactionOutput;)V
    .locals 0

    .line 1525
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEO$SigningInput;->addOutputs(Lwallet/core/jni/proto/NEO$TransactionOutput;)V

    return-void
.end method

.method static synthetic access$3300(Lwallet/core/jni/proto/NEO$SigningInput;ILwallet/core/jni/proto/NEO$TransactionOutput;)V
    .locals 0

    .line 1525
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/NEO$SigningInput;->addOutputs(ILwallet/core/jni/proto/NEO$TransactionOutput;)V

    return-void
.end method

.method static synthetic access$3400(Lwallet/core/jni/proto/NEO$SigningInput;Ljava/lang/Iterable;)V
    .locals 0

    .line 1525
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEO$SigningInput;->addAllOutputs(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$3500(Lwallet/core/jni/proto/NEO$SigningInput;)V
    .locals 0

    .line 1525
    invoke-direct {p0}, Lwallet/core/jni/proto/NEO$SigningInput;->clearOutputs()V

    return-void
.end method

.method static synthetic access$3600(Lwallet/core/jni/proto/NEO$SigningInput;I)V
    .locals 0

    .line 1525
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEO$SigningInput;->removeOutputs(I)V

    return-void
.end method

.method static synthetic access$3700(Lwallet/core/jni/proto/NEO$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1525
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEO$SigningInput;->setPrivateKey(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3800(Lwallet/core/jni/proto/NEO$SigningInput;)V
    .locals 0

    .line 1525
    invoke-direct {p0}, Lwallet/core/jni/proto/NEO$SigningInput;->clearPrivateKey()V

    return-void
.end method

.method static synthetic access$3900(Lwallet/core/jni/proto/NEO$SigningInput;J)V
    .locals 0

    .line 1525
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/NEO$SigningInput;->setFee(J)V

    return-void
.end method

.method static synthetic access$4000(Lwallet/core/jni/proto/NEO$SigningInput;)V
    .locals 0

    .line 1525
    invoke-direct {p0}, Lwallet/core/jni/proto/NEO$SigningInput;->clearFee()V

    return-void
.end method

.method static synthetic access$4100(Lwallet/core/jni/proto/NEO$SigningInput;Ljava/lang/String;)V
    .locals 0

    .line 1525
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEO$SigningInput;->setGasAssetId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4200(Lwallet/core/jni/proto/NEO$SigningInput;)V
    .locals 0

    .line 1525
    invoke-direct {p0}, Lwallet/core/jni/proto/NEO$SigningInput;->clearGasAssetId()V

    return-void
.end method

.method static synthetic access$4300(Lwallet/core/jni/proto/NEO$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1525
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEO$SigningInput;->setGasAssetIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4400(Lwallet/core/jni/proto/NEO$SigningInput;Ljava/lang/String;)V
    .locals 0

    .line 1525
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEO$SigningInput;->setGasChangeAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4500(Lwallet/core/jni/proto/NEO$SigningInput;)V
    .locals 0

    .line 1525
    invoke-direct {p0}, Lwallet/core/jni/proto/NEO$SigningInput;->clearGasChangeAddress()V

    return-void
.end method

.method static synthetic access$4600(Lwallet/core/jni/proto/NEO$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1525
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEO$SigningInput;->setGasChangeAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4700(Lwallet/core/jni/proto/NEO$SigningInput;Lwallet/core/jni/proto/NEO$TransactionPlan;)V
    .locals 0

    .line 1525
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEO$SigningInput;->setPlan(Lwallet/core/jni/proto/NEO$TransactionPlan;)V

    return-void
.end method

.method static synthetic access$4800(Lwallet/core/jni/proto/NEO$SigningInput;Lwallet/core/jni/proto/NEO$TransactionPlan;)V
    .locals 0

    .line 1525
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEO$SigningInput;->mergePlan(Lwallet/core/jni/proto/NEO$TransactionPlan;)V

    return-void
.end method

.method static synthetic access$4900(Lwallet/core/jni/proto/NEO$SigningInput;)V
    .locals 0

    .line 1525
    invoke-direct {p0}, Lwallet/core/jni/proto/NEO$SigningInput;->clearPlan()V

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

    .line 1649
    invoke-direct {p0}, Lwallet/core/jni/proto/NEO$SigningInput;->ensureInputsIsMutable()V

    .line 1650
    iget-object v0, p0, Lwallet/core/jni/proto/NEO$SigningInput;->inputs_:Lcom/google/protobuf/Internal$ProtobufList;

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
            "Lwallet/core/jni/proto/NEO$TransactionOutput;",
            ">;)V"
        }
    .end annotation

    .line 1787
    invoke-direct {p0}, Lwallet/core/jni/proto/NEO$SigningInput;->ensureOutputsIsMutable()V

    .line 1788
    iget-object v0, p0, Lwallet/core/jni/proto/NEO$SigningInput;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 1636
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1637
    invoke-direct {p0}, Lwallet/core/jni/proto/NEO$SigningInput;->ensureInputsIsMutable()V

    .line 1638
    iget-object v0, p0, Lwallet/core/jni/proto/NEO$SigningInput;->inputs_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 1623
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1624
    invoke-direct {p0}, Lwallet/core/jni/proto/NEO$SigningInput;->ensureInputsIsMutable()V

    .line 1625
    iget-object v0, p0, Lwallet/core/jni/proto/NEO$SigningInput;->inputs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addOutputs(ILwallet/core/jni/proto/NEO$TransactionOutput;)V
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

    .line 1774
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1775
    invoke-direct {p0}, Lwallet/core/jni/proto/NEO$SigningInput;->ensureOutputsIsMutable()V

    .line 1776
    iget-object v0, p0, Lwallet/core/jni/proto/NEO$SigningInput;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addOutputs(Lwallet/core/jni/proto/NEO$TransactionOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1761
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1762
    invoke-direct {p0}, Lwallet/core/jni/proto/NEO$SigningInput;->ensureOutputsIsMutable()V

    .line 1763
    iget-object v0, p0, Lwallet/core/jni/proto/NEO$SigningInput;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearFee()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1887
    iput-wide v0, p0, Lwallet/core/jni/proto/NEO$SigningInput;->fee_:J

    return-void
.end method

.method private clearGasAssetId()V
    .locals 1

    .line 1940
    invoke-static {}, Lwallet/core/jni/proto/NEO$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/NEO$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEO$SigningInput;->getGasAssetId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/NEO$SigningInput;->gasAssetId_:Ljava/lang/String;

    return-void
.end method

.method private clearGasChangeAddress()V
    .locals 1

    .line 2007
    invoke-static {}, Lwallet/core/jni/proto/NEO$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/NEO$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEO$SigningInput;->getGasChangeAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/NEO$SigningInput;->gasChangeAddress_:Ljava/lang/String;

    return-void
.end method

.method private clearInputs()V
    .locals 1

    .line 1661
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/NEO$SigningInput;->inputs_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearOutputs()V
    .locals 1

    .line 1799
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/NEO$SigningInput;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearPlan()V
    .locals 1

    const/4 v0, 0x0

    .line 2086
    iput-object v0, p0, Lwallet/core/jni/proto/NEO$SigningInput;->plan_:Lwallet/core/jni/proto/NEO$TransactionPlan;

    return-void
.end method

.method private clearPrivateKey()V
    .locals 1

    .line 1849
    invoke-static {}, Lwallet/core/jni/proto/NEO$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/NEO$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/NEO$SigningInput;->getPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/NEO$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private ensureInputsIsMutable()V
    .locals 2

    .line 1595
    iget-object v0, p0, Lwallet/core/jni/proto/NEO$SigningInput;->inputs_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1596
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1598
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/NEO$SigningInput;->inputs_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureOutputsIsMutable()V
    .locals 2

    .line 1733
    iget-object v0, p0, Lwallet/core/jni/proto/NEO$SigningInput;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1734
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1736
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/NEO$SigningInput;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/NEO$SigningInput;
    .locals 1

    .line 2851
    sget-object v0, Lwallet/core/jni/proto/NEO$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$SigningInput;

    return-object v0
.end method

.method private mergePlan(Lwallet/core/jni/proto/NEO$TransactionPlan;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2069
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2070
    iget-object v0, p0, Lwallet/core/jni/proto/NEO$SigningInput;->plan_:Lwallet/core/jni/proto/NEO$TransactionPlan;

    if-eqz v0, :cond_0

    .line 2071
    invoke-static {}, Lwallet/core/jni/proto/NEO$TransactionPlan;->getDefaultInstance()Lwallet/core/jni/proto/NEO$TransactionPlan;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2072
    iget-object v0, p0, Lwallet/core/jni/proto/NEO$SigningInput;->plan_:Lwallet/core/jni/proto/NEO$TransactionPlan;

    .line 2073
    invoke-static {v0}, Lwallet/core/jni/proto/NEO$TransactionPlan;->newBuilder(Lwallet/core/jni/proto/NEO$TransactionPlan;)Lwallet/core/jni/proto/NEO$TransactionPlan$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/NEO$TransactionPlan$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/NEO$TransactionPlan;

    iput-object p1, p0, Lwallet/core/jni/proto/NEO$SigningInput;->plan_:Lwallet/core/jni/proto/NEO$TransactionPlan;

    goto :goto_0

    .line 2075
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/NEO$SigningInput;->plan_:Lwallet/core/jni/proto/NEO$TransactionPlan;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/NEO$SigningInput$Builder;
    .locals 1

    .line 2165
    sget-object v0, Lwallet/core/jni/proto/NEO$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$SigningInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/NEO$SigningInput$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/NEO$SigningInput;)Lwallet/core/jni/proto/NEO$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 2168
    sget-object v0, Lwallet/core/jni/proto/NEO$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$SigningInput;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$SigningInput$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/NEO$SigningInput;
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

    .line 2142
    sget-object v0, Lwallet/core/jni/proto/NEO$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$SigningInput;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEO$SigningInput;
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

    .line 2148
    sget-object v0, Lwallet/core/jni/proto/NEO$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/NEO$SigningInput;
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

    .line 2106
    sget-object v0, Lwallet/core/jni/proto/NEO$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEO$SigningInput;
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

    .line 2113
    sget-object v0, Lwallet/core/jni/proto/NEO$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/NEO$SigningInput;
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

    .line 2153
    sget-object v0, Lwallet/core/jni/proto/NEO$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEO$SigningInput;
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

    .line 2160
    sget-object v0, Lwallet/core/jni/proto/NEO$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/NEO$SigningInput;
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

    .line 2130
    sget-object v0, Lwallet/core/jni/proto/NEO$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEO$SigningInput;
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

    .line 2137
    sget-object v0, Lwallet/core/jni/proto/NEO$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/NEO$SigningInput;
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

    .line 2093
    sget-object v0, Lwallet/core/jni/proto/NEO$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEO$SigningInput;
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

    .line 2100
    sget-object v0, Lwallet/core/jni/proto/NEO$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$SigningInput;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/NEO$SigningInput;
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

    .line 2118
    sget-object v0, Lwallet/core/jni/proto/NEO$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$SigningInput;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEO$SigningInput;
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

    .line 2125
    sget-object v0, Lwallet/core/jni/proto/NEO$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEO$SigningInput;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/NEO$SigningInput;",
            ">;"
        }
    .end annotation

    .line 2857
    sget-object v0, Lwallet/core/jni/proto/NEO$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$SigningInput;

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

    .line 1671
    invoke-direct {p0}, Lwallet/core/jni/proto/NEO$SigningInput;->ensureInputsIsMutable()V

    .line 1672
    iget-object v0, p0, Lwallet/core/jni/proto/NEO$SigningInput;->inputs_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 1809
    invoke-direct {p0}, Lwallet/core/jni/proto/NEO$SigningInput;->ensureOutputsIsMutable()V

    .line 1810
    iget-object v0, p0, Lwallet/core/jni/proto/NEO$SigningInput;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

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

    .line 1876
    iput-wide p1, p0, Lwallet/core/jni/proto/NEO$SigningInput;->fee_:J

    return-void
.end method

.method private setGasAssetId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1927
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1929
    iput-object p1, p0, Lwallet/core/jni/proto/NEO$SigningInput;->gasAssetId_:Ljava/lang/String;

    return-void
.end method

.method private setGasAssetIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1952
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1953
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/NEO$SigningInput;->gasAssetId_:Ljava/lang/String;

    return-void
.end method

.method private setGasChangeAddress(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1994
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1996
    iput-object p1, p0, Lwallet/core/jni/proto/NEO$SigningInput;->gasChangeAddress_:Ljava/lang/String;

    return-void
.end method

.method private setGasChangeAddressBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2019
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2020
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/NEO$SigningInput;->gasChangeAddress_:Ljava/lang/String;

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

    .line 1611
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1612
    invoke-direct {p0}, Lwallet/core/jni/proto/NEO$SigningInput;->ensureInputsIsMutable()V

    .line 1613
    iget-object v0, p0, Lwallet/core/jni/proto/NEO$SigningInput;->inputs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setOutputs(ILwallet/core/jni/proto/NEO$TransactionOutput;)V
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

    .line 1749
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1750
    invoke-direct {p0}, Lwallet/core/jni/proto/NEO$SigningInput;->ensureOutputsIsMutable()V

    .line 1751
    iget-object v0, p0, Lwallet/core/jni/proto/NEO$SigningInput;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setPlan(Lwallet/core/jni/proto/NEO$TransactionPlan;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2056
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2057
    iput-object p1, p0, Lwallet/core/jni/proto/NEO$SigningInput;->plan_:Lwallet/core/jni/proto/NEO$TransactionPlan;

    return-void
.end method

.method private setPrivateKey(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1836
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1838
    iput-object p1, p0, Lwallet/core/jni/proto/NEO$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

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

    .line 2785
    sget-object p2, Lwallet/core/jni/proto/NEO$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2835
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 2829
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 2814
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/NEO$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 2816
    const-class p2, Lwallet/core/jni/proto/NEO$SigningInput;

    monitor-enter p2

    .line 2817
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/NEO$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 2819
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/NEO$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$SigningInput;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2822
    sput-object p1, Lwallet/core/jni/proto/NEO$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    .line 2824
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

    .line 2811
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/NEO$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$SigningInput;

    return-object p1

    :pswitch_4
    const/16 p1, 0x9

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "inputs_"

    aput-object v0, p1, p3

    .line 2793
    const-class p3, Lwallet/core/jni/proto/NEO$TransactionInput;

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "outputs_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-class p3, Lwallet/core/jni/proto/NEO$TransactionOutput;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "privateKey_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "fee_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "gasAssetId_"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "gasChangeAddress_"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "plan_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0007\u0000\u0000\u0001\u0007\u0007\u0000\u0002\u0000\u0001\u001b\u0002\u001b\u0003\n\u0004\u0002\u0005\u0208\u0006\u0208\u0007\t"

    .line 2807
    sget-object p3, Lwallet/core/jni/proto/NEO$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEO$SigningInput;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2790
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/NEO$SigningInput$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/NEO$SigningInput$Builder;-><init>(Lwallet/core/jni/proto/NEO$1;)V

    return-object p1

    .line 2787
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/NEO$SigningInput;

    invoke-direct {p1}, Lwallet/core/jni/proto/NEO$SigningInput;-><init>()V

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

.method public getFee()J
    .locals 2

    .line 1864
    iget-wide v0, p0, Lwallet/core/jni/proto/NEO$SigningInput;->fee_:J

    return-wide v0
.end method

.method public getGasAssetId()Ljava/lang/String;
    .locals 1

    .line 1902
    iget-object v0, p0, Lwallet/core/jni/proto/NEO$SigningInput;->gasAssetId_:Ljava/lang/String;

    return-object v0
.end method

.method public getGasAssetIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1915
    iget-object v0, p0, Lwallet/core/jni/proto/NEO$SigningInput;->gasAssetId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getGasChangeAddress()Ljava/lang/String;
    .locals 1

    .line 1969
    iget-object v0, p0, Lwallet/core/jni/proto/NEO$SigningInput;->gasChangeAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getGasChangeAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1982
    iget-object v0, p0, Lwallet/core/jni/proto/NEO$SigningInput;->gasChangeAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
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

    .line 1581
    iget-object v0, p0, Lwallet/core/jni/proto/NEO$SigningInput;->inputs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/NEO$TransactionInput;

    return-object p1
.end method

.method public getInputsCount()I
    .locals 1

    .line 1570
    iget-object v0, p0, Lwallet/core/jni/proto/NEO$SigningInput;->inputs_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 1548
    iget-object v0, p0, Lwallet/core/jni/proto/NEO$SigningInput;->inputs_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 1592
    iget-object v0, p0, Lwallet/core/jni/proto/NEO$SigningInput;->inputs_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 1559
    iget-object v0, p0, Lwallet/core/jni/proto/NEO$SigningInput;->inputs_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getOutputs(I)Lwallet/core/jni/proto/NEO$TransactionOutput;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1719
    iget-object v0, p0, Lwallet/core/jni/proto/NEO$SigningInput;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/NEO$TransactionOutput;

    return-object p1
.end method

.method public getOutputsCount()I
    .locals 1

    .line 1708
    iget-object v0, p0, Lwallet/core/jni/proto/NEO$SigningInput;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

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
            "Lwallet/core/jni/proto/NEO$TransactionOutput;",
            ">;"
        }
    .end annotation

    .line 1686
    iget-object v0, p0, Lwallet/core/jni/proto/NEO$SigningInput;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getOutputsOrBuilder(I)Lwallet/core/jni/proto/NEO$TransactionOutputOrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1730
    iget-object v0, p0, Lwallet/core/jni/proto/NEO$SigningInput;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/NEO$TransactionOutputOrBuilder;

    return-object p1
.end method

.method public getOutputsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lwallet/core/jni/proto/NEO$TransactionOutputOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1697
    iget-object v0, p0, Lwallet/core/jni/proto/NEO$SigningInput;->outputs_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getPlan()Lwallet/core/jni/proto/NEO$TransactionPlan;
    .locals 1

    .line 2046
    iget-object v0, p0, Lwallet/core/jni/proto/NEO$SigningInput;->plan_:Lwallet/core/jni/proto/NEO$TransactionPlan;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/NEO$TransactionPlan;->getDefaultInstance()Lwallet/core/jni/proto/NEO$TransactionPlan;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1825
    iget-object v0, p0, Lwallet/core/jni/proto/NEO$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasPlan()Z
    .locals 1

    .line 2035
    iget-object v0, p0, Lwallet/core/jni/proto/NEO$SigningInput;->plan_:Lwallet/core/jni/proto/NEO$TransactionPlan;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
