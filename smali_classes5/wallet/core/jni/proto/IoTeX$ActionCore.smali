.class public final Lwallet/core/jni/proto/IoTeX$ActionCore;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "IoTeX.java"

# interfaces
.implements Lwallet/core/jni/proto/IoTeX$ActionCoreOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/IoTeX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionCore"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/IoTeX$ActionCore$Builder;,
        Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/IoTeX$ActionCore;",
        "Lwallet/core/jni/proto/IoTeX$ActionCore$Builder;",
        ">;",
        "Lwallet/core/jni/proto/IoTeX$ActionCoreOrBuilder;"
    }
.end annotation


# static fields
.field public static final CANDIDATEREGISTER_FIELD_NUMBER:I = 0x2f

.field public static final CANDIDATEUPDATE_FIELD_NUMBER:I = 0x30

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$ActionCore;

.field public static final EXECUTION_FIELD_NUMBER:I = 0xc

.field public static final GASLIMIT_FIELD_NUMBER:I = 0x3

.field public static final GASPRICE_FIELD_NUMBER:I = 0x4

.field public static final NONCE_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/IoTeX$ActionCore;",
            ">;"
        }
    .end annotation
.end field

.field public static final STAKEADDDEPOSIT_FIELD_NUMBER:I = 0x2b

.field public static final STAKECHANGECANDIDATE_FIELD_NUMBER:I = 0x2d

.field public static final STAKECREATE_FIELD_NUMBER:I = 0x28

.field public static final STAKERESTAKE_FIELD_NUMBER:I = 0x2c

.field public static final STAKETRANSFEROWNERSHIP_FIELD_NUMBER:I = 0x2e

.field public static final STAKEUNSTAKE_FIELD_NUMBER:I = 0x29

.field public static final STAKEWITHDRAW_FIELD_NUMBER:I = 0x2a

.field public static final TRANSFER_FIELD_NUMBER:I = 0xa

.field public static final VERSION_FIELD_NUMBER:I = 0x1


# instance fields
.field private actionCase_:I

.field private action_:Ljava/lang/Object;

.field private gasLimit_:J

.field private gasPrice_:Ljava/lang/String;

.field private nonce_:J

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11372
    new-instance v0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-direct {v0}, Lwallet/core/jni/proto/IoTeX$ActionCore;-><init>()V

    .line 11375
    sput-object v0, Lwallet/core/jni/proto/IoTeX$ActionCore;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$ActionCore;

    .line 11376
    const-class v1, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 9631
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 9634
    iput v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    const-string v0, ""

    .line 9632
    iput-object v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->gasPrice_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$18800()Lwallet/core/jni/proto/IoTeX$ActionCore;
    .locals 1

    .line 9626
    sget-object v0, Lwallet/core/jni/proto/IoTeX$ActionCore;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$ActionCore;

    return-object v0
.end method

.method static synthetic access$18900(Lwallet/core/jni/proto/IoTeX$ActionCore;)V
    .locals 0

    .line 9626
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$ActionCore;->clearAction()V

    return-void
.end method

.method static synthetic access$19000(Lwallet/core/jni/proto/IoTeX$ActionCore;I)V
    .locals 0

    .line 9626
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$ActionCore;->setVersion(I)V

    return-void
.end method

.method static synthetic access$19100(Lwallet/core/jni/proto/IoTeX$ActionCore;)V
    .locals 0

    .line 9626
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$ActionCore;->clearVersion()V

    return-void
.end method

.method static synthetic access$19200(Lwallet/core/jni/proto/IoTeX$ActionCore;J)V
    .locals 0

    .line 9626
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/IoTeX$ActionCore;->setNonce(J)V

    return-void
.end method

.method static synthetic access$19300(Lwallet/core/jni/proto/IoTeX$ActionCore;)V
    .locals 0

    .line 9626
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$ActionCore;->clearNonce()V

    return-void
.end method

.method static synthetic access$19400(Lwallet/core/jni/proto/IoTeX$ActionCore;J)V
    .locals 0

    .line 9626
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/IoTeX$ActionCore;->setGasLimit(J)V

    return-void
