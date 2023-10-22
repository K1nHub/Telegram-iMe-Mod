.class public final Lwallet/core/jni/proto/Ethereum$SigningInput;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Ethereum.java"

# interfaces
.implements Lwallet/core/jni/proto/Ethereum$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Ethereum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SigningInput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Ethereum$SigningInput$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Ethereum$SigningInput;",
        "Lwallet/core/jni/proto/Ethereum$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Ethereum$SigningInputOrBuilder;"
    }
.end annotation


# static fields
.field public static final CHAIN_ID_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$SigningInput;

.field public static final GAS_LIMIT_FIELD_NUMBER:I = 0x5

.field public static final GAS_PRICE_FIELD_NUMBER:I = 0x4

.field public static final MAX_FEE_PER_GAS_FIELD_NUMBER:I = 0x7

.field public static final MAX_INCLUSION_FEE_PER_GAS_FIELD_NUMBER:I = 0x6

.field public static final NONCE_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Ethereum$SigningInput;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIVATE_KEY_FIELD_NUMBER:I = 0x9

.field public static final TO_ADDRESS_FIELD_NUMBER:I = 0x8

.field public static final TRANSACTION_FIELD_NUMBER:I = 0xa

.field public static final TX_MODE_FIELD_NUMBER:I = 0x3

.field public static final USER_OPERATION_FIELD_NUMBER:I = 0xb


# instance fields
.field private chainId_:Lcom/google/protobuf/ByteString;

.field private gasLimit_:Lcom/google/protobuf/ByteString;

.field private gasPrice_:Lcom/google/protobuf/ByteString;

.field private maxFeePerGas_:Lcom/google/protobuf/ByteString;

.field private maxInclusionFeePerGas_:Lcom/google/protobuf/ByteString;

.field private nonce_:Lcom/google/protobuf/ByteString;

.field private privateKey_:Lcom/google/protobuf/ByteString;

.field private toAddress_:Ljava/lang/String;

.field private transaction_:Lwallet/core/jni/proto/Ethereum$Transaction;

.field private txMode_:I

.field private userOperation_:Lwallet/core/jni/proto/Ethereum$UserOperation;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 6678
    new-instance v0, Lwallet/core/jni/proto/Ethereum$SigningInput;

    invoke-direct {v0}, Lwallet/core/jni/proto/Ethereum$SigningInput;-><init>()V

    .line 6681
    sput-object v0, Lwallet/core/jni/proto/Ethereum$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$SigningInput;

    .line 6682
    const-class v1, Lwallet/core/jni/proto/Ethereum$SigningInput;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 5383
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 5384
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Ethereum$SigningInput;->chainId_:Lcom/google/protobuf/ByteString;

    .line 5385
    iput-object v0, p0, Lwallet/core/jni/proto/Ethereum$SigningInput;->nonce_:Lcom/google/protobuf/ByteString;

    .line 5386
    iput-object v0, p0, Lwallet/core/jni/proto/Ethereum$SigningInput;->gasPrice_:Lcom/google/protobuf/ByteString;

    .line 5387
    iput-object v0, p0, Lwallet/core/jni/proto/Ethereum$SigningInput;->gasLimit_:Lcom/google/protobuf/ByteString;

    .line 5388
    iput-object v0, p0, Lwallet/core/jni/proto/Ethereum$SigningInput;->maxInclusionFeePerGas_:Lcom/google/protobuf/ByteString;

    .line 5389
    iput-object v0, p0, Lwallet/core/jni/proto/Ethereum$SigningInput;->maxFeePerGas_:Lcom/google/protobuf/ByteString;

    const-string v1, ""

    .line 5390
    iput-object v1, p0, Lwallet/core/jni/proto/Ethereum$SigningInput;->toAddress_:Ljava/lang/String;

    .line 5391
    iput-object v0, p0, Lwallet/core/jni/proto/Ethereum$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$10000(Lwallet/core/jni/proto/Ethereum$SigningInput;)V
    .locals 0

    .line 5378
    invoke-direct {p0}, Lwallet/core/jni/proto/Ethereum$SigningInput;->clearTxMode()V

    return-void
.end method

