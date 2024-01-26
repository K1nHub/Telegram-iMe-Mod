.class public final Lwallet/core/jni/proto/Tron$Transaction;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Tron.java"

# interfaces
.implements Lwallet/core/jni/proto/Tron$TransactionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Tron;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Transaction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Tron$Transaction$Builder;,
        Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Tron$Transaction;",
        "Lwallet/core/jni/proto/Tron$Transaction$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Tron$TransactionOrBuilder;"
    }
.end annotation


# static fields
.field public static final BLOCK_HEADER_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$Transaction;

.field public static final DELEGATE_RESOURCE_FIELD_NUMBER:I = 0x18

.field public static final EXPIRATION_FIELD_NUMBER:I = 0x2

.field public static final FEE_LIMIT_FIELD_NUMBER:I = 0x4

.field public static final FREEZE_BALANCE_FIELD_NUMBER:I = 0xc

.field public static final FREEZE_BALANCE_V2_FIELD_NUMBER:I = 0x14

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Tron$Transaction;",
            ">;"
        }
    .end annotation
.end field

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x1

.field public static final TRANSFER_ASSET_FIELD_NUMBER:I = 0xb

.field public static final TRANSFER_FIELD_NUMBER:I = 0xa

.field public static final TRANSFER_TRC20_CONTRACT_FIELD_NUMBER:I = 0x13

.field public static final TRIGGER_SMART_CONTRACT_FIELD_NUMBER:I = 0x12

.field public static final UNDELEGATE_RESOURCE_FIELD_NUMBER:I = 0x19

.field public static final UNFREEZE_ASSET_FIELD_NUMBER:I = 0xe

.field public static final UNFREEZE_BALANCE_FIELD_NUMBER:I = 0xd

.field public static final UNFREEZE_BALANCE_V2_FIELD_NUMBER:I = 0x15

.field public static final VOTE_ASSET_FIELD_NUMBER:I = 0x10

.field public static final VOTE_WITNESS_FIELD_NUMBER:I = 0x11

.field public static final WITHDRAW_BALANCE_FIELD_NUMBER:I = 0xf

.field public static final WITHDRAW_EXPIRE_UNFREEZE_FIELD_NUMBER:I = 0x17


# instance fields
.field private blockHeader_:Lwallet/core/jni/proto/Tron$BlockHeader;

.field private contractOneofCase_:I

.field private contractOneof_:Ljava/lang/Object;

.field private expiration_:J

.field private feeLimit_:J

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13253
    new-instance v0, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-direct {v0}, Lwallet/core/jni/proto/Tron$Transaction;-><init>()V

    .line 13256
    sput-object v0, Lwallet/core/jni/proto/Tron$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$Transaction;

    .line 13257
    const-class v1, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 11152
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 11154
    iput v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    return-void
.end method

.method static synthetic access$18900()Lwallet/core/jni/proto/Tron$Transaction;
    .locals 1

    .line 11147
    sget-object v0, Lwallet/core/jni/proto/Tron$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$Transaction;

    return-object v0
.end method

.method static synthetic access$19000(Lwallet/core/jni/proto/Tron$Transaction;)V
    .locals 0

    .line 11147
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$Transaction;->clearContractOneof()V

    return-void
.end method

.method static synthetic access$19100(Lwallet/core/jni/proto/Tron$Transaction;J)V
    .locals 0

    .line 11147
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Tron$Transaction;->setTimestamp(J)V

    return-void
.end method

.method static synthetic access$19200(Lwallet/core/jni/proto/Tron$Transaction;)V
    .locals 0

    .line 11147
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$Transaction;->clearTimestamp()V

    return-void
.end method

.method static synthetic access$19300(Lwallet/core/jni/proto/Tron$Transaction;J)V
    .locals 0

    .line 11147
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Tron$Transaction;->setExpiration(J)V

    return-void
.end method

.method static synthetic access$19400(Lwallet/core/jni/proto/Tron$Transaction;)V
    .locals 0

    .line 11147
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$Transaction;->clearExpiration()V

    return-void
.end method

.method static synthetic access$19500(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$BlockHeader;)V
    .locals 0

    .line 11147
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->setBlockHeader(Lwallet/core/jni/proto/Tron$BlockHeader;)V

    return-void
.end method

.method static synthetic access$19600(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$BlockHeader;)V
    .locals 0

    .line 11147
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->mergeBlockHeader(Lwallet/core/jni/proto/Tron$BlockHeader;)V

    return-void
.end method

.method static synthetic access$19700(Lwallet/core/jni/proto/Tron$Transaction;)V
    .locals 0

    .line 11147
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$Transaction;->clearBlockHeader()V

    return-void
.end method

.method static synthetic access$19800(Lwallet/core/jni/proto/Tron$Transaction;J)V
    .locals 0

    .line 11147
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Tron$Transaction;->setFeeLimit(J)V

    return-void
.end method

.method static synthetic access$19900(Lwallet/core/jni/proto/Tron$Transaction;)V
    .locals 0

    .line 11147
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$Transaction;->clearFeeLimit()V

    return-void
.end method

.method static synthetic access$20000(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$TransferContract;)V
    .locals 0

    .line 11147
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->setTransfer(Lwallet/core/jni/proto/Tron$TransferContract;)V

    return-void
.end method

.method static synthetic access$20100(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$TransferContract;)V
    .locals 0

    .line 11147
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->mergeTransfer(Lwallet/core/jni/proto/Tron$TransferContract;)V

    return-void
