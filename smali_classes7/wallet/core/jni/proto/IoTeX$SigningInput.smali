.class public final Lwallet/core/jni/proto/IoTeX$SigningInput;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "IoTeX.java"

# interfaces
.implements Lwallet/core/jni/proto/IoTeX$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/IoTeX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SigningInput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/IoTeX$SigningInput$Builder;,
        Lwallet/core/jni/proto/IoTeX$SigningInput$ActionCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/IoTeX$SigningInput;",
        "Lwallet/core/jni/proto/IoTeX$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/IoTeX$SigningInputOrBuilder;"
    }
.end annotation


# static fields
.field public static final CALL_FIELD_NUMBER:I = 0xc

.field public static final CANDIDATEREGISTER_FIELD_NUMBER:I = 0x2f

.field public static final CANDIDATEUPDATE_FIELD_NUMBER:I = 0x30

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$SigningInput;

.field public static final GASLIMIT_FIELD_NUMBER:I = 0x3

.field public static final GASPRICE_FIELD_NUMBER:I = 0x4

.field public static final NONCE_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/IoTeX$SigningInput;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIVATEKEY_FIELD_NUMBER:I = 0x5

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

.field private privateKey_:Lcom/google/protobuf/ByteString;

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 9042
    new-instance v0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-direct {v0}, Lwallet/core/jni/proto/IoTeX$SigningInput;-><init>()V

    .line 9045
    sput-object v0, Lwallet/core/jni/proto/IoTeX$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$SigningInput;

    .line 9046
    const-class v1, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 7221
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 7225
    iput v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

    const-string v0, ""

    .line 7222
    iput-object v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->gasPrice_:Ljava/lang/String;

    .line 7223
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$13500()Lwallet/core/jni/proto/IoTeX$SigningInput;
    .locals 1

    .line 7216
    sget-object v0, Lwallet/core/jni/proto/IoTeX$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$SigningInput;

    return-object v0
.end method

.method static synthetic access$13600(Lwallet/core/jni/proto/IoTeX$SigningInput;)V
    .locals 0

    .line 7216
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$SigningInput;->clearAction()V

    return-void
.end method

.method static synthetic access$13700(Lwallet/core/jni/proto/IoTeX$SigningInput;I)V
    .locals 0

    .line 7216
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$SigningInput;->setVersion(I)V

    return-void
.end method

.method static synthetic access$13800(Lwallet/core/jni/proto/IoTeX$SigningInput;)V
    .locals 0

    .line 7216
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$SigningInput;->clearVersion()V

    return-void
.end method

.method static synthetic access$13900(Lwallet/core/jni/proto/IoTeX$SigningInput;J)V
    .locals 0

    .line 7216
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/IoTeX$SigningInput;->setNonce(J)V

    return-void
.end method

.method static synthetic access$14000(Lwallet/core/jni/proto/IoTeX$SigningInput;)V
    .locals 0

    .line 7216
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$SigningInput;->clearNonce()V

    return-void
.end method

.method static synthetic access$14100(Lwallet/core/jni/proto/IoTeX$SigningInput;J)V
    .locals 0

    .line 7216
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/IoTeX$SigningInput;->setGasLimit(J)V

    return-void
.end method

.method static synthetic access$14200(Lwallet/core/jni/proto/IoTeX$SigningInput;)V
    .locals 0

    .line 7216
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$SigningInput;->clearGasLimit()V

    return-void
.end method

