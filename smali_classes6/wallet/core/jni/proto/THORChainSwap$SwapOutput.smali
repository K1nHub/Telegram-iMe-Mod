.class public final Lwallet/core/jni/proto/THORChainSwap$SwapOutput;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "THORChainSwap.java"

# interfaces
.implements Lwallet/core/jni/proto/THORChainSwap$SwapOutputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/THORChainSwap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SwapOutput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/THORChainSwap$SwapOutput$Builder;,
        Lwallet/core/jni/proto/THORChainSwap$SwapOutput$SigningInputOneofCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/THORChainSwap$SwapOutput;",
        "Lwallet/core/jni/proto/THORChainSwap$SwapOutput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/THORChainSwap$SwapOutputOrBuilder;"
    }
.end annotation


# static fields
.field public static final BINANCE_FIELD_NUMBER:I = 0x6

.field public static final BITCOIN_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

.field public static final ERROR_FIELD_NUMBER:I = 0x3

.field public static final ETHEREUM_FIELD_NUMBER:I = 0x5

.field public static final FROM_CHAIN_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/THORChainSwap$SwapOutput;",
            ">;"
        }
    .end annotation
.end field

.field public static final TO_CHAIN_FIELD_NUMBER:I = 0x2


# instance fields
.field private error_:Lwallet/core/jni/proto/THORChainSwap$Error;

.field private fromChain_:I

.field private signingInputOneofCase_:I

.field private signingInputOneof_:Ljava/lang/Object;

.field private toChain_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 4471
    new-instance v0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

    invoke-direct {v0}, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;-><init>()V

    .line 4474
    sput-object v0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

    .line 4475
    const-class v1, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3563
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 3565
    iput v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->signingInputOneofCase_:I

    return-void
.end method

.method static synthetic access$5600()Lwallet/core/jni/proto/THORChainSwap$SwapOutput;
    .locals 1

    .line 3558
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

    return-object v0
.end method

.method static synthetic access$5700(Lwallet/core/jni/proto/THORChainSwap$SwapOutput;)V
    .locals 0

    .line 3558
    invoke-direct {p0}, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->clearSigningInputOneof()V

    return-void
.end method

.method static synthetic access$5800(Lwallet/core/jni/proto/THORChainSwap$SwapOutput;I)V
    .locals 0

    .line 3558
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->setFromChainValue(I)V

    return-void
.end method

.method static synthetic access$5900(Lwallet/core/jni/proto/THORChainSwap$SwapOutput;Lwallet/core/jni/proto/THORChainSwap$Chain;)V
    .locals 0

    .line 3558
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->setFromChain(Lwallet/core/jni/proto/THORChainSwap$Chain;)V

    return-void
.end method

.method static synthetic access$6000(Lwallet/core/jni/proto/THORChainSwap$SwapOutput;)V
    .locals 0

    .line 3558
    invoke-direct {p0}, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->clearFromChain()V

    return-void
.end method

.method static synthetic access$6100(Lwallet/core/jni/proto/THORChainSwap$SwapOutput;I)V
    .locals 0

    .line 3558
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->setToChainValue(I)V

    return-void
.end method

.method static synthetic access$6200(Lwallet/core/jni/proto/THORChainSwap$SwapOutput;Lwallet/core/jni/proto/THORChainSwap$Chain;)V
    .locals 0

    .line 3558
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->setToChain(Lwallet/core/jni/proto/THORChainSwap$Chain;)V

    return-void
.end method

.method static synthetic access$6300(Lwallet/core/jni/proto/THORChainSwap$SwapOutput;)V
    .locals 0

    .line 3558
    invoke-direct {p0}, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->clearToChain()V

    return-void
.end method

.method static synthetic access$6400(Lwallet/core/jni/proto/THORChainSwap$SwapOutput;Lwallet/core/jni/proto/THORChainSwap$Error;)V
    .locals 0

    .line 3558
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->setError(Lwallet/core/jni/proto/THORChainSwap$Error;)V

    return-void
.end method