.end method

.method static synthetic access$20200(Lwallet/core/jni/proto/Tron$Transaction;)V
    .locals 0

    .line 11147
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$Transaction;->clearTransfer()V

    return-void
.end method

.method static synthetic access$20300(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$TransferAssetContract;)V
    .locals 0

    .line 11147
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->setTransferAsset(Lwallet/core/jni/proto/Tron$TransferAssetContract;)V

    return-void
.end method

.method static synthetic access$20400(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$TransferAssetContract;)V
    .locals 0

    .line 11147
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->mergeTransferAsset(Lwallet/core/jni/proto/Tron$TransferAssetContract;)V

    return-void
.end method

.method static synthetic access$20500(Lwallet/core/jni/proto/Tron$Transaction;)V
    .locals 0

    .line 11147
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$Transaction;->clearTransferAsset()V

    return-void
.end method

.method static synthetic access$20600(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$FreezeBalanceContract;)V
    .locals 0

    .line 11147
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->setFreezeBalance(Lwallet/core/jni/proto/Tron$FreezeBalanceContract;)V

    return-void
.end method

.method static synthetic access$20700(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$FreezeBalanceContract;)V
    .locals 0

    .line 11147
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->mergeFreezeBalance(Lwallet/core/jni/proto/Tron$FreezeBalanceContract;)V

    return-void
.end method

.method static synthetic access$20800(Lwallet/core/jni/proto/Tron$Transaction;)V
    .locals 0

    .line 11147
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$Transaction;->clearFreezeBalance()V

    return-void
.end method

.method static synthetic access$20900(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract;)V
    .locals 0

    .line 11147
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->setUnfreezeBalance(Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract;)V

    return-void
.end method

.method static synthetic access$21000(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract;)V
    .locals 0

    .line 11147
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->mergeUnfreezeBalance(Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract;)V

    return-void
.end method

.method static synthetic access$21100(Lwallet/core/jni/proto/Tron$Transaction;)V
    .locals 0

    .line 11147
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$Transaction;->clearUnfreezeBalance()V

    return-void
.end method

.method static synthetic access$21200(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;)V
    .locals 0

    .line 11147
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->setUnfreezeAsset(Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;)V

    return-void
.end method

.method static synthetic access$21300(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;)V
    .locals 0

    .line 11147
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->mergeUnfreezeAsset(Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;)V

    return-void
.end method

.method static synthetic access$21400(Lwallet/core/jni/proto/Tron$Transaction;)V
    .locals 0

    .line 11147
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$Transaction;->clearUnfreezeAsset()V

    return-void
.end method

.method static synthetic access$21500(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$WithdrawBalanceContract;)V
    .locals 0

    .line 11147
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->setWithdrawBalance(Lwallet/core/jni/proto/Tron$WithdrawBalanceContract;)V

    return-void
.end method

.method static synthetic access$21600(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$WithdrawBalanceContract;)V
    .locals 0

    .line 11147
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->mergeWithdrawBalance(Lwallet/core/jni/proto/Tron$WithdrawBalanceContract;)V

    return-void
.end method

.method static synthetic access$21700(Lwallet/core/jni/proto/Tron$Transaction;)V
    .locals 0

    .line 11147
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$Transaction;->clearWithdrawBalance()V

    return-void
.end method

.method static synthetic access$21800(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$VoteAssetContract;)V
    .locals 0

    .line 11147
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->setVoteAsset(Lwallet/core/jni/proto/Tron$VoteAssetContract;)V

    return-void
.end method

.method static synthetic access$21900(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$VoteAssetContract;)V
    .locals 0

    .line 11147
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->mergeVoteAsset(Lwallet/core/jni/proto/Tron$VoteAssetContract;)V

    return-void
.end method

.method static synthetic access$22000(Lwallet/core/jni/proto/Tron$Transaction;)V
    .locals 0

    .line 11147
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$Transaction;->clearVoteAsset()V

    return-void
.end method

.method static synthetic access$22100(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$VoteWitnessContract;)V
    .locals 0

    .line 11147
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->setVoteWitness(Lwallet/core/jni/proto/Tron$VoteWitnessContract;)V

    return-void
.end method

.method static synthetic access$22200(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$VoteWitnessContract;)V
    .locals 0

    .line 11147
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->mergeVoteWitness(Lwallet/core/jni/proto/Tron$VoteWitnessContract;)V

    return-void
.end method

.method static synthetic access$22300(Lwallet/core/jni/proto/Tron$Transaction;)V
    .locals 0

    .line 11147
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$Transaction;->clearVoteWitness()V

    return-void
.end method

.method static synthetic access$22400(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$TriggerSmartContract;)V
    .locals 0

    .line 11147
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->setTriggerSmartContract(Lwallet/core/jni/proto/Tron$TriggerSmartContract;)V

    return-void
.end method

.method static synthetic access$22500(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$TriggerSmartContract;)V
    .locals 0

    .line 11147
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->mergeTriggerSmartContract(Lwallet/core/jni/proto/Tron$TriggerSmartContract;)V

    return-void
.end method

.method static synthetic access$22600(Lwallet/core/jni/proto/Tron$Transaction;)V
    .locals 0

    .line 11147
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$Transaction;->clearTriggerSmartContract()V

    return-void
.end method

.method static synthetic access$22700(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$TransferTRC20Contract;)V
    .locals 0

    .line 11147
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->setTransferTrc20Contract(Lwallet/core/jni/proto/Tron$TransferTRC20Contract;)V

    return-void
