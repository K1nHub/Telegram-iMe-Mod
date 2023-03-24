.class public final Lwallet/core/jni/proto/THORChainSwap$SwapInput;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "THORChainSwap.java"

# interfaces
.implements Lwallet/core/jni/proto/THORChainSwap$SwapInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/THORChainSwap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SwapInput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/THORChainSwap$SwapInput$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/THORChainSwap$SwapInput;",
        "Lwallet/core/jni/proto/THORChainSwap$SwapInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/THORChainSwap$SwapInputOrBuilder;"
    }
.end annotation


# static fields
.field public static final AFFILIATE_FEE_ADDRESS_FIELD_NUMBER:I = 0x9

.field public static final AFFILIATE_FEE_RATE_BP_FIELD_NUMBER:I = 0xa

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$SwapInput;

.field public static final EXPIRATION_TIME_FIELD_NUMBER:I = 0xc

.field public static final EXTRA_MEMO_FIELD_NUMBER:I = 0xb

.field public static final FROM_ADDRESS_FIELD_NUMBER:I = 0x2

.field public static final FROM_AMOUNT_FIELD_NUMBER:I = 0x7

.field public static final FROM_ASSET_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/THORChainSwap$SwapInput;",
            ">;"
        }
    .end annotation
.end field

.field public static final ROUTER_ADDRESS_FIELD_NUMBER:I = 0x6

.field public static final TO_ADDRESS_FIELD_NUMBER:I = 0x4

.field public static final TO_AMOUNT_LIMIT_FIELD_NUMBER:I = 0x8

.field public static final TO_ASSET_FIELD_NUMBER:I = 0x3

.field public static final VAULT_ADDRESS_FIELD_NUMBER:I = 0x5


# instance fields
.field private affiliateFeeAddress_:Ljava/lang/String;

.field private affiliateFeeRateBp_:Ljava/lang/String;

.field private expirationTime_:J

.field private extraMemo_:Ljava/lang/String;

.field private fromAddress_:Ljava/lang/String;

.field private fromAmount_:Ljava/lang/String;

.field private fromAsset_:Lwallet/core/jni/proto/THORChainSwap$Asset;

.field private routerAddress_:Ljava/lang/String;

.field private toAddress_:Ljava/lang/String;

.field private toAmountLimit_:Ljava/lang/String;

.field private toAsset_:Lwallet/core/jni/proto/THORChainSwap$Asset;

.field private vaultAddress_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 3436
    new-instance v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-direct {v0}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;-><init>()V

    .line 3439
    sput-object v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    .line 3440
    const-class v1, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1682
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 1683
    iput-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->fromAddress_:Ljava/lang/String;

    .line 1684
    iput-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->toAddress_:Ljava/lang/String;

    .line 1685
    iput-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->vaultAddress_:Ljava/lang/String;

    .line 1686
    iput-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->routerAddress_:Ljava/lang/String;

    .line 1687
    iput-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->fromAmount_:Ljava/lang/String;

    .line 1688
    iput-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->toAmountLimit_:Ljava/lang/String;

    .line 1689
    iput-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->affiliateFeeAddress_:Ljava/lang/String;

    .line 1690
    iput-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->affiliateFeeRateBp_:Ljava/lang/String;

    .line 1691
    iput-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->extraMemo_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1900()Lwallet/core/jni/proto/THORChainSwap$SwapInput;
    .locals 1

    .line 1677
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    return-object v0
.end method

.method static synthetic access$2000(Lwallet/core/jni/proto/THORChainSwap$SwapInput;Lwallet/core/jni/proto/THORChainSwap$Asset;)V
    .locals 0

    .line 1677
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->setFromAsset(Lwallet/core/jni/proto/THORChainSwap$Asset;)V

    return-void
.end method

.method static synthetic access$2100(Lwallet/core/jni/proto/THORChainSwap$SwapInput;Lwallet/core/jni/proto/THORChainSwap$Asset;)V
    .locals 0

    .line 1677
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->mergeFromAsset(Lwallet/core/jni/proto/THORChainSwap$Asset;)V

    return-void
