.class public final Lwallet/core/jni/proto/IoTeX$Staking;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "IoTeX.java"

# interfaces
.implements Lwallet/core/jni/proto/IoTeX$StakingOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/IoTeX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Staking"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/IoTeX$Staking$Builder;,
        Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;,
        Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;,
        Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegisterOrBuilder;,
        Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;,
        Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfoOrBuilder;,
        Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;,
        Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnershipOrBuilder;,
        Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;,
        Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidateOrBuilder;,
        Lwallet/core/jni/proto/IoTeX$Staking$Restake;,
        Lwallet/core/jni/proto/IoTeX$Staking$RestakeOrBuilder;,
        Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;,
        Lwallet/core/jni/proto/IoTeX$Staking$AddDepositOrBuilder;,
        Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;,
        Lwallet/core/jni/proto/IoTeX$Staking$ReclaimOrBuilder;,
        Lwallet/core/jni/proto/IoTeX$Staking$Create;,
        Lwallet/core/jni/proto/IoTeX$Staking$CreateOrBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/IoTeX$Staking;",
        "Lwallet/core/jni/proto/IoTeX$Staking$Builder;",
        ">;",
        "Lwallet/core/jni/proto/IoTeX$StakingOrBuilder;"
    }
.end annotation


# static fields
.field public static final CANDIDATEREGISTER_FIELD_NUMBER:I = 0x8

.field public static final CANDIDATEUPDATE_FIELD_NUMBER:I = 0x9

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/IoTeX$Staking;",
            ">;"
        }
    .end annotation
.end field

.field public static final STAKEADDDEPOSIT_FIELD_NUMBER:I = 0x4

.field public static final STAKECHANGECANDIDATE_FIELD_NUMBER:I = 0x6

.field public static final STAKECREATE_FIELD_NUMBER:I = 0x1

.field public static final STAKERESTAKE_FIELD_NUMBER:I = 0x5

.field public static final STAKETRANSFEROWNERSHIP_FIELD_NUMBER:I = 0x7

.field public static final STAKEUNSTAKE_FIELD_NUMBER:I = 0x2

.field public static final STAKEWITHDRAW_FIELD_NUMBER:I = 0x3


# instance fields
.field private messageCase_:I

.field private message_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 6397
    new-instance v0, Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-direct {v0}, Lwallet/core/jni/proto/IoTeX$Staking;-><init>()V

    .line 6400
    sput-object v0, Lwallet/core/jni/proto/IoTeX$Staking;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking;

    .line 6401
    const-class v1, Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 726
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 5281
    iput v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->messageCase_:I

    return-void
.end method

.method static synthetic access$10000(Lwallet/core/jni/proto/IoTeX$Staking;Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;)V
    .locals 0

    .line 721
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$Staking;->setStakeUnstake(Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;)V

    return-void
.end method

.method static synthetic access$10100(Lwallet/core/jni/proto/IoTeX$Staking;Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;)V
    .locals 0

    .line 721
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$Staking;->mergeStakeUnstake(Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;)V

    return-void
.end method

.method static synthetic access$10200(Lwallet/core/jni/proto/IoTeX$Staking;)V
    .locals 0

    .line 721
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$Staking;->clearStakeUnstake()V

    return-void
.end method

.method static synthetic access$10300(Lwallet/core/jni/proto/IoTeX$Staking;Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;)V
    .locals 0

    .line 721
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$Staking;->setStakeWithdraw(Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;)V

    return-void
.end method

.method static synthetic access$10400(Lwallet/core/jni/proto/IoTeX$Staking;Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;)V
    .locals 0

    .line 721
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$Staking;->mergeStakeWithdraw(Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;)V

    return-void
.end method

.method static synthetic access$10500(Lwallet/core/jni/proto/IoTeX$Staking;)V
    .locals 0

    .line 721
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$Staking;->clearStakeWithdraw()V

    return-void
.end method

.method static synthetic access$10600(Lwallet/core/jni/proto/IoTeX$Staking;Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;)V
    .locals 0

    .line 721
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$Staking;->setStakeAddDeposit(Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;)V

    return-void
.end method

