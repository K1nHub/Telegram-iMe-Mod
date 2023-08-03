.class public final Lwallet/core/jni/proto/Binance$SigningInput;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Binance.java"

# interfaces
.implements Lwallet/core/jni/proto/Binance$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Binance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SigningInput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Binance$SigningInput$Builder;,
        Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Binance$SigningInput;",
        "Lwallet/core/jni/proto/Binance$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Binance$SigningInputOrBuilder;"
    }
.end annotation


# static fields
.field public static final ACCOUNT_NUMBER_FIELD_NUMBER:I = 0x2

.field public static final BURN_ORDER_FIELD_NUMBER:I = 0x13

.field public static final CANCEL_TRADE_ORDER_FIELD_NUMBER:I = 0x9

.field public static final CHAIN_ID_FIELD_NUMBER:I = 0x1

.field public static final CLAIMHTLT_ORDER_FIELD_NUMBER:I = 0xf

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SigningInput;

.field public static final DEPOSITHTLT_ORDER_FIELD_NUMBER:I = 0xe

.field public static final FREEZE_ORDER_FIELD_NUMBER:I = 0xb

.field public static final HTLT_ORDER_FIELD_NUMBER:I = 0xd

.field public static final ISSUE_ORDER_FIELD_NUMBER:I = 0x11

.field public static final MEMO_FIELD_NUMBER:I = 0x5

.field public static final MINT_ORDER_FIELD_NUMBER:I = 0x12

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Binance$SigningInput;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIVATE_KEY_FIELD_NUMBER:I = 0x6

.field public static final REFUNDHTLT_ORDER_FIELD_NUMBER:I = 0x10

.field public static final SEND_ORDER_FIELD_NUMBER:I = 0xa

.field public static final SEQUENCE_FIELD_NUMBER:I = 0x3

.field public static final SIDE_DELEGATE_ORDER_FIELD_NUMBER:I = 0x15

.field public static final SIDE_REDELEGATE_ORDER_FIELD_NUMBER:I = 0x16

.field public static final SIDE_UNDELEGATE_ORDER_FIELD_NUMBER:I = 0x17

.field public static final SOURCE_FIELD_NUMBER:I = 0x4

.field public static final TIME_LOCK_ORDER_FIELD_NUMBER:I = 0x18

.field public static final TIME_RELOCK_ORDER_FIELD_NUMBER:I = 0x19

.field public static final TIME_UNLOCK_ORDER_FIELD_NUMBER:I = 0x1a

.field public static final TRADE_ORDER_FIELD_NUMBER:I = 0x8

.field public static final TRANSFER_OUT_ORDER_FIELD_NUMBER:I = 0x14

.field public static final UNFREEZE_ORDER_FIELD_NUMBER:I = 0xc


# instance fields
.field private accountNumber_:J

.field private chainId_:Ljava/lang/String;

.field private memo_:Ljava/lang/String;

.field private orderOneofCase_:I

.field private orderOneof_:Ljava/lang/Object;

.field private privateKey_:Lcom/google/protobuf/ByteString;

.field private sequence_:J

.field private source_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19055
    new-instance v0, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-direct {v0}, Lwallet/core/jni/proto/Binance$SigningInput;-><init>()V

    .line 19058
    sput-object v0, Lwallet/core/jni/proto/Binance$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SigningInput;

    .line 19059
    const-class v1, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 16306
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 16311
    iput v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const-string v0, ""

    .line 16307
    iput-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->chainId_:Ljava/lang/String;

    .line 16308
    iput-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->memo_:Ljava/lang/String;

    .line 16309
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$29000()Lwallet/core/jni/proto/Binance$SigningInput;
    .locals 1

    .line 16301
    sget-object v0, Lwallet/core/jni/proto/Binance$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SigningInput;

    return-object v0
.end method

.method static synthetic access$29100(Lwallet/core/jni/proto/Binance$SigningInput;)V
    .locals 0

    .line 16301
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$SigningInput;->clearOrderOneof()V

    return-void
.end method

.method static synthetic access$29200(Lwallet/core/jni/proto/Binance$SigningInput;Ljava/lang/String;)V
    .locals 0

    .line 16301
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->setChainId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$29300(Lwallet/core/jni/proto/Binance$SigningInput;)V
    .locals 0

    .line 16301
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$SigningInput;->clearChainId()V

    return-void
.end method