.method static synthetic access$6500(Lwallet/core/jni/proto/THORChainSwap$SwapOutput;Lwallet/core/jni/proto/THORChainSwap$Error;)V
    .locals 0

    .line 3558
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->mergeError(Lwallet/core/jni/proto/THORChainSwap$Error;)V

    return-void
.end method

.method static synthetic access$6600(Lwallet/core/jni/proto/THORChainSwap$SwapOutput;)V
    .locals 0

    .line 3558
    invoke-direct {p0}, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->clearError()V

    return-void
.end method

.method static synthetic access$6700(Lwallet/core/jni/proto/THORChainSwap$SwapOutput;Lwallet/core/jni/proto/Bitcoin$SigningInput;)V
    .locals 0

    .line 3558
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->setBitcoin(Lwallet/core/jni/proto/Bitcoin$SigningInput;)V

    return-void
.end method

.method static synthetic access$6800(Lwallet/core/jni/proto/THORChainSwap$SwapOutput;Lwallet/core/jni/proto/Bitcoin$SigningInput;)V
    .locals 0

    .line 3558
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->mergeBitcoin(Lwallet/core/jni/proto/Bitcoin$SigningInput;)V

    return-void
.end method

.method static synthetic access$6900(Lwallet/core/jni/proto/THORChainSwap$SwapOutput;)V
    .locals 0

    .line 3558
    invoke-direct {p0}, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->clearBitcoin()V

    return-void
.end method

.method static synthetic access$7000(Lwallet/core/jni/proto/THORChainSwap$SwapOutput;Lwallet/core/jni/proto/Ethereum$SigningInput;)V
    .locals 0

    .line 3558
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->setEthereum(Lwallet/core/jni/proto/Ethereum$SigningInput;)V

    return-void
.end method

.method static synthetic access$7100(Lwallet/core/jni/proto/THORChainSwap$SwapOutput;Lwallet/core/jni/proto/Ethereum$SigningInput;)V
    .locals 0

    .line 3558
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->mergeEthereum(Lwallet/core/jni/proto/Ethereum$SigningInput;)V

    return-void
.end method

.method static synthetic access$7200(Lwallet/core/jni/proto/THORChainSwap$SwapOutput;)V
    .locals 0

    .line 3558
    invoke-direct {p0}, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->clearEthereum()V

    return-void
.end method

.method static synthetic access$7300(Lwallet/core/jni/proto/THORChainSwap$SwapOutput;Lwallet/core/jni/proto/Binance$SigningInput;)V
    .locals 0

    .line 3558
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->setBinance(Lwallet/core/jni/proto/Binance$SigningInput;)V

    return-void
.end method

.method static synthetic access$7400(Lwallet/core/jni/proto/THORChainSwap$SwapOutput;Lwallet/core/jni/proto/Binance$SigningInput;)V
    .locals 0

    .line 3558
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->mergeBinance(Lwallet/core/jni/proto/Binance$SigningInput;)V

    return-void
.end method

.method static synthetic access$7500(Lwallet/core/jni/proto/THORChainSwap$SwapOutput;)V
    .locals 0

    .line 3558
    invoke-direct {p0}, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->clearBinance()V

    return-void
.end method

.method private clearBinance()V
    .locals 2

    .line 3944
    iget v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->signingInputOneofCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 3945
    iput v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->signingInputOneofCase_:I

    const/4 v0, 0x0

    .line 3946
    iput-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->signingInputOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearBitcoin()V
    .locals 2

    .line 3844
    iget v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->signingInputOneofCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 3845
    iput v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->signingInputOneofCase_:I

    const/4 v0, 0x0

    .line 3846
    iput-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->signingInputOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearError()V
    .locals 1

    const/4 v0, 0x0

    .line 3796
    iput-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->error_:Lwallet/core/jni/proto/THORChainSwap$Error;

    return-void
.end method