.method static synthetic access$14300(Lwallet/core/jni/proto/IoTeX$SigningInput;Ljava/lang/String;)V
    .locals 0

    .line 7216
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$SigningInput;->setGasPrice(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$14400(Lwallet/core/jni/proto/IoTeX$SigningInput;)V
    .locals 0

    .line 7216
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$SigningInput;->clearGasPrice()V

    return-void
.end method

.method static synthetic access$14500(Lwallet/core/jni/proto/IoTeX$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 7216
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$SigningInput;->setGasPriceBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$14600(Lwallet/core/jni/proto/IoTeX$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 7216
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$SigningInput;->setPrivateKey(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$14700(Lwallet/core/jni/proto/IoTeX$SigningInput;)V
    .locals 0

    .line 7216
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$SigningInput;->clearPrivateKey()V

    return-void
.end method

.method static synthetic access$14800(Lwallet/core/jni/proto/IoTeX$SigningInput;Lwallet/core/jni/proto/IoTeX$Transfer;)V
    .locals 0

    .line 7216
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$SigningInput;->setTransfer(Lwallet/core/jni/proto/IoTeX$Transfer;)V

    return-void
.end method

.method static synthetic access$14900(Lwallet/core/jni/proto/IoTeX$SigningInput;Lwallet/core/jni/proto/IoTeX$Transfer;)V
    .locals 0

    .line 7216
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$SigningInput;->mergeTransfer(Lwallet/core/jni/proto/IoTeX$Transfer;)V

    return-void
.end method

.method static synthetic access$15000(Lwallet/core/jni/proto/IoTeX$SigningInput;)V
    .locals 0

    .line 7216
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$SigningInput;->clearTransfer()V

    return-void
.end method

.method static synthetic access$15100(Lwallet/core/jni/proto/IoTeX$SigningInput;Lwallet/core/jni/proto/IoTeX$ContractCall;)V
    .locals 0

    .line 7216
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$SigningInput;->setCall(Lwallet/core/jni/proto/IoTeX$ContractCall;)V

    return-void
.end method

.method static synthetic access$15200(Lwallet/core/jni/proto/IoTeX$SigningInput;Lwallet/core/jni/proto/IoTeX$ContractCall;)V
    .locals 0

    .line 7216
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$SigningInput;->mergeCall(Lwallet/core/jni/proto/IoTeX$ContractCall;)V

    return-void
.end method

.method static synthetic access$15300(Lwallet/core/jni/proto/IoTeX$SigningInput;)V
    .locals 0

    .line 7216
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$SigningInput;->clearCall()V

    return-void
.end method

.method static synthetic access$15400(Lwallet/core/jni/proto/IoTeX$SigningInput;Lwallet/core/jni/proto/IoTeX$Staking$Create;)V
    .locals 0

    .line 7216
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$SigningInput;->setStakeCreate(Lwallet/core/jni/proto/IoTeX$Staking$Create;)V

    return-void
.end method

.method static synthetic access$15500(Lwallet/core/jni/proto/IoTeX$SigningInput;Lwallet/core/jni/proto/IoTeX$Staking$Create;)V
    .locals 0

    .line 7216
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$SigningInput;->mergeStakeCreate(Lwallet/core/jni/proto/IoTeX$Staking$Create;)V

    return-void
.end method

.method static synthetic access$15600(Lwallet/core/jni/proto/IoTeX$SigningInput;)V
    .locals 0

    .line 7216
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$SigningInput;->clearStakeCreate()V

    return-void
.end method

.method static synthetic access$15700(Lwallet/core/jni/proto/IoTeX$SigningInput;Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;)V
    .locals 0

    .line 7216
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$SigningInput;->setStakeUnstake(Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;)V

    return-void
.end method

.method static synthetic access$15800(Lwallet/core/jni/proto/IoTeX$SigningInput;Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;)V
    .locals 0

    .line 7216
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$SigningInput;->mergeStakeUnstake(Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;)V

    return-void
.end method

.method static synthetic access$15900(Lwallet/core/jni/proto/IoTeX$SigningInput;)V
    .locals 0

    .line 7216
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$SigningInput;->clearStakeUnstake()V

    return-void
.end method

.method static synthetic access$16000(Lwallet/core/jni/proto/IoTeX$SigningInput;Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;)V
    .locals 0

    .line 7216
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$SigningInput;->setStakeWithdraw(Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;)V

    return-void
.end method

.method static synthetic access$16100(Lwallet/core/jni/proto/IoTeX$SigningInput;Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;)V
    .locals 0

    .line 7216
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$SigningInput;->mergeStakeWithdraw(Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;)V

    return-void
.end method

.method static synthetic access$16200(Lwallet/core/jni/proto/IoTeX$SigningInput;)V
    .locals 0

    .line 7216
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$SigningInput;->clearStakeWithdraw()V

    return-void
.end method

.method static synthetic access$16300(Lwallet/core/jni/proto/IoTeX$SigningInput;Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;)V
    .locals 0

    .line 7216
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$SigningInput;->setStakeAddDeposit(Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;)V

    return-void
.end method

.method static synthetic access$16400(Lwallet/core/jni/proto/IoTeX$SigningInput;Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;)V
    .locals 0

    .line 7216
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$SigningInput;->mergeStakeAddDeposit(Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;)V

    return-void
.end method

.method static synthetic access$16500(Lwallet/core/jni/proto/IoTeX$SigningInput;)V
    .locals 0

    .line 7216
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$SigningInput;->clearStakeAddDeposit()V

    return-void
.end method

.method static synthetic access$16600(Lwallet/core/jni/proto/IoTeX$SigningInput;Lwallet/core/jni/proto/IoTeX$Staking$Restake;)V
    .locals 0

    .line 7216
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$SigningInput;->setStakeRestake(Lwallet/core/jni/proto/IoTeX$Staking$Restake;)V

    return-void
.end method

.method static synthetic access$16700(Lwallet/core/jni/proto/IoTeX$SigningInput;Lwallet/core/jni/proto/IoTeX$Staking$Restake;)V
    .locals 0

    .line 7216
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$SigningInput;->mergeStakeRestake(Lwallet/core/jni/proto/IoTeX$Staking$Restake;)V

    return-void
.end method

.method static synthetic access$16800(Lwallet/core/jni/proto/IoTeX$SigningInput;)V
    .locals 0

    .line 7216
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$SigningInput;->clearStakeRestake()V

    return-void
.end method

.method static synthetic access$16900(Lwallet/core/jni/proto/IoTeX$SigningInput;Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;)V
    .locals 0

    .line 7216
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$SigningInput;->setStakeChangeCandidate(Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;)V

    return-void
.end method

.method static synthetic access$17000(Lwallet/core/jni/proto/IoTeX$SigningInput;Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;)V
    .locals 0

    .line 7216
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$SigningInput;->mergeStakeChangeCandidate(Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;)V

    return-void
.end method

.method static synthetic access$17100(Lwallet/core/jni/proto/IoTeX$SigningInput;)V
    .locals 0

    .line 7216
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$SigningInput;->clearStakeChangeCandidate()V

    return-void
.end method

.method static synthetic access$17200(Lwallet/core/jni/proto/IoTeX$SigningInput;Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;)V
    .locals 0

    .line 7216
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$SigningInput;->setStakeTransferOwnership(Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;)V

    return-void
.end method

.method static synthetic access$17300(Lwallet/core/jni/proto/IoTeX$SigningInput;Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;)V
    .locals 0

    .line 7216
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$SigningInput;->mergeStakeTransferOwnership(Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;)V

    return-void
.end method

.method static synthetic access$17400(Lwallet/core/jni/proto/IoTeX$SigningInput;)V
    .locals 0

    .line 7216
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$SigningInput;->clearStakeTransferOwnership()V

    return-void
.end method

.method static synthetic access$17500(Lwallet/core/jni/proto/IoTeX$SigningInput;Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;)V
    .locals 0

    .line 7216
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$SigningInput;->setCandidateRegister(Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;)V

    return-void
.end method

.method static synthetic access$17600(Lwallet/core/jni/proto/IoTeX$SigningInput;Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;)V
    .locals 0

    .line 7216
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$SigningInput;->mergeCandidateRegister(Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;)V

    return-void
.end method

.method static synthetic access$17700(Lwallet/core/jni/proto/IoTeX$SigningInput;)V
    .locals 0

    .line 7216
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$SigningInput;->clearCandidateRegister()V

    return-void
.end method

.method static synthetic access$17800(Lwallet/core/jni/proto/IoTeX$SigningInput;Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;)V
    .locals 0

    .line 7216
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$SigningInput;->setCandidateUpdate(Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;)V

    return-void
.end method

.method static synthetic access$17900(Lwallet/core/jni/proto/IoTeX$SigningInput;Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;)V
    .locals 0

    .line 7216
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$SigningInput;->mergeCandidateUpdate(Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;)V

    return-void
.end method

.method static synthetic access$18000(Lwallet/core/jni/proto/IoTeX$SigningInput;)V
    .locals 0

    .line 7216
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$SigningInput;->clearCandidateUpdate()V

    return-void
.end method

.method private clearAction()V
    .locals 1

    const/4 v0, 0x0

    .line 7282
    iput v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

    const/4 v0, 0x0

    .line 7283
    iput-object v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    return-void
.end method

.method private clearCall()V
    .locals 2

    .line 7600
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 7601
    iput v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

    const/4 v0, 0x0

    .line 7602
    iput-object v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearCandidateRegister()V
    .locals 2

    .line 8020
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 8021
    iput v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

    const/4 v0, 0x0

    .line 8022
    iput-object v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearCandidateUpdate()V
    .locals 2

    .line 8070
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

    const/16 v1, 0x30

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 8071
    iput v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

    const/4 v0, 0x0

    .line 8072
    iput-object v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearGasLimit()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 7397
    iput-wide v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->gasLimit_:J

    return-void
.end method

.method private clearGasPrice()V
    .locals 1

    .line 7450
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$SigningInput;->getGasPrice()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->gasPrice_:Ljava/lang/String;

    return-void
.end method

.method private clearNonce()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 7359
    iput-wide v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->nonce_:J

    return-void
.end method

.method private clearPrivateKey()V
    .locals 1

    .line 7503
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$SigningInput;->getPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearStakeAddDeposit()V
    .locals 2

    .line 7820
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 7821
    iput v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

    const/4 v0, 0x0

    .line 7822
    iput-object v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearStakeChangeCandidate()V
    .locals 2

    .line 7920
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 7921
    iput v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

    const/4 v0, 0x0

    .line 7922
    iput-object v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearStakeCreate()V
    .locals 2

    .line 7670
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

    const/16 v1, 0x28

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 7671
    iput v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

    const/4 v0, 0x0

    .line 7672
    iput-object v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearStakeRestake()V
    .locals 2

    .line 7870
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 7871
    iput v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

    const/4 v0, 0x0

    .line 7872
    iput-object v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearStakeTransferOwnership()V
    .locals 2

    .line 7970
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 7971
    iput v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

    const/4 v0, 0x0

    .line 7972
    iput-object v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearStakeUnstake()V
    .locals 2

    .line 7720
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

    const/16 v1, 0x29

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 7721
    iput v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

    const/4 v0, 0x0

    .line 7722
    iput-object v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearStakeWithdraw()V
    .locals 2

    .line 7770
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 7771
    iput v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

    const/4 v0, 0x0

    .line 7772
    iput-object v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearTransfer()V
    .locals 2

    .line 7550
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 7551
    iput v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

    const/4 v0, 0x0

    .line 7552
    iput-object v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearVersion()V
    .locals 1

    const/4 v0, 0x0

    .line 7321
    iput v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->version_:I

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/IoTeX$SigningInput;
    .locals 1

    .line 9051
    sget-object v0, Lwallet/core/jni/proto/IoTeX$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$SigningInput;

    return-object v0
.end method

.method private mergeCall(Lwallet/core/jni/proto/IoTeX$ContractCall;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7586
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7587
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    .line 7588
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$ContractCall;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$ContractCall;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 7589
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ContractCall;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$ContractCall;->newBuilder(Lwallet/core/jni/proto/IoTeX$ContractCall;)Lwallet/core/jni/proto/IoTeX$ContractCall$Builder;

    move-result-object v0

    .line 7590
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/IoTeX$ContractCall$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    goto :goto_0

    .line 7592
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    .line 7594
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

    return-void
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

    .line 8006
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8007
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    .line 8008
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 8009
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->newBuilder(Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;)Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister$Builder;

    move-result-object v0

    .line 8010
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    goto :goto_0

    .line 8012
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    .line 8014
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

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

    .line 8056
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8057
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

    const/16 v1, 0x30

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    .line 8058
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 8059
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;->newBuilder(Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;)Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo$Builder;

    move-result-object v0

    .line 8060
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    goto :goto_0

    .line 8062
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    .line 8064
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

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

    .line 7806
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7807
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    .line 7808
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 7809
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;->newBuilder(Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;)Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit$Builder;

    move-result-object v0

    .line 7810
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    goto :goto_0

    .line 7812
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    .line 7814
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

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

    .line 7906
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7907
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    .line 7908
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 7909
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;->newBuilder(Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;)Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate$Builder;

    move-result-object v0

    .line 7910
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    goto :goto_0

    .line 7912
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    .line 7914
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

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

    .line 7652
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7653
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

    const/16 v1, 0x28

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    .line 7654
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking$Create;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Staking$Create;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 7655
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$Create;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Staking$Create;->newBuilder(Lwallet/core/jni/proto/IoTeX$Staking$Create;)Lwallet/core/jni/proto/IoTeX$Staking$Create$Builder;

    move-result-object v0

    .line 7656
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/IoTeX$Staking$Create$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    goto :goto_0

    .line 7658
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    .line 7660
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

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

    .line 7856
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7857
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    .line 7858
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking$Restake;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Staking$Restake;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 7859
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$Restake;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Staking$Restake;->newBuilder(Lwallet/core/jni/proto/IoTeX$Staking$Restake;)Lwallet/core/jni/proto/IoTeX$Staking$Restake$Builder;

    move-result-object v0

    .line 7860
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/IoTeX$Staking$Restake$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    goto :goto_0

    .line 7862
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    .line 7864
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

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

    .line 7956
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7957
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    .line 7958
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 7959
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;->newBuilder(Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;)Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership$Builder;

    move-result-object v0

    .line 7960
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    goto :goto_0

    .line 7962
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    .line 7964
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

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

    .line 7706
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7707
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

    const/16 v1, 0x29

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    .line 7708
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 7709
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;->newBuilder(Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;)Lwallet/core/jni/proto/IoTeX$Staking$Reclaim$Builder;

    move-result-object v0

    .line 7710
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    goto :goto_0

    .line 7712
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    .line 7714
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

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

    .line 7756
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7757
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    .line 7758
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 7759
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;->newBuilder(Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;)Lwallet/core/jni/proto/IoTeX$Staking$Reclaim$Builder;

    move-result-object v0

    .line 7760
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    goto :goto_0

    .line 7762
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    .line 7764
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

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

    .line 7536
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7537
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    .line 7538
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Transfer;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Transfer;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 7539
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Transfer;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Transfer;->newBuilder(Lwallet/core/jni/proto/IoTeX$Transfer;)Lwallet/core/jni/proto/IoTeX$Transfer$Builder;

    move-result-object v0

    .line 7540
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/IoTeX$Transfer$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    goto :goto_0

    .line 7542
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    .line 7544
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/IoTeX$SigningInput$Builder;
    .locals 1

    .line 8151
    sget-object v0, Lwallet/core/jni/proto/IoTeX$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/IoTeX$SigningInput$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/IoTeX$SigningInput;)Lwallet/core/jni/proto/IoTeX$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 8154
    sget-object v0, Lwallet/core/jni/proto/IoTeX$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$SigningInput$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/IoTeX$SigningInput;
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

    .line 8128
    sget-object v0, Lwallet/core/jni/proto/IoTeX$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/IoTeX$SigningInput;
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

    .line 8134
    sget-object v0, Lwallet/core/jni/proto/IoTeX$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/IoTeX$SigningInput;
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

    .line 8092
    sget-object v0, Lwallet/core/jni/proto/IoTeX$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/IoTeX$SigningInput;
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

    .line 8099
    sget-object v0, Lwallet/core/jni/proto/IoTeX$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/IoTeX$SigningInput;
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

    .line 8139
    sget-object v0, Lwallet/core/jni/proto/IoTeX$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/IoTeX$SigningInput;
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

    .line 8146
    sget-object v0, Lwallet/core/jni/proto/IoTeX$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/IoTeX$SigningInput;
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

    .line 8116
    sget-object v0, Lwallet/core/jni/proto/IoTeX$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/IoTeX$SigningInput;
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

    .line 8123
    sget-object v0, Lwallet/core/jni/proto/IoTeX$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/IoTeX$SigningInput;
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

    .line 8079
    sget-object v0, Lwallet/core/jni/proto/IoTeX$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/IoTeX$SigningInput;
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

    .line 8086
    sget-object v0, Lwallet/core/jni/proto/IoTeX$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/IoTeX$SigningInput;
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

    .line 8104
    sget-object v0, Lwallet/core/jni/proto/IoTeX$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/IoTeX$SigningInput;
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

    .line 8111
    sget-object v0, Lwallet/core/jni/proto/IoTeX$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$SigningInput;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/IoTeX$SigningInput;",
            ">;"
        }
    .end annotation

    .line 9057
    sget-object v0, Lwallet/core/jni/proto/IoTeX$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCall(Lwallet/core/jni/proto/IoTeX$ContractCall;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7578
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7579
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    const/16 p1, 0xc

    .line 7580
    iput p1, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

    return-void
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

    .line 7998
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7999
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    const/16 p1, 0x2f

    .line 8000
    iput p1, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

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

    .line 8048
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8049
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    const/16 p1, 0x30

    .line 8050
    iput p1, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

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

    .line 7386
    iput-wide p1, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->gasLimit_:J

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

    .line 7437
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7439
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->gasPrice_:Ljava/lang/String;

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

    .line 7462
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 7463
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->gasPrice_:Ljava/lang/String;

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

    .line 7348
    iput-wide p1, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->nonce_:J

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

    .line 7490
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7492
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

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

    .line 7798
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7799
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    const/16 p1, 0x2b

    .line 7800
    iput p1, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

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

    .line 7898
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7899
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    const/16 p1, 0x2d

    .line 7900
    iput p1, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

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

    .line 7640
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7641
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    const/16 p1, 0x28

    .line 7642
    iput p1, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

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

    .line 7848
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7849
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    const/16 p1, 0x2c

    .line 7850
    iput p1, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

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

    .line 7948
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7949
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    const/16 p1, 0x2e

    .line 7950
    iput p1, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

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

    .line 7698
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7699
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    const/16 p1, 0x29

    .line 7700
    iput p1, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

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

    .line 7748
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7749
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    const/16 p1, 0x2a

    .line 7750
    iput p1, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

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

    .line 7528
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7529
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    const/16 p1, 0xa

    .line 7530
    iput p1, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

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

    .line 7310
    iput p1, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->version_:I

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

    .line 8975
    const-class p2, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    sget-object p3, Lwallet/core/jni/proto/IoTeX$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p3, p1

    const/4 p3, 0x1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 9035
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object v0

    .line 9029
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 9014
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/IoTeX$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 9016
    const-class p2, Lwallet/core/jni/proto/IoTeX$SigningInput;

    monitor-enter p2

    .line 9017
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/IoTeX$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 9019
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/IoTeX$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 9022
    sput-object p1, Lwallet/core/jni/proto/IoTeX$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    .line 9024
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

    .line 9011
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/IoTeX$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$SigningInput;

    return-object p1

    :pswitch_4
    const/16 p1, 0x12

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

    const-string v0, "privateKey_"

    aput-object v0, p1, p3

    const/4 p3, 0x7

    .line 8983
    const-class v0, Lwallet/core/jni/proto/IoTeX$Transfer;

    aput-object v0, p1, p3

    const/16 p3, 0x8

    const-class v0, Lwallet/core/jni/proto/IoTeX$ContractCall;

    aput-object v0, p1, p3

    const/16 p3, 0x9

    const-class v0, Lwallet/core/jni/proto/IoTeX$Staking$Create;

    aput-object v0, p1, p3

    const/16 p3, 0xa

    aput-object p2, p1, p3

    const/16 p3, 0xb

    aput-object p2, p1, p3

    const/16 p2, 0xc

    const-class p3, Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-class p3, Lwallet/core/jni/proto/IoTeX$Staking$Restake;

    aput-object p3, p1, p2

    const/16 p2, 0xe

    const-class p3, Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;

    aput-object p3, p1, p2

    const/16 p2, 0xf

    const-class p3, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;

    aput-object p3, p1, p2

    const/16 p2, 0x10

    const-class p3, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    aput-object p3, p1, p2

    const/16 p2, 0x11

    const-class p3, Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0010\u0001\u0000\u00010\u0010\u0000\u0000\u0000\u0001\u000b\u0002\u0003\u0003\u0003\u0004\u0208\u0005\n\n<\u0000\u000c<\u0000(<\u0000)<\u0000*<\u0000+<\u0000,<\u0000-<\u0000.<\u0000/<\u00000<\u0000"

    .line 9007
    sget-object p3, Lwallet/core/jni/proto/IoTeX$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 8980
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/IoTeX$SigningInput$Builder;

    invoke-direct {p1, v0}, Lwallet/core/jni/proto/IoTeX$SigningInput$Builder;-><init>(Lwallet/core/jni/proto/IoTeX$1;)V

    return-object p1

    .line 8977
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/IoTeX$SigningInput;

    invoke-direct {p1}, Lwallet/core/jni/proto/IoTeX$SigningInput;-><init>()V

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

.method public getActionCase()Lwallet/core/jni/proto/IoTeX$SigningInput$ActionCase;
    .locals 1

    .line 7277
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$SigningInput$ActionCase;->forNumber(I)Lwallet/core/jni/proto/IoTeX$SigningInput$ActionCase;

    move-result-object v0

    return-object v0
.end method

.method public getCall()Lwallet/core/jni/proto/IoTeX$ContractCall;
    .locals 2

    .line 7569
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 7570
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$ContractCall;

    return-object v0

    .line 7572
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$ContractCall;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$ContractCall;

    move-result-object v0

    return-object v0
.end method

.method public getCandidateRegister()Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;
    .locals 2

    .line 7989
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    .line 7990
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    return-object v0

    .line 7992
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    move-result-object v0

    return-object v0
.end method

.method public getCandidateUpdate()Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;
    .locals 2

    .line 8039
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

    const/16 v1, 0x30

    if-ne v0, v1, :cond_0

    .line 8040
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;

    return-object v0

    .line 8042
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;

    move-result-object v0

    return-object v0
.end method

.method public getGasLimit()J
    .locals 2

    .line 7374
    iget-wide v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->gasLimit_:J

    return-wide v0
.end method

.method public getGasPrice()Ljava/lang/String;
    .locals 1

    .line 7412
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->gasPrice_:Ljava/lang/String;

    return-object v0
.end method

.method public getGasPriceBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7425
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->gasPrice_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNonce()J
    .locals 2

    .line 7336
    iget-wide v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->nonce_:J

    return-wide v0
.end method

.method public getPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7479
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getStakeAddDeposit()Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;
    .locals 2

    .line 7789
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_0

    .line 7790
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;

    return-object v0

    .line 7792
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;

    move-result-object v0

    return-object v0
.end method

.method public getStakeChangeCandidate()Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;
    .locals 2

    .line 7889
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_0

    .line 7890
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;

    return-object v0

    .line 7892
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;

    move-result-object v0

    return-object v0
.end method

.method public getStakeCreate()Lwallet/core/jni/proto/IoTeX$Staking$Create;
    .locals 2

    .line 7627
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

    const/16 v1, 0x28

    if-ne v0, v1, :cond_0

    .line 7628
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$Create;

    return-object v0

    .line 7630
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking$Create;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Staking$Create;

    move-result-object v0

    return-object v0
.end method

.method public getStakeRestake()Lwallet/core/jni/proto/IoTeX$Staking$Restake;
    .locals 2

    .line 7839
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_0

    .line 7840
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$Restake;

    return-object v0

    .line 7842
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking$Restake;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Staking$Restake;

    move-result-object v0

    return-object v0
.end method

.method public getStakeTransferOwnership()Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;
    .locals 2

    .line 7939
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_0

    .line 7940
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;

    return-object v0

    .line 7942
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;

    move-result-object v0

    return-object v0
.end method

.method public getStakeUnstake()Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;
    .locals 2

    .line 7689
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

    const/16 v1, 0x29

    if-ne v0, v1, :cond_0

    .line 7690
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    return-object v0

    .line 7692
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    move-result-object v0

    return-object v0
.end method

.method public getStakeWithdraw()Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;
    .locals 2

    .line 7739
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_0

    .line 7740
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    return-object v0

    .line 7742
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    move-result-object v0

    return-object v0
.end method

.method public getTransfer()Lwallet/core/jni/proto/IoTeX$Transfer;
    .locals 2

    .line 7519
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 7520
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->action_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Transfer;

    return-object v0

    .line 7522
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Transfer;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Transfer;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 7298
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->version_:I

    return v0
.end method

.method public hasCall()Z
    .locals 2

    .line 7562
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasCandidateRegister()Z
    .locals 2

    .line 7982
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

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

    .line 8032
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

    const/16 v1, 0x30

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

    .line 7782
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

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

    .line 7882
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

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

    .line 7616
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

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

    .line 7832
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

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

    .line 7932
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

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

    .line 7682
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

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

    .line 7732
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

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

    .line 7512
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$SigningInput;->actionCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