.method static synthetic access$29400(Lwallet/core/jni/proto/Binance$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 16301
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->setChainIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$29500(Lwallet/core/jni/proto/Binance$SigningInput;J)V
    .locals 0

    .line 16301
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Binance$SigningInput;->setAccountNumber(J)V

    return-void
.end method

.method static synthetic access$29600(Lwallet/core/jni/proto/Binance$SigningInput;)V
    .locals 0

    .line 16301
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$SigningInput;->clearAccountNumber()V

    return-void
.end method

.method static synthetic access$29700(Lwallet/core/jni/proto/Binance$SigningInput;J)V
    .locals 0

    .line 16301
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Binance$SigningInput;->setSequence(J)V

    return-void
.end method

.method static synthetic access$29800(Lwallet/core/jni/proto/Binance$SigningInput;)V
    .locals 0

    .line 16301
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$SigningInput;->clearSequence()V

    return-void
.end method

.method static synthetic access$29900(Lwallet/core/jni/proto/Binance$SigningInput;J)V
    .locals 0

    .line 16301
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Binance$SigningInput;->setSource(J)V

    return-void
.end method

.method static synthetic access$30000(Lwallet/core/jni/proto/Binance$SigningInput;)V
    .locals 0

    .line 16301
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$SigningInput;->clearSource()V

    return-void
.end method

.method static synthetic access$30100(Lwallet/core/jni/proto/Binance$SigningInput;Ljava/lang/String;)V
    .locals 0

    .line 16301
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->setMemo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$30200(Lwallet/core/jni/proto/Binance$SigningInput;)V
    .locals 0

    .line 16301
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$SigningInput;->clearMemo()V

    return-void
.end method

.method static synthetic access$30300(Lwallet/core/jni/proto/Binance$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 16301
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->setMemoBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$30400(Lwallet/core/jni/proto/Binance$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 16301
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->setPrivateKey(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$30500(Lwallet/core/jni/proto/Binance$SigningInput;)V
    .locals 0

    .line 16301
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$SigningInput;->clearPrivateKey()V

    return-void
.end method

.method static synthetic access$30600(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$TradeOrder;)V
    .locals 0

    .line 16301
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->setTradeOrder(Lwallet/core/jni/proto/Binance$TradeOrder;)V

    return-void
.end method

.method static synthetic access$30700(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$TradeOrder;)V
    .locals 0

    .line 16301
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->mergeTradeOrder(Lwallet/core/jni/proto/Binance$TradeOrder;)V

    return-void
.end method

.method static synthetic access$30800(Lwallet/core/jni/proto/Binance$SigningInput;)V
    .locals 0

    .line 16301
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$SigningInput;->clearTradeOrder()V

    return-void
.end method

.method static synthetic access$30900(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$CancelTradeOrder;)V
    .locals 0

    .line 16301
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->setCancelTradeOrder(Lwallet/core/jni/proto/Binance$CancelTradeOrder;)V

    return-void
.end method

.method static synthetic access$31000(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$CancelTradeOrder;)V
    .locals 0

    .line 16301
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->mergeCancelTradeOrder(Lwallet/core/jni/proto/Binance$CancelTradeOrder;)V

    return-void
.end method

.method static synthetic access$31100(Lwallet/core/jni/proto/Binance$SigningInput;)V
    .locals 0

    .line 16301
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$SigningInput;->clearCancelTradeOrder()V

    return-void
.end method

.method static synthetic access$31200(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$SendOrder;)V
    .locals 0

    .line 16301
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->setSendOrder(Lwallet/core/jni/proto/Binance$SendOrder;)V

    return-void
.end method

.method static synthetic access$31300(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$SendOrder;)V
    .locals 0

    .line 16301
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->mergeSendOrder(Lwallet/core/jni/proto/Binance$SendOrder;)V

    return-void
.end method

.method static synthetic access$31400(Lwallet/core/jni/proto/Binance$SigningInput;)V
    .locals 0

    .line 16301
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$SigningInput;->clearSendOrder()V

    return-void
.end method

.method static synthetic access$31500(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$TokenFreezeOrder;)V
    .locals 0

    .line 16301
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->setFreezeOrder(Lwallet/core/jni/proto/Binance$TokenFreezeOrder;)V

    return-void
.end method

.method static synthetic access$31600(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$TokenFreezeOrder;)V
    .locals 0

    .line 16301
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->mergeFreezeOrder(Lwallet/core/jni/proto/Binance$TokenFreezeOrder;)V

    return-void
.end method

.method static synthetic access$31700(Lwallet/core/jni/proto/Binance$SigningInput;)V
    .locals 0

    .line 16301
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$SigningInput;->clearFreezeOrder()V

    return-void
.end method

.method static synthetic access$31800(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$TokenUnfreezeOrder;)V
    .locals 0

    .line 16301
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->setUnfreezeOrder(Lwallet/core/jni/proto/Binance$TokenUnfreezeOrder;)V

    return-void
.end method

.method static synthetic access$31900(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$TokenUnfreezeOrder;)V
    .locals 0

    .line 16301
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->mergeUnfreezeOrder(Lwallet/core/jni/proto/Binance$TokenUnfreezeOrder;)V

    return-void
.end method

.method static synthetic access$32000(Lwallet/core/jni/proto/Binance$SigningInput;)V
    .locals 0

    .line 16301
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$SigningInput;->clearUnfreezeOrder()V

    return-void
.end method

.method static synthetic access$32100(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$HTLTOrder;)V
    .locals 0

    .line 16301
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->setHtltOrder(Lwallet/core/jni/proto/Binance$HTLTOrder;)V

    return-void
.end method

.method static synthetic access$32200(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$HTLTOrder;)V
    .locals 0

    .line 16301
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->mergeHtltOrder(Lwallet/core/jni/proto/Binance$HTLTOrder;)V

    return-void
.end method

.method static synthetic access$32300(Lwallet/core/jni/proto/Binance$SigningInput;)V
    .locals 0

    .line 16301
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$SigningInput;->clearHtltOrder()V

    return-void
.end method

.method static synthetic access$32400(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$DepositHTLTOrder;)V
    .locals 0

    .line 16301
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->setDepositHTLTOrder(Lwallet/core/jni/proto/Binance$DepositHTLTOrder;)V

    return-void
.end method

.method static synthetic access$32500(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$DepositHTLTOrder;)V
    .locals 0

    .line 16301
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->mergeDepositHTLTOrder(Lwallet/core/jni/proto/Binance$DepositHTLTOrder;)V

    return-void
.end method

.method static synthetic access$32600(Lwallet/core/jni/proto/Binance$SigningInput;)V
    .locals 0

    .line 16301
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$SigningInput;->clearDepositHTLTOrder()V

    return-void
.end method

.method static synthetic access$32700(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$ClaimHTLOrder;)V
    .locals 0

    .line 16301
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->setClaimHTLTOrder(Lwallet/core/jni/proto/Binance$ClaimHTLOrder;)V

    return-void
.end method

.method static synthetic access$32800(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$ClaimHTLOrder;)V
    .locals 0

    .line 16301
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->mergeClaimHTLTOrder(Lwallet/core/jni/proto/Binance$ClaimHTLOrder;)V

    return-void
.end method

.method static synthetic access$32900(Lwallet/core/jni/proto/Binance$SigningInput;)V
    .locals 0

    .line 16301
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$SigningInput;->clearClaimHTLTOrder()V

    return-void
.end method

.method static synthetic access$33000(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$RefundHTLTOrder;)V
    .locals 0

    .line 16301
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->setRefundHTLTOrder(Lwallet/core/jni/proto/Binance$RefundHTLTOrder;)V

    return-void
.end method

.method static synthetic access$33100(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$RefundHTLTOrder;)V
    .locals 0

    .line 16301
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->mergeRefundHTLTOrder(Lwallet/core/jni/proto/Binance$RefundHTLTOrder;)V

    return-void
.end method

.method static synthetic access$33200(Lwallet/core/jni/proto/Binance$SigningInput;)V
    .locals 0

    .line 16301
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$SigningInput;->clearRefundHTLTOrder()V

    return-void
.end method

.method static synthetic access$33300(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$TokenIssueOrder;)V
    .locals 0

    .line 16301
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->setIssueOrder(Lwallet/core/jni/proto/Binance$TokenIssueOrder;)V

    return-void
.end method

.method static synthetic access$33400(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$TokenIssueOrder;)V
    .locals 0

    .line 16301
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->mergeIssueOrder(Lwallet/core/jni/proto/Binance$TokenIssueOrder;)V

    return-void
.end method

.method static synthetic access$33500(Lwallet/core/jni/proto/Binance$SigningInput;)V
    .locals 0

    .line 16301
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$SigningInput;->clearIssueOrder()V

    return-void
.end method

.method static synthetic access$33600(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$TokenMintOrder;)V
    .locals 0

    .line 16301
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->setMintOrder(Lwallet/core/jni/proto/Binance$TokenMintOrder;)V

    return-void
.end method

.method static synthetic access$33700(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$TokenMintOrder;)V
    .locals 0

    .line 16301
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->mergeMintOrder(Lwallet/core/jni/proto/Binance$TokenMintOrder;)V

    return-void
.end method

.method static synthetic access$33800(Lwallet/core/jni/proto/Binance$SigningInput;)V
    .locals 0

    .line 16301
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$SigningInput;->clearMintOrder()V

    return-void
.end method

.method static synthetic access$33900(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$TokenBurnOrder;)V
    .locals 0

    .line 16301
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->setBurnOrder(Lwallet/core/jni/proto/Binance$TokenBurnOrder;)V

    return-void
.end method

.method static synthetic access$34000(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$TokenBurnOrder;)V
    .locals 0

    .line 16301
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->mergeBurnOrder(Lwallet/core/jni/proto/Binance$TokenBurnOrder;)V

    return-void
.end method

.method static synthetic access$34100(Lwallet/core/jni/proto/Binance$SigningInput;)V
    .locals 0

    .line 16301
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$SigningInput;->clearBurnOrder()V

    return-void
.end method

.method static synthetic access$34200(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$TransferOut;)V
    .locals 0

    .line 16301
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->setTransferOutOrder(Lwallet/core/jni/proto/Binance$TransferOut;)V

    return-void
.end method

.method static synthetic access$34300(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$TransferOut;)V
    .locals 0

    .line 16301
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->mergeTransferOutOrder(Lwallet/core/jni/proto/Binance$TransferOut;)V

    return-void
.end method

.method static synthetic access$34400(Lwallet/core/jni/proto/Binance$SigningInput;)V
    .locals 0

    .line 16301
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$SigningInput;->clearTransferOutOrder()V

    return-void
.end method

.method static synthetic access$34500(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$SideChainDelegate;)V
    .locals 0

    .line 16301
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->setSideDelegateOrder(Lwallet/core/jni/proto/Binance$SideChainDelegate;)V

    return-void
.end method

.method static synthetic access$34600(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$SideChainDelegate;)V
    .locals 0

    .line 16301
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->mergeSideDelegateOrder(Lwallet/core/jni/proto/Binance$SideChainDelegate;)V

    return-void
.end method

.method static synthetic access$34700(Lwallet/core/jni/proto/Binance$SigningInput;)V
    .locals 0

    .line 16301
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$SigningInput;->clearSideDelegateOrder()V

    return-void
.end method

.method static synthetic access$34800(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$SideChainRedelegate;)V
    .locals 0

    .line 16301
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->setSideRedelegateOrder(Lwallet/core/jni/proto/Binance$SideChainRedelegate;)V

    return-void
.end method

.method static synthetic access$34900(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$SideChainRedelegate;)V
    .locals 0

    .line 16301
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->mergeSideRedelegateOrder(Lwallet/core/jni/proto/Binance$SideChainRedelegate;)V

    return-void
.end method

.method static synthetic access$35000(Lwallet/core/jni/proto/Binance$SigningInput;)V
    .locals 0

    .line 16301
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$SigningInput;->clearSideRedelegateOrder()V

    return-void
.end method

.method static synthetic access$35100(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$SideChainUndelegate;)V
    .locals 0

    .line 16301
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->setSideUndelegateOrder(Lwallet/core/jni/proto/Binance$SideChainUndelegate;)V

    return-void
.end method

.method static synthetic access$35200(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$SideChainUndelegate;)V
    .locals 0

    .line 16301
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->mergeSideUndelegateOrder(Lwallet/core/jni/proto/Binance$SideChainUndelegate;)V

    return-void
.end method

.method static synthetic access$35300(Lwallet/core/jni/proto/Binance$SigningInput;)V
    .locals 0

    .line 16301
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$SigningInput;->clearSideUndelegateOrder()V

    return-void
.end method

.method static synthetic access$35400(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$TimeLockOrder;)V
    .locals 0

    .line 16301
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->setTimeLockOrder(Lwallet/core/jni/proto/Binance$TimeLockOrder;)V

    return-void
.end method

.method static synthetic access$35500(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$TimeLockOrder;)V
    .locals 0

    .line 16301
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->mergeTimeLockOrder(Lwallet/core/jni/proto/Binance$TimeLockOrder;)V

    return-void
.end method

.method static synthetic access$35600(Lwallet/core/jni/proto/Binance$SigningInput;)V
    .locals 0

    .line 16301
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$SigningInput;->clearTimeLockOrder()V

    return-void
.end method

.method static synthetic access$35700(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$TimeRelockOrder;)V
    .locals 0

    .line 16301
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->setTimeRelockOrder(Lwallet/core/jni/proto/Binance$TimeRelockOrder;)V

    return-void
.end method

.method static synthetic access$35800(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$TimeRelockOrder;)V
    .locals 0

    .line 16301
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->mergeTimeRelockOrder(Lwallet/core/jni/proto/Binance$TimeRelockOrder;)V

    return-void
.end method

.method static synthetic access$35900(Lwallet/core/jni/proto/Binance$SigningInput;)V
    .locals 0

    .line 16301
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$SigningInput;->clearTimeRelockOrder()V

    return-void
.end method

.method static synthetic access$36000(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$TimeUnlockOrder;)V
    .locals 0

    .line 16301
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->setTimeUnlockOrder(Lwallet/core/jni/proto/Binance$TimeUnlockOrder;)V

    return-void
.end method

.method static synthetic access$36100(Lwallet/core/jni/proto/Binance$SigningInput;Lwallet/core/jni/proto/Binance$TimeUnlockOrder;)V
    .locals 0

    .line 16301
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SigningInput;->mergeTimeUnlockOrder(Lwallet/core/jni/proto/Binance$TimeUnlockOrder;)V

    return-void
.end method

.method static synthetic access$36200(Lwallet/core/jni/proto/Binance$SigningInput;)V
    .locals 0

    .line 16301
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$SigningInput;->clearTimeUnlockOrder()V

    return-void
.end method

.method private clearAccountNumber()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 16490
    iput-wide v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->accountNumber_:J

    return-void
.end method

.method private clearBurnOrder()V
    .locals 2

    .line 17281
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 17282
    iput v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/4 v0, 0x0

    .line 17283
    iput-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearCancelTradeOrder()V
    .locals 2

    .line 16781
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 16782
    iput v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/4 v0, 0x0

    .line 16783
    iput-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearChainId()V
    .locals 1

    .line 16438
    invoke-static {}, Lwallet/core/jni/proto/Binance$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Binance$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->getChainId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->chainId_:Ljava/lang/String;

    return-void
.end method

.method private clearClaimHTLTOrder()V
    .locals 2

    .line 17081
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 17082
    iput v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/4 v0, 0x0

    .line 17083
    iput-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearDepositHTLTOrder()V
    .locals 2

    .line 17031
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 17032
    iput v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/4 v0, 0x0

    .line 17033
    iput-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearFreezeOrder()V
    .locals 2

    .line 16881
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 16882
    iput v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/4 v0, 0x0

    .line 16883
    iput-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearHtltOrder()V
    .locals 2

    .line 16981
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 16982
    iput v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/4 v0, 0x0

    .line 16983
    iput-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearIssueOrder()V
    .locals 2

    .line 17181
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 17182
    iput v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/4 v0, 0x0

    .line 17183
    iput-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearMemo()V
    .locals 1

    .line 16631
    invoke-static {}, Lwallet/core/jni/proto/Binance$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Binance$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->getMemo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->memo_:Ljava/lang/String;

    return-void
.end method

.method private clearMintOrder()V
    .locals 2

    .line 17231
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 17232
    iput v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/4 v0, 0x0

    .line 17233
    iput-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearOrderOneof()V
    .locals 1

    const/4 v0, 0x0

    .line 16384
    iput v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/4 v0, 0x0

    .line 16385
    iput-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    return-void
.end method

.method private clearPrivateKey()V
    .locals 1

    .line 16684
    invoke-static {}, Lwallet/core/jni/proto/Binance$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Binance$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SigningInput;->getPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearRefundHTLTOrder()V
    .locals 2

    .line 17131
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 17132
    iput v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/4 v0, 0x0

    .line 17133
    iput-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearSendOrder()V
    .locals 2

    .line 16831
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 16832
    iput v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/4 v0, 0x0

    .line 16833
    iput-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearSequence()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 16528
    iput-wide v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->sequence_:J

    return-void
.end method

.method private clearSideDelegateOrder()V
    .locals 2

    .line 17381
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 17382
    iput v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/4 v0, 0x0

    .line 17383
    iput-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearSideRedelegateOrder()V
    .locals 2

    .line 17431
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 17432
    iput v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/4 v0, 0x0

    .line 17433
    iput-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearSideUndelegateOrder()V
    .locals 2

    .line 17481
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 17482
    iput v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/4 v0, 0x0

    .line 17483
    iput-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearSource()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 16578
    iput-wide v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->source_:J

    return-void
.end method

.method private clearTimeLockOrder()V
    .locals 2

    .line 17531
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0x18

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 17532
    iput v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/4 v0, 0x0

    .line 17533
    iput-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearTimeRelockOrder()V
    .locals 2

    .line 17581
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0x19

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 17582
    iput v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/4 v0, 0x0

    .line 17583
    iput-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearTimeUnlockOrder()V
    .locals 2

    .line 17631
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 17632
    iput v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/4 v0, 0x0

    .line 17633
    iput-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearTradeOrder()V
    .locals 2

    .line 16731
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 16732
    iput v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/4 v0, 0x0

    .line 16733
    iput-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearTransferOutOrder()V
    .locals 2

    .line 17331
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 17332
    iput v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/4 v0, 0x0

    .line 17333
    iput-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearUnfreezeOrder()V
    .locals 2

    .line 16931
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 16932
    iput v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/4 v0, 0x0

    .line 16933
    iput-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Binance$SigningInput;
    .locals 1

    .line 19064
    sget-object v0, Lwallet/core/jni/proto/Binance$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SigningInput;

    return-object v0
.end method

.method private mergeBurnOrder(Lwallet/core/jni/proto/Binance$TokenBurnOrder;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 17267
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17268
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    .line 17269
    invoke-static {}, Lwallet/core/jni/proto/Binance$TokenBurnOrder;->getDefaultInstance()Lwallet/core/jni/proto/Binance$TokenBurnOrder;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 17270
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenBurnOrder;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$TokenBurnOrder;->newBuilder(Lwallet/core/jni/proto/Binance$TokenBurnOrder;)Lwallet/core/jni/proto/Binance$TokenBurnOrder$Builder;

    move-result-object v0

    .line 17271
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Binance$TokenBurnOrder$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 17273
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    .line 17275
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    return-void
.end method

.method private mergeCancelTradeOrder(Lwallet/core/jni/proto/Binance$CancelTradeOrder;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 16767
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16768
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    .line 16769
    invoke-static {}, Lwallet/core/jni/proto/Binance$CancelTradeOrder;->getDefaultInstance()Lwallet/core/jni/proto/Binance$CancelTradeOrder;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 16770
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Binance$CancelTradeOrder;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$CancelTradeOrder;->newBuilder(Lwallet/core/jni/proto/Binance$CancelTradeOrder;)Lwallet/core/jni/proto/Binance$CancelTradeOrder$Builder;

    move-result-object v0

    .line 16771
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Binance$CancelTradeOrder$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 16773
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    .line 16775
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    return-void
.end method

.method private mergeClaimHTLTOrder(Lwallet/core/jni/proto/Binance$ClaimHTLOrder;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 17067
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17068
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    .line 17069
    invoke-static {}, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;->getDefaultInstance()Lwallet/core/jni/proto/Binance$ClaimHTLOrder;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 17070
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;->newBuilder(Lwallet/core/jni/proto/Binance$ClaimHTLOrder;)Lwallet/core/jni/proto/Binance$ClaimHTLOrder$Builder;

    move-result-object v0

    .line 17071
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Binance$ClaimHTLOrder$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 17073
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    .line 17075
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    return-void
.end method

.method private mergeDepositHTLTOrder(Lwallet/core/jni/proto/Binance$DepositHTLTOrder;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 17017
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17018
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    .line 17019
    invoke-static {}, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->getDefaultInstance()Lwallet/core/jni/proto/Binance$DepositHTLTOrder;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 17020
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->newBuilder(Lwallet/core/jni/proto/Binance$DepositHTLTOrder;)Lwallet/core/jni/proto/Binance$DepositHTLTOrder$Builder;

    move-result-object v0

    .line 17021
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Binance$DepositHTLTOrder$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 17023
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    .line 17025
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    return-void
.end method

.method private mergeFreezeOrder(Lwallet/core/jni/proto/Binance$TokenFreezeOrder;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 16867
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16868
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    .line 16869
    invoke-static {}, Lwallet/core/jni/proto/Binance$TokenFreezeOrder;->getDefaultInstance()Lwallet/core/jni/proto/Binance$TokenFreezeOrder;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 16870
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenFreezeOrder;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$TokenFreezeOrder;->newBuilder(Lwallet/core/jni/proto/Binance$TokenFreezeOrder;)Lwallet/core/jni/proto/Binance$TokenFreezeOrder$Builder;

    move-result-object v0

    .line 16871
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Binance$TokenFreezeOrder$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 16873
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    .line 16875
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    return-void
.end method

.method private mergeHtltOrder(Lwallet/core/jni/proto/Binance$HTLTOrder;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 16967
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16968
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    .line 16969
    invoke-static {}, Lwallet/core/jni/proto/Binance$HTLTOrder;->getDefaultInstance()Lwallet/core/jni/proto/Binance$HTLTOrder;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 16970
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Binance$HTLTOrder;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$HTLTOrder;->newBuilder(Lwallet/core/jni/proto/Binance$HTLTOrder;)Lwallet/core/jni/proto/Binance$HTLTOrder$Builder;

    move-result-object v0

    .line 16971
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Binance$HTLTOrder$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 16973
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    .line 16975
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    return-void
.end method

.method private mergeIssueOrder(Lwallet/core/jni/proto/Binance$TokenIssueOrder;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 17167
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17168
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    .line 17169
    invoke-static {}, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->getDefaultInstance()Lwallet/core/jni/proto/Binance$TokenIssueOrder;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 17170
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenIssueOrder;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->newBuilder(Lwallet/core/jni/proto/Binance$TokenIssueOrder;)Lwallet/core/jni/proto/Binance$TokenIssueOrder$Builder;

    move-result-object v0

    .line 17171
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Binance$TokenIssueOrder$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 17173
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    .line 17175
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    return-void
.end method

.method private mergeMintOrder(Lwallet/core/jni/proto/Binance$TokenMintOrder;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 17217
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17218
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    .line 17219
    invoke-static {}, Lwallet/core/jni/proto/Binance$TokenMintOrder;->getDefaultInstance()Lwallet/core/jni/proto/Binance$TokenMintOrder;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 17220
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenMintOrder;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$TokenMintOrder;->newBuilder(Lwallet/core/jni/proto/Binance$TokenMintOrder;)Lwallet/core/jni/proto/Binance$TokenMintOrder$Builder;

    move-result-object v0

    .line 17221
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Binance$TokenMintOrder$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 17223
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    .line 17225
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    return-void
.end method

.method private mergeRefundHTLTOrder(Lwallet/core/jni/proto/Binance$RefundHTLTOrder;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 17117
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17118
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    .line 17119
    invoke-static {}, Lwallet/core/jni/proto/Binance$RefundHTLTOrder;->getDefaultInstance()Lwallet/core/jni/proto/Binance$RefundHTLTOrder;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 17120
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Binance$RefundHTLTOrder;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$RefundHTLTOrder;->newBuilder(Lwallet/core/jni/proto/Binance$RefundHTLTOrder;)Lwallet/core/jni/proto/Binance$RefundHTLTOrder$Builder;

    move-result-object v0

    .line 17121
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Binance$RefundHTLTOrder$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 17123
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    .line 17125
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    return-void
.end method

.method private mergeSendOrder(Lwallet/core/jni/proto/Binance$SendOrder;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 16817
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16818
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    .line 16819
    invoke-static {}, Lwallet/core/jni/proto/Binance$SendOrder;->getDefaultInstance()Lwallet/core/jni/proto/Binance$SendOrder;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 16820
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Binance$SendOrder;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$SendOrder;->newBuilder(Lwallet/core/jni/proto/Binance$SendOrder;)Lwallet/core/jni/proto/Binance$SendOrder$Builder;

    move-result-object v0

    .line 16821
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Binance$SendOrder$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 16823
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    .line 16825
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    return-void
.end method

.method private mergeSideDelegateOrder(Lwallet/core/jni/proto/Binance$SideChainDelegate;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 17367
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17368
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    .line 17369
    invoke-static {}, Lwallet/core/jni/proto/Binance$SideChainDelegate;->getDefaultInstance()Lwallet/core/jni/proto/Binance$SideChainDelegate;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 17370
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Binance$SideChainDelegate;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$SideChainDelegate;->newBuilder(Lwallet/core/jni/proto/Binance$SideChainDelegate;)Lwallet/core/jni/proto/Binance$SideChainDelegate$Builder;

    move-result-object v0

    .line 17371
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Binance$SideChainDelegate$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 17373
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    .line 17375
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    return-void
.end method

.method private mergeSideRedelegateOrder(Lwallet/core/jni/proto/Binance$SideChainRedelegate;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 17417
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17418
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    .line 17419
    invoke-static {}, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->getDefaultInstance()Lwallet/core/jni/proto/Binance$SideChainRedelegate;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 17420
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->newBuilder(Lwallet/core/jni/proto/Binance$SideChainRedelegate;)Lwallet/core/jni/proto/Binance$SideChainRedelegate$Builder;

    move-result-object v0

    .line 17421
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Binance$SideChainRedelegate$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 17423
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    .line 17425
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    return-void
.end method

.method private mergeSideUndelegateOrder(Lwallet/core/jni/proto/Binance$SideChainUndelegate;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 17467
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17468
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    .line 17469
    invoke-static {}, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->getDefaultInstance()Lwallet/core/jni/proto/Binance$SideChainUndelegate;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 17470
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Binance$SideChainUndelegate;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->newBuilder(Lwallet/core/jni/proto/Binance$SideChainUndelegate;)Lwallet/core/jni/proto/Binance$SideChainUndelegate$Builder;

    move-result-object v0

    .line 17471
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Binance$SideChainUndelegate$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 17473
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    .line 17475
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    return-void
.end method

.method private mergeTimeLockOrder(Lwallet/core/jni/proto/Binance$TimeLockOrder;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 17517
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17518
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0x18

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    .line 17519
    invoke-static {}, Lwallet/core/jni/proto/Binance$TimeLockOrder;->getDefaultInstance()Lwallet/core/jni/proto/Binance$TimeLockOrder;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 17520
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Binance$TimeLockOrder;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$TimeLockOrder;->newBuilder(Lwallet/core/jni/proto/Binance$TimeLockOrder;)Lwallet/core/jni/proto/Binance$TimeLockOrder$Builder;

    move-result-object v0

    .line 17521
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Binance$TimeLockOrder$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 17523
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    .line 17525
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    return-void
.end method

.method private mergeTimeRelockOrder(Lwallet/core/jni/proto/Binance$TimeRelockOrder;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 17567
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17568
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0x19

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    .line 17569
    invoke-static {}, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->getDefaultInstance()Lwallet/core/jni/proto/Binance$TimeRelockOrder;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 17570
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->newBuilder(Lwallet/core/jni/proto/Binance$TimeRelockOrder;)Lwallet/core/jni/proto/Binance$TimeRelockOrder$Builder;

    move-result-object v0

    .line 17571
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Binance$TimeRelockOrder$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 17573
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    .line 17575
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    return-void
.end method

.method private mergeTimeUnlockOrder(Lwallet/core/jni/proto/Binance$TimeUnlockOrder;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 17617
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17618
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    .line 17619
    invoke-static {}, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;->getDefaultInstance()Lwallet/core/jni/proto/Binance$TimeUnlockOrder;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 17620
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;->newBuilder(Lwallet/core/jni/proto/Binance$TimeUnlockOrder;)Lwallet/core/jni/proto/Binance$TimeUnlockOrder$Builder;

    move-result-object v0

    .line 17621
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Binance$TimeUnlockOrder$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 17623
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    .line 17625
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    return-void
.end method

.method private mergeTradeOrder(Lwallet/core/jni/proto/Binance$TradeOrder;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 16717
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16718
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    .line 16719
    invoke-static {}, Lwallet/core/jni/proto/Binance$TradeOrder;->getDefaultInstance()Lwallet/core/jni/proto/Binance$TradeOrder;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 16720
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Binance$TradeOrder;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$TradeOrder;->newBuilder(Lwallet/core/jni/proto/Binance$TradeOrder;)Lwallet/core/jni/proto/Binance$TradeOrder$Builder;

    move-result-object v0

    .line 16721
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Binance$TradeOrder$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 16723
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    .line 16725
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    return-void
.end method

.method private mergeTransferOutOrder(Lwallet/core/jni/proto/Binance$TransferOut;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 17317
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17318
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    .line 17319
    invoke-static {}, Lwallet/core/jni/proto/Binance$TransferOut;->getDefaultInstance()Lwallet/core/jni/proto/Binance$TransferOut;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 17320
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Binance$TransferOut;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$TransferOut;->newBuilder(Lwallet/core/jni/proto/Binance$TransferOut;)Lwallet/core/jni/proto/Binance$TransferOut$Builder;

    move-result-object v0

    .line 17321
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Binance$TransferOut$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 17323
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    .line 17325
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    return-void
.end method

.method private mergeUnfreezeOrder(Lwallet/core/jni/proto/Binance$TokenUnfreezeOrder;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 16917
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16918
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    .line 16919
    invoke-static {}, Lwallet/core/jni/proto/Binance$TokenUnfreezeOrder;->getDefaultInstance()Lwallet/core/jni/proto/Binance$TokenUnfreezeOrder;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 16920
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenUnfreezeOrder;

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$TokenUnfreezeOrder;->newBuilder(Lwallet/core/jni/proto/Binance$TokenUnfreezeOrder;)Lwallet/core/jni/proto/Binance$TokenUnfreezeOrder$Builder;

    move-result-object v0

    .line 16921
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Binance$TokenUnfreezeOrder$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 16923
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    .line 16925
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1

    .line 17712
    sget-object v0, Lwallet/core/jni/proto/Binance$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Binance$SigningInput$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Binance$SigningInput;)Lwallet/core/jni/proto/Binance$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 17715
    sget-object v0, Lwallet/core/jni/proto/Binance$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SigningInput$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Binance$SigningInput;
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

    .line 17689
    sget-object v0, Lwallet/core/jni/proto/Binance$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SigningInput;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$SigningInput;
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

    .line 17695
    sget-object v0, Lwallet/core/jni/proto/Binance$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$SigningInput;
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

    .line 17653
    sget-object v0, Lwallet/core/jni/proto/Binance$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$SigningInput;
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

    .line 17660
    sget-object v0, Lwallet/core/jni/proto/Binance$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Binance$SigningInput;
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

    .line 17700
    sget-object v0, Lwallet/core/jni/proto/Binance$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$SigningInput;
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

    .line 17707
    sget-object v0, Lwallet/core/jni/proto/Binance$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Binance$SigningInput;
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

    .line 17677
    sget-object v0, Lwallet/core/jni/proto/Binance$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$SigningInput;
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

    .line 17684
    sget-object v0, Lwallet/core/jni/proto/Binance$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Binance$SigningInput;
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

    .line 17640
    sget-object v0, Lwallet/core/jni/proto/Binance$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$SigningInput;
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

    .line 17647
    sget-object v0, Lwallet/core/jni/proto/Binance$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SigningInput;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Binance$SigningInput;
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

    .line 17665
    sget-object v0, Lwallet/core/jni/proto/Binance$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SigningInput;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$SigningInput;
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

    .line 17672
    sget-object v0, Lwallet/core/jni/proto/Binance$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SigningInput;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Binance$SigningInput;",
            ">;"
        }
    .end annotation

    .line 19070
    sget-object v0, Lwallet/core/jni/proto/Binance$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAccountNumber(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 16479
    iput-wide p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->accountNumber_:J

    return-void
.end method

.method private setBurnOrder(Lwallet/core/jni/proto/Binance$TokenBurnOrder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 17259
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17260
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    const/16 p1, 0x13

    .line 17261
    iput p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    return-void
.end method

.method private setCancelTradeOrder(Lwallet/core/jni/proto/Binance$CancelTradeOrder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 16759
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16760
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    const/16 p1, 0x9

    .line 16761
    iput p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    return-void
.end method

.method private setChainId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 16425
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16427
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->chainId_:Ljava/lang/String;

    return-void
.end method

.method private setChainIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 16450
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 16451
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->chainId_:Ljava/lang/String;

    return-void
.end method

.method private setClaimHTLTOrder(Lwallet/core/jni/proto/Binance$ClaimHTLOrder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 17059
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17060
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    const/16 p1, 0xf

    .line 17061
    iput p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    return-void
.end method

.method private setDepositHTLTOrder(Lwallet/core/jni/proto/Binance$DepositHTLTOrder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 17009
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17010
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    const/16 p1, 0xe

    .line 17011
    iput p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    return-void
.end method

.method private setFreezeOrder(Lwallet/core/jni/proto/Binance$TokenFreezeOrder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 16859
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16860
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    const/16 p1, 0xb

    .line 16861
    iput p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    return-void
.end method

.method private setHtltOrder(Lwallet/core/jni/proto/Binance$HTLTOrder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 16959
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16960
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    const/16 p1, 0xd

    .line 16961
    iput p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    return-void
.end method

.method private setIssueOrder(Lwallet/core/jni/proto/Binance$TokenIssueOrder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 17159
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17160
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    const/16 p1, 0x11

    .line 17161
    iput p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    return-void
.end method

.method private setMemo(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 16618
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16620
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->memo_:Ljava/lang/String;

    return-void
.end method

.method private setMemoBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 16643
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 16644
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->memo_:Ljava/lang/String;

    return-void
.end method

.method private setMintOrder(Lwallet/core/jni/proto/Binance$TokenMintOrder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 17209
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17210
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    const/16 p1, 0x12

    .line 17211
    iput p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

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

    .line 16671
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16673
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setRefundHTLTOrder(Lwallet/core/jni/proto/Binance$RefundHTLTOrder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 17109
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17110
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    const/16 p1, 0x10

    .line 17111
    iput p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    return-void
.end method

.method private setSendOrder(Lwallet/core/jni/proto/Binance$SendOrder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 16809
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16810
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    const/16 p1, 0xa

    .line 16811
    iput p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    return-void
.end method

.method private setSequence(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 16517
    iput-wide p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->sequence_:J

    return-void
.end method

.method private setSideDelegateOrder(Lwallet/core/jni/proto/Binance$SideChainDelegate;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 17359
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17360
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    const/16 p1, 0x15

    .line 17361
    iput p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    return-void
.end method

.method private setSideRedelegateOrder(Lwallet/core/jni/proto/Binance$SideChainRedelegate;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 17409
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17410
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    const/16 p1, 0x16

    .line 17411
    iput p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    return-void
.end method

.method private setSideUndelegateOrder(Lwallet/core/jni/proto/Binance$SideChainUndelegate;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 17459
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17460
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    const/16 p1, 0x17

    .line 17461
    iput p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    return-void
.end method

.method private setSource(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 16563
    iput-wide p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->source_:J

    return-void
.end method

.method private setTimeLockOrder(Lwallet/core/jni/proto/Binance$TimeLockOrder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 17509
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17510
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    const/16 p1, 0x18

    .line 17511
    iput p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    return-void
.end method

.method private setTimeRelockOrder(Lwallet/core/jni/proto/Binance$TimeRelockOrder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 17559
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17560
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    const/16 p1, 0x19

    .line 17561
    iput p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    return-void
.end method

.method private setTimeUnlockOrder(Lwallet/core/jni/proto/Binance$TimeUnlockOrder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 17609
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17610
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    const/16 p1, 0x1a

    .line 17611
    iput p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    return-void
.end method

.method private setTradeOrder(Lwallet/core/jni/proto/Binance$TradeOrder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 16709
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16710
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    const/16 p1, 0x8

    .line 16711
    iput p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    return-void
.end method

.method private setTransferOutOrder(Lwallet/core/jni/proto/Binance$TransferOut;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 17309
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17310
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    const/16 p1, 0x14

    .line 17311
    iput p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    return-void
.end method

.method private setUnfreezeOrder(Lwallet/core/jni/proto/Binance$TokenUnfreezeOrder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 16909
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16910
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    const/16 p1, 0xc

    .line 16911
    iput p1, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

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

    .line 18977
    sget-object p2, Lwallet/core/jni/proto/Binance$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 19048
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 19042
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 19027
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Binance$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 19029
    const-class p2, Lwallet/core/jni/proto/Binance$SigningInput;

    monitor-enter p2

    .line 19030
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Binance$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 19032
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Binance$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 19035
    sput-object p1, Lwallet/core/jni/proto/Binance$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    .line 19037
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

    .line 19024
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Binance$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SigningInput;

    return-object p1

    :pswitch_4
    const/16 p1, 0x1b

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "orderOneof_"

    aput-object v0, p1, p3

    const-string p3, "orderOneofCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "chainId_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "accountNumber_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "sequence_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "source_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "memo_"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "privateKey_"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    .line 18985
    const-class p3, Lwallet/core/jni/proto/Binance$TradeOrder;

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-class p3, Lwallet/core/jni/proto/Binance$CancelTradeOrder;

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-class p3, Lwallet/core/jni/proto/Binance$SendOrder;

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-class p3, Lwallet/core/jni/proto/Binance$TokenFreezeOrder;

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-class p3, Lwallet/core/jni/proto/Binance$TokenUnfreezeOrder;

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-class p3, Lwallet/core/jni/proto/Binance$HTLTOrder;

    aput-object p3, p1, p2

    const/16 p2, 0xe

    const-class p3, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;

    aput-object p3, p1, p2

    const/16 p2, 0xf

    const-class p3, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;

    aput-object p3, p1, p2

    const/16 p2, 0x10

    const-class p3, Lwallet/core/jni/proto/Binance$RefundHTLTOrder;

    aput-object p3, p1, p2

    const/16 p2, 0x11

    const-class p3, Lwallet/core/jni/proto/Binance$TokenIssueOrder;

    aput-object p3, p1, p2

    const/16 p2, 0x12

    const-class p3, Lwallet/core/jni/proto/Binance$TokenMintOrder;

    aput-object p3, p1, p2

    const/16 p2, 0x13

    const-class p3, Lwallet/core/jni/proto/Binance$TokenBurnOrder;

    aput-object p3, p1, p2

    const/16 p2, 0x14

    const-class p3, Lwallet/core/jni/proto/Binance$TransferOut;

    aput-object p3, p1, p2

    const/16 p2, 0x15

    const-class p3, Lwallet/core/jni/proto/Binance$SideChainDelegate;

    aput-object p3, p1, p2

    const/16 p2, 0x16

    const-class p3, Lwallet/core/jni/proto/Binance$SideChainRedelegate;

    aput-object p3, p1, p2

    const/16 p2, 0x17

    const-class p3, Lwallet/core/jni/proto/Binance$SideChainUndelegate;

    aput-object p3, p1, p2

    const/16 p2, 0x18

    const-class p3, Lwallet/core/jni/proto/Binance$TimeLockOrder;

    aput-object p3, p1, p2

    const/16 p2, 0x19

    const-class p3, Lwallet/core/jni/proto/Binance$TimeRelockOrder;

    aput-object p3, p1, p2

    const/16 p2, 0x1a

    const-class p3, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0019\u0001\u0000\u0001\u001a\u0019\u0000\u0000\u0000\u0001\u0208\u0002\u0002\u0003\u0002\u0004\u0002\u0005\u0208\u0006\n\u0008<\u0000\t<\u0000\n<\u0000\u000b<\u0000\u000c<\u0000\r<\u0000\u000e<\u0000\u000f<\u0000\u0010<\u0000\u0011<\u0000\u0012<\u0000\u0013<\u0000\u0014<\u0000\u0015<\u0000\u0016<\u0000\u0017<\u0000\u0018<\u0000\u0019<\u0000\u001a<\u0000"

    .line 19020
    sget-object p3, Lwallet/core/jni/proto/Binance$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 18982
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Binance$SigningInput$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Binance$SigningInput$Builder;-><init>(Lwallet/core/jni/proto/Binance$1;)V

    return-object p1

    .line 18979
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Binance$SigningInput;

    invoke-direct {p1}, Lwallet/core/jni/proto/Binance$SigningInput;-><init>()V

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

.method public getAccountNumber()J
    .locals 2

    .line 16467
    iget-wide v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->accountNumber_:J

    return-wide v0
.end method

.method public getBurnOrder()Lwallet/core/jni/proto/Binance$TokenBurnOrder;
    .locals 2

    .line 17250
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    .line 17251
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenBurnOrder;

    return-object v0

    .line 17253
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Binance$TokenBurnOrder;->getDefaultInstance()Lwallet/core/jni/proto/Binance$TokenBurnOrder;

    move-result-object v0

    return-object v0
.end method

.method public getCancelTradeOrder()Lwallet/core/jni/proto/Binance$CancelTradeOrder;
    .locals 2

    .line 16750
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 16751
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Binance$CancelTradeOrder;

    return-object v0

    .line 16753
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Binance$CancelTradeOrder;->getDefaultInstance()Lwallet/core/jni/proto/Binance$CancelTradeOrder;

    move-result-object v0

    return-object v0
.end method

.method public getChainId()Ljava/lang/String;
    .locals 1

    .line 16400
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->chainId_:Ljava/lang/String;

    return-object v0
.end method

.method public getChainIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 16413
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->chainId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getClaimHTLTOrder()Lwallet/core/jni/proto/Binance$ClaimHTLOrder;
    .locals 2

    .line 17050
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 17051
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;

    return-object v0

    .line 17053
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;->getDefaultInstance()Lwallet/core/jni/proto/Binance$ClaimHTLOrder;

    move-result-object v0

    return-object v0
.end method

.method public getDepositHTLTOrder()Lwallet/core/jni/proto/Binance$DepositHTLTOrder;
    .locals 2

    .line 17000
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    .line 17001
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;

    return-object v0

    .line 17003
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->getDefaultInstance()Lwallet/core/jni/proto/Binance$DepositHTLTOrder;

    move-result-object v0

    return-object v0
.end method

.method public getFreezeOrder()Lwallet/core/jni/proto/Binance$TokenFreezeOrder;
    .locals 2

    .line 16850
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 16851
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenFreezeOrder;

    return-object v0

    .line 16853
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Binance$TokenFreezeOrder;->getDefaultInstance()Lwallet/core/jni/proto/Binance$TokenFreezeOrder;

    move-result-object v0

    return-object v0
.end method

.method public getHtltOrder()Lwallet/core/jni/proto/Binance$HTLTOrder;
    .locals 2

    .line 16950
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 16951
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Binance$HTLTOrder;

    return-object v0

    .line 16953
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Binance$HTLTOrder;->getDefaultInstance()Lwallet/core/jni/proto/Binance$HTLTOrder;

    move-result-object v0

    return-object v0
.end method

.method public getIssueOrder()Lwallet/core/jni/proto/Binance$TokenIssueOrder;
    .locals 2

    .line 17150
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    .line 17151
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenIssueOrder;

    return-object v0

    .line 17153
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Binance$TokenIssueOrder;->getDefaultInstance()Lwallet/core/jni/proto/Binance$TokenIssueOrder;

    move-result-object v0

    return-object v0
.end method

.method public getMemo()Ljava/lang/String;
    .locals 1

    .line 16593
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->memo_:Ljava/lang/String;

    return-object v0
.end method

.method public getMemoBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 16606
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->memo_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getMintOrder()Lwallet/core/jni/proto/Binance$TokenMintOrder;
    .locals 2

    .line 17200
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 17201
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenMintOrder;

    return-object v0

    .line 17203
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Binance$TokenMintOrder;->getDefaultInstance()Lwallet/core/jni/proto/Binance$TokenMintOrder;

    move-result-object v0

    return-object v0
.end method

.method public getOrderOneofCase()Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;
    .locals 1

    .line 16379
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    invoke-static {v0}, Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;->forNumber(I)Lwallet/core/jni/proto/Binance$SigningInput$OrderOneofCase;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 16660
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getRefundHTLTOrder()Lwallet/core/jni/proto/Binance$RefundHTLTOrder;
    .locals 2

    .line 17100
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 17101
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Binance$RefundHTLTOrder;

    return-object v0

    .line 17103
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Binance$RefundHTLTOrder;->getDefaultInstance()Lwallet/core/jni/proto/Binance$RefundHTLTOrder;

    move-result-object v0

    return-object v0
.end method

.method public getSendOrder()Lwallet/core/jni/proto/Binance$SendOrder;
    .locals 2

    .line 16800
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 16801
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Binance$SendOrder;

    return-object v0

    .line 16803
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Binance$SendOrder;->getDefaultInstance()Lwallet/core/jni/proto/Binance$SendOrder;

    move-result-object v0

    return-object v0
.end method

.method public getSequence()J
    .locals 2

    .line 16505
    iget-wide v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->sequence_:J

    return-wide v0
.end method

.method public getSideDelegateOrder()Lwallet/core/jni/proto/Binance$SideChainDelegate;
    .locals 2

    .line 17350
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    .line 17351
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Binance$SideChainDelegate;

    return-object v0

    .line 17353
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Binance$SideChainDelegate;->getDefaultInstance()Lwallet/core/jni/proto/Binance$SideChainDelegate;

    move-result-object v0

    return-object v0
.end method

.method public getSideRedelegateOrder()Lwallet/core/jni/proto/Binance$SideChainRedelegate;
    .locals 2

    .line 17400
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_0

    .line 17401
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;

    return-object v0

    .line 17403
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->getDefaultInstance()Lwallet/core/jni/proto/Binance$SideChainRedelegate;

    move-result-object v0

    return-object v0
.end method

.method public getSideUndelegateOrder()Lwallet/core/jni/proto/Binance$SideChainUndelegate;
    .locals 2

    .line 17450
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    .line 17451
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Binance$SideChainUndelegate;

    return-object v0

    .line 17453
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->getDefaultInstance()Lwallet/core/jni/proto/Binance$SideChainUndelegate;

    move-result-object v0

    return-object v0
.end method

.method public getSource()J
    .locals 2

    .line 16547
    iget-wide v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->source_:J

    return-wide v0
.end method

.method public getTimeLockOrder()Lwallet/core/jni/proto/Binance$TimeLockOrder;
    .locals 2

    .line 17500
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0x18

    if-ne v0, v1, :cond_0

    .line 17501
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Binance$TimeLockOrder;

    return-object v0

    .line 17503
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Binance$TimeLockOrder;->getDefaultInstance()Lwallet/core/jni/proto/Binance$TimeLockOrder;

    move-result-object v0

    return-object v0
.end method

.method public getTimeRelockOrder()Lwallet/core/jni/proto/Binance$TimeRelockOrder;
    .locals 2

    .line 17550
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0x19

    if-ne v0, v1, :cond_0

    .line 17551
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Binance$TimeRelockOrder;

    return-object v0

    .line 17553
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Binance$TimeRelockOrder;->getDefaultInstance()Lwallet/core/jni/proto/Binance$TimeRelockOrder;

    move-result-object v0

    return-object v0
.end method

.method public getTimeUnlockOrder()Lwallet/core/jni/proto/Binance$TimeUnlockOrder;
    .locals 2

    .line 17600
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    .line 17601
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;

    return-object v0

    .line 17603
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Binance$TimeUnlockOrder;->getDefaultInstance()Lwallet/core/jni/proto/Binance$TimeUnlockOrder;

    move-result-object v0

    return-object v0
.end method

.method public getTradeOrder()Lwallet/core/jni/proto/Binance$TradeOrder;
    .locals 2

    .line 16700
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 16701
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Binance$TradeOrder;

    return-object v0

    .line 16703
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Binance$TradeOrder;->getDefaultInstance()Lwallet/core/jni/proto/Binance$TradeOrder;

    move-result-object v0

    return-object v0
.end method

.method public getTransferOutOrder()Lwallet/core/jni/proto/Binance$TransferOut;
    .locals 2

    .line 17300
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    .line 17301
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Binance$TransferOut;

    return-object v0

    .line 17303
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Binance$TransferOut;->getDefaultInstance()Lwallet/core/jni/proto/Binance$TransferOut;

    move-result-object v0

    return-object v0
.end method

.method public getUnfreezeOrder()Lwallet/core/jni/proto/Binance$TokenUnfreezeOrder;
    .locals 2

    .line 16900
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 16901
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenUnfreezeOrder;

    return-object v0

    .line 16903
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Binance$TokenUnfreezeOrder;->getDefaultInstance()Lwallet/core/jni/proto/Binance$TokenUnfreezeOrder;

    move-result-object v0

    return-object v0
.end method

.method public hasBurnOrder()Z
    .locals 2

    .line 17243
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasCancelTradeOrder()Z
    .locals 2

    .line 16743
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasClaimHTLTOrder()Z
    .locals 2

    .line 17043
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDepositHTLTOrder()Z
    .locals 2

    .line 16993
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFreezeOrder()Z
    .locals 2

    .line 16843
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasHtltOrder()Z
    .locals 2

    .line 16943
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasIssueOrder()Z
    .locals 2

    .line 17143
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMintOrder()Z
    .locals 2

    .line 17193
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRefundHTLTOrder()Z
    .locals 2

    .line 17093
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSendOrder()Z
    .locals 2

    .line 16793
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSideDelegateOrder()Z
    .locals 2

    .line 17343
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSideRedelegateOrder()Z
    .locals 2

    .line 17393
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSideUndelegateOrder()Z
    .locals 2

    .line 17443
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTimeLockOrder()Z
    .locals 2

    .line 17493
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0x18

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTimeRelockOrder()Z
    .locals 2

    .line 17543
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0x19

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTimeUnlockOrder()Z
    .locals 2

    .line 17593
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTradeOrder()Z
    .locals 2

    .line 16693
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTransferOutOrder()Z
    .locals 2

    .line 17293
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUnfreezeOrder()Z
    .locals 2

    .line 16893
    iget v0, p0, Lwallet/core/jni/proto/Binance$SigningInput;->orderOneofCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