.method static synthetic access$10700(Lwallet/core/jni/proto/IoTeX$Staking;Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;)V
    .locals 0

    .line 721
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$Staking;->mergeStakeAddDeposit(Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;)V

    return-void
.end method

.method static synthetic access$10800(Lwallet/core/jni/proto/IoTeX$Staking;)V
    .locals 0

    .line 721
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$Staking;->clearStakeAddDeposit()V

    return-void
.end method

.method static synthetic access$10900(Lwallet/core/jni/proto/IoTeX$Staking;Lwallet/core/jni/proto/IoTeX$Staking$Restake;)V
    .locals 0

    .line 721
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$Staking;->setStakeRestake(Lwallet/core/jni/proto/IoTeX$Staking$Restake;)V

    return-void
.end method

.method static synthetic access$11000(Lwallet/core/jni/proto/IoTeX$Staking;Lwallet/core/jni/proto/IoTeX$Staking$Restake;)V
    .locals 0

    .line 721
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$Staking;->mergeStakeRestake(Lwallet/core/jni/proto/IoTeX$Staking$Restake;)V

    return-void
.end method

.method static synthetic access$11100(Lwallet/core/jni/proto/IoTeX$Staking;)V
    .locals 0

    .line 721
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$Staking;->clearStakeRestake()V

    return-void
.end method

.method static synthetic access$11200(Lwallet/core/jni/proto/IoTeX$Staking;Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;)V
    .locals 0

    .line 721
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$Staking;->setStakeChangeCandidate(Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;)V

    return-void
.end method

.method static synthetic access$11300(Lwallet/core/jni/proto/IoTeX$Staking;Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;)V
    .locals 0

    .line 721
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$Staking;->mergeStakeChangeCandidate(Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;)V

    return-void
.end method

.method static synthetic access$11400(Lwallet/core/jni/proto/IoTeX$Staking;)V
    .locals 0

    .line 721
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$Staking;->clearStakeChangeCandidate()V

    return-void
.end method

.method static synthetic access$11500(Lwallet/core/jni/proto/IoTeX$Staking;Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;)V
    .locals 0

    .line 721
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$Staking;->setStakeTransferOwnership(Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;)V

    return-void
.end method

.method static synthetic access$11600(Lwallet/core/jni/proto/IoTeX$Staking;Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;)V
    .locals 0

    .line 721
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$Staking;->mergeStakeTransferOwnership(Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;)V

    return-void
.end method

.method static synthetic access$11700(Lwallet/core/jni/proto/IoTeX$Staking;)V
    .locals 0

    .line 721
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$Staking;->clearStakeTransferOwnership()V

    return-void
.end method

.method static synthetic access$11800(Lwallet/core/jni/proto/IoTeX$Staking;Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;)V
    .locals 0

    .line 721
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$Staking;->setCandidateRegister(Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;)V

    return-void
.end method

.method static synthetic access$11900(Lwallet/core/jni/proto/IoTeX$Staking;Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;)V
    .locals 0

    .line 721
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$Staking;->mergeCandidateRegister(Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;)V

    return-void
.end method

.method static synthetic access$12000(Lwallet/core/jni/proto/IoTeX$Staking;)V
    .locals 0

    .line 721
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$Staking;->clearCandidateRegister()V

    return-void
.end method

.method static synthetic access$12100(Lwallet/core/jni/proto/IoTeX$Staking;Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;)V
    .locals 0

    .line 721
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$Staking;->setCandidateUpdate(Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;)V

    return-void
.end method

.method static synthetic access$12200(Lwallet/core/jni/proto/IoTeX$Staking;Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;)V
    .locals 0

    .line 721
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$Staking;->mergeCandidateUpdate(Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;)V

    return-void
.end method

.method static synthetic access$12300(Lwallet/core/jni/proto/IoTeX$Staking;)V
    .locals 0

    .line 721
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$Staking;->clearCandidateUpdate()V

    return-void
.end method

.method static synthetic access$9500()Lwallet/core/jni/proto/IoTeX$Staking;
    .locals 1

    .line 721
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking;

    return-object v0
.end method