.end method

.method static synthetic access$19500(Lwallet/core/jni/proto/IoTeX$ActionCore;)V
    .locals 0

    .line 9626
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$ActionCore;->clearGasLimit()V

    return-void
.end method

.method static synthetic access$19600(Lwallet/core/jni/proto/IoTeX$ActionCore;Ljava/lang/String;)V
    .locals 0

    .line 9626
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$ActionCore;->setGasPrice(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$19700(Lwallet/core/jni/proto/IoTeX$ActionCore;)V
    .locals 0

    .line 9626
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$ActionCore;->clearGasPrice()V

    return-void
.end method

.method static synthetic access$19800(Lwallet/core/jni/proto/IoTeX$ActionCore;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 9626
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$ActionCore;->setGasPriceBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$19900(Lwallet/core/jni/proto/IoTeX$ActionCore;Lwallet/core/jni/proto/IoTeX$Transfer;)V
    .locals 0

    .line 9626
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$ActionCore;->setTransfer(Lwallet/core/jni/proto/IoTeX$Transfer;)V

    return-void
.end method

.method static synthetic access$20000(Lwallet/core/jni/proto/IoTeX$ActionCore;Lwallet/core/jni/proto/IoTeX$Transfer;)V
    .locals 0

    .line 9626
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$ActionCore;->mergeTransfer(Lwallet/core/jni/proto/IoTeX$Transfer;)V

    return-void
.end method

.method static synthetic access$20100(Lwallet/core/jni/proto/IoTeX$ActionCore;)V
    .locals 0

    .line 9626
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$ActionCore;->clearTransfer()V

    return-void
.end method

.method static synthetic access$20200(Lwallet/core/jni/proto/IoTeX$ActionCore;Lwallet/core/jni/proto/IoTeX$ContractCall;)V
    .locals 0

    .line 9626
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$ActionCore;->setExecution(Lwallet/core/jni/proto/IoTeX$ContractCall;)V

    return-void
.end method

.method static synthetic access$20300(Lwallet/core/jni/proto/IoTeX$ActionCore;Lwallet/core/jni/proto/IoTeX$ContractCall;)V
    .locals 0

    .line 9626
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$ActionCore;->mergeExecution(Lwallet/core/jni/proto/IoTeX$ContractCall;)V

    return-void
.end method

.method static synthetic access$20400(Lwallet/core/jni/proto/IoTeX$ActionCore;)V
    .locals 0

    .line 9626
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$ActionCore;->clearExecution()V

    return-void
.end method

.method static synthetic access$20500(Lwallet/core/jni/proto/IoTeX$ActionCore;Lwallet/core/jni/proto/IoTeX$Staking$Create;)V
    .locals 0

    .line 9626
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$ActionCore;->setStakeCreate(Lwallet/core/jni/proto/IoTeX$Staking$Create;)V

    return-void
.end method

.method static synthetic access$20600(Lwallet/core/jni/proto/IoTeX$ActionCore;Lwallet/core/jni/proto/IoTeX$Staking$Create;)V
    .locals 0

    .line 9626
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$ActionCore;->mergeStakeCreate(Lwallet/core/jni/proto/IoTeX$Staking$Create;)V

    return-void
.end method

.method static synthetic access$20700(Lwallet/core/jni/proto/IoTeX$ActionCore;)V
    .locals 0

    .line 9626
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$ActionCore;->clearStakeCreate()V

    return-void
.end method

.method static synthetic access$20800(Lwallet/core/jni/proto/IoTeX$ActionCore;Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;)V
    .locals 0

    .line 9626
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$ActionCore;->setStakeUnstake(Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;)V

    return-void
.end method

.method static synthetic access$20900(Lwallet/core/jni/proto/IoTeX$ActionCore;Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;)V
    .locals 0

    .line 9626
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$ActionCore;->mergeStakeUnstake(Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;)V

    return-void
.end method

.method static synthetic access$21000(Lwallet/core/jni/proto/IoTeX$ActionCore;)V
    .locals 0

    .line 9626
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$ActionCore;->clearStakeUnstake()V

    return-void
.end method

.method static synthetic access$21100(Lwallet/core/jni/proto/IoTeX$ActionCore;Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;)V
    .locals 0

    .line 9626
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$ActionCore;->setStakeWithdraw(Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;)V

    return-void
.end method

.method static synthetic access$21200(Lwallet/core/jni/proto/IoTeX$ActionCore;Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;)V
    .locals 0

    .line 9626
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$ActionCore;->mergeStakeWithdraw(Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;)V

    return-void
.end method

.method static synthetic access$21300(Lwallet/core/jni/proto/IoTeX$ActionCore;)V
    .locals 0

    .line 9626
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$ActionCore;->clearStakeWithdraw()V

    return-void
.end method

.method static synthetic access$21400(Lwallet/core/jni/proto/IoTeX$ActionCore;Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;)V
    .locals 0

    .line 9626
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$ActionCore;->setStakeAddDeposit(Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;)V

    return-void
.end method

.method static synthetic access$21500(Lwallet/core/jni/proto/IoTeX$ActionCore;Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;)V
    .locals 0

    .line 9626
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$ActionCore;->mergeStakeAddDeposit(Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;)V

    return-void
.end method

.method static synthetic access$21600(Lwallet/core/jni/proto/IoTeX$ActionCore;)V
    .locals 0

    .line 9626
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$ActionCore;->clearStakeAddDeposit()V

    return-void
.end method

.method static synthetic access$21700(Lwallet/core/jni/proto/IoTeX$ActionCore;Lwallet/core/jni/proto/IoTeX$Staking$Restake;)V
    .locals 0

    .line 9626
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$ActionCore;->setStakeRestake(Lwallet/core/jni/proto/IoTeX$Staking$Restake;)V

    return-void
.end method

.method static synthetic access$21800(Lwallet/core/jni/proto/IoTeX$ActionCore;Lwallet/core/jni/proto/IoTeX$Staking$Restake;)V
    .locals 0

    .line 9626
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$ActionCore;->mergeStakeRestake(Lwallet/core/jni/proto/IoTeX$Staking$Restake;)V

    return-void
.end method

.method static synthetic access$21900(Lwallet/core/jni/proto/IoTeX$ActionCore;)V
    .locals 0

    .line 9626
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$ActionCore;->clearStakeRestake()V

    return-void
.end method

.method static synthetic access$22000(Lwallet/core/jni/proto/IoTeX$ActionCore;Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;)V
    .locals 0

    .line 9626
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$ActionCore;->setStakeChangeCandidate(Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;)V

    return-void
.end method

.method static synthetic access$22100(Lwallet/core/jni/proto/IoTeX$ActionCore;Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;)V
    .locals 0

    .line 9626
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$ActionCore;->mergeStakeChangeCandidate(Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;)V

    return-void
.end method

.method static synthetic access$22200(Lwallet/core/jni/proto/IoTeX$ActionCore;)V
    .locals 0

    .line 9626
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$ActionCore;->clearStakeChangeCandidate()V

    return-void
.end method

.method static synthetic access$22300(Lwallet/core/jni/proto/IoTeX$ActionCore;Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;)V
    .locals 0

    .line 9626
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$ActionCore;->setStakeTransferOwnership(Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;)V

    return-void
.end method

.method static synthetic access$22400(Lwallet/core/jni/proto/IoTeX$ActionCore;Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;)V
    .locals 0

    .line 9626
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$ActionCore;->mergeStakeTransferOwnership(Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;)V

    return-void
.end method

.method static synthetic access$22500(Lwallet/core/jni/proto/IoTeX$ActionCore;)V
    .locals 0

    .line 9626
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$ActionCore;->clearStakeTransferOwnership()V

    return-void
.end method

.method static synthetic access$22600(Lwallet/core/jni/proto/IoTeX$ActionCore;Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;)V
    .locals 0

    .line 9626
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$ActionCore;->setCandidateRegister(Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;)V

    return-void
.end method

.method static synthetic access$22700(Lwallet/core/jni/proto/IoTeX$ActionCore;Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;)V
    .locals 0

    .line 9626
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$ActionCore;->mergeCandidateRegister(Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;)V

    return-void
.end method

.method static synthetic access$22800(Lwallet/core/jni/proto/IoTeX$ActionCore;)V
    .locals 0

    .line 9626
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$ActionCore;->clearCandidateRegister()V

    return-void
.end method

.method static synthetic access$22900(Lwallet/core/jni/proto/IoTeX$ActionCore;Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;)V
    .locals 0

    .line 9626
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$ActionCore;->setCandidateUpdate(Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;)V

    return-void
.end method

.method static synthetic access$23000(Lwallet/core/jni/proto/IoTeX$ActionCore;Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;)V
    .locals 0

    .line 9626
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$ActionCore;->mergeCandidateUpdate(Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;)V

    return-void
.end method

.method static synthetic access$23100(Lwallet/core/jni/proto/IoTeX$ActionCore;)V
    .locals 0

    .line 9626
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$ActionCore;->clearCandidateUpdate()V

    return-void
.end method

.method private clearAction()V
    .locals 1

    const/4 v0, 0x0

    .line 9691
    iput v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    const/4 v0, 0x0

    .line 9692
    iput-object v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    return-void
.end method

.method private clearCandidateRegister()V
    .locals 2

    .line 10390
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 10391
    iput v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    const/4 v0, 0x0

    .line 10392
    iput-object v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearCandidateUpdate()V
    .locals 2

    .line 10440
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    const/16 v1, 0x30

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 10441
    iput v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    const/4 v0, 0x0

    .line 10442
    iput-object v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearExecution()V
    .locals 2

    .line 9970
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 9971
    iput v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    const/4 v0, 0x0

    .line 9972
    iput-object v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearGasLimit()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 9806
    iput-wide v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->gasLimit_:J

    return-void
.end method

.method private clearGasPrice()V
    .locals 1

    .line 9859
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$ActionCore;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$ActionCore;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$ActionCore;->getGasPrice()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->gasPrice_:Ljava/lang/String;

    return-void
.end method

.method private clearNonce()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 9768
    iput-wide v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->nonce_:J

    return-void
.end method

.method private clearStakeAddDeposit()V
    .locals 2

    .line 10190
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 10191
    iput v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    const/4 v0, 0x0

    .line 10192
    iput-object v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearStakeChangeCandidate()V
    .locals 2

    .line 10290
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 10291
    iput v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    const/4 v0, 0x0

    .line 10292
    iput-object v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearStakeCreate()V
    .locals 2

    .line 10040
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    const/16 v1, 0x28

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 10041
    iput v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    const/4 v0, 0x0

    .line 10042
    iput-object v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearStakeRestake()V
    .locals 2

    .line 10240
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 10241
    iput v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    const/4 v0, 0x0

    .line 10242
    iput-object v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearStakeTransferOwnership()V
    .locals 2

    .line 10340
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 10341
    iput v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    const/4 v0, 0x0

    .line 10342
    iput-object v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearStakeUnstake()V
    .locals 2

    .line 10090
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    const/16 v1, 0x29

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 10091
    iput v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    const/4 v0, 0x0

    .line 10092
    iput-object v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearStakeWithdraw()V
    .locals 2

    .line 10140
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 10141
    iput v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    const/4 v0, 0x0

    .line 10142
    iput-object v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearTransfer()V
    .locals 2

    .line 9920
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 9921
    iput v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    const/4 v0, 0x0

    .line 9922
    iput-object v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearVersion()V
    .locals 1

    const/4 v0, 0x0

    .line 9730
    iput v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->version_:I

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/IoTeX$ActionCore;
    .locals 1

    .line 11381
    sget-object v0, Lwallet/core/jni/proto/IoTeX$ActionCore;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$ActionCore;

    return-object v0
.end method

.method private mergeCandidateRegister(Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10376
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10377
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    .line 10378
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 10379
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->newBuilder(Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;)Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister$Builder;

    move-result-object v0

    .line 10380
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    goto :goto_0

    .line 10382
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    .line 10384
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    return-void
.end method

.method private mergeCandidateUpdate(Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10426
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10427
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    const/16 v1, 0x30

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    .line 10428
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 10429
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;->newBuilder(Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;)Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo$Builder;

    move-result-object v0

    .line 10430
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    goto :goto_0

    .line 10432
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    .line 10434
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    return-void
.end method

.method private mergeExecution(Lwallet/core/jni/proto/IoTeX$ContractCall;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9956
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9957
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    .line 9958
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$ContractCall;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$ContractCall;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 9959
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ContractCall;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$ContractCall;->newBuilder(Lwallet/core/jni/proto/IoTeX$ContractCall;)Lwallet/core/jni/proto/IoTeX$ContractCall$Builder;

    move-result-object v0

    .line 9960
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/IoTeX$ContractCall$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    goto :goto_0

    .line 9962
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    .line 9964
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    return-void
.end method

.method private mergeStakeAddDeposit(Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10176
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10177
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    .line 10178
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 10179
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;->newBuilder(Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;)Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit$Builder;

    move-result-object v0

    .line 10180
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    goto :goto_0

    .line 10182
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    .line 10184
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    return-void
.end method

.method private mergeStakeChangeCandidate(Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10276
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10277
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    .line 10278
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 10279
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;->newBuilder(Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;)Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate$Builder;

    move-result-object v0

    .line 10280
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    goto :goto_0

    .line 10282
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    .line 10284
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    return-void
.end method

.method private mergeStakeCreate(Lwallet/core/jni/proto/IoTeX$Staking$Create;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10022
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10023
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    const/16 v1, 0x28

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    .line 10024
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking$Create;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Staking$Create;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 10025
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$Create;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Staking$Create;->newBuilder(Lwallet/core/jni/proto/IoTeX$Staking$Create;)Lwallet/core/jni/proto/IoTeX$Staking$Create$Builder;

    move-result-object v0

    .line 10026
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/IoTeX$Staking$Create$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    goto :goto_0

    .line 10028
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    .line 10030
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    return-void
.end method

.method private mergeStakeRestake(Lwallet/core/jni/proto/IoTeX$Staking$Restake;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10226
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10227
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    .line 10228
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking$Restake;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Staking$Restake;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 10229
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$Restake;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Staking$Restake;->newBuilder(Lwallet/core/jni/proto/IoTeX$Staking$Restake;)Lwallet/core/jni/proto/IoTeX$Staking$Restake$Builder;

    move-result-object v0

    .line 10230
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/IoTeX$Staking$Restake$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    goto :goto_0

    .line 10232
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    .line 10234
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    return-void
.end method

.method private mergeStakeTransferOwnership(Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10326
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10327
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    .line 10328
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 10329
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;->newBuilder(Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;)Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership$Builder;

    move-result-object v0

    .line 10330
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    goto :goto_0

    .line 10332
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    .line 10334
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    return-void
.end method

.method private mergeStakeUnstake(Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10076
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10077
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    const/16 v1, 0x29

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    .line 10078
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 10079
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;->newBuilder(Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;)Lwallet/core/jni/proto/IoTeX$Staking$Reclaim$Builder;

    move-result-object v0

    .line 10080
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    goto :goto_0

    .line 10082
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    .line 10084
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    return-void
.end method

.method private mergeStakeWithdraw(Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10126
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10127
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    .line 10128
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 10129
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;->newBuilder(Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;)Lwallet/core/jni/proto/IoTeX$Staking$Reclaim$Builder;

    move-result-object v0

    .line 10130
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    goto :goto_0

    .line 10132
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    .line 10134
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    return-void
.end method

.method private mergeTransfer(Lwallet/core/jni/proto/IoTeX$Transfer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9906
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9907
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    .line 9908
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Transfer;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Transfer;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 9909
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Transfer;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Transfer;->newBuilder(Lwallet/core/jni/proto/IoTeX$Transfer;)Lwallet/core/jni/proto/IoTeX$Transfer$Builder;

    move-result-object v0

    .line 9910
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/IoTeX$Transfer$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    goto :goto_0

    .line 9912
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    .line 9914
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/IoTeX$ActionCore$Builder;
    .locals 1

    .line 10521
    sget-object v0, Lwallet/core/jni/proto/IoTeX$ActionCore;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ActionCore$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/IoTeX$ActionCore;)Lwallet/core/jni/proto/IoTeX$ActionCore$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 10524
    sget-object v0, Lwallet/core/jni/proto/IoTeX$ActionCore;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$ActionCore$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/IoTeX$ActionCore;
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

    .line 10498
    sget-object v0, Lwallet/core/jni/proto/IoTeX$ActionCore;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/IoTeX$ActionCore;
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

    .line 10504
    sget-object v0, Lwallet/core/jni/proto/IoTeX$ActionCore;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/IoTeX$ActionCore;
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

    .line 10462
    sget-object v0, Lwallet/core/jni/proto/IoTeX$ActionCore;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/IoTeX$ActionCore;
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

    .line 10469
    sget-object v0, Lwallet/core/jni/proto/IoTeX$ActionCore;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/IoTeX$ActionCore;
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

    .line 10509
    sget-object v0, Lwallet/core/jni/proto/IoTeX$ActionCore;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/IoTeX$ActionCore;
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

    .line 10516
    sget-object v0, Lwallet/core/jni/proto/IoTeX$ActionCore;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/IoTeX$ActionCore;
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

    .line 10486
    sget-object v0, Lwallet/core/jni/proto/IoTeX$ActionCore;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/IoTeX$ActionCore;
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

    .line 10493
    sget-object v0, Lwallet/core/jni/proto/IoTeX$ActionCore;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/IoTeX$ActionCore;
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

    .line 10449
    sget-object v0, Lwallet/core/jni/proto/IoTeX$ActionCore;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/IoTeX$ActionCore;
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

    .line 10456
    sget-object v0, Lwallet/core/jni/proto/IoTeX$ActionCore;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/IoTeX$ActionCore;
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

    .line 10474
    sget-object v0, Lwallet/core/jni/proto/IoTeX$ActionCore;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/IoTeX$ActionCore;
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

    .line 10481
    sget-object v0, Lwallet/core/jni/proto/IoTeX$ActionCore;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$ActionCore;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/IoTeX$ActionCore;",
            ">;"
        }
    .end annotation

    .line 11387
    sget-object v0, Lwallet/core/jni/proto/IoTeX$ActionCore;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCandidateRegister(Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10368
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10369
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    const/16 p1, 0x2f

    .line 10370
    iput p1, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    return-void
.end method

.method private setCandidateUpdate(Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10418
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10419
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    const/16 p1, 0x30

    .line 10420
    iput p1, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    return-void
.end method

.method private setExecution(Lwallet/core/jni/proto/IoTeX$ContractCall;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9948
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9949
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    const/16 p1, 0xc

    .line 9950
    iput p1, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    return-void
.end method

.method private setGasLimit(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9795
    iput-wide p1, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->gasLimit_:J

    return-void
.end method

.method private setGasPrice(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9846
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9848
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->gasPrice_:Ljava/lang/String;

    return-void
.end method

.method private setGasPriceBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9871
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 9872
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->gasPrice_:Ljava/lang/String;

    return-void
.end method

.method private setNonce(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9757
    iput-wide p1, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->nonce_:J

    return-void
.end method

.method private setStakeAddDeposit(Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10168
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10169
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    const/16 p1, 0x2b

    .line 10170
    iput p1, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    return-void
.end method

.method private setStakeChangeCandidate(Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10268
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10269
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    const/16 p1, 0x2d

    .line 10270
    iput p1, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    return-void
.end method

.method private setStakeCreate(Lwallet/core/jni/proto/IoTeX$Staking$Create;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10010
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10011
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    const/16 p1, 0x28

    .line 10012
    iput p1, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    return-void
.end method

.method private setStakeRestake(Lwallet/core/jni/proto/IoTeX$Staking$Restake;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10218
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10219
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    const/16 p1, 0x2c

    .line 10220
    iput p1, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    return-void
.end method

.method private setStakeTransferOwnership(Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10318
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10319
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    const/16 p1, 0x2e

    .line 10320
    iput p1, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    return-void
.end method

.method private setStakeUnstake(Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10068
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10069
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    const/16 p1, 0x29

    .line 10070
    iput p1, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    return-void
.end method

.method private setStakeWithdraw(Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10118
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10119
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    const/16 p1, 0x2a

    .line 10120
    iput p1, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    return-void
.end method

.method private setTransfer(Lwallet/core/jni/proto/IoTeX$Transfer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9898
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9899
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    const/16 p1, 0xa

    .line 9900
    iput p1, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

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

    .line 9719
    iput p1, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->version_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
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

    .line 11306
    const-class p2, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    sget-object p3, Lwallet/core/jni/proto/IoTeX$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p3, p1

    const/4 p3, 0x1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 11365
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object v0

    .line 11359
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 11344
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/IoTeX$ActionCore;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 11346
    const-class p2, Lwallet/core/jni/proto/IoTeX$ActionCore;

    monitor-enter p2

    .line 11347
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/IoTeX$ActionCore;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 11349
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/IoTeX$ActionCore;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 11352
    sput-object p1, Lwallet/core/jni/proto/IoTeX$ActionCore;->PARSER:Lcom/google/protobuf/Parser;

    .line 11354
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

    .line 11341
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/IoTeX$ActionCore;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$ActionCore;

    return-object p1

    :pswitch_4
    const/16 p1, 0x11

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "action_"

    aput-object v1, p1, v0

    const-string v0, "actionCase_"

    aput-object v0, p1, p3

    const/4 p3, 0x2

    const-string v0, "version_"

    aput-object v0, p1, p3

    const/4 p3, 0x3

    const-string v0, "nonce_"

    aput-object v0, p1, p3

    const/4 p3, 0x4

    const-string v0, "gasLimit_"

    aput-object v0, p1, p3

    const/4 p3, 0x5

    const-string v0, "gasPrice_"

    aput-object v0, p1, p3

    const/4 p3, 0x6

    .line 11314
    const-class v0, Lwallet/core/jni/proto/IoTeX$Transfer;

    aput-object v0, p1, p3

    const/4 p3, 0x7

    const-class v0, Lwallet/core/jni/proto/IoTeX$ContractCall;

    aput-object v0, p1, p3

    const/16 p3, 0x8

    const-class v0, Lwallet/core/jni/proto/IoTeX$Staking$Create;

    aput-object v0, p1, p3

    const/16 p3, 0x9

    aput-object p2, p1, p3

    const/16 p3, 0xa

    aput-object p2, p1, p3

    const/16 p2, 0xb

    const-class p3, Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-class p3, Lwallet/core/jni/proto/IoTeX$Staking$Restake;

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-class p3, Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;

    aput-object p3, p1, p2

    const/16 p2, 0xe

    const-class p3, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;

    aput-object p3, p1, p2

    const/16 p2, 0xf

    const-class p3, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    aput-object p3, p1, p2

    const/16 p2, 0x10

    const-class p3, Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u000f\u0001\u0000\u00010\u000f\u0000\u0000\u0000\u0001\u000b\u0002\u0003\u0003\u0003\u0004\u0208\n<\u0000\u000c<\u0000(<\u0000)<\u0000*<\u0000+<\u0000,<\u0000-<\u0000.<\u0000/<\u00000<\u0000"

    .line 11337
    sget-object p3, Lwallet/core/jni/proto/IoTeX$ActionCore;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 11311
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/IoTeX$ActionCore$Builder;

    invoke-direct {p1, v0}, Lwallet/core/jni/proto/IoTeX$ActionCore$Builder;-><init>(Lwallet/core/jni/proto/IoTeX$1;)V

    return-object p1

    .line 11308
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/IoTeX$ActionCore;

    invoke-direct {p1}, Lwallet/core/jni/proto/IoTeX$ActionCore;-><init>()V

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

.method public getActionCase()Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;
    .locals 1

    .line 9686
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;->forNumber(I)Lwallet/core/jni/proto/IoTeX$ActionCore$ActionCase;

    move-result-object v0

    return-object v0
.end method

.method public getCandidateRegister()Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;
    .locals 2

    .line 10359
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    .line 10360
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    return-object v0

    .line 10362
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    move-result-object v0

    return-object v0
.end method

.method public getCandidateUpdate()Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;
    .locals 2

    .line 10409
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    const/16 v1, 0x30

    if-ne v0, v1, :cond_0

    .line 10410
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;

    return-object v0

    .line 10412
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;

    move-result-object v0

    return-object v0
.end method

.method public getExecution()Lwallet/core/jni/proto/IoTeX$ContractCall;
    .locals 2

    .line 9939
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 9940
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ContractCall;

    return-object v0

    .line 9942
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$ContractCall;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$ContractCall;

    move-result-object v0

    return-object v0
.end method

.method public getGasLimit()J
    .locals 2

    .line 9783
    iget-wide v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->gasLimit_:J

    return-wide v0
.end method

.method public getGasPrice()Ljava/lang/String;
    .locals 1

    .line 9821
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->gasPrice_:Ljava/lang/String;

    return-object v0
.end method

.method public getGasPriceBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 9834
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->gasPrice_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNonce()J
    .locals 2

    .line 9745
    iget-wide v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->nonce_:J

    return-wide v0
.end method

.method public getStakeAddDeposit()Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;
    .locals 2

    .line 10159
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_0

    .line 10160
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;

    return-object v0

    .line 10162
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;

    move-result-object v0

    return-object v0
.end method

.method public getStakeChangeCandidate()Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;
    .locals 2

    .line 10259
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_0

    .line 10260
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;

    return-object v0

    .line 10262
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;

    move-result-object v0

    return-object v0
.end method

.method public getStakeCreate()Lwallet/core/jni/proto/IoTeX$Staking$Create;
    .locals 2

    .line 9997
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    const/16 v1, 0x28

    if-ne v0, v1, :cond_0

    .line 9998
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$Create;

    return-object v0

    .line 10000
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking$Create;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Staking$Create;

    move-result-object v0

    return-object v0
.end method

.method public getStakeRestake()Lwallet/core/jni/proto/IoTeX$Staking$Restake;
    .locals 2

    .line 10209
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_0

    .line 10210
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$Restake;

    return-object v0

    .line 10212
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking$Restake;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Staking$Restake;

    move-result-object v0

    return-object v0
.end method

.method public getStakeTransferOwnership()Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;
    .locals 2

    .line 10309
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_0

    .line 10310
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;

    return-object v0

    .line 10312
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;

    move-result-object v0

    return-object v0
.end method

.method public getStakeUnstake()Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;
    .locals 2

    .line 10059
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    const/16 v1, 0x29

    if-ne v0, v1, :cond_0

    .line 10060
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    return-object v0

    .line 10062
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    move-result-object v0

    return-object v0
.end method

.method public getStakeWithdraw()Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;
    .locals 2

    .line 10109
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_0

    .line 10110
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    return-object v0

    .line 10112
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    move-result-object v0

    return-object v0
.end method

.method public getTransfer()Lwallet/core/jni/proto/IoTeX$Transfer;
    .locals 2

    .line 9889
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 9890
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->action_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Transfer;

    return-object v0

    .line 9892
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Transfer;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Transfer;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 9707
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->version_:I

    return v0
.end method

.method public hasCandidateRegister()Z
    .locals 2

    .line 10352
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasCandidateUpdate()Z
    .locals 2

    .line 10402
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    const/16 v1, 0x30

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasExecution()Z
    .locals 2

    .line 9932
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStakeAddDeposit()Z
    .locals 2

    .line 10152
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStakeChangeCandidate()Z
    .locals 2

    .line 10252
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStakeCreate()Z
    .locals 2

    .line 9986
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    const/16 v1, 0x28

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStakeRestake()Z
    .locals 2

    .line 10202
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStakeTransferOwnership()Z
    .locals 2

    .line 10302
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStakeUnstake()Z
    .locals 2

    .line 10052
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    const/16 v1, 0x29

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStakeWithdraw()Z
    .locals 2

    .line 10102
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    const/16 v1, 0x2a

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

    .line 9882
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$ActionCore;->actionCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