.end method

.method static synthetic access$22800(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$TransferTRC20Contract;)V
    .locals 0

    .line 11147
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->mergeTransferTrc20Contract(Lwallet/core/jni/proto/Tron$TransferTRC20Contract;)V

    return-void
.end method

.method static synthetic access$22900(Lwallet/core/jni/proto/Tron$Transaction;)V
    .locals 0

    .line 11147
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$Transaction;->clearTransferTrc20Contract()V

    return-void
.end method

.method static synthetic access$23000(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;)V
    .locals 0

    .line 11147
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->setFreezeBalanceV2(Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;)V

    return-void
.end method

.method static synthetic access$23100(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;)V
    .locals 0

    .line 11147
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->mergeFreezeBalanceV2(Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;)V

    return-void
.end method

.method static synthetic access$23200(Lwallet/core/jni/proto/Tron$Transaction;)V
    .locals 0

    .line 11147
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$Transaction;->clearFreezeBalanceV2()V

    return-void
.end method

.method static synthetic access$23300(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract;)V
    .locals 0

    .line 11147
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->setUnfreezeBalanceV2(Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract;)V

    return-void
.end method

.method static synthetic access$23400(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract;)V
    .locals 0

    .line 11147
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->mergeUnfreezeBalanceV2(Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract;)V

    return-void
.end method

.method static synthetic access$23500(Lwallet/core/jni/proto/Tron$Transaction;)V
    .locals 0

    .line 11147
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$Transaction;->clearUnfreezeBalanceV2()V

    return-void
.end method

.method static synthetic access$23600(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;)V
    .locals 0

    .line 11147
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->setWithdrawExpireUnfreeze(Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;)V

    return-void
.end method

.method static synthetic access$23700(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;)V
    .locals 0

    .line 11147
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->mergeWithdrawExpireUnfreeze(Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;)V

    return-void
.end method

.method static synthetic access$23800(Lwallet/core/jni/proto/Tron$Transaction;)V
    .locals 0

    .line 11147
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$Transaction;->clearWithdrawExpireUnfreeze()V

    return-void
.end method

.method static synthetic access$23900(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$DelegateResourceContract;)V
    .locals 0

    .line 11147
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->setDelegateResource(Lwallet/core/jni/proto/Tron$DelegateResourceContract;)V

    return-void
.end method

.method static synthetic access$24000(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$DelegateResourceContract;)V
    .locals 0

    .line 11147
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->mergeDelegateResource(Lwallet/core/jni/proto/Tron$DelegateResourceContract;)V

    return-void
.end method

.method static synthetic access$24100(Lwallet/core/jni/proto/Tron$Transaction;)V
    .locals 0

    .line 11147
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$Transaction;->clearDelegateResource()V

    return-void
.end method

.method static synthetic access$24200(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;)V
    .locals 0

    .line 11147
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->setUndelegateResource(Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;)V

    return-void
.end method

.method static synthetic access$24300(Lwallet/core/jni/proto/Tron$Transaction;Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;)V
    .locals 0

    .line 11147
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$Transaction;->mergeUndelegateResource(Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;)V

    return-void
.end method

.method static synthetic access$24400(Lwallet/core/jni/proto/Tron$Transaction;)V
    .locals 0

    .line 11147
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$Transaction;->clearUndelegateResource()V

    return-void
.end method

.method private clearBlockHeader()V
    .locals 1

    const/4 v0, 0x0

    .line 11361
    iput-object v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->blockHeader_:Lwallet/core/jni/proto/Tron$BlockHeader;

    return-void
.end method

.method private clearContractOneof()V
    .locals 1

    const/4 v0, 0x0

    .line 11219
    iput v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/4 v0, 0x0

    .line 11220
    iput-object v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    return-void
.end method

.method private clearDelegateResource()V
    .locals 2

    .line 12097
    iget v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/16 v1, 0x18

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 12098
    iput v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/4 v0, 0x0

    .line 12099
    iput-object v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearExpiration()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 11296
    iput-wide v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->expiration_:J

    return-void
.end method

.method private clearFeeLimit()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 11400
    iput-wide v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->feeLimit_:J

    return-void
.end method

.method private clearFreezeBalance()V
    .locals 2

    .line 11547
    iget v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 11548
    iput v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/4 v0, 0x0

    .line 11549
    iput-object v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearFreezeBalanceV2()V
    .locals 2

    .line 11947
    iget v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 11948
    iput v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/4 v0, 0x0

    .line 11949
    iput-object v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearTimestamp()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 11258
    iput-wide v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->timestamp_:J

    return-void
.end method