.method private clearEthereum()V
    .locals 2

    .line 3894
    iget v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->signingInputOneofCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 3895
    iput v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->signingInputOneofCase_:I

    const/4 v0, 0x0

    .line 3896
    iput-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->signingInputOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearFromChain()V
    .locals 1

    const/4 v0, 0x0

    .line 3669
    iput v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->fromChain_:I

    return-void
.end method

.method private clearSigningInputOneof()V
    .locals 1

    const/4 v0, 0x0

    .line 3606
    iput v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->signingInputOneofCase_:I

    const/4 v0, 0x0

    .line 3607
    iput-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->signingInputOneof_:Ljava/lang/Object;

    return-void
.end method

.method private clearToChain()V
    .locals 1

    const/4 v0, 0x0

    .line 3731
    iput v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->toChain_:I

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/THORChainSwap$SwapOutput;
    .locals 1

    .line 4480
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

    return-object v0
.end method

.method private mergeBinance(Lwallet/core/jni/proto/Binance$SigningInput;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3930
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3931
    iget v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->signingInputOneofCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->signingInputOneof_:Ljava/lang/Object;

    .line 3932
    invoke-static {}, Lwallet/core/jni/proto/Binance$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Binance$SigningInput;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 3933
    iget-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->signingInputOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->newBuilder(Lwallet/core/jni/proto/Binance$SigningInput;)Lwallet/core/jni/proto/Binance$SigningInput$Builder;

    move-result-object v0

    .line 3934
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Binance$SigningInput$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->signingInputOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 3936
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->signingInputOneof_:Ljava/lang/Object;

    .line 3938
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->signingInputOneofCase_:I

    return-void
.end method

.method private mergeBitcoin(Lwallet/core/jni/proto/Bitcoin$SigningInput;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3830
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3831
    iget v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->signingInputOneofCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->signingInputOneof_:Ljava/lang/Object;

    .line 3832
    invoke-static {}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Bitcoin$SigningInput;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 3833
    iget-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->signingInputOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->newBuilder(Lwallet/core/jni/proto/Bitcoin$SigningInput;)Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;

    move-result-object v0

    .line 3834
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->signingInputOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 3836
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->signingInputOneof_:Ljava/lang/Object;

    .line 3838
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->signingInputOneofCase_:I

    return-void
.end method

.method private mergeError(Lwallet/core/jni/proto/THORChainSwap$Error;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3779
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3780
    iget-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->error_:Lwallet/core/jni/proto/THORChainSwap$Error;

    if-eqz v0, :cond_0

    .line 3781
    invoke-static {}, Lwallet/core/jni/proto/THORChainSwap$Error;->getDefaultInstance()Lwallet/core/jni/proto/THORChainSwap$Error;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3782
    iget-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->error_:Lwallet/core/jni/proto/THORChainSwap$Error;

    .line 3783
    invoke-static {v0}, Lwallet/core/jni/proto/THORChainSwap$Error;->newBuilder(Lwallet/core/jni/proto/THORChainSwap$Error;)Lwallet/core/jni/proto/THORChainSwap$Error$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/THORChainSwap$Error$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/THORChainSwap$Error;

    iput-object p1, p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->error_:Lwallet/core/jni/proto/THORChainSwap$Error;

    goto :goto_0

    .line 3785
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->error_:Lwallet/core/jni/proto/THORChainSwap$Error;

    :goto_0
    return-void
.end method

.method private mergeEthereum(Lwallet/core/jni/proto/Ethereum$SigningInput;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3880
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3881
    iget v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->signingInputOneofCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->signingInputOneof_:Ljava/lang/Object;

    .line 3882
    invoke-static {}, Lwallet/core/jni/proto/Ethereum$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Ethereum$SigningInput;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 3883
    iget-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->signingInputOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$SigningInput;

    invoke-static {v0}, Lwallet/core/jni/proto/Ethereum$SigningInput;->newBuilder(Lwallet/core/jni/proto/Ethereum$SigningInput;)Lwallet/core/jni/proto/Ethereum$SigningInput$Builder;

    move-result-object v0

    .line 3884
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Ethereum$SigningInput$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->signingInputOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 3886
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->signingInputOneof_:Ljava/lang/Object;

    .line 3888
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->signingInputOneofCase_:I

    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/THORChainSwap$SwapOutput$Builder;
    .locals 1

    .line 4025
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/THORChainSwap$SwapOutput;)Lwallet/core/jni/proto/THORChainSwap$SwapOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 4028
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/THORChainSwap$SwapOutput;
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

    .line 4002
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/THORChainSwap$SwapOutput;
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

    .line 4008
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/THORChainSwap$SwapOutput;
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

    .line 3966
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/THORChainSwap$SwapOutput;
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

    .line 3973
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/THORChainSwap$SwapOutput;
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

    .line 4013
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/THORChainSwap$SwapOutput;
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

    .line 4020
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/THORChainSwap$SwapOutput;
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

    .line 3990
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/THORChainSwap$SwapOutput;
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

    .line 3997
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/THORChainSwap$SwapOutput;
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

    .line 3953
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/THORChainSwap$SwapOutput;
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

    .line 3960
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/THORChainSwap$SwapOutput;
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

    .line 3978
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/THORChainSwap$SwapOutput;
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

    .line 3985
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/THORChainSwap$SwapOutput;",
            ">;"
        }
    .end annotation

    .line 4486
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setBinance(Lwallet/core/jni/proto/Binance$SigningInput;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3922
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3923
    iput-object p1, p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->signingInputOneof_:Ljava/lang/Object;

    const/4 p1, 0x6

    .line 3924
    iput p1, p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->signingInputOneofCase_:I

    return-void
.end method

.method private setBitcoin(Lwallet/core/jni/proto/Bitcoin$SigningInput;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3822
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3823
    iput-object p1, p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->signingInputOneof_:Ljava/lang/Object;

    const/4 p1, 0x4

    .line 3824
    iput p1, p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->signingInputOneofCase_:I

    return-void
.end method

.method private setError(Lwallet/core/jni/proto/THORChainSwap$Error;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3766
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3767
    iput-object p1, p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->error_:Lwallet/core/jni/proto/THORChainSwap$Error;

    return-void
.end method

.method private setEthereum(Lwallet/core/jni/proto/Ethereum$SigningInput;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3872
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3873
    iput-object p1, p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->signingInputOneof_:Ljava/lang/Object;

    const/4 p1, 0x5

    .line 3874
    iput p1, p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->signingInputOneofCase_:I

    return-void
.end method

.method private setFromChain(Lwallet/core/jni/proto/THORChainSwap$Chain;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3657
    invoke-virtual {p1}, Lwallet/core/jni/proto/THORChainSwap$Chain;->getNumber()I

    move-result p1

    iput p1, p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->fromChain_:I

    return-void
.end method

.method private setFromChainValue(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3646
    iput p1, p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->fromChain_:I

    return-void
.end method

.method private setToChain(Lwallet/core/jni/proto/THORChainSwap$Chain;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3719
    invoke-virtual {p1}, Lwallet/core/jni/proto/THORChainSwap$Chain;->getNumber()I

    move-result p1

    iput p1, p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->toChain_:I

    return-void
.end method

.method private setToChainValue(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3708
    iput p1, p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->toChain_:I

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

    .line 4415
    sget-object p2, Lwallet/core/jni/proto/THORChainSwap$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 4464
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 4458
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 4443
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 4445
    const-class p2, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

    monitor-enter p2

    .line 4446
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 4448
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 4451
    sput-object p1, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->PARSER:Lcom/google/protobuf/Parser;

    .line 4453
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

    .line 4440
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

    return-object p1

    :pswitch_4
    const/16 p1, 0x8

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "signingInputOneof_"

    aput-object v0, p1, p3

    const-string p3, "signingInputOneofCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "fromChain_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "toChain_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "error_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    .line 4423
    const-class p3, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-class p3, Lwallet/core/jni/proto/Ethereum$SigningInput;

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-class p3, Lwallet/core/jni/proto/Binance$SigningInput;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0006\u0001\u0000\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u000c\u0002\u000c\u0003\t\u0004<\u0000\u0005<\u0000\u0006<\u0000"

    .line 4436
    sget-object p3, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4420
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/THORChainSwap$SwapOutput$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/THORChainSwap$SwapOutput$Builder;-><init>(Lwallet/core/jni/proto/THORChainSwap$1;)V

    return-object p1

    .line 4417
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;

    invoke-direct {p1}, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;-><init>()V

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

.method public getBinance()Lwallet/core/jni/proto/Binance$SigningInput;
    .locals 2

    .line 3913
    iget v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->signingInputOneofCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 3914
    iget-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->signingInputOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput;

    return-object v0

    .line 3916
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Binance$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Binance$SigningInput;

    move-result-object v0

    return-object v0
.end method

.method public getBitcoin()Lwallet/core/jni/proto/Bitcoin$SigningInput;
    .locals 2

    .line 3813
    iget v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->signingInputOneofCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 3814
    iget-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->signingInputOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    return-object v0

    .line 3816
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Bitcoin$SigningInput;

    move-result-object v0

    return-object v0
.end method

.method public getError()Lwallet/core/jni/proto/THORChainSwap$Error;
    .locals 1

    .line 3756
    iget-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->error_:Lwallet/core/jni/proto/THORChainSwap$Error;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/THORChainSwap$Error;->getDefaultInstance()Lwallet/core/jni/proto/THORChainSwap$Error;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getEthereum()Lwallet/core/jni/proto/Ethereum$SigningInput;
    .locals 2

    .line 3863
    iget v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->signingInputOneofCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 3864
    iget-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->signingInputOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Ethereum$SigningInput;

    return-object v0

    .line 3866
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Ethereum$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Ethereum$SigningInput;

    move-result-object v0

    return-object v0
.end method

.method public getFromChain()Lwallet/core/jni/proto/THORChainSwap$Chain;
    .locals 1

    .line 3634
    iget v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->fromChain_:I

    invoke-static {v0}, Lwallet/core/jni/proto/THORChainSwap$Chain;->forNumber(I)Lwallet/core/jni/proto/THORChainSwap$Chain;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3635
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$Chain;->UNRECOGNIZED:Lwallet/core/jni/proto/THORChainSwap$Chain;

    :cond_0
    return-object v0
.end method

.method public getFromChainValue()I
    .locals 1

    .line 3622
    iget v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->fromChain_:I

    return v0
.end method

.method public getSigningInputOneofCase()Lwallet/core/jni/proto/THORChainSwap$SwapOutput$SigningInputOneofCase;
    .locals 1

    .line 3601
    iget v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->signingInputOneofCase_:I

    invoke-static {v0}, Lwallet/core/jni/proto/THORChainSwap$SwapOutput$SigningInputOneofCase;->forNumber(I)Lwallet/core/jni/proto/THORChainSwap$SwapOutput$SigningInputOneofCase;

    move-result-object v0

    return-object v0
.end method

.method public getToChain()Lwallet/core/jni/proto/THORChainSwap$Chain;
    .locals 1

    .line 3696
    iget v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->toChain_:I

    invoke-static {v0}, Lwallet/core/jni/proto/THORChainSwap$Chain;->forNumber(I)Lwallet/core/jni/proto/THORChainSwap$Chain;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3697
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$Chain;->UNRECOGNIZED:Lwallet/core/jni/proto/THORChainSwap$Chain;

    :cond_0
    return-object v0
.end method

.method public getToChainValue()I
    .locals 1

    .line 3684
    iget v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->toChain_:I

    return v0
.end method

.method public hasBinance()Z
    .locals 2

    .line 3906
    iget v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->signingInputOneofCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasBitcoin()Z
    .locals 2

    .line 3806
    iget v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->signingInputOneofCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasError()Z
    .locals 1

    .line 3745
    iget-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->error_:Lwallet/core/jni/proto/THORChainSwap$Error;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasEthereum()Z
    .locals 2

    .line 3856
    iget v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapOutput;->signingInputOneofCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