.method static synthetic access$9600(Lwallet/core/jni/proto/IoTeX$Staking;)V
    .locals 0

    .line 721
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$Staking;->clearMessage()V

    return-void
.end method

.method static synthetic access$9700(Lwallet/core/jni/proto/IoTeX$Staking;Lwallet/core/jni/proto/IoTeX$Staking$Create;)V
    .locals 0

    .line 721
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$Staking;->setStakeCreate(Lwallet/core/jni/proto/IoTeX$Staking$Create;)V

    return-void
.end method

.method static synthetic access$9800(Lwallet/core/jni/proto/IoTeX$Staking;Lwallet/core/jni/proto/IoTeX$Staking$Create;)V
    .locals 0

    .line 721
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$Staking;->mergeStakeCreate(Lwallet/core/jni/proto/IoTeX$Staking$Create;)V

    return-void
.end method

.method static synthetic access$9900(Lwallet/core/jni/proto/IoTeX$Staking;)V
    .locals 0

    .line 721
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$Staking;->clearStakeCreate()V

    return-void
.end method

.method private clearCandidateRegister()V
    .locals 2

    .line 5732
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->messageCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 5733
    iput v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->messageCase_:I

    const/4 v0, 0x0

    .line 5734
    iput-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->message_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearCandidateUpdate()V
    .locals 2

    .line 5782
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->messageCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 5783
    iput v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->messageCase_:I

    const/4 v0, 0x0

    .line 5784
    iput-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->message_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearMessage()V
    .locals 1

    const/4 v0, 0x0

    .line 5334
    iput v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->messageCase_:I

    const/4 v0, 0x0

    .line 5335
    iput-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->message_:Ljava/lang/Object;

    return-void
.end method