.method private clearTransfer()V
    .locals 2

    .line 11447
    iget v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 11448
    iput v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/4 v0, 0x0

    .line 11449
    iput-object v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearTransferAsset()V
    .locals 2

    .line 11497
    iget v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 11498
    iput v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/4 v0, 0x0

    .line 11499
    iput-object v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearTransferTrc20Contract()V
    .locals 2

    .line 11897
    iget v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 11898
    iput v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/4 v0, 0x0

    .line 11899
    iput-object v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearTriggerSmartContract()V
    .locals 2

    .line 11847
    iget v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 11848
    iput v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/4 v0, 0x0

    .line 11849
    iput-object v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearUndelegateResource()V
    .locals 2

    .line 12147
    iget v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/16 v1, 0x19

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 12148
    iput v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/4 v0, 0x0

    .line 12149
    iput-object v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearUnfreezeAsset()V
    .locals 2

    .line 11647
    iget v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 11648
    iput v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/4 v0, 0x0

    .line 11649
    iput-object v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearUnfreezeBalance()V
    .locals 2

    .line 11597
    iget v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 11598
    iput v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/4 v0, 0x0

    .line 11599
    iput-object v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearUnfreezeBalanceV2()V
    .locals 2

    .line 11997
    iget v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 11998
    iput v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/4 v0, 0x0

    .line 11999
    iput-object v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearVoteAsset()V
    .locals 2

    .line 11747
    iget v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 11748
    iput v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/4 v0, 0x0

    .line 11749
    iput-object v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearVoteWitness()V
    .locals 2

    .line 11797
    iget v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 11798
    iput v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/4 v0, 0x0

    .line 11799
    iput-object v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearWithdrawBalance()V
    .locals 2

    .line 11697
    iget v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 11698
    iput v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/4 v0, 0x0

    .line 11699
    iput-object v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearWithdrawExpireUnfreeze()V
    .locals 2

    .line 12047
    iget v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 12048
    iput v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/4 v0, 0x0

    .line 12049
    iput-object v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Tron$Transaction;
    .locals 1

    .line 13262
    sget-object v0, Lwallet/core/jni/proto/Tron$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$Transaction;

    return-object v0
.end method