.end method

.method static synthetic access$2200(Lwallet/core/jni/proto/THORChainSwap$SwapInput;)V
    .locals 0

    .line 1677
    invoke-direct {p0}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->clearFromAsset()V

    return-void
.end method

.method static synthetic access$2300(Lwallet/core/jni/proto/THORChainSwap$SwapInput;Ljava/lang/String;)V
    .locals 0

    .line 1677
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->setFromAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Lwallet/core/jni/proto/THORChainSwap$SwapInput;)V
    .locals 0

    .line 1677
    invoke-direct {p0}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->clearFromAddress()V

    return-void
.end method

.method static synthetic access$2500(Lwallet/core/jni/proto/THORChainSwap$SwapInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1677
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->setFromAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2600(Lwallet/core/jni/proto/THORChainSwap$SwapInput;Lwallet/core/jni/proto/THORChainSwap$Asset;)V
    .locals 0

    .line 1677
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->setToAsset(Lwallet/core/jni/proto/THORChainSwap$Asset;)V

    return-void
.end method

.method static synthetic access$2700(Lwallet/core/jni/proto/THORChainSwap$SwapInput;Lwallet/core/jni/proto/THORChainSwap$Asset;)V
    .locals 0

    .line 1677
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->mergeToAsset(Lwallet/core/jni/proto/THORChainSwap$Asset;)V

    return-void
.end method

.method static synthetic access$2800(Lwallet/core/jni/proto/THORChainSwap$SwapInput;)V
    .locals 0

    .line 1677
    invoke-direct {p0}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->clearToAsset()V

    return-void
.end method

.method static synthetic access$2900(Lwallet/core/jni/proto/THORChainSwap$SwapInput;Ljava/lang/String;)V
    .locals 0

    .line 1677
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->setToAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3000(Lwallet/core/jni/proto/THORChainSwap$SwapInput;)V
    .locals 0

    .line 1677
    invoke-direct {p0}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->clearToAddress()V

    return-void
.end method

.method static synthetic access$3100(Lwallet/core/jni/proto/THORChainSwap$SwapInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1677
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->setToAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3200(Lwallet/core/jni/proto/THORChainSwap$SwapInput;Ljava/lang/String;)V
    .locals 0

    .line 1677
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->setVaultAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3300(Lwallet/core/jni/proto/THORChainSwap$SwapInput;)V
    .locals 0

    .line 1677
    invoke-direct {p0}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->clearVaultAddress()V

    return-void
.end method

.method static synthetic access$3400(Lwallet/core/jni/proto/THORChainSwap$SwapInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1677
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->setVaultAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3500(Lwallet/core/jni/proto/THORChainSwap$SwapInput;Ljava/lang/String;)V
    .locals 0

    .line 1677
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->setRouterAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3600(Lwallet/core/jni/proto/THORChainSwap$SwapInput;)V
    .locals 0

    .line 1677
    invoke-direct {p0}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->clearRouterAddress()V

    return-void
.end method

.method static synthetic access$3700(Lwallet/core/jni/proto/THORChainSwap$SwapInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1677
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->setRouterAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3800(Lwallet/core/jni/proto/THORChainSwap$SwapInput;Ljava/lang/String;)V
    .locals 0

    .line 1677
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->setFromAmount(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3900(Lwallet/core/jni/proto/THORChainSwap$SwapInput;)V
    .locals 0

    .line 1677
    invoke-direct {p0}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->clearFromAmount()V

    return-void
.end method

.method static synthetic access$4000(Lwallet/core/jni/proto/THORChainSwap$SwapInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1677
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->setFromAmountBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4100(Lwallet/core/jni/proto/THORChainSwap$SwapInput;Ljava/lang/String;)V
    .locals 0

    .line 1677
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->setToAmountLimit(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4200(Lwallet/core/jni/proto/THORChainSwap$SwapInput;)V
    .locals 0

    .line 1677
    invoke-direct {p0}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->clearToAmountLimit()V

    return-void
.end method

.method static synthetic access$4300(Lwallet/core/jni/proto/THORChainSwap$SwapInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1677
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->setToAmountLimitBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4400(Lwallet/core/jni/proto/THORChainSwap$SwapInput;Ljava/lang/String;)V
    .locals 0

    .line 1677
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->setAffiliateFeeAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4500(Lwallet/core/jni/proto/THORChainSwap$SwapInput;)V
    .locals 0

    .line 1677
    invoke-direct {p0}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->clearAffiliateFeeAddress()V

    return-void
.end method

.method static synthetic access$4600(Lwallet/core/jni/proto/THORChainSwap$SwapInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1677
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->setAffiliateFeeAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4700(Lwallet/core/jni/proto/THORChainSwap$SwapInput;Ljava/lang/String;)V
    .locals 0

    .line 1677
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->setAffiliateFeeRateBp(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4800(Lwallet/core/jni/proto/THORChainSwap$SwapInput;)V
    .locals 0

    .line 1677
    invoke-direct {p0}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->clearAffiliateFeeRateBp()V

    return-void
.end method

.method static synthetic access$4900(Lwallet/core/jni/proto/THORChainSwap$SwapInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1677
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->setAffiliateFeeRateBpBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$5000(Lwallet/core/jni/proto/THORChainSwap$SwapInput;Ljava/lang/String;)V
    .locals 0

    .line 1677
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->setExtraMemo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5100(Lwallet/core/jni/proto/THORChainSwap$SwapInput;)V
    .locals 0

    .line 1677
    invoke-direct {p0}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->clearExtraMemo()V

    return-void
.end method

.method static synthetic access$5200(Lwallet/core/jni/proto/THORChainSwap$SwapInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1677
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->setExtraMemoBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$5300(Lwallet/core/jni/proto/THORChainSwap$SwapInput;J)V
    .locals 0

    .line 1677
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->setExpirationTime(J)V

    return-void
.end method

.method static synthetic access$5400(Lwallet/core/jni/proto/THORChainSwap$SwapInput;)V
    .locals 0

    .line 1677
    invoke-direct {p0}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->clearExpirationTime()V

    return-void
.end method

.method private clearAffiliateFeeAddress()V
    .locals 1

    .line 2277
    invoke-static {}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->getDefaultInstance()Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->getAffiliateFeeAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->affiliateFeeAddress_:Ljava/lang/String;

    return-void
.end method

.method private clearAffiliateFeeRateBp()V
    .locals 1

    .line 2344
    invoke-static {}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->getDefaultInstance()Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->getAffiliateFeeRateBp()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->affiliateFeeRateBp_:Ljava/lang/String;

    return-void
.end method

.method private clearExpirationTime()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 2463
    iput-wide v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->expirationTime_:J

    return-void
.end method

.method private clearExtraMemo()V
    .locals 1

    .line 2411
    invoke-static {}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->getDefaultInstance()Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->getExtraMemo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->extraMemo_:Ljava/lang/String;

    return-void
.end method

.method private clearFromAddress()V
    .locals 1

    .line 1809
    invoke-static {}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->getDefaultInstance()Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->getFromAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->fromAddress_:Ljava/lang/String;

    return-void
.end method

.method private clearFromAmount()V
    .locals 1

    .line 2143
    invoke-static {}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->getDefaultInstance()Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->getFromAmount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->fromAmount_:Ljava/lang/String;

    return-void
.end method

.method private clearFromAsset()V
    .locals 1

    const/4 v0, 0x0

    .line 1755
    iput-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->fromAsset_:Lwallet/core/jni/proto/THORChainSwap$Asset;

    return-void
.end method

.method private clearRouterAddress()V
    .locals 1

    .line 2076
    invoke-static {}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->getDefaultInstance()Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->getRouterAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->routerAddress_:Ljava/lang/String;

    return-void
.end method

.method private clearToAddress()V
    .locals 1

    .line 1942
    invoke-static {}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->getDefaultInstance()Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->getToAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->toAddress_:Ljava/lang/String;

    return-void
.end method

.method private clearToAmountLimit()V
    .locals 1

    .line 2210
    invoke-static {}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->getDefaultInstance()Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->getToAmountLimit()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->toAmountLimit_:Ljava/lang/String;

    return-void
.end method

.method private clearToAsset()V
    .locals 1

    const/4 v0, 0x0

    .line 1888
    iput-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->toAsset_:Lwallet/core/jni/proto/THORChainSwap$Asset;

    return-void
.end method

.method private clearVaultAddress()V
    .locals 1

    .line 2009
    invoke-static {}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->getDefaultInstance()Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->getVaultAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->vaultAddress_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/THORChainSwap$SwapInput;
    .locals 1

    .line 3445
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    return-object v0
.end method

.method private mergeFromAsset(Lwallet/core/jni/proto/THORChainSwap$Asset;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1738
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1739
    iget-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->fromAsset_:Lwallet/core/jni/proto/THORChainSwap$Asset;

    if-eqz v0, :cond_0

    .line 1740
    invoke-static {}, Lwallet/core/jni/proto/THORChainSwap$Asset;->getDefaultInstance()Lwallet/core/jni/proto/THORChainSwap$Asset;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1741
    iget-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->fromAsset_:Lwallet/core/jni/proto/THORChainSwap$Asset;

    .line 1742
    invoke-static {v0}, Lwallet/core/jni/proto/THORChainSwap$Asset;->newBuilder(Lwallet/core/jni/proto/THORChainSwap$Asset;)Lwallet/core/jni/proto/THORChainSwap$Asset$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/THORChainSwap$Asset$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/THORChainSwap$Asset;

    iput-object p1, p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->fromAsset_:Lwallet/core/jni/proto/THORChainSwap$Asset;

    goto :goto_0

    .line 1744
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->fromAsset_:Lwallet/core/jni/proto/THORChainSwap$Asset;

    :goto_0
    return-void
.end method

.method private mergeToAsset(Lwallet/core/jni/proto/THORChainSwap$Asset;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1871
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1872
    iget-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->toAsset_:Lwallet/core/jni/proto/THORChainSwap$Asset;

    if-eqz v0, :cond_0

    .line 1873
    invoke-static {}, Lwallet/core/jni/proto/THORChainSwap$Asset;->getDefaultInstance()Lwallet/core/jni/proto/THORChainSwap$Asset;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1874
    iget-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->toAsset_:Lwallet/core/jni/proto/THORChainSwap$Asset;

    .line 1875
    invoke-static {v0}, Lwallet/core/jni/proto/THORChainSwap$Asset;->newBuilder(Lwallet/core/jni/proto/THORChainSwap$Asset;)Lwallet/core/jni/proto/THORChainSwap$Asset$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/THORChainSwap$Asset$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/THORChainSwap$Asset;

    iput-object p1, p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->toAsset_:Lwallet/core/jni/proto/THORChainSwap$Asset;

    goto :goto_0

    .line 1877
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->toAsset_:Lwallet/core/jni/proto/THORChainSwap$Asset;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/THORChainSwap$SwapInput$Builder;
    .locals 1

    .line 2541
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/THORChainSwap$SwapInput;)Lwallet/core/jni/proto/THORChainSwap$SwapInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 2544
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/THORChainSwap$SwapInput;
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

    .line 2518
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/THORChainSwap$SwapInput;
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

    .line 2524
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/THORChainSwap$SwapInput;
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

    .line 2482
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/THORChainSwap$SwapInput;
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

    .line 2489
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/THORChainSwap$SwapInput;
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

    .line 2529
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/THORChainSwap$SwapInput;
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

    .line 2536
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/THORChainSwap$SwapInput;
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

    .line 2506
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/THORChainSwap$SwapInput;
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

    .line 2513
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/THORChainSwap$SwapInput;
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

    .line 2469
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/THORChainSwap$SwapInput;
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

    .line 2476
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/THORChainSwap$SwapInput;
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

    .line 2494
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/THORChainSwap$SwapInput;
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

    .line 2501
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/THORChainSwap$SwapInput;",
            ">;"
        }
    .end annotation

    .line 3451
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAffiliateFeeAddress(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2264
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2266
    iput-object p1, p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->affiliateFeeAddress_:Ljava/lang/String;

    return-void
.end method

.method private setAffiliateFeeAddressBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2289
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2290
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->affiliateFeeAddress_:Ljava/lang/String;

    return-void
.end method

.method private setAffiliateFeeRateBp(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2331
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2333
    iput-object p1, p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->affiliateFeeRateBp_:Ljava/lang/String;

    return-void
.end method

.method private setAffiliateFeeRateBpBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2356
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2357
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->affiliateFeeRateBp_:Ljava/lang/String;

    return-void
.end method

.method private setExpirationTime(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2452
    iput-wide p1, p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->expirationTime_:J

    return-void
.end method

.method private setExtraMemo(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2398
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2400
    iput-object p1, p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->extraMemo_:Ljava/lang/String;

    return-void
.end method

.method private setExtraMemoBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2423
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2424
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->extraMemo_:Ljava/lang/String;

    return-void
.end method

.method private setFromAddress(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1796
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1798
    iput-object p1, p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->fromAddress_:Ljava/lang/String;

    return-void
.end method

.method private setFromAddressBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1821
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1822
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->fromAddress_:Ljava/lang/String;

    return-void
.end method

.method private setFromAmount(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2130
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2132
    iput-object p1, p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->fromAmount_:Ljava/lang/String;

    return-void
.end method

.method private setFromAmountBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2155
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2156
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->fromAmount_:Ljava/lang/String;

    return-void
.end method

.method private setFromAsset(Lwallet/core/jni/proto/THORChainSwap$Asset;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1725
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1726
    iput-object p1, p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->fromAsset_:Lwallet/core/jni/proto/THORChainSwap$Asset;

    return-void
.end method

.method private setRouterAddress(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2063
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2065
    iput-object p1, p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->routerAddress_:Ljava/lang/String;

    return-void
.end method

.method private setRouterAddressBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2088
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2089
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->routerAddress_:Ljava/lang/String;

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

    .line 1929
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1931
    iput-object p1, p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->toAddress_:Ljava/lang/String;

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

    .line 1954
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1955
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->toAddress_:Ljava/lang/String;

    return-void
.end method

.method private setToAmountLimit(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2197
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2199
    iput-object p1, p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->toAmountLimit_:Ljava/lang/String;

    return-void
.end method

.method private setToAmountLimitBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2222
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2223
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->toAmountLimit_:Ljava/lang/String;

    return-void
.end method

.method private setToAsset(Lwallet/core/jni/proto/THORChainSwap$Asset;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1858
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1859
    iput-object p1, p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->toAsset_:Lwallet/core/jni/proto/THORChainSwap$Asset;

    return-void
.end method

.method private setVaultAddress(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1996
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1998
    iput-object p1, p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->vaultAddress_:Ljava/lang/String;

    return-void
.end method

.method private setVaultAddressBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2021
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2022
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->vaultAddress_:Ljava/lang/String;

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

    .line 3375
    sget-object p2, Lwallet/core/jni/proto/THORChainSwap$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 3429
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 3423
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 3408
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 3410
    const-class p2, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    monitor-enter p2

    .line 3411
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 3413
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3416
    sput-object p1, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->PARSER:Lcom/google/protobuf/Parser;

    .line 3418
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

    .line 3405
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    return-object p1

    :pswitch_4
    const/16 p1, 0xc

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "fromAsset_"

    aput-object v0, p1, p3

    const-string p3, "fromAddress_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "toAsset_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "toAddress_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "vaultAddress_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "routerAddress_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "fromAmount_"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "toAmountLimit_"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "affiliateFeeAddress_"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "affiliateFeeRateBp_"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "extraMemo_"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "expirationTime_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u000c\u0000\u0000\u0001\u000c\u000c\u0000\u0000\u0000\u0001\t\u0002\u0208\u0003\t\u0004\u0208\u0005\u0208\u0006\u0208\u0007\u0208\u0008\u0208\t\u0208\n\u0208\u000b\u0208\u000c\u0003"

    .line 3401
    sget-object p3, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3380
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/THORChainSwap$SwapInput$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/THORChainSwap$SwapInput$Builder;-><init>(Lwallet/core/jni/proto/THORChainSwap$1;)V

    return-object p1

    .line 3377
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/THORChainSwap$SwapInput;

    invoke-direct {p1}, Lwallet/core/jni/proto/THORChainSwap$SwapInput;-><init>()V

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

.method public getAffiliateFeeAddress()Ljava/lang/String;
    .locals 1

    .line 2239
    iget-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->affiliateFeeAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getAffiliateFeeAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2252
    iget-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->affiliateFeeAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getAffiliateFeeRateBp()Ljava/lang/String;
    .locals 1

    .line 2306
    iget-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->affiliateFeeRateBp_:Ljava/lang/String;

    return-object v0
.end method

.method public getAffiliateFeeRateBpBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2319
    iget-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->affiliateFeeRateBp_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getExpirationTime()J
    .locals 2

    .line 2440
    iget-wide v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->expirationTime_:J

    return-wide v0
.end method

.method public getExtraMemo()Ljava/lang/String;
    .locals 1

    .line 2373
    iget-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->extraMemo_:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraMemoBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2386
    iget-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->extraMemo_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getFromAddress()Ljava/lang/String;
    .locals 1

    .line 1771
    iget-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->fromAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getFromAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1784
    iget-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->fromAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getFromAmount()Ljava/lang/String;
    .locals 1

    .line 2105
    iget-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->fromAmount_:Ljava/lang/String;

    return-object v0
.end method

.method public getFromAmountBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2118
    iget-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->fromAmount_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getFromAsset()Lwallet/core/jni/proto/THORChainSwap$Asset;
    .locals 1

    .line 1715
    iget-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->fromAsset_:Lwallet/core/jni/proto/THORChainSwap$Asset;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/THORChainSwap$Asset;->getDefaultInstance()Lwallet/core/jni/proto/THORChainSwap$Asset;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRouterAddress()Ljava/lang/String;
    .locals 1

    .line 2038
    iget-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->routerAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getRouterAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2051
    iget-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->routerAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getToAddress()Ljava/lang/String;
    .locals 1

    .line 1904
    iget-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->toAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getToAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1917
    iget-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->toAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getToAmountLimit()Ljava/lang/String;
    .locals 1

    .line 2172
    iget-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->toAmountLimit_:Ljava/lang/String;

    return-object v0
.end method

.method public getToAmountLimitBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2185
    iget-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->toAmountLimit_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getToAsset()Lwallet/core/jni/proto/THORChainSwap$Asset;
    .locals 1

    .line 1848
    iget-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->toAsset_:Lwallet/core/jni/proto/THORChainSwap$Asset;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/THORChainSwap$Asset;->getDefaultInstance()Lwallet/core/jni/proto/THORChainSwap$Asset;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getVaultAddress()Ljava/lang/String;
    .locals 1

    .line 1971
    iget-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->vaultAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getVaultAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1984
    iget-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->vaultAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasFromAsset()Z
    .locals 1

    .line 1704
    iget-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->fromAsset_:Lwallet/core/jni/proto/THORChainSwap$Asset;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasToAsset()Z
    .locals 1

    .line 1837
    iget-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$SwapInput;->toAsset_:Lwallet/core/jni/proto/THORChainSwap$Asset;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