.method private clearStakeAddDeposit()V
    .locals 2

    .line 5532
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->messageCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 5533
    iput v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->messageCase_:I

    const/4 v0, 0x0

    .line 5534
    iput-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->message_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearStakeChangeCandidate()V
    .locals 2

    .line 5632
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->messageCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 5633
    iput v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->messageCase_:I

    const/4 v0, 0x0

    .line 5634
    iput-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->message_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearStakeCreate()V
    .locals 2

    .line 5382
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->messageCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 5383
    iput v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->messageCase_:I

    const/4 v0, 0x0

    .line 5384
    iput-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->message_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearStakeRestake()V
    .locals 2

    .line 5582
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->messageCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 5583
    iput v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->messageCase_:I

    const/4 v0, 0x0

    .line 5584
    iput-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->message_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearStakeTransferOwnership()V
    .locals 2

    .line 5682
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->messageCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 5683
    iput v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->messageCase_:I

    const/4 v0, 0x0

    .line 5684
    iput-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->message_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearStakeUnstake()V
    .locals 2

    .line 5432
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->messageCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 5433
    iput v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->messageCase_:I

    const/4 v0, 0x0

    .line 5434
    iput-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->message_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearStakeWithdraw()V
    .locals 2

    .line 5482
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->messageCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 5483
    iput v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->messageCase_:I

    const/4 v0, 0x0

    .line 5484
    iput-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->message_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Staking;
    .locals 1

    .line 6406
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking;

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

    .line 5718
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5719
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->messageCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->message_:Ljava/lang/Object;

    .line 5720
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 5721
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->message_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->newBuilder(Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;)Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister$Builder;

    move-result-object v0

    .line 5722
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$Staking;->message_:Ljava/lang/Object;

    goto :goto_0

    .line 5724
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$Staking;->message_:Ljava/lang/Object;

    .line 5726
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/IoTeX$Staking;->messageCase_:I

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

    .line 5768
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5769
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->messageCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->message_:Ljava/lang/Object;

    .line 5770
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 5771
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->message_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;->newBuilder(Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;)Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo$Builder;

    move-result-object v0

    .line 5772
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$Staking;->message_:Ljava/lang/Object;

    goto :goto_0

    .line 5774
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$Staking;->message_:Ljava/lang/Object;

    .line 5776
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/IoTeX$Staking;->messageCase_:I

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

    .line 5518
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5519
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->messageCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->message_:Ljava/lang/Object;

    .line 5520
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 5521
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->message_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;->newBuilder(Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;)Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit$Builder;

    move-result-object v0

    .line 5522
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$Staking;->message_:Ljava/lang/Object;

    goto :goto_0

    .line 5524
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$Staking;->message_:Ljava/lang/Object;

    .line 5526
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/IoTeX$Staking;->messageCase_:I

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

    .line 5618
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5619
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->messageCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->message_:Ljava/lang/Object;

    .line 5620
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 5621
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->message_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;->newBuilder(Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;)Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate$Builder;

    move-result-object v0

    .line 5622
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$Staking;->message_:Ljava/lang/Object;

    goto :goto_0

    .line 5624
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$Staking;->message_:Ljava/lang/Object;

    .line 5626
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/IoTeX$Staking;->messageCase_:I

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

    .line 5368
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5369
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->messageCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->message_:Ljava/lang/Object;

    .line 5370
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking$Create;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Staking$Create;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 5371
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->message_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$Create;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Staking$Create;->newBuilder(Lwallet/core/jni/proto/IoTeX$Staking$Create;)Lwallet/core/jni/proto/IoTeX$Staking$Create$Builder;

    move-result-object v0

    .line 5372
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/IoTeX$Staking$Create$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$Staking;->message_:Ljava/lang/Object;

    goto :goto_0

    .line 5374
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$Staking;->message_:Ljava/lang/Object;

    .line 5376
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/IoTeX$Staking;->messageCase_:I

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

    .line 5568
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5569
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->messageCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->message_:Ljava/lang/Object;

    .line 5570
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking$Restake;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Staking$Restake;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 5571
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->message_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$Restake;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Staking$Restake;->newBuilder(Lwallet/core/jni/proto/IoTeX$Staking$Restake;)Lwallet/core/jni/proto/IoTeX$Staking$Restake$Builder;

    move-result-object v0

    .line 5572
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/IoTeX$Staking$Restake$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$Staking;->message_:Ljava/lang/Object;

    goto :goto_0

    .line 5574
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$Staking;->message_:Ljava/lang/Object;

    .line 5576
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/IoTeX$Staking;->messageCase_:I

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

    .line 5668
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5669
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->messageCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->message_:Ljava/lang/Object;

    .line 5670
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 5671
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->message_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;->newBuilder(Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;)Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership$Builder;

    move-result-object v0

    .line 5672
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$Staking;->message_:Ljava/lang/Object;

    goto :goto_0

    .line 5674
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$Staking;->message_:Ljava/lang/Object;

    .line 5676
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/IoTeX$Staking;->messageCase_:I

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

    .line 5418
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5419
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->messageCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->message_:Ljava/lang/Object;

    .line 5420
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 5421
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->message_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;->newBuilder(Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;)Lwallet/core/jni/proto/IoTeX$Staking$Reclaim$Builder;

    move-result-object v0

    .line 5422
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$Staking;->message_:Ljava/lang/Object;

    goto :goto_0

    .line 5424
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$Staking;->message_:Ljava/lang/Object;

    .line 5426
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/IoTeX$Staking;->messageCase_:I

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

    .line 5468
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5469
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->messageCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->message_:Ljava/lang/Object;

    .line 5470
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 5471
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->message_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;->newBuilder(Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;)Lwallet/core/jni/proto/IoTeX$Staking$Reclaim$Builder;

    move-result-object v0

    .line 5472
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$Staking;->message_:Ljava/lang/Object;

    goto :goto_0

    .line 5474
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$Staking;->message_:Ljava/lang/Object;

    .line 5476
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/IoTeX$Staking;->messageCase_:I

    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/IoTeX$Staking$Builder;
    .locals 1

    .line 5863
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/IoTeX$Staking;)Lwallet/core/jni/proto/IoTeX$Staking$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 5866
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/IoTeX$Staking;
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

    .line 5840
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/IoTeX$Staking;
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

    .line 5846
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/IoTeX$Staking;
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

    .line 5804
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/IoTeX$Staking;
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

    .line 5811
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/IoTeX$Staking;
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

    .line 5851
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/IoTeX$Staking;
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

    .line 5858
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/IoTeX$Staking;
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

    .line 5828
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/IoTeX$Staking;
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

    .line 5835
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/IoTeX$Staking;
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

    .line 5791
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/IoTeX$Staking;
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

    .line 5798
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/IoTeX$Staking;
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

    .line 5816
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/IoTeX$Staking;
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

    .line 5823
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/IoTeX$Staking;",
            ">;"
        }
    .end annotation

    .line 6412
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking;

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

    .line 5710
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5711
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$Staking;->message_:Ljava/lang/Object;

    const/16 p1, 0x8

    .line 5712
    iput p1, p0, Lwallet/core/jni/proto/IoTeX$Staking;->messageCase_:I

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

    .line 5760
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5761
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$Staking;->message_:Ljava/lang/Object;

    const/16 p1, 0x9

    .line 5762
    iput p1, p0, Lwallet/core/jni/proto/IoTeX$Staking;->messageCase_:I

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

    .line 5510
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5511
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$Staking;->message_:Ljava/lang/Object;

    const/4 p1, 0x4

    .line 5512
    iput p1, p0, Lwallet/core/jni/proto/IoTeX$Staking;->messageCase_:I

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

    .line 5610
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5611
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$Staking;->message_:Ljava/lang/Object;

    const/4 p1, 0x6

    .line 5612
    iput p1, p0, Lwallet/core/jni/proto/IoTeX$Staking;->messageCase_:I

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

    .line 5360
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5361
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$Staking;->message_:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 5362
    iput p1, p0, Lwallet/core/jni/proto/IoTeX$Staking;->messageCase_:I

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

    .line 5560
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5561
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$Staking;->message_:Ljava/lang/Object;

    const/4 p1, 0x5

    .line 5562
    iput p1, p0, Lwallet/core/jni/proto/IoTeX$Staking;->messageCase_:I

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

    .line 5660
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5661
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$Staking;->message_:Ljava/lang/Object;

    const/4 p1, 0x7

    .line 5662
    iput p1, p0, Lwallet/core/jni/proto/IoTeX$Staking;->messageCase_:I

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

    .line 5410
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5411
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$Staking;->message_:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 5412
    iput p1, p0, Lwallet/core/jni/proto/IoTeX$Staking;->messageCase_:I

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

    .line 5460
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5461
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$Staking;->message_:Ljava/lang/Object;

    const/4 p1, 0x3

    .line 5462
    iput p1, p0, Lwallet/core/jni/proto/IoTeX$Staking;->messageCase_:I

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

    .line 6338
    const-class p2, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    sget-object p3, Lwallet/core/jni/proto/IoTeX$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p3, p1

    const/4 p3, 0x1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 6390
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object v0

    .line 6384
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 6369
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/IoTeX$Staking;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 6371
    const-class p2, Lwallet/core/jni/proto/IoTeX$Staking;

    monitor-enter p2

    .line 6372
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/IoTeX$Staking;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 6374
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/IoTeX$Staking;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 6377
    sput-object p1, Lwallet/core/jni/proto/IoTeX$Staking;->PARSER:Lcom/google/protobuf/Parser;

    .line 6379
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

    .line 6366
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/IoTeX$Staking;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking;

    return-object p1

    :pswitch_4
    const/16 p1, 0xb

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "message_"

    aput-object v1, p1, v0

    const-string v0, "messageCase_"

    aput-object v0, p1, p3

    const/4 p3, 0x2

    .line 6346
    const-class v0, Lwallet/core/jni/proto/IoTeX$Staking$Create;

    aput-object v0, p1, p3

    const/4 p3, 0x3

    aput-object p2, p1, p3

    const/4 p3, 0x4

    aput-object p2, p1, p3

    const/4 p2, 0x5

    const-class p3, Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-class p3, Lwallet/core/jni/proto/IoTeX$Staking$Restake;

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-class p3, Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-class p3, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-class p3, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-class p3, Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;

    aput-object p3, p1, p2

    const-string p2, "\u0000\t\u0001\u0000\u0001\t\t\u0000\u0000\u0000\u0001<\u0000\u0002<\u0000\u0003<\u0000\u0004<\u0000\u0005<\u0000\u0006<\u0000\u0007<\u0000\u0008<\u0000\t<\u0000"

    .line 6362
    sget-object p3, Lwallet/core/jni/proto/IoTeX$Staking;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6343
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/IoTeX$Staking$Builder;

    invoke-direct {p1, v0}, Lwallet/core/jni/proto/IoTeX$Staking$Builder;-><init>(Lwallet/core/jni/proto/IoTeX$1;)V

    return-object p1

    .line 6340
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/IoTeX$Staking;

    invoke-direct {p1}, Lwallet/core/jni/proto/IoTeX$Staking;-><init>()V

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