.method private mergeBlockHeader(Lwallet/core/jni/proto/Tron$BlockHeader;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11344
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11345
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->blockHeader_:Lwallet/core/jni/proto/Tron$BlockHeader;

    if-eqz v0, :cond_0

    .line 11346
    invoke-static {}, Lwallet/core/jni/proto/Tron$BlockHeader;->getDefaultInstance()Lwallet/core/jni/proto/Tron$BlockHeader;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 11347
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->blockHeader_:Lwallet/core/jni/proto/Tron$BlockHeader;

    .line 11348
    invoke-static {v0}, Lwallet/core/jni/proto/Tron$BlockHeader;->newBuilder(Lwallet/core/jni/proto/Tron$BlockHeader;)Lwallet/core/jni/proto/Tron$BlockHeader$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Tron$BlockHeader$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Tron$BlockHeader;

    iput-object p1, p0, Lwallet/core/jni/proto/Tron$Transaction;->blockHeader_:Lwallet/core/jni/proto/Tron$BlockHeader;

    goto :goto_0

    .line 11350
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Tron$Transaction;->blockHeader_:Lwallet/core/jni/proto/Tron$BlockHeader;

    :goto_0
    return-void
.end method

.method private mergeDelegateResource(Lwallet/core/jni/proto/Tron$DelegateResourceContract;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 12083
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12084
    iget v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/16 v1, 0x18

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    .line 12085
    invoke-static {}, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->getDefaultInstance()Lwallet/core/jni/proto/Tron$DelegateResourceContract;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 12086
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->newBuilder(Lwallet/core/jni/proto/Tron$DelegateResourceContract;)Lwallet/core/jni/proto/Tron$DelegateResourceContract$Builder;

    move-result-object v0

    .line 12087
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Tron$DelegateResourceContract$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 12089
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    .line 12091
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    return-void
.end method

.method private mergeFreezeBalance(Lwallet/core/jni/proto/Tron$FreezeBalanceContract;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11533
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11534
    iget v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    .line 11535
    invoke-static {}, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->getDefaultInstance()Lwallet/core/jni/proto/Tron$FreezeBalanceContract;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 11536
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->newBuilder(Lwallet/core/jni/proto/Tron$FreezeBalanceContract;)Lwallet/core/jni/proto/Tron$FreezeBalanceContract$Builder;

    move-result-object v0

    .line 11537
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Tron$FreezeBalanceContract$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 11539
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    .line 11541
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    return-void
.end method

.method private mergeFreezeBalanceV2(Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11933
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11934
    iget v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    .line 11935
    invoke-static {}, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;->getDefaultInstance()Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 11936
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;->newBuilder(Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;)Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract$Builder;

    move-result-object v0

    .line 11937
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 11939
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    .line 11941
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    return-void
.end method

.method private mergeTransfer(Lwallet/core/jni/proto/Tron$TransferContract;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11433
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11434
    iget v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    .line 11435
    invoke-static {}, Lwallet/core/jni/proto/Tron$TransferContract;->getDefaultInstance()Lwallet/core/jni/proto/Tron$TransferContract;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 11436
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Tron$TransferContract;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$TransferContract;->newBuilder(Lwallet/core/jni/proto/Tron$TransferContract;)Lwallet/core/jni/proto/Tron$TransferContract$Builder;

    move-result-object v0

    .line 11437
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Tron$TransferContract$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 11439
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    .line 11441
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    return-void
.end method

.method private mergeTransferAsset(Lwallet/core/jni/proto/Tron$TransferAssetContract;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11483
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11484
    iget v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    .line 11485
    invoke-static {}, Lwallet/core/jni/proto/Tron$TransferAssetContract;->getDefaultInstance()Lwallet/core/jni/proto/Tron$TransferAssetContract;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 11486
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Tron$TransferAssetContract;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$TransferAssetContract;->newBuilder(Lwallet/core/jni/proto/Tron$TransferAssetContract;)Lwallet/core/jni/proto/Tron$TransferAssetContract$Builder;

    move-result-object v0

    .line 11487
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Tron$TransferAssetContract$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 11489
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    .line 11491
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    return-void
.end method

.method private mergeTransferTrc20Contract(Lwallet/core/jni/proto/Tron$TransferTRC20Contract;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11883
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11884
    iget v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    .line 11885
    invoke-static {}, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->getDefaultInstance()Lwallet/core/jni/proto/Tron$TransferTRC20Contract;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 11886
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->newBuilder(Lwallet/core/jni/proto/Tron$TransferTRC20Contract;)Lwallet/core/jni/proto/Tron$TransferTRC20Contract$Builder;

    move-result-object v0

    .line 11887
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Tron$TransferTRC20Contract$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 11889
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    .line 11891
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    return-void
.end method

.method private mergeTriggerSmartContract(Lwallet/core/jni/proto/Tron$TriggerSmartContract;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11833
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11834
    iget v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    .line 11835
    invoke-static {}, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->getDefaultInstance()Lwallet/core/jni/proto/Tron$TriggerSmartContract;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 11836
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->newBuilder(Lwallet/core/jni/proto/Tron$TriggerSmartContract;)Lwallet/core/jni/proto/Tron$TriggerSmartContract$Builder;

    move-result-object v0

    .line 11837
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Tron$TriggerSmartContract$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 11839
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    .line 11841
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    return-void
.end method

.method private mergeUndelegateResource(Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 12133
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12134
    iget v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/16 v1, 0x19

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    .line 12135
    invoke-static {}, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->getDefaultInstance()Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 12136
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->newBuilder(Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;)Lwallet/core/jni/proto/Tron$UnDelegateResourceContract$Builder;

    move-result-object v0

    .line 12137
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 12139
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    .line 12141
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    return-void
.end method

.method private mergeUnfreezeAsset(Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11633
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11634
    iget v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    .line 11635
    invoke-static {}, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;->getDefaultInstance()Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 11636
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;->newBuilder(Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;)Lwallet/core/jni/proto/Tron$UnfreezeAssetContract$Builder;

    move-result-object v0

    .line 11637
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 11639
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    .line 11641
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    return-void
.end method

.method private mergeUnfreezeBalance(Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11583
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11584
    iget v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    .line 11585
    invoke-static {}, Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract;->getDefaultInstance()Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 11586
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract;->newBuilder(Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract;)Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract$Builder;

    move-result-object v0

    .line 11587
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 11589
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    .line 11591
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    return-void
.end method

.method private mergeUnfreezeBalanceV2(Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11983
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11984
    iget v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    .line 11985
    invoke-static {}, Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract;->getDefaultInstance()Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 11986
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract;->newBuilder(Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract;)Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract$Builder;

    move-result-object v0

    .line 11987
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 11989
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    .line 11991
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    return-void
.end method

.method private mergeVoteAsset(Lwallet/core/jni/proto/Tron$VoteAssetContract;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11733
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11734
    iget v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    .line 11735
    invoke-static {}, Lwallet/core/jni/proto/Tron$VoteAssetContract;->getDefaultInstance()Lwallet/core/jni/proto/Tron$VoteAssetContract;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 11736
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Tron$VoteAssetContract;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$VoteAssetContract;->newBuilder(Lwallet/core/jni/proto/Tron$VoteAssetContract;)Lwallet/core/jni/proto/Tron$VoteAssetContract$Builder;

    move-result-object v0

    .line 11737
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Tron$VoteAssetContract$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 11739
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    .line 11741
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    return-void
.end method

.method private mergeVoteWitness(Lwallet/core/jni/proto/Tron$VoteWitnessContract;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11783
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11784
    iget v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    .line 11785
    invoke-static {}, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->getDefaultInstance()Lwallet/core/jni/proto/Tron$VoteWitnessContract;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 11786
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->newBuilder(Lwallet/core/jni/proto/Tron$VoteWitnessContract;)Lwallet/core/jni/proto/Tron$VoteWitnessContract$Builder;

    move-result-object v0

    .line 11787
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Tron$VoteWitnessContract$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 11789
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    .line 11791
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    return-void
.end method

.method private mergeWithdrawBalance(Lwallet/core/jni/proto/Tron$WithdrawBalanceContract;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11683
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11684
    iget v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    .line 11685
    invoke-static {}, Lwallet/core/jni/proto/Tron$WithdrawBalanceContract;->getDefaultInstance()Lwallet/core/jni/proto/Tron$WithdrawBalanceContract;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 11686
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Tron$WithdrawBalanceContract;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$WithdrawBalanceContract;->newBuilder(Lwallet/core/jni/proto/Tron$WithdrawBalanceContract;)Lwallet/core/jni/proto/Tron$WithdrawBalanceContract$Builder;

    move-result-object v0

    .line 11687
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Tron$WithdrawBalanceContract$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 11689
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    .line 11691
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    return-void
.end method

.method private mergeWithdrawExpireUnfreeze(Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 12033
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12034
    iget v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    .line 12035
    invoke-static {}, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;->getDefaultInstance()Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 12036
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;->newBuilder(Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;)Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract$Builder;

    move-result-object v0

    .line 12037
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 12039
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    .line 12041
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Tron$Transaction$Builder;
    .locals 1

    .line 12228
    sget-object v0, Lwallet/core/jni/proto/Tron$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$Transaction;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Tron$Transaction$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Tron$Transaction;)Lwallet/core/jni/proto/Tron$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 12231
    sget-object v0, Lwallet/core/jni/proto/Tron$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$Transaction;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$Transaction$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Tron$Transaction;
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

    .line 12205
    sget-object v0, Lwallet/core/jni/proto/Tron$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$Transaction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$Transaction;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$Transaction;
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

    .line 12211
    sget-object v0, Lwallet/core/jni/proto/Tron$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$Transaction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$Transaction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tron$Transaction;
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

    .line 12169
    sget-object v0, Lwallet/core/jni/proto/Tron$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$Transaction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$Transaction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$Transaction;
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

    .line 12176
    sget-object v0, Lwallet/core/jni/proto/Tron$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$Transaction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$Transaction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Tron$Transaction;
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

    .line 12216
    sget-object v0, Lwallet/core/jni/proto/Tron$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$Transaction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$Transaction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$Transaction;
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

    .line 12223
    sget-object v0, Lwallet/core/jni/proto/Tron$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$Transaction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$Transaction;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Tron$Transaction;
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

    .line 12193
    sget-object v0, Lwallet/core/jni/proto/Tron$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$Transaction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$Transaction;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$Transaction;
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

    .line 12200
    sget-object v0, Lwallet/core/jni/proto/Tron$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$Transaction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$Transaction;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Tron$Transaction;
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

    .line 12156
    sget-object v0, Lwallet/core/jni/proto/Tron$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$Transaction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$Transaction;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$Transaction;
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

    .line 12163
    sget-object v0, Lwallet/core/jni/proto/Tron$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$Transaction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$Transaction;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Tron$Transaction;
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

    .line 12181
    sget-object v0, Lwallet/core/jni/proto/Tron$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$Transaction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$Transaction;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$Transaction;
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

    .line 12188
    sget-object v0, Lwallet/core/jni/proto/Tron$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$Transaction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$Transaction;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Tron$Transaction;",
            ">;"
        }
    .end annotation

    .line 13268
    sget-object v0, Lwallet/core/jni/proto/Tron$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$Transaction;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setBlockHeader(Lwallet/core/jni/proto/Tron$BlockHeader;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11331
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11332
    iput-object p1, p0, Lwallet/core/jni/proto/Tron$Transaction;->blockHeader_:Lwallet/core/jni/proto/Tron$BlockHeader;

    return-void
.end method

.method private setDelegateResource(Lwallet/core/jni/proto/Tron$DelegateResourceContract;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 12075
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12076
    iput-object p1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    const/16 p1, 0x18

    .line 12077
    iput p1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    return-void
.end method

.method private setExpiration(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11285
    iput-wide p1, p0, Lwallet/core/jni/proto/Tron$Transaction;->expiration_:J

    return-void
.end method

.method private setFeeLimit(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11389
    iput-wide p1, p0, Lwallet/core/jni/proto/Tron$Transaction;->feeLimit_:J

    return-void
.end method

.method private setFreezeBalance(Lwallet/core/jni/proto/Tron$FreezeBalanceContract;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11525
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11526
    iput-object p1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    const/16 p1, 0xc

    .line 11527
    iput p1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    return-void
.end method

.method private setFreezeBalanceV2(Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11925
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11926
    iput-object p1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    const/16 p1, 0x14

    .line 11927
    iput p1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    return-void
.end method

.method private setTimestamp(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11247
    iput-wide p1, p0, Lwallet/core/jni/proto/Tron$Transaction;->timestamp_:J

    return-void
.end method

.method private setTransfer(Lwallet/core/jni/proto/Tron$TransferContract;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11425
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11426
    iput-object p1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    const/16 p1, 0xa

    .line 11427
    iput p1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    return-void
.end method

.method private setTransferAsset(Lwallet/core/jni/proto/Tron$TransferAssetContract;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11475
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11476
    iput-object p1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    const/16 p1, 0xb

    .line 11477
    iput p1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    return-void
.end method

.method private setTransferTrc20Contract(Lwallet/core/jni/proto/Tron$TransferTRC20Contract;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11875
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11876
    iput-object p1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    const/16 p1, 0x13

    .line 11877
    iput p1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    return-void
.end method

.method private setTriggerSmartContract(Lwallet/core/jni/proto/Tron$TriggerSmartContract;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11825
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11826
    iput-object p1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    const/16 p1, 0x12

    .line 11827
    iput p1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    return-void
.end method

.method private setUndelegateResource(Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 12125
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12126
    iput-object p1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    const/16 p1, 0x19

    .line 12127
    iput p1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    return-void
.end method

.method private setUnfreezeAsset(Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11625
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11626
    iput-object p1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    const/16 p1, 0xe

    .line 11627
    iput p1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    return-void
.end method

.method private setUnfreezeBalance(Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11575
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11576
    iput-object p1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    const/16 p1, 0xd

    .line 11577
    iput p1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    return-void
.end method

.method private setUnfreezeBalanceV2(Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11975
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11976
    iput-object p1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    const/16 p1, 0x15

    .line 11977
    iput p1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    return-void
.end method

.method private setVoteAsset(Lwallet/core/jni/proto/Tron$VoteAssetContract;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11725
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11726
    iput-object p1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    const/16 p1, 0x10

    .line 11727
    iput p1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    return-void
.end method

.method private setVoteWitness(Lwallet/core/jni/proto/Tron$VoteWitnessContract;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11775
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11776
    iput-object p1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    const/16 p1, 0x11

    .line 11777
    iput p1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    return-void
.end method

.method private setWithdrawBalance(Lwallet/core/jni/proto/Tron$WithdrawBalanceContract;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 11675
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11676
    iput-object p1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    const/16 p1, 0xf

    .line 11677
    iput p1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    return-void
.end method

.method private setWithdrawExpireUnfreeze(Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 12025
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12026
    iput-object p1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    const/16 p1, 0x17

    .line 12027
    iput p1, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

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

    .line 13182
    sget-object p2, Lwallet/core/jni/proto/Tron$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 13246
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 13240
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 13225
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Tron$Transaction;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 13227
    const-class p2, Lwallet/core/jni/proto/Tron$Transaction;

    monitor-enter p2

    .line 13228
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Tron$Transaction;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 13230
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Tron$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$Transaction;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 13233
    sput-object p1, Lwallet/core/jni/proto/Tron$Transaction;->PARSER:Lcom/google/protobuf/Parser;

    .line 13235
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

    .line 13222
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Tron$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$Transaction;

    return-object p1

    :pswitch_4
    const/16 p1, 0x15

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "contractOneof_"

    aput-object v0, p1, p3

    const-string p3, "contractOneofCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "timestamp_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "expiration_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "blockHeader_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "feeLimit_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    .line 13190
    const-class p3, Lwallet/core/jni/proto/Tron$TransferContract;

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-class p3, Lwallet/core/jni/proto/Tron$TransferAssetContract;

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-class p3, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-class p3, Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract;

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-class p3, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-class p3, Lwallet/core/jni/proto/Tron$WithdrawBalanceContract;

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-class p3, Lwallet/core/jni/proto/Tron$VoteAssetContract;

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-class p3, Lwallet/core/jni/proto/Tron$VoteWitnessContract;

    aput-object p3, p1, p2

    const/16 p2, 0xe

    const-class p3, Lwallet/core/jni/proto/Tron$TriggerSmartContract;

    aput-object p3, p1, p2

    const/16 p2, 0xf

    const-class p3, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;

    aput-object p3, p1, p2

    const/16 p2, 0x10

    const-class p3, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;

    aput-object p3, p1, p2

    const/16 p2, 0x11

    const-class p3, Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract;

    aput-object p3, p1, p2

    const/16 p2, 0x12

    const-class p3, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;

    aput-object p3, p1, p2

    const/16 p2, 0x13

    const-class p3, Lwallet/core/jni/proto/Tron$DelegateResourceContract;

    aput-object p3, p1, p2

    const/16 p2, 0x14

    const-class p3, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0013\u0001\u0000\u0001\u0019\u0013\u0000\u0000\u0000\u0001\u0002\u0002\u0002\u0003\t\u0004\u0002\n<\u0000\u000b<\u0000\u000c<\u0000\r<\u0000\u000e<\u0000\u000f<\u0000\u0010<\u0000\u0011<\u0000\u0012<\u0000\u0013<\u0000\u0014<\u0000\u0015<\u0000\u0017<\u0000\u0018<\u0000\u0019<\u0000"

    .line 13218
    sget-object p3, Lwallet/core/jni/proto/Tron$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$Transaction;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13187
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Tron$Transaction$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Tron$Transaction$Builder;-><init>(Lwallet/core/jni/proto/Tron$1;)V

    return-object p1

    .line 13184
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Tron$Transaction;

    invoke-direct {p1}, Lwallet/core/jni/proto/Tron$Transaction;-><init>()V

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

.method public getBlockHeader()Lwallet/core/jni/proto/Tron$BlockHeader;
    .locals 1

    .line 11321
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->blockHeader_:Lwallet/core/jni/proto/Tron$BlockHeader;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/Tron$BlockHeader;->getDefaultInstance()Lwallet/core/jni/proto/Tron$BlockHeader;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getContractOneofCase()Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;
    .locals 1

    .line 11214
    iget v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    invoke-static {v0}, Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;->forNumber(I)Lwallet/core/jni/proto/Tron$Transaction$ContractOneofCase;

    move-result-object v0

    return-object v0
.end method

.method public getDelegateResource()Lwallet/core/jni/proto/Tron$DelegateResourceContract;
    .locals 2

    .line 12066
    iget v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/16 v1, 0x18

    if-ne v0, v1, :cond_0

    .line 12067
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;

    return-object v0

    .line 12069
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->getDefaultInstance()Lwallet/core/jni/proto/Tron$DelegateResourceContract;

    move-result-object v0

    return-object v0
.end method

.method public getExpiration()J
    .locals 2

    .line 11273
    iget-wide v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->expiration_:J

    return-wide v0
.end method

.method public getFeeLimit()J
    .locals 2

    .line 11377
    iget-wide v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->feeLimit_:J

    return-wide v0
.end method

.method public getFreezeBalance()Lwallet/core/jni/proto/Tron$FreezeBalanceContract;
    .locals 2

    .line 11516
    iget v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 11517
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;

    return-object v0

    .line 11519
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->getDefaultInstance()Lwallet/core/jni/proto/Tron$FreezeBalanceContract;

    move-result-object v0

    return-object v0
.end method

.method public getFreezeBalanceV2()Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;
    .locals 2

    .line 11916
    iget v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    .line 11917
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;

    return-object v0

    .line 11919
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;->getDefaultInstance()Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 11235
    iget-wide v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->timestamp_:J

    return-wide v0
.end method

.method public getTransfer()Lwallet/core/jni/proto/Tron$TransferContract;
    .locals 2

    .line 11416
    iget v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 11417
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Tron$TransferContract;

    return-object v0

    .line 11419
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Tron$TransferContract;->getDefaultInstance()Lwallet/core/jni/proto/Tron$TransferContract;

    move-result-object v0

    return-object v0
.end method

.method public getTransferAsset()Lwallet/core/jni/proto/Tron$TransferAssetContract;
    .locals 2

    .line 11466
    iget v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 11467
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Tron$TransferAssetContract;

    return-object v0

    .line 11469
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Tron$TransferAssetContract;->getDefaultInstance()Lwallet/core/jni/proto/Tron$TransferAssetContract;

    move-result-object v0

    return-object v0
.end method

.method public getTransferTrc20Contract()Lwallet/core/jni/proto/Tron$TransferTRC20Contract;
    .locals 2

    .line 11866
    iget v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    .line 11867
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;

    return-object v0

    .line 11869
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->getDefaultInstance()Lwallet/core/jni/proto/Tron$TransferTRC20Contract;

    move-result-object v0

    return-object v0
.end method

.method public getTriggerSmartContract()Lwallet/core/jni/proto/Tron$TriggerSmartContract;
    .locals 2

    .line 11816
    iget v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 11817
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;

    return-object v0

    .line 11819
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->getDefaultInstance()Lwallet/core/jni/proto/Tron$TriggerSmartContract;

    move-result-object v0

    return-object v0
.end method

.method public getUndelegateResource()Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;
    .locals 2

    .line 12116
    iget v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/16 v1, 0x19

    if-ne v0, v1, :cond_0

    .line 12117
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;

    return-object v0

    .line 12119
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->getDefaultInstance()Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;

    move-result-object v0

    return-object v0
.end method

.method public getUnfreezeAsset()Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;
    .locals 2

    .line 11616
    iget v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    .line 11617
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;

    return-object v0

    .line 11619
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;->getDefaultInstance()Lwallet/core/jni/proto/Tron$UnfreezeAssetContract;

    move-result-object v0

    return-object v0
.end method

.method public getUnfreezeBalance()Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract;
    .locals 2

    .line 11566
    iget v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 11567
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract;

    return-object v0

    .line 11569
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract;->getDefaultInstance()Lwallet/core/jni/proto/Tron$UnfreezeBalanceContract;

    move-result-object v0

    return-object v0
.end method

.method public getUnfreezeBalanceV2()Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract;
    .locals 2

    .line 11966
    iget v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    .line 11967
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract;

    return-object v0

    .line 11969
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract;->getDefaultInstance()Lwallet/core/jni/proto/Tron$UnfreezeBalanceV2Contract;

    move-result-object v0

    return-object v0
.end method

.method public getVoteAsset()Lwallet/core/jni/proto/Tron$VoteAssetContract;
    .locals 2

    .line 11716
    iget v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 11717
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Tron$VoteAssetContract;

    return-object v0

    .line 11719
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Tron$VoteAssetContract;->getDefaultInstance()Lwallet/core/jni/proto/Tron$VoteAssetContract;

    move-result-object v0

    return-object v0
.end method

.method public getVoteWitness()Lwallet/core/jni/proto/Tron$VoteWitnessContract;
    .locals 2

    .line 11766
    iget v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    .line 11767
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Tron$VoteWitnessContract;

    return-object v0

    .line 11769
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Tron$VoteWitnessContract;->getDefaultInstance()Lwallet/core/jni/proto/Tron$VoteWitnessContract;

    move-result-object v0

    return-object v0
.end method

.method public getWithdrawBalance()Lwallet/core/jni/proto/Tron$WithdrawBalanceContract;
    .locals 2

    .line 11666
    iget v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 11667
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Tron$WithdrawBalanceContract;

    return-object v0

    .line 11669
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Tron$WithdrawBalanceContract;->getDefaultInstance()Lwallet/core/jni/proto/Tron$WithdrawBalanceContract;

    move-result-object v0

    return-object v0
.end method

.method public getWithdrawExpireUnfreeze()Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;
    .locals 2

    .line 12016
    iget v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    .line 12017
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;

    return-object v0

    .line 12019
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;->getDefaultInstance()Lwallet/core/jni/proto/Tron$WithdrawExpireUnfreezeContract;

    move-result-object v0

    return-object v0
.end method

.method public hasBlockHeader()Z
    .locals 1

    .line 11310
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->blockHeader_:Lwallet/core/jni/proto/Tron$BlockHeader;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDelegateResource()Z
    .locals 2

    .line 12059
    iget v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/16 v1, 0x18

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFreezeBalance()Z
    .locals 2

    .line 11509
    iget v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFreezeBalanceV2()Z
    .locals 2

    .line 11909
    iget v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTransfer()Z
    .locals 2

    .line 11409
    iget v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTransferAsset()Z
    .locals 2

    .line 11459
    iget v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTransferTrc20Contract()Z
    .locals 2

    .line 11859
    iget v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTriggerSmartContract()Z
    .locals 2

    .line 11809
    iget v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUndelegateResource()Z
    .locals 2

    .line 12109
    iget v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/16 v1, 0x19

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUnfreezeAsset()Z
    .locals 2

    .line 11609
    iget v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUnfreezeBalance()Z
    .locals 2

    .line 11559
    iget v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUnfreezeBalanceV2()Z
    .locals 2

    .line 11959
    iget v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasVoteAsset()Z
    .locals 2

    .line 11709
    iget v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasVoteWitness()Z
    .locals 2

    .line 11759
    iget v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasWithdrawBalance()Z
    .locals 2

    .line 11659
    iget v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasWithdrawExpireUnfreeze()Z
    .locals 2

    .line 12009
    iget v0, p0, Lwallet/core/jni/proto/Tron$Transaction;->contractOneofCase_:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