.method static synthetic access$10100(Lwallet/core/jni/proto/Ethereum$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 5378
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ethereum$SigningInput;->setGasPrice(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$10200(Lwallet/core/jni/proto/Ethereum$SigningInput;)V
    .locals 0

    .line 5378
    invoke-direct {p0}, Lwallet/core/jni/proto/Ethereum$SigningInput;->clearGasPrice()V

    return-void
.end method

.method static synthetic access$10300(Lwallet/core/jni/proto/Ethereum$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 5378
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ethereum$SigningInput;->setGasLimit(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$10400(Lwallet/core/jni/proto/Ethereum$SigningInput;)V
    .locals 0

    .line 5378
    invoke-direct {p0}, Lwallet/core/jni/proto/Ethereum$SigningInput;->clearGasLimit()V

    return-void
.end method

.method static synthetic access$10500(Lwallet/core/jni/proto/Ethereum$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 5378
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ethereum$SigningInput;->setMaxInclusionFeePerGas(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$10600(Lwallet/core/jni/proto/Ethereum$SigningInput;)V
    .locals 0

    .line 5378
    invoke-direct {p0}, Lwallet/core/jni/proto/Ethereum$SigningInput;->clearMaxInclusionFeePerGas()V

    return-void
.end method

.method static synthetic access$10700(Lwallet/core/jni/proto/Ethereum$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 5378
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ethereum$SigningInput;->setMaxFeePerGas(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$10800(Lwallet/core/jni/proto/Ethereum$SigningInput;)V
    .locals 0

    .line 5378
    invoke-direct {p0}, Lwallet/core/jni/proto/Ethereum$SigningInput;->clearMaxFeePerGas()V

    return-void
.end method

.method static synthetic access$10900(Lwallet/core/jni/proto/Ethereum$SigningInput;Ljava/lang/String;)V
    .locals 0

    .line 5378
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ethereum$SigningInput;->setToAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11000(Lwallet/core/jni/proto/Ethereum$SigningInput;)V
    .locals 0

    .line 5378
    invoke-direct {p0}, Lwallet/core/jni/proto/Ethereum$SigningInput;->clearToAddress()V

    return-void
.end method

.method static synthetic access$11100(Lwallet/core/jni/proto/Ethereum$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 5378
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ethereum$SigningInput;->setToAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$11200(Lwallet/core/jni/proto/Ethereum$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 5378
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ethereum$SigningInput;->setPrivateKey(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$11300(Lwallet/core/jni/proto/Ethereum$SigningInput;)V
    .locals 0

    .line 5378
    invoke-direct {p0}, Lwallet/core/jni/proto/Ethereum$SigningInput;->clearPrivateKey()V

    return-void
.end method

.method static synthetic access$11400(Lwallet/core/jni/proto/Ethereum$SigningInput;Lwallet/core/jni/proto/Ethereum$Transaction;)V
    .locals 0

    .line 5378
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ethereum$SigningInput;->setTransaction(Lwallet/core/jni/proto/Ethereum$Transaction;)V

    return-void
.end method

.method static synthetic access$11500(Lwallet/core/jni/proto/Ethereum$SigningInput;Lwallet/core/jni/proto/Ethereum$Transaction;)V
    .locals 0

    .line 5378
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ethereum$SigningInput;->mergeTransaction(Lwallet/core/jni/proto/Ethereum$Transaction;)V

    return-void
.end method

.method static synthetic access$11600(Lwallet/core/jni/proto/Ethereum$SigningInput;)V
    .locals 0

    .line 5378
    invoke-direct {p0}, Lwallet/core/jni/proto/Ethereum$SigningInput;->clearTransaction()V

    return-void
.end method

.method static synthetic access$11700(Lwallet/core/jni/proto/Ethereum$SigningInput;Lwallet/core/jni/proto/Ethereum$UserOperation;)V
    .locals 0

    .line 5378
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ethereum$SigningInput;->setUserOperation(Lwallet/core/jni/proto/Ethereum$UserOperation;)V

    return-void
.end method

.method static synthetic access$11800(Lwallet/core/jni/proto/Ethereum$SigningInput;Lwallet/core/jni/proto/Ethereum$UserOperation;)V
    .locals 0

    .line 5378
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ethereum$SigningInput;->mergeUserOperation(Lwallet/core/jni/proto/Ethereum$UserOperation;)V

    return-void
.end method

.method static synthetic access$11900(Lwallet/core/jni/proto/Ethereum$SigningInput;)V
    .locals 0

    .line 5378
    invoke-direct {p0}, Lwallet/core/jni/proto/Ethereum$SigningInput;->clearUserOperation()V

    return-void
.end method

.method static synthetic access$9300()Lwallet/core/jni/proto/Ethereum$SigningInput;
    .locals 1

    .line 5378
    sget-object v0, Lwallet/core/jni/proto/Ethereum$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$SigningInput;

    return-object v0
.end method

.method static synthetic access$9400(Lwallet/core/jni/proto/Ethereum$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 5378
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ethereum$SigningInput;->setChainId(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$9500(Lwallet/core/jni/proto/Ethereum$SigningInput;)V
    .locals 0

    .line 5378
    invoke-direct {p0}, Lwallet/core/jni/proto/Ethereum$SigningInput;->clearChainId()V

    return-void
.end method

.method static synthetic access$9600(Lwallet/core/jni/proto/Ethereum$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 5378
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ethereum$SigningInput;->setNonce(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$9700(Lwallet/core/jni/proto/Ethereum$SigningInput;)V
    .locals 0

    .line 5378
    invoke-direct {p0}, Lwallet/core/jni/proto/Ethereum$SigningInput;->clearNonce()V

    return-void
.end method

.method static synthetic access$9800(Lwallet/core/jni/proto/Ethereum$SigningInput;I)V
    .locals 0

    .line 5378
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ethereum$SigningInput;->setTxModeValue(I)V

    return-void
.end method

.method static synthetic access$9900(Lwallet/core/jni/proto/Ethereum$SigningInput;Lwallet/core/jni/proto/Ethereum$TransactionMode;)V
    .locals 0

    .line 5378
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ethereum$SigningInput;->setTxMode(Lwallet/core/jni/proto/Ethereum$TransactionMode;)V

    return-void
.end method

.method private clearChainId()V
    .locals 1

    .line 5429
    invoke-static {}, Lwallet/core/jni/proto/Ethereum$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Ethereum$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$SigningInput;->getChainId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Ethereum$SigningInput;->chainId_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearGasLimit()V
    .locals 1

    .line 5616
    invoke-static {}, Lwallet/core/jni/proto/Ethereum$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Ethereum$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$SigningInput;->getGasLimit()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Ethereum$SigningInput;->gasLimit_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearGasPrice()V
    .locals 1

    .line 5577
    invoke-static {}, Lwallet/core/jni/proto/Ethereum$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Ethereum$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$SigningInput;->getGasPrice()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Ethereum$SigningInput;->gasPrice_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearMaxFeePerGas()V
    .locals 1

    .line 5700
    invoke-static {}, Lwallet/core/jni/proto/Ethereum$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Ethereum$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$SigningInput;->getMaxFeePerGas()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Ethereum$SigningInput;->maxFeePerGas_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearMaxInclusionFeePerGas()V
    .locals 1

    .line 5658
    invoke-static {}, Lwallet/core/jni/proto/Ethereum$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Ethereum$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$SigningInput;->getMaxInclusionFeePerGas()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Ethereum$SigningInput;->maxInclusionFeePerGas_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearNonce()V
    .locals 1

    .line 5468
    invoke-static {}, Lwallet/core/jni/proto/Ethereum$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Ethereum$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$SigningInput;->getNonce()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Ethereum$SigningInput;->nonce_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearPrivateKey()V
    .locals 1

    .line 5806
    invoke-static {}, Lwallet/core/jni/proto/Ethereum$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Ethereum$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$SigningInput;->getPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Ethereum$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearToAddress()V
    .locals 1

    .line 5753
    invoke-static {}, Lwallet/core/jni/proto/Ethereum$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Ethereum$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$SigningInput;->getToAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Ethereum$SigningInput;->toAddress_:Ljava/lang/String;

    return-void
.end method

.method private clearTransaction()V
    .locals 1

    const/4 v0, 0x0

    .line 5871
    iput-object v0, p0, Lwallet/core/jni/proto/Ethereum$SigningInput;->transaction_:Lwallet/core/jni/proto/Ethereum$Transaction;

    return-void
.end method

.method private clearTxMode()V
    .locals 1

    const/4 v0, 0x0

    .line 5535
    iput v0, p0, Lwallet/core/jni/proto/Ethereum$SigningInput;->txMode_:I

    return-void
.end method

.method private clearUserOperation()V
    .locals 1

    const/4 v0, 0x0

    .line 5937
    iput-object v0, p0, Lwallet/core/jni/proto/Ethereum$SigningInput;->userOperation_:Lwallet/core/jni/proto/Ethereum$UserOperation;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Ethereum$SigningInput;
    .locals 1

    .line 6687
    sget-object v0, Lwallet/core/jni/proto/Ethereum$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$SigningInput;

    return-object v0
.end method

.method private mergeTransaction(Lwallet/core/jni/proto/Ethereum$Transaction;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5854
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5855
    iget-object v0, p0, Lwallet/core/jni/proto/Ethereum$SigningInput;->transaction_:Lwallet/core/jni/proto/Ethereum$Transaction;

    if-eqz v0, :cond_0

    .line 5856
    invoke-static {}, Lwallet/core/jni/proto/Ethereum$Transaction;->getDefaultInstance()Lwallet/core/jni/proto/Ethereum$Transaction;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5857
    iget-object v0, p0, Lwallet/core/jni/proto/Ethereum$SigningInput;->transaction_:Lwallet/core/jni/proto/Ethereum$Transaction;

    .line 5858
    invoke-static {v0}, Lwallet/core/jni/proto/Ethereum$Transaction;->newBuilder(Lwallet/core/jni/proto/Ethereum$Transaction;)Lwallet/core/jni/proto/Ethereum$Transaction$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Ethereum$Transaction$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Ethereum$Transaction;

    iput-object p1, p0, Lwallet/core/jni/proto/Ethereum$SigningInput;->transaction_:Lwallet/core/jni/proto/Ethereum$Transaction;

    goto :goto_0

    .line 5860
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Ethereum$SigningInput;->transaction_:Lwallet/core/jni/proto/Ethereum$Transaction;

    :goto_0
    return-void
.end method

.method private mergeUserOperation(Lwallet/core/jni/proto/Ethereum$UserOperation;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5920
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5921
    iget-object v0, p0, Lwallet/core/jni/proto/Ethereum$SigningInput;->userOperation_:Lwallet/core/jni/proto/Ethereum$UserOperation;

    if-eqz v0, :cond_0

    .line 5922
    invoke-static {}, Lwallet/core/jni/proto/Ethereum$UserOperation;->getDefaultInstance()Lwallet/core/jni/proto/Ethereum$UserOperation;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5923
    iget-object v0, p0, Lwallet/core/jni/proto/Ethereum$SigningInput;->userOperation_:Lwallet/core/jni/proto/Ethereum$UserOperation;

    .line 5924
    invoke-static {v0}, Lwallet/core/jni/proto/Ethereum$UserOperation;->newBuilder(Lwallet/core/jni/proto/Ethereum$UserOperation;)Lwallet/core/jni/proto/Ethereum$UserOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Ethereum$UserOperation$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Ethereum$UserOperation;

    iput-object p1, p0, Lwallet/core/jni/proto/Ethereum$SigningInput;->userOperation_:Lwallet/core/jni/proto/Ethereum$UserOperation;

    goto :goto_0

    .line 5926
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Ethereum$SigningInput;->userOperation_:Lwallet/core/jni/proto/Ethereum$UserOperation;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Ethereum$SigningInput$Builder;
    .locals 1

    .line 6016
    sget-object v0, Lwallet/core/jni/proto/Ethereum$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$SigningInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Ethereum$SigningInput$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Ethereum$SigningInput;)Lwallet/core/jni/proto/Ethereum$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 6019
    sget-object v0, Lwallet/core/jni/proto/Ethereum$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$SigningInput;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$SigningInput$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Ethereum$SigningInput;
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

    .line 5993
    sget-object v0, Lwallet/core/jni/proto/Ethereum$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$SigningInput;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ethereum$SigningInput;
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

    .line 5999
    sget-object v0, Lwallet/core/jni/proto/Ethereum$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ethereum$SigningInput;
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

    .line 5957
    sget-object v0, Lwallet/core/jni/proto/Ethereum$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ethereum$SigningInput;
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

    .line 5964
    sget-object v0, Lwallet/core/jni/proto/Ethereum$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Ethereum$SigningInput;
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

    .line 6004
    sget-object v0, Lwallet/core/jni/proto/Ethereum$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ethereum$SigningInput;
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

    .line 6011
    sget-object v0, Lwallet/core/jni/proto/Ethereum$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Ethereum$SigningInput;
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

    .line 5981
    sget-object v0, Lwallet/core/jni/proto/Ethereum$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ethereum$SigningInput;
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

    .line 5988
    sget-object v0, Lwallet/core/jni/proto/Ethereum$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Ethereum$SigningInput;
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

    .line 5944
    sget-object v0, Lwallet/core/jni/proto/Ethereum$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ethereum$SigningInput;
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

    .line 5951
    sget-object v0, Lwallet/core/jni/proto/Ethereum$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$SigningInput;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Ethereum$SigningInput;
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

    .line 5969
    sget-object v0, Lwallet/core/jni/proto/Ethereum$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$SigningInput;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ethereum$SigningInput;
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

    .line 5976
    sget-object v0, Lwallet/core/jni/proto/Ethereum$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$SigningInput;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Ethereum$SigningInput;",
            ">;"
        }
    .end annotation

    .line 6693
    sget-object v0, Lwallet/core/jni/proto/Ethereum$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$SigningInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setChainId(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5416
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5418
    iput-object p1, p0, Lwallet/core/jni/proto/Ethereum$SigningInput;->chainId_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setGasLimit(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5603
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5605
    iput-object p1, p0, Lwallet/core/jni/proto/Ethereum$SigningInput;->gasLimit_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setGasPrice(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5563
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5565
    iput-object p1, p0, Lwallet/core/jni/proto/Ethereum$SigningInput;->gasPrice_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setMaxFeePerGas(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5686
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5688
    iput-object p1, p0, Lwallet/core/jni/proto/Ethereum$SigningInput;->maxFeePerGas_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setMaxInclusionFeePerGas(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5644
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5646
    iput-object p1, p0, Lwallet/core/jni/proto/Ethereum$SigningInput;->maxInclusionFeePerGas_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setNonce(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5455
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5457
    iput-object p1, p0, Lwallet/core/jni/proto/Ethereum$SigningInput;->nonce_:Lcom/google/protobuf/ByteString;

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

    .line 5793
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5795
    iput-object p1, p0, Lwallet/core/jni/proto/Ethereum$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setToAddress(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5740
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5742
    iput-object p1, p0, Lwallet/core/jni/proto/Ethereum$SigningInput;->toAddress_:Ljava/lang/String;

    return-void
.end method

.method private setToAddressBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5765
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 5766
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Ethereum$SigningInput;->toAddress_:Ljava/lang/String;

    return-void
.end method

.method private setTransaction(Lwallet/core/jni/proto/Ethereum$Transaction;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5841
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5842
    iput-object p1, p0, Lwallet/core/jni/proto/Ethereum$SigningInput;->transaction_:Lwallet/core/jni/proto/Ethereum$Transaction;

    return-void
.end method

.method private setTxMode(Lwallet/core/jni/proto/Ethereum$TransactionMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5522
    invoke-virtual {p1}, Lwallet/core/jni/proto/Ethereum$TransactionMode;->getNumber()I

    move-result p1

    iput p1, p0, Lwallet/core/jni/proto/Ethereum$SigningInput;->txMode_:I

    return-void
.end method

.method private setTxModeValue(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5510
    iput p1, p0, Lwallet/core/jni/proto/Ethereum$SigningInput;->txMode_:I

    return-void
.end method

.method private setUserOperation(Lwallet/core/jni/proto/Ethereum$UserOperation;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5907
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5908
    iput-object p1, p0, Lwallet/core/jni/proto/Ethereum$SigningInput;->userOperation_:Lwallet/core/jni/proto/Ethereum$UserOperation;

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

    .line 6619
    sget-object p2, Lwallet/core/jni/proto/Ethereum$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 6671
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 6665
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 6650
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Ethereum$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 6652
    const-class p2, Lwallet/core/jni/proto/Ethereum$SigningInput;

    monitor-enter p2

    .line 6653
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Ethereum$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 6655
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Ethereum$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$SigningInput;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 6658
    sput-object p1, Lwallet/core/jni/proto/Ethereum$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    .line 6660
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

    .line 6647
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Ethereum$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$SigningInput;

    return-object p1

    :pswitch_4
    const/16 p1, 0xb

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "chainId_"

    aput-object v0, p1, p3

    const-string p3, "nonce_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "txMode_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "gasPrice_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "gasLimit_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "maxInclusionFeePerGas_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "maxFeePerGas_"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "toAddress_"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "privateKey_"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "transaction_"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "userOperation_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u000b\u0000\u0000\u0001\u000b\u000b\u0000\u0000\u0000\u0001\n\u0002\n\u0003\u000c\u0004\n\u0005\n\u0006\n\u0007\n\u0008\u0208\t\n\n\t\u000b\t"

    .line 6643
    sget-object p3, Lwallet/core/jni/proto/Ethereum$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$SigningInput;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6624
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Ethereum$SigningInput$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Ethereum$SigningInput$Builder;-><init>(Lwallet/core/jni/proto/Ethereum$1;)V

    return-object p1

    .line 6621
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Ethereum$SigningInput;

    invoke-direct {p1}, Lwallet/core/jni/proto/Ethereum$SigningInput;-><init>()V

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

.method public getChainId()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5405
    iget-object v0, p0, Lwallet/core/jni/proto/Ethereum$SigningInput;->chainId_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getGasLimit()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5592
    iget-object v0, p0, Lwallet/core/jni/proto/Ethereum$SigningInput;->gasLimit_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getGasPrice()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5551
    iget-object v0, p0, Lwallet/core/jni/proto/Ethereum$SigningInput;->gasPrice_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getMaxFeePerGas()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5674
    iget-object v0, p0, Lwallet/core/jni/proto/Ethereum$SigningInput;->maxFeePerGas_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getMaxInclusionFeePerGas()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5632
    iget-object v0, p0, Lwallet/core/jni/proto/Ethereum$SigningInput;->maxInclusionFeePerGas_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getNonce()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5444
    iget-object v0, p0, Lwallet/core/jni/proto/Ethereum$SigningInput;->nonce_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5782
    iget-object v0, p0, Lwallet/core/jni/proto/Ethereum$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getToAddress()Ljava/lang/String;
    .locals 1

    .line 5715
    iget-object v0, p0, Lwallet/core/jni/proto/Ethereum$SigningInput;->toAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getToAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5728
    iget-object v0, p0, Lwallet/core/jni/proto/Ethereum$SigningInput;->toAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTransaction()Lwallet/core/jni/proto/Ethereum$Transaction;
    .locals 1

    .line 5831
    iget-object v0, p0, Lwallet/core/jni/proto/Ethereum$SigningInput;->transaction_:Lwallet/core/jni/proto/Ethereum$Transaction;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/Ethereum$Transaction;->getDefaultInstance()Lwallet/core/jni/proto/Ethereum$Transaction;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTxMode()Lwallet/core/jni/proto/Ethereum$TransactionMode;
    .locals 1

    .line 5497
    iget v0, p0, Lwallet/core/jni/proto/Ethereum$SigningInput;->txMode_:I

    invoke-static {v0}, Lwallet/core/jni/proto/Ethereum$TransactionMode;->forNumber(I)Lwallet/core/jni/proto/Ethereum$TransactionMode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5498
    sget-object v0, Lwallet/core/jni/proto/Ethereum$TransactionMode;->UNRECOGNIZED:Lwallet/core/jni/proto/Ethereum$TransactionMode;

    :cond_0
    return-object v0
.end method

.method public getTxModeValue()I
    .locals 1

    .line 5484
    iget v0, p0, Lwallet/core/jni/proto/Ethereum$SigningInput;->txMode_:I

    return v0
.end method

.method public getUserOperation()Lwallet/core/jni/proto/Ethereum$UserOperation;
    .locals 1

    .line 5897
    iget-object v0, p0, Lwallet/core/jni/proto/Ethereum$SigningInput;->userOperation_:Lwallet/core/jni/proto/Ethereum$UserOperation;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/Ethereum$UserOperation;->getDefaultInstance()Lwallet/core/jni/proto/Ethereum$UserOperation;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasTransaction()Z
    .locals 1

    .line 5820
    iget-object v0, p0, Lwallet/core/jni/proto/Ethereum$SigningInput;->transaction_:Lwallet/core/jni/proto/Ethereum$Transaction;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUserOperation()Z
    .locals 1

    .line 5886
    iget-object v0, p0, Lwallet/core/jni/proto/Ethereum$SigningInput;->userOperation_:Lwallet/core/jni/proto/Ethereum$UserOperation;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
