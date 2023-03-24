.class public final Lwallet/core/jni/proto/Harmony$StakingMessage;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Harmony.java"

# interfaces
.implements Lwallet/core/jni/proto/Harmony$StakingMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Harmony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StakingMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Harmony$StakingMessage$Builder;,
        Lwallet/core/jni/proto/Harmony$StakingMessage$StakeMsgCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Harmony$StakingMessage;",
        "Lwallet/core/jni/proto/Harmony$StakingMessage$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Harmony$StakingMessageOrBuilder;"
    }
.end annotation


# static fields
.field public static final COLLECT_REWARDS_FIELD_NUMBER:I = 0x5

.field public static final CREATE_VALIDATOR_MESSAGE_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$StakingMessage;

.field public static final DELEGATE_MESSAGE_FIELD_NUMBER:I = 0x3

.field public static final EDIT_VALIDATOR_MESSAGE_FIELD_NUMBER:I = 0x2

.field public static final GAS_LIMIT_FIELD_NUMBER:I = 0x8

.field public static final GAS_PRICE_FIELD_NUMBER:I = 0x7

.field public static final NONCE_FIELD_NUMBER:I = 0x6

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Harmony$StakingMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNDELEGATE_MESSAGE_FIELD_NUMBER:I = 0x4


# instance fields
.field private gasLimit_:Lcom/google/protobuf/ByteString;

.field private gasPrice_:Lcom/google/protobuf/ByteString;

.field private nonce_:Lcom/google/protobuf/ByteString;

.field private stakeMsgCase_:I

.field private stakeMsg_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 3208
    new-instance v0, Lwallet/core/jni/proto/Harmony$StakingMessage;

    invoke-direct {v0}, Lwallet/core/jni/proto/Harmony$StakingMessage;-><init>()V

    .line 3211
    sput-object v0, Lwallet/core/jni/proto/Harmony$StakingMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$StakingMessage;

    .line 3212
    const-class v1, Lwallet/core/jni/proto/Harmony$StakingMessage;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2251
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 2256
    iput v0, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->stakeMsgCase_:I

    .line 2252
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->nonce_:Lcom/google/protobuf/ByteString;

    .line 2253
    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->gasPrice_:Lcom/google/protobuf/ByteString;

    .line 2254
    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->gasLimit_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$4200()Lwallet/core/jni/proto/Harmony$StakingMessage;
    .locals 1

    .line 2246
    sget-object v0, Lwallet/core/jni/proto/Harmony$StakingMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$StakingMessage;

    return-object v0
.end method

.method static synthetic access$4300(Lwallet/core/jni/proto/Harmony$StakingMessage;)V
    .locals 0

    .line 2246
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$StakingMessage;->clearStakeMsg()V

    return-void
.end method

.method static synthetic access$4400(Lwallet/core/jni/proto/Harmony$StakingMessage;Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;)V
    .locals 0

    .line 2246
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$StakingMessage;->setCreateValidatorMessage(Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;)V

    return-void
.end method

.method static synthetic access$4500(Lwallet/core/jni/proto/Harmony$StakingMessage;Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;)V
    .locals 0

    .line 2246
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$StakingMessage;->mergeCreateValidatorMessage(Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;)V

    return-void
.end method

.method static synthetic access$4600(Lwallet/core/jni/proto/Harmony$StakingMessage;)V
    .locals 0

    .line 2246
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$StakingMessage;->clearCreateValidatorMessage()V

    return-void
.end method

.method static synthetic access$4700(Lwallet/core/jni/proto/Harmony$StakingMessage;Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;)V
    .locals 0

    .line 2246
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$StakingMessage;->setEditValidatorMessage(Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;)V

    return-void
.end method

.method static synthetic access$4800(Lwallet/core/jni/proto/Harmony$StakingMessage;Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;)V
    .locals 0

    .line 2246
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$StakingMessage;->mergeEditValidatorMessage(Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;)V

    return-void
.end method

.method static synthetic access$4900(Lwallet/core/jni/proto/Harmony$StakingMessage;)V
    .locals 0

    .line 2246
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$StakingMessage;->clearEditValidatorMessage()V

    return-void
.end method

.method static synthetic access$5000(Lwallet/core/jni/proto/Harmony$StakingMessage;Lwallet/core/jni/proto/Harmony$DirectiveDelegate;)V
    .locals 0

    .line 2246
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$StakingMessage;->setDelegateMessage(Lwallet/core/jni/proto/Harmony$DirectiveDelegate;)V

    return-void