.method public getCandidateRegister()Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;
    .locals 2

    .line 5701
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->messageCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 5702
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->message_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    return-object v0

    .line 5704
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Staking$CandidateRegister;

    move-result-object v0

    return-object v0
.end method

.method public getCandidateUpdate()Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;
    .locals 2

    .line 5751
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->messageCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 5752
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->message_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;

    return-object v0

    .line 5754
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Staking$CandidateBasicInfo;

    move-result-object v0

    return-object v0
.end method

.method public getMessageCase()Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;
    .locals 1

    .line 5329
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->messageCase_:I

    invoke-static {v0}, Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;->forNumber(I)Lwallet/core/jni/proto/IoTeX$Staking$MessageCase;

    move-result-object v0

    return-object v0
.end method

.method public getStakeAddDeposit()Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;
    .locals 2

    .line 5501
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->messageCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 5502
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->message_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;

    return-object v0

    .line 5504
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Staking$AddDeposit;

    move-result-object v0

    return-object v0
.end method

.method public getStakeChangeCandidate()Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;
    .locals 2

    .line 5601
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->messageCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 5602
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->message_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;

    return-object v0

    .line 5604
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Staking$ChangeCandidate;

    move-result-object v0

    return-object v0
.end method

.method public getStakeCreate()Lwallet/core/jni/proto/IoTeX$Staking$Create;
    .locals 2

    .line 5351
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->messageCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 5352
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->message_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$Create;

    return-object v0

    .line 5354
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking$Create;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Staking$Create;

    move-result-object v0

    return-object v0