.end method

.method static synthetic access$5100(Lwallet/core/jni/proto/Harmony$StakingMessage;Lwallet/core/jni/proto/Harmony$DirectiveDelegate;)V
    .locals 0

    .line 2246
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$StakingMessage;->mergeDelegateMessage(Lwallet/core/jni/proto/Harmony$DirectiveDelegate;)V

    return-void
.end method

.method static synthetic access$5200(Lwallet/core/jni/proto/Harmony$StakingMessage;)V
    .locals 0

    .line 2246
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$StakingMessage;->clearDelegateMessage()V

    return-void
.end method

.method static synthetic access$5300(Lwallet/core/jni/proto/Harmony$StakingMessage;Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;)V
    .locals 0

    .line 2246
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$StakingMessage;->setUndelegateMessage(Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;)V

    return-void
.end method

.method static synthetic access$5400(Lwallet/core/jni/proto/Harmony$StakingMessage;Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;)V
    .locals 0

    .line 2246
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$StakingMessage;->mergeUndelegateMessage(Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;)V

    return-void
.end method

.method static synthetic access$5500(Lwallet/core/jni/proto/Harmony$StakingMessage;)V
    .locals 0

    .line 2246
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$StakingMessage;->clearUndelegateMessage()V

    return-void
.end method

.method static synthetic access$5600(Lwallet/core/jni/proto/Harmony$StakingMessage;Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;)V
    .locals 0

    .line 2246
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$StakingMessage;->setCollectRewards(Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;)V

    return-void
.end method

.method static synthetic access$5700(Lwallet/core/jni/proto/Harmony$StakingMessage;Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;)V
    .locals 0

    .line 2246
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$StakingMessage;->mergeCollectRewards(Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;)V

    return-void
.end method

.method static synthetic access$5800(Lwallet/core/jni/proto/Harmony$StakingMessage;)V
    .locals 0

    .line 2246
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$StakingMessage;->clearCollectRewards()V

    return-void
.end method

.method static synthetic access$5900(Lwallet/core/jni/proto/Harmony$StakingMessage;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 2246
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$StakingMessage;->setNonce(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$6000(Lwallet/core/jni/proto/Harmony$StakingMessage;)V
    .locals 0

    .line 2246
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$StakingMessage;->clearNonce()V

    return-void
.end method

.method static synthetic access$6100(Lwallet/core/jni/proto/Harmony$StakingMessage;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 2246
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$StakingMessage;->setGasPrice(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$6200(Lwallet/core/jni/proto/Harmony$StakingMessage;)V
    .locals 0

    .line 2246
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$StakingMessage;->clearGasPrice()V

    return-void
.end method

.method static synthetic access$6300(Lwallet/core/jni/proto/Harmony$StakingMessage;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 2246
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$StakingMessage;->setGasLimit(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$6400(Lwallet/core/jni/proto/Harmony$StakingMessage;)V
    .locals 0

    .line 2246
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$StakingMessage;->clearGasLimit()V

    return-void
.end method

.method private clearCollectRewards()V
    .locals 2

    .line 2549
    iget v0, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->stakeMsgCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2550
    iput v0, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->stakeMsgCase_:I

    const/4 v0, 0x0

    .line 2551
    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->stakeMsg_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearCreateValidatorMessage()V
    .locals 2

    .line 2349
    iget v0, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->stakeMsgCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2350
    iput v0, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->stakeMsgCase_:I

    const/4 v0, 0x0

    .line 2351
    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->stakeMsg_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearDelegateMessage()V
    .locals 2

    .line 2449
    iget v0, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->stakeMsgCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2450
    iput v0, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->stakeMsgCase_:I

    const/4 v0, 0x0

    .line 2451
    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->stakeMsg_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearEditValidatorMessage()V
    .locals 2

    .line 2399
    iget v0, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->stakeMsgCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2400
    iput v0, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->stakeMsgCase_:I

    const/4 v0, 0x0

    .line 2401
    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->stakeMsg_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearGasLimit()V
    .locals 1

    .line 2669
    invoke-static {}, Lwallet/core/jni/proto/Harmony$StakingMessage;->getDefaultInstance()Lwallet/core/jni/proto/Harmony$StakingMessage;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$StakingMessage;->getGasLimit()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->gasLimit_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearGasPrice()V
    .locals 1

    .line 2630
    invoke-static {}, Lwallet/core/jni/proto/Harmony$StakingMessage;->getDefaultInstance()Lwallet/core/jni/proto/Harmony$StakingMessage;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$StakingMessage;->getGasPrice()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->gasPrice_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearNonce()V
    .locals 1

    .line 2591
    invoke-static {}, Lwallet/core/jni/proto/Harmony$StakingMessage;->getDefaultInstance()Lwallet/core/jni/proto/Harmony$StakingMessage;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$StakingMessage;->getNonce()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->nonce_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearStakeMsg()V
    .locals 1

    const/4 v0, 0x0

    .line 2301
    iput v0, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->stakeMsgCase_:I

    const/4 v0, 0x0

    .line 2302
    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->stakeMsg_:Ljava/lang/Object;

    return-void
.end method

.method private clearUndelegateMessage()V
    .locals 2

    .line 2499
    iget v0, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->stakeMsgCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2500
    iput v0, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->stakeMsgCase_:I

    const/4 v0, 0x0

    .line 2501
    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->stakeMsg_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Harmony$StakingMessage;
    .locals 1

    .line 3217
    sget-object v0, Lwallet/core/jni/proto/Harmony$StakingMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$StakingMessage;

    return-object v0
.end method

.method private mergeCollectRewards(Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2535
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2536
    iget v0, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->stakeMsgCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->stakeMsg_:Ljava/lang/Object;

    .line 2537
    invoke-static {}, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;->getDefaultInstance()Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 2538
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->stakeMsg_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;

    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;->newBuilder(Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;)Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards$Builder;

    move-result-object v0

    .line 2539
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->stakeMsg_:Ljava/lang/Object;

    goto :goto_0

    .line 2541
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->stakeMsg_:Ljava/lang/Object;

    .line 2543
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->stakeMsgCase_:I

    return-void
.end method

.method private mergeCreateValidatorMessage(Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2335
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2336
    iget v0, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->stakeMsgCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->stakeMsg_:Ljava/lang/Object;

    .line 2337
    invoke-static {}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->getDefaultInstance()Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 2338
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->stakeMsg_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->newBuilder(Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;)Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator$Builder;

    move-result-object v0

    .line 2339
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->stakeMsg_:Ljava/lang/Object;

    goto :goto_0

    .line 2341
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->stakeMsg_:Ljava/lang/Object;

    .line 2343
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->stakeMsgCase_:I

    return-void
.end method

.method private mergeDelegateMessage(Lwallet/core/jni/proto/Harmony$DirectiveDelegate;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2435
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2436
    iget v0, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->stakeMsgCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->stakeMsg_:Ljava/lang/Object;

    .line 2437
    invoke-static {}, Lwallet/core/jni/proto/Harmony$DirectiveDelegate;->getDefaultInstance()Lwallet/core/jni/proto/Harmony$DirectiveDelegate;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 2438
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->stakeMsg_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveDelegate;

    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$DirectiveDelegate;->newBuilder(Lwallet/core/jni/proto/Harmony$DirectiveDelegate;)Lwallet/core/jni/proto/Harmony$DirectiveDelegate$Builder;

    move-result-object v0

    .line 2439
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Harmony$DirectiveDelegate$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->stakeMsg_:Ljava/lang/Object;

    goto :goto_0

    .line 2441
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->stakeMsg_:Ljava/lang/Object;

    .line 2443
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->stakeMsgCase_:I

    return-void
.end method

.method private mergeEditValidatorMessage(Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2385
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2386
    iget v0, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->stakeMsgCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->stakeMsg_:Ljava/lang/Object;

    .line 2387
    invoke-static {}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->getDefaultInstance()Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 2388
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->stakeMsg_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->newBuilder(Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;)Lwallet/core/jni/proto/Harmony$DirectiveEditValidator$Builder;

    move-result-object v0

    .line 2389
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->stakeMsg_:Ljava/lang/Object;

    goto :goto_0

    .line 2391
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->stakeMsg_:Ljava/lang/Object;

    .line 2393
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->stakeMsgCase_:I

    return-void
.end method

.method private mergeUndelegateMessage(Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2485
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2486
    iget v0, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->stakeMsgCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->stakeMsg_:Ljava/lang/Object;

    .line 2487
    invoke-static {}, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;->getDefaultInstance()Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 2488
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->stakeMsg_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;

    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;->newBuilder(Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;)Lwallet/core/jni/proto/Harmony$DirectiveUndelegate$Builder;

    move-result-object v0

    .line 2489
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->stakeMsg_:Ljava/lang/Object;

    goto :goto_0

    .line 2491
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->stakeMsg_:Ljava/lang/Object;

    .line 2493
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->stakeMsgCase_:I

    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Harmony$StakingMessage$Builder;
    .locals 1

    .line 2747
    sget-object v0, Lwallet/core/jni/proto/Harmony$StakingMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$StakingMessage;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Harmony$StakingMessage$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Harmony$StakingMessage;)Lwallet/core/jni/proto/Harmony$StakingMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 2750
    sget-object v0, Lwallet/core/jni/proto/Harmony$StakingMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$StakingMessage;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$StakingMessage$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Harmony$StakingMessage;
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

    .line 2724
    sget-object v0, Lwallet/core/jni/proto/Harmony$StakingMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$StakingMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$StakingMessage;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Harmony$StakingMessage;
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

    .line 2730
    sget-object v0, Lwallet/core/jni/proto/Harmony$StakingMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$StakingMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$StakingMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Harmony$StakingMessage;
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

    .line 2688
    sget-object v0, Lwallet/core/jni/proto/Harmony$StakingMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$StakingMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$StakingMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Harmony$StakingMessage;
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

    .line 2695
    sget-object v0, Lwallet/core/jni/proto/Harmony$StakingMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$StakingMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$StakingMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Harmony$StakingMessage;
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

    .line 2735
    sget-object v0, Lwallet/core/jni/proto/Harmony$StakingMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$StakingMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$StakingMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Harmony$StakingMessage;
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

    .line 2742
    sget-object v0, Lwallet/core/jni/proto/Harmony$StakingMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$StakingMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$StakingMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Harmony$StakingMessage;
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

    .line 2712
    sget-object v0, Lwallet/core/jni/proto/Harmony$StakingMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$StakingMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$StakingMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Harmony$StakingMessage;
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

    .line 2719
    sget-object v0, Lwallet/core/jni/proto/Harmony$StakingMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$StakingMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$StakingMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Harmony$StakingMessage;
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

    .line 2675
    sget-object v0, Lwallet/core/jni/proto/Harmony$StakingMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$StakingMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$StakingMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Harmony$StakingMessage;
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

    .line 2682
    sget-object v0, Lwallet/core/jni/proto/Harmony$StakingMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$StakingMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$StakingMessage;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Harmony$StakingMessage;
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

    .line 2700
    sget-object v0, Lwallet/core/jni/proto/Harmony$StakingMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$StakingMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$StakingMessage;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Harmony$StakingMessage;
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

    .line 2707
    sget-object v0, Lwallet/core/jni/proto/Harmony$StakingMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$StakingMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$StakingMessage;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Harmony$StakingMessage;",
            ">;"
        }
    .end annotation

    .line 3223
    sget-object v0, Lwallet/core/jni/proto/Harmony$StakingMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$StakingMessage;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCollectRewards(Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2527
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2528
    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->stakeMsg_:Ljava/lang/Object;

    const/4 p1, 0x5

    .line 2529
    iput p1, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->stakeMsgCase_:I

    return-void
.end method

.method private setCreateValidatorMessage(Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2327
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2328
    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->stakeMsg_:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 2329
    iput p1, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->stakeMsgCase_:I

    return-void
.end method

.method private setDelegateMessage(Lwallet/core/jni/proto/Harmony$DirectiveDelegate;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2427
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2428
    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->stakeMsg_:Ljava/lang/Object;

    const/4 p1, 0x3

    .line 2429
    iput p1, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->stakeMsgCase_:I

    return-void
.end method

.method private setEditValidatorMessage(Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2377
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2378
    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->stakeMsg_:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 2379
    iput p1, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->stakeMsgCase_:I

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

    .line 2656
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2658
    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->gasLimit_:Lcom/google/protobuf/ByteString;

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

    .line 2617
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2619
    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->gasPrice_:Lcom/google/protobuf/ByteString;

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

    .line 2578
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2580
    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->nonce_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setUndelegateMessage(Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2477
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2478
    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->stakeMsg_:Ljava/lang/Object;

    const/4 p1, 0x4

    .line 2479
    iput p1, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->stakeMsgCase_:I

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

    .line 3150
    sget-object p2, Lwallet/core/jni/proto/Harmony$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 3201
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 3195
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 3180
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Harmony$StakingMessage;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 3182
    const-class p2, Lwallet/core/jni/proto/Harmony$StakingMessage;

    monitor-enter p2

    .line 3183
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Harmony$StakingMessage;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 3185
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Harmony$StakingMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$StakingMessage;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3188
    sput-object p1, Lwallet/core/jni/proto/Harmony$StakingMessage;->PARSER:Lcom/google/protobuf/Parser;

    .line 3190
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

    .line 3177
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Harmony$StakingMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$StakingMessage;

    return-object p1

    :pswitch_4
    const/16 p1, 0xa

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "stakeMsg_"

    aput-object v0, p1, p3

    const-string p3, "stakeMsgCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 3158
    const-class p3, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-class p3, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-class p3, Lwallet/core/jni/proto/Harmony$DirectiveDelegate;

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-class p3, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-class p3, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "nonce_"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "gasPrice_"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "gasLimit_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0008\u0001\u0000\u0001\u0008\u0008\u0000\u0000\u0000\u0001<\u0000\u0002<\u0000\u0003<\u0000\u0004<\u0000\u0005<\u0000\u0006\n\u0007\n\u0008\n"

    .line 3173
    sget-object p3, Lwallet/core/jni/proto/Harmony$StakingMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$StakingMessage;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3155
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Harmony$StakingMessage$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Harmony$StakingMessage$Builder;-><init>(Lwallet/core/jni/proto/Harmony$1;)V

    return-object p1

    .line 3152
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Harmony$StakingMessage;

    invoke-direct {p1}, Lwallet/core/jni/proto/Harmony$StakingMessage;-><init>()V

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

.method public getCollectRewards()Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;
    .locals 2

    .line 2518
    iget v0, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->stakeMsgCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2519
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->stakeMsg_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;

    return-object v0

    .line 2521
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;->getDefaultInstance()Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;

    move-result-object v0

    return-object v0
.end method

.method public getCreateValidatorMessage()Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;
    .locals 2

    .line 2318
    iget v0, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->stakeMsgCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2319
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->stakeMsg_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    return-object v0

    .line 2321
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;->getDefaultInstance()Lwallet/core/jni/proto/Harmony$DirectiveCreateValidator;

    move-result-object v0

    return-object v0
.end method

.method public getDelegateMessage()Lwallet/core/jni/proto/Harmony$DirectiveDelegate;
    .locals 2

    .line 2418
    iget v0, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->stakeMsgCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2419
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->stakeMsg_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveDelegate;

    return-object v0

    .line 2421
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Harmony$DirectiveDelegate;->getDefaultInstance()Lwallet/core/jni/proto/Harmony$DirectiveDelegate;

    move-result-object v0

    return-object v0
.end method

.method public getEditValidatorMessage()Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;
    .locals 2

    .line 2368
    iget v0, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->stakeMsgCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2369
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->stakeMsg_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    return-object v0

    .line 2371
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;->getDefaultInstance()Lwallet/core/jni/proto/Harmony$DirectiveEditValidator;

    move-result-object v0

    return-object v0
.end method

.method public getGasLimit()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2645
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->gasLimit_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getGasPrice()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2606
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->gasPrice_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getNonce()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2567
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->nonce_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getStakeMsgCase()Lwallet/core/jni/proto/Harmony$StakingMessage$StakeMsgCase;
    .locals 1

    .line 2296
    iget v0, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->stakeMsgCase_:I

    invoke-static {v0}, Lwallet/core/jni/proto/Harmony$StakingMessage$StakeMsgCase;->forNumber(I)Lwallet/core/jni/proto/Harmony$StakingMessage$StakeMsgCase;

    move-result-object v0

    return-object v0
.end method

.method public getUndelegateMessage()Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;
    .locals 2

    .line 2468
    iget v0, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->stakeMsgCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2469
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->stakeMsg_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;

    return-object v0

    .line 2471
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;->getDefaultInstance()Lwallet/core/jni/proto/Harmony$DirectiveUndelegate;

    move-result-object v0

    return-object v0
.end method

.method public hasCollectRewards()Z
    .locals 2

    .line 2511
    iget v0, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->stakeMsgCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasCreateValidatorMessage()Z
    .locals 2

    .line 2311
    iget v0, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->stakeMsgCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasDelegateMessage()Z
    .locals 2

    .line 2411
    iget v0, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->stakeMsgCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasEditValidatorMessage()Z
    .locals 2

    .line 2361
    iget v0, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->stakeMsgCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUndelegateMessage()Z
    .locals 2

    .line 2461
    iget v0, p0, Lwallet/core/jni/proto/Harmony$StakingMessage;->stakeMsgCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