.end method

.method public getStakeRestake()Lwallet/core/jni/proto/IoTeX$Staking$Restake;
    .locals 2

    .line 5551
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->messageCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 5552
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->message_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$Restake;

    return-object v0

    .line 5554
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking$Restake;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Staking$Restake;

    move-result-object v0

    return-object v0
.end method

.method public getStakeTransferOwnership()Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;
    .locals 2

    .line 5651
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->messageCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 5652
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->message_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;

    return-object v0

    .line 5654
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;

    move-result-object v0

    return-object v0
.end method

.method public getStakeUnstake()Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;
    .locals 2

    .line 5401
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->messageCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 5402
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->message_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    return-object v0

    .line 5404
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    move-result-object v0

    return-object v0
.end method

.method public getStakeWithdraw()Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;
    .locals 2

    .line 5451
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->messageCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 5452
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->message_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    return-object v0

    .line 5454
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    move-result-object v0

    return-object v0
.end method

.method public hasCandidateRegister()Z
    .locals 2

    .line 5694
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->messageCase_:I

    const/16 v1, 0x8

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

    .line 5744
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->messageCase_:I

    const/16 v1, 0x9

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

    .line 5494
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->messageCase_:I

    const/4 v1, 0x4

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

    .line 5594
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->messageCase_:I

    const/4 v1, 0x6

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

    .line 5344
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->messageCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasStakeRestake()Z
    .locals 2

    .line 5544
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->messageCase_:I

    const/4 v1, 0x5

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

    .line 5644
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->messageCase_:I

    const/4 v1, 0x7

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

    .line 5394
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->messageCase_:I

    const/4 v1, 0x2

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

    .line 5444
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$Staking;->messageCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
