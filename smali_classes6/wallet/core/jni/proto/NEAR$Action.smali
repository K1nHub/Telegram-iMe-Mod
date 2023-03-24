.class public final Lwallet/core/jni/proto/NEAR$Action;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "NEAR.java"

# interfaces
.implements Lwallet/core/jni/proto/NEAR$ActionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/NEAR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/NEAR$Action$Builder;,
        Lwallet/core/jni/proto/NEAR$Action$PayloadCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/NEAR$Action;",
        "Lwallet/core/jni/proto/NEAR$Action$Builder;",
        ">;",
        "Lwallet/core/jni/proto/NEAR$ActionOrBuilder;"
    }
.end annotation


# static fields
.field public static final ADD_KEY_FIELD_NUMBER:I = 0x6

.field public static final CREATE_ACCOUNT_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$Action;

.field public static final DELETE_ACCOUNT_FIELD_NUMBER:I = 0x8

.field public static final DELETE_KEY_FIELD_NUMBER:I = 0x7

.field public static final DEPLOY_CONTRACT_FIELD_NUMBER:I = 0x2

.field public static final FUNCTION_CALL_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/NEAR$Action;",
            ">;"
        }
    .end annotation
.end field

.field public static final STAKE_FIELD_NUMBER:I = 0x5

.field public static final TRANSFER_FIELD_NUMBER:I = 0x4


# instance fields
.field private payloadCase_:I

.field private payload_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5631
    new-instance v0, Lwallet/core/jni/proto/NEAR$Action;

    invoke-direct {v0}, Lwallet/core/jni/proto/NEAR$Action;-><init>()V

    .line 5634
    sput-object v0, Lwallet/core/jni/proto/NEAR$Action;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$Action;

    .line 5635
    const-class v1, Lwallet/core/jni/proto/NEAR$Action;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 4614
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 4616
    iput v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payloadCase_:I

    return-void
.end method

.method static synthetic access$10000(Lwallet/core/jni/proto/NEAR$Action;Lwallet/core/jni/proto/NEAR$DeleteAccount;)V
    .locals 0

    .line 4609
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEAR$Action;->setDeleteAccount(Lwallet/core/jni/proto/NEAR$DeleteAccount;)V

    return-void
.end method

.method static synthetic access$10100(Lwallet/core/jni/proto/NEAR$Action;Lwallet/core/jni/proto/NEAR$DeleteAccount;)V
    .locals 0

    .line 4609
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEAR$Action;->mergeDeleteAccount(Lwallet/core/jni/proto/NEAR$DeleteAccount;)V

    return-void
.end method

.method static synthetic access$10200(Lwallet/core/jni/proto/NEAR$Action;)V
    .locals 0

    .line 4609
    invoke-direct {p0}, Lwallet/core/jni/proto/NEAR$Action;->clearDeleteAccount()V

    return-void
.end method

.method static synthetic access$7700()Lwallet/core/jni/proto/NEAR$Action;
    .locals 1

    .line 4609
    sget-object v0, Lwallet/core/jni/proto/NEAR$Action;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$Action;

    return-object v0
.end method

.method static synthetic access$7800(Lwallet/core/jni/proto/NEAR$Action;)V
    .locals 0

    .line 4609
    invoke-direct {p0}, Lwallet/core/jni/proto/NEAR$Action;->clearPayload()V

    return-void
.end method

.method static synthetic access$7900(Lwallet/core/jni/proto/NEAR$Action;Lwallet/core/jni/proto/NEAR$CreateAccount;)V
    .locals 0

    .line 4609
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEAR$Action;->setCreateAccount(Lwallet/core/jni/proto/NEAR$CreateAccount;)V

    return-void
.end method

.method static synthetic access$8000(Lwallet/core/jni/proto/NEAR$Action;Lwallet/core/jni/proto/NEAR$CreateAccount;)V
    .locals 0

    .line 4609
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEAR$Action;->mergeCreateAccount(Lwallet/core/jni/proto/NEAR$CreateAccount;)V

    return-void
.end method

.method static synthetic access$8100(Lwallet/core/jni/proto/NEAR$Action;)V
    .locals 0

    .line 4609
    invoke-direct {p0}, Lwallet/core/jni/proto/NEAR$Action;->clearCreateAccount()V

    return-void
.end method

.method static synthetic access$8200(Lwallet/core/jni/proto/NEAR$Action;Lwallet/core/jni/proto/NEAR$DeployContract;)V
    .locals 0

    .line 4609
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEAR$Action;->setDeployContract(Lwallet/core/jni/proto/NEAR$DeployContract;)V

    return-void
.end method

.method static synthetic access$8300(Lwallet/core/jni/proto/NEAR$Action;Lwallet/core/jni/proto/NEAR$DeployContract;)V
    .locals 0

    .line 4609
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEAR$Action;->mergeDeployContract(Lwallet/core/jni/proto/NEAR$DeployContract;)V

    return-void
.end method

.method static synthetic access$8400(Lwallet/core/jni/proto/NEAR$Action;)V
    .locals 0

    .line 4609
    invoke-direct {p0}, Lwallet/core/jni/proto/NEAR$Action;->clearDeployContract()V

    return-void
.end method

.method static synthetic access$8500(Lwallet/core/jni/proto/NEAR$Action;Lwallet/core/jni/proto/NEAR$FunctionCall;)V
    .locals 0

    .line 4609
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEAR$Action;->setFunctionCall(Lwallet/core/jni/proto/NEAR$FunctionCall;)V

    return-void
.end method

.method static synthetic access$8600(Lwallet/core/jni/proto/NEAR$Action;Lwallet/core/jni/proto/NEAR$FunctionCall;)V
    .locals 0

    .line 4609
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEAR$Action;->mergeFunctionCall(Lwallet/core/jni/proto/NEAR$FunctionCall;)V

    return-void
.end method

.method static synthetic access$8700(Lwallet/core/jni/proto/NEAR$Action;)V
    .locals 0

    .line 4609
    invoke-direct {p0}, Lwallet/core/jni/proto/NEAR$Action;->clearFunctionCall()V

    return-void
.end method

.method static synthetic access$8800(Lwallet/core/jni/proto/NEAR$Action;Lwallet/core/jni/proto/NEAR$Transfer;)V
    .locals 0

    .line 4609
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEAR$Action;->setTransfer(Lwallet/core/jni/proto/NEAR$Transfer;)V

    return-void
.end method

.method static synthetic access$8900(Lwallet/core/jni/proto/NEAR$Action;Lwallet/core/jni/proto/NEAR$Transfer;)V
    .locals 0

    .line 4609
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEAR$Action;->mergeTransfer(Lwallet/core/jni/proto/NEAR$Transfer;)V

    return-void
.end method

.method static synthetic access$9000(Lwallet/core/jni/proto/NEAR$Action;)V
    .locals 0

    .line 4609
    invoke-direct {p0}, Lwallet/core/jni/proto/NEAR$Action;->clearTransfer()V

    return-void
.end method

.method static synthetic access$9100(Lwallet/core/jni/proto/NEAR$Action;Lwallet/core/jni/proto/NEAR$Stake;)V
    .locals 0

    .line 4609
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEAR$Action;->setStake(Lwallet/core/jni/proto/NEAR$Stake;)V

    return-void
.end method

.method static synthetic access$9200(Lwallet/core/jni/proto/NEAR$Action;Lwallet/core/jni/proto/NEAR$Stake;)V
    .locals 0

    .line 4609
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEAR$Action;->mergeStake(Lwallet/core/jni/proto/NEAR$Stake;)V

    return-void
.end method

.method static synthetic access$9300(Lwallet/core/jni/proto/NEAR$Action;)V
    .locals 0

    .line 4609
    invoke-direct {p0}, Lwallet/core/jni/proto/NEAR$Action;->clearStake()V

    return-void
.end method

.method static synthetic access$9400(Lwallet/core/jni/proto/NEAR$Action;Lwallet/core/jni/proto/NEAR$AddKey;)V
    .locals 0

    .line 4609
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEAR$Action;->setAddKey(Lwallet/core/jni/proto/NEAR$AddKey;)V

    return-void
.end method

.method static synthetic access$9500(Lwallet/core/jni/proto/NEAR$Action;Lwallet/core/jni/proto/NEAR$AddKey;)V
    .locals 0

    .line 4609
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEAR$Action;->mergeAddKey(Lwallet/core/jni/proto/NEAR$AddKey;)V

    return-void
.end method

.method static synthetic access$9600(Lwallet/core/jni/proto/NEAR$Action;)V
    .locals 0

    .line 4609
    invoke-direct {p0}, Lwallet/core/jni/proto/NEAR$Action;->clearAddKey()V

    return-void
.end method

.method static synthetic access$9700(Lwallet/core/jni/proto/NEAR$Action;Lwallet/core/jni/proto/NEAR$DeleteKey;)V
    .locals 0

    .line 4609
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEAR$Action;->setDeleteKey(Lwallet/core/jni/proto/NEAR$DeleteKey;)V

    return-void
.end method

.method static synthetic access$9800(Lwallet/core/jni/proto/NEAR$Action;Lwallet/core/jni/proto/NEAR$DeleteKey;)V
    .locals 0

    .line 4609
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NEAR$Action;->mergeDeleteKey(Lwallet/core/jni/proto/NEAR$DeleteKey;)V

    return-void
.end method

.method static synthetic access$9900(Lwallet/core/jni/proto/NEAR$Action;)V
    .locals 0

    .line 4609
    invoke-direct {p0}, Lwallet/core/jni/proto/NEAR$Action;->clearDeleteKey()V

    return-void
.end method

.method private clearAddKey()V
    .locals 2

    .line 4965
    iget v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payloadCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 4966
    iput v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payloadCase_:I

    const/4 v0, 0x0

    .line 4967
    iput-object v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payload_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearCreateAccount()V
    .locals 2

    .line 4715
    iget v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payloadCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 4716
    iput v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payloadCase_:I

    const/4 v0, 0x0

    .line 4717
    iput-object v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payload_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearDeleteAccount()V
    .locals 2

    .line 5065
    iget v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payloadCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 5066
    iput v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payloadCase_:I

    const/4 v0, 0x0

    .line 5067
    iput-object v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payload_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearDeleteKey()V
    .locals 2

    .line 5015
    iget v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payloadCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 5016
    iput v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payloadCase_:I

    const/4 v0, 0x0

    .line 5017
    iput-object v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payload_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearDeployContract()V
    .locals 2

    .line 4765
    iget v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payloadCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 4766
    iput v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payloadCase_:I

    const/4 v0, 0x0

    .line 4767
    iput-object v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payload_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearFunctionCall()V
    .locals 2

    .line 4815
    iget v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payloadCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 4816
    iput v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payloadCase_:I

    const/4 v0, 0x0

    .line 4817
    iput-object v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payload_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearPayload()V
    .locals 1

    const/4 v0, 0x0

    .line 4667
    iput v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payloadCase_:I

    const/4 v0, 0x0

    .line 4668
    iput-object v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payload_:Ljava/lang/Object;

    return-void
.end method

.method private clearStake()V
    .locals 2

    .line 4915
    iget v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payloadCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 4916
    iput v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payloadCase_:I

    const/4 v0, 0x0

    .line 4917
    iput-object v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payload_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearTransfer()V
    .locals 2

    .line 4865
    iget v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payloadCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 4866
    iput v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payloadCase_:I

    const/4 v0, 0x0

    .line 4867
    iput-object v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payload_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/NEAR$Action;
    .locals 1

    .line 5640
    sget-object v0, Lwallet/core/jni/proto/NEAR$Action;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$Action;

    return-object v0
.end method

.method private mergeAddKey(Lwallet/core/jni/proto/NEAR$AddKey;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4951
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4952
    iget v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payloadCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payload_:Ljava/lang/Object;

    .line 4953
    invoke-static {}, Lwallet/core/jni/proto/NEAR$AddKey;->getDefaultInstance()Lwallet/core/jni/proto/NEAR$AddKey;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4954
    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payload_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/NEAR$AddKey;

    invoke-static {v0}, Lwallet/core/jni/proto/NEAR$AddKey;->newBuilder(Lwallet/core/jni/proto/NEAR$AddKey;)Lwallet/core/jni/proto/NEAR$AddKey$Builder;

    move-result-object v0

    .line 4955
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/NEAR$AddKey$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/NEAR$Action;->payload_:Ljava/lang/Object;

    goto :goto_0

    .line 4957
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/NEAR$Action;->payload_:Ljava/lang/Object;

    .line 4959
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/NEAR$Action;->payloadCase_:I

    return-void
.end method

.method private mergeCreateAccount(Lwallet/core/jni/proto/NEAR$CreateAccount;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4701
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4702
    iget v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payloadCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payload_:Ljava/lang/Object;

    .line 4703
    invoke-static {}, Lwallet/core/jni/proto/NEAR$CreateAccount;->getDefaultInstance()Lwallet/core/jni/proto/NEAR$CreateAccount;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4704
    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payload_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/NEAR$CreateAccount;

    invoke-static {v0}, Lwallet/core/jni/proto/NEAR$CreateAccount;->newBuilder(Lwallet/core/jni/proto/NEAR$CreateAccount;)Lwallet/core/jni/proto/NEAR$CreateAccount$Builder;

    move-result-object v0

    .line 4705
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/NEAR$CreateAccount$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/NEAR$Action;->payload_:Ljava/lang/Object;

    goto :goto_0

    .line 4707
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/NEAR$Action;->payload_:Ljava/lang/Object;

    .line 4709
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/NEAR$Action;->payloadCase_:I

    return-void
.end method

.method private mergeDeleteAccount(Lwallet/core/jni/proto/NEAR$DeleteAccount;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5051
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5052
    iget v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payloadCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payload_:Ljava/lang/Object;

    .line 5053
    invoke-static {}, Lwallet/core/jni/proto/NEAR$DeleteAccount;->getDefaultInstance()Lwallet/core/jni/proto/NEAR$DeleteAccount;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 5054
    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payload_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/NEAR$DeleteAccount;

    invoke-static {v0}, Lwallet/core/jni/proto/NEAR$DeleteAccount;->newBuilder(Lwallet/core/jni/proto/NEAR$DeleteAccount;)Lwallet/core/jni/proto/NEAR$DeleteAccount$Builder;

    move-result-object v0

    .line 5055
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/NEAR$DeleteAccount$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/NEAR$Action;->payload_:Ljava/lang/Object;

    goto :goto_0

    .line 5057
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/NEAR$Action;->payload_:Ljava/lang/Object;

    .line 5059
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/NEAR$Action;->payloadCase_:I

    return-void
.end method

.method private mergeDeleteKey(Lwallet/core/jni/proto/NEAR$DeleteKey;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5001
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5002
    iget v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payloadCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payload_:Ljava/lang/Object;

    .line 5003
    invoke-static {}, Lwallet/core/jni/proto/NEAR$DeleteKey;->getDefaultInstance()Lwallet/core/jni/proto/NEAR$DeleteKey;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 5004
    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payload_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/NEAR$DeleteKey;

    invoke-static {v0}, Lwallet/core/jni/proto/NEAR$DeleteKey;->newBuilder(Lwallet/core/jni/proto/NEAR$DeleteKey;)Lwallet/core/jni/proto/NEAR$DeleteKey$Builder;

    move-result-object v0

    .line 5005
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/NEAR$DeleteKey$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/NEAR$Action;->payload_:Ljava/lang/Object;

    goto :goto_0

    .line 5007
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/NEAR$Action;->payload_:Ljava/lang/Object;

    .line 5009
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/NEAR$Action;->payloadCase_:I

    return-void
.end method

.method private mergeDeployContract(Lwallet/core/jni/proto/NEAR$DeployContract;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4751
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4752
    iget v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payloadCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payload_:Ljava/lang/Object;

    .line 4753
    invoke-static {}, Lwallet/core/jni/proto/NEAR$DeployContract;->getDefaultInstance()Lwallet/core/jni/proto/NEAR$DeployContract;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4754
    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payload_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/NEAR$DeployContract;

    invoke-static {v0}, Lwallet/core/jni/proto/NEAR$DeployContract;->newBuilder(Lwallet/core/jni/proto/NEAR$DeployContract;)Lwallet/core/jni/proto/NEAR$DeployContract$Builder;

    move-result-object v0

    .line 4755
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/NEAR$DeployContract$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/NEAR$Action;->payload_:Ljava/lang/Object;

    goto :goto_0

    .line 4757
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/NEAR$Action;->payload_:Ljava/lang/Object;

    .line 4759
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/NEAR$Action;->payloadCase_:I

    return-void
.end method

.method private mergeFunctionCall(Lwallet/core/jni/proto/NEAR$FunctionCall;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4801
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4802
    iget v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payloadCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payload_:Ljava/lang/Object;

    .line 4803
    invoke-static {}, Lwallet/core/jni/proto/NEAR$FunctionCall;->getDefaultInstance()Lwallet/core/jni/proto/NEAR$FunctionCall;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4804
    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payload_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/NEAR$FunctionCall;

    invoke-static {v0}, Lwallet/core/jni/proto/NEAR$FunctionCall;->newBuilder(Lwallet/core/jni/proto/NEAR$FunctionCall;)Lwallet/core/jni/proto/NEAR$FunctionCall$Builder;

    move-result-object v0

    .line 4805
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/NEAR$FunctionCall$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/NEAR$Action;->payload_:Ljava/lang/Object;

    goto :goto_0

    .line 4807
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/NEAR$Action;->payload_:Ljava/lang/Object;

    .line 4809
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/NEAR$Action;->payloadCase_:I

    return-void
.end method

.method private mergeStake(Lwallet/core/jni/proto/NEAR$Stake;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4901
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4902
    iget v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payloadCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payload_:Ljava/lang/Object;

    .line 4903
    invoke-static {}, Lwallet/core/jni/proto/NEAR$Stake;->getDefaultInstance()Lwallet/core/jni/proto/NEAR$Stake;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4904
    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payload_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/NEAR$Stake;

    invoke-static {v0}, Lwallet/core/jni/proto/NEAR$Stake;->newBuilder(Lwallet/core/jni/proto/NEAR$Stake;)Lwallet/core/jni/proto/NEAR$Stake$Builder;

    move-result-object v0

    .line 4905
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/NEAR$Stake$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/NEAR$Action;->payload_:Ljava/lang/Object;

    goto :goto_0

    .line 4907
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/NEAR$Action;->payload_:Ljava/lang/Object;

    .line 4909
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/NEAR$Action;->payloadCase_:I

    return-void
.end method

.method private mergeTransfer(Lwallet/core/jni/proto/NEAR$Transfer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4851
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4852
    iget v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payloadCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payload_:Ljava/lang/Object;

    .line 4853
    invoke-static {}, Lwallet/core/jni/proto/NEAR$Transfer;->getDefaultInstance()Lwallet/core/jni/proto/NEAR$Transfer;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4854
    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payload_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/NEAR$Transfer;

    invoke-static {v0}, Lwallet/core/jni/proto/NEAR$Transfer;->newBuilder(Lwallet/core/jni/proto/NEAR$Transfer;)Lwallet/core/jni/proto/NEAR$Transfer$Builder;

    move-result-object v0

    .line 4855
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/NEAR$Transfer$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/NEAR$Action;->payload_:Ljava/lang/Object;

    goto :goto_0

    .line 4857
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/NEAR$Action;->payload_:Ljava/lang/Object;

    .line 4859
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/NEAR$Action;->payloadCase_:I

    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/NEAR$Action$Builder;
    .locals 1

    .line 5146
    sget-object v0, Lwallet/core/jni/proto/NEAR$Action;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$Action;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/NEAR$Action$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/NEAR$Action;)Lwallet/core/jni/proto/NEAR$Action$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 5149
    sget-object v0, Lwallet/core/jni/proto/NEAR$Action;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$Action;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$Action$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/NEAR$Action;
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

    .line 5123
    sget-object v0, Lwallet/core/jni/proto/NEAR$Action;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$Action;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$Action;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEAR$Action;
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

    .line 5129
    sget-object v0, Lwallet/core/jni/proto/NEAR$Action;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$Action;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$Action;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/NEAR$Action;
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

    .line 5087
    sget-object v0, Lwallet/core/jni/proto/NEAR$Action;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$Action;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$Action;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEAR$Action;
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

    .line 5094
    sget-object v0, Lwallet/core/jni/proto/NEAR$Action;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$Action;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$Action;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/NEAR$Action;
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

    .line 5134
    sget-object v0, Lwallet/core/jni/proto/NEAR$Action;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$Action;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$Action;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEAR$Action;
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

    .line 5141
    sget-object v0, Lwallet/core/jni/proto/NEAR$Action;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$Action;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$Action;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/NEAR$Action;
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

    .line 5111
    sget-object v0, Lwallet/core/jni/proto/NEAR$Action;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$Action;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$Action;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEAR$Action;
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

    .line 5118
    sget-object v0, Lwallet/core/jni/proto/NEAR$Action;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$Action;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$Action;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/NEAR$Action;
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

    .line 5074
    sget-object v0, Lwallet/core/jni/proto/NEAR$Action;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$Action;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$Action;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEAR$Action;
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

    .line 5081
    sget-object v0, Lwallet/core/jni/proto/NEAR$Action;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$Action;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$Action;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/NEAR$Action;
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

    .line 5099
    sget-object v0, Lwallet/core/jni/proto/NEAR$Action;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$Action;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$Action;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NEAR$Action;
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

    .line 5106
    sget-object v0, Lwallet/core/jni/proto/NEAR$Action;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$Action;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NEAR$Action;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/NEAR$Action;",
            ">;"
        }
    .end annotation

    .line 5646
    sget-object v0, Lwallet/core/jni/proto/NEAR$Action;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$Action;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAddKey(Lwallet/core/jni/proto/NEAR$AddKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4943
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4944
    iput-object p1, p0, Lwallet/core/jni/proto/NEAR$Action;->payload_:Ljava/lang/Object;

    const/4 p1, 0x6

    .line 4945
    iput p1, p0, Lwallet/core/jni/proto/NEAR$Action;->payloadCase_:I

    return-void
.end method

.method private setCreateAccount(Lwallet/core/jni/proto/NEAR$CreateAccount;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4693
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4694
    iput-object p1, p0, Lwallet/core/jni/proto/NEAR$Action;->payload_:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 4695
    iput p1, p0, Lwallet/core/jni/proto/NEAR$Action;->payloadCase_:I

    return-void
.end method

.method private setDeleteAccount(Lwallet/core/jni/proto/NEAR$DeleteAccount;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5043
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5044
    iput-object p1, p0, Lwallet/core/jni/proto/NEAR$Action;->payload_:Ljava/lang/Object;

    const/16 p1, 0x8

    .line 5045
    iput p1, p0, Lwallet/core/jni/proto/NEAR$Action;->payloadCase_:I

    return-void
.end method

.method private setDeleteKey(Lwallet/core/jni/proto/NEAR$DeleteKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4993
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4994
    iput-object p1, p0, Lwallet/core/jni/proto/NEAR$Action;->payload_:Ljava/lang/Object;

    const/4 p1, 0x7

    .line 4995
    iput p1, p0, Lwallet/core/jni/proto/NEAR$Action;->payloadCase_:I

    return-void
.end method

.method private setDeployContract(Lwallet/core/jni/proto/NEAR$DeployContract;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4743
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4744
    iput-object p1, p0, Lwallet/core/jni/proto/NEAR$Action;->payload_:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 4745
    iput p1, p0, Lwallet/core/jni/proto/NEAR$Action;->payloadCase_:I

    return-void
.end method

.method private setFunctionCall(Lwallet/core/jni/proto/NEAR$FunctionCall;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4793
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4794
    iput-object p1, p0, Lwallet/core/jni/proto/NEAR$Action;->payload_:Ljava/lang/Object;

    const/4 p1, 0x3

    .line 4795
    iput p1, p0, Lwallet/core/jni/proto/NEAR$Action;->payloadCase_:I

    return-void
.end method

.method private setStake(Lwallet/core/jni/proto/NEAR$Stake;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4893
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4894
    iput-object p1, p0, Lwallet/core/jni/proto/NEAR$Action;->payload_:Ljava/lang/Object;

    const/4 p1, 0x5

    .line 4895
    iput p1, p0, Lwallet/core/jni/proto/NEAR$Action;->payloadCase_:I

    return-void
.end method

.method private setTransfer(Lwallet/core/jni/proto/NEAR$Transfer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4843
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4844
    iput-object p1, p0, Lwallet/core/jni/proto/NEAR$Action;->payload_:Ljava/lang/Object;

    const/4 p1, 0x4

    .line 4845
    iput p1, p0, Lwallet/core/jni/proto/NEAR$Action;->payloadCase_:I

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

    .line 5573
    sget-object p2, Lwallet/core/jni/proto/NEAR$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 5624
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 5618
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 5603
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/NEAR$Action;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5605
    const-class p2, Lwallet/core/jni/proto/NEAR$Action;

    monitor-enter p2

    .line 5606
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/NEAR$Action;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 5608
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/NEAR$Action;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$Action;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 5611
    sput-object p1, Lwallet/core/jni/proto/NEAR$Action;->PARSER:Lcom/google/protobuf/Parser;

    .line 5613
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

    .line 5600
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/NEAR$Action;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$Action;

    return-object p1

    :pswitch_4
    const/16 p1, 0xa

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "payload_"

    aput-object v0, p1, p3

    const-string p3, "payloadCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 5581
    const-class p3, Lwallet/core/jni/proto/NEAR$CreateAccount;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-class p3, Lwallet/core/jni/proto/NEAR$DeployContract;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-class p3, Lwallet/core/jni/proto/NEAR$FunctionCall;

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-class p3, Lwallet/core/jni/proto/NEAR$Transfer;

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-class p3, Lwallet/core/jni/proto/NEAR$Stake;

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-class p3, Lwallet/core/jni/proto/NEAR$AddKey;

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-class p3, Lwallet/core/jni/proto/NEAR$DeleteKey;

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-class p3, Lwallet/core/jni/proto/NEAR$DeleteAccount;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0008\u0001\u0000\u0001\u0008\u0008\u0000\u0000\u0000\u0001<\u0000\u0002<\u0000\u0003<\u0000\u0004<\u0000\u0005<\u0000\u0006<\u0000\u0007<\u0000\u0008<\u0000"

    .line 5596
    sget-object p3, Lwallet/core/jni/proto/NEAR$Action;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NEAR$Action;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5578
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/NEAR$Action$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/NEAR$Action$Builder;-><init>(Lwallet/core/jni/proto/NEAR$1;)V

    return-object p1

    .line 5575
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/NEAR$Action;

    invoke-direct {p1}, Lwallet/core/jni/proto/NEAR$Action;-><init>()V

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

.method public getAddKey()Lwallet/core/jni/proto/NEAR$AddKey;
    .locals 2

    .line 4934
    iget v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payloadCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 4935
    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payload_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/NEAR$AddKey;

    return-object v0

    .line 4937
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/NEAR$AddKey;->getDefaultInstance()Lwallet/core/jni/proto/NEAR$AddKey;

    move-result-object v0

    return-object v0
.end method

.method public getCreateAccount()Lwallet/core/jni/proto/NEAR$CreateAccount;
    .locals 2

    .line 4684
    iget v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payloadCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4685
    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payload_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/NEAR$CreateAccount;

    return-object v0

    .line 4687
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/NEAR$CreateAccount;->getDefaultInstance()Lwallet/core/jni/proto/NEAR$CreateAccount;

    move-result-object v0

    return-object v0
.end method

.method public getDeleteAccount()Lwallet/core/jni/proto/NEAR$DeleteAccount;
    .locals 2

    .line 5034
    iget v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payloadCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 5035
    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payload_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/NEAR$DeleteAccount;

    return-object v0

    .line 5037
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/NEAR$DeleteAccount;->getDefaultInstance()Lwallet/core/jni/proto/NEAR$DeleteAccount;

    move-result-object v0

    return-object v0
.end method

.method public getDeleteKey()Lwallet/core/jni/proto/NEAR$DeleteKey;
    .locals 2

    .line 4984
    iget v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payloadCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 4985
    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payload_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/NEAR$DeleteKey;

    return-object v0

    .line 4987
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/NEAR$DeleteKey;->getDefaultInstance()Lwallet/core/jni/proto/NEAR$DeleteKey;

    move-result-object v0

    return-object v0
.end method

.method public getDeployContract()Lwallet/core/jni/proto/NEAR$DeployContract;
    .locals 2

    .line 4734
    iget v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payloadCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 4735
    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payload_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/NEAR$DeployContract;

    return-object v0

    .line 4737
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/NEAR$DeployContract;->getDefaultInstance()Lwallet/core/jni/proto/NEAR$DeployContract;

    move-result-object v0

    return-object v0
.end method

.method public getFunctionCall()Lwallet/core/jni/proto/NEAR$FunctionCall;
    .locals 2

    .line 4784
    iget v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payloadCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 4785
    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payload_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/NEAR$FunctionCall;

    return-object v0

    .line 4787
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/NEAR$FunctionCall;->getDefaultInstance()Lwallet/core/jni/proto/NEAR$FunctionCall;

    move-result-object v0

    return-object v0
.end method

.method public getPayloadCase()Lwallet/core/jni/proto/NEAR$Action$PayloadCase;
    .locals 1

    .line 4662
    iget v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payloadCase_:I

    invoke-static {v0}, Lwallet/core/jni/proto/NEAR$Action$PayloadCase;->forNumber(I)Lwallet/core/jni/proto/NEAR$Action$PayloadCase;

    move-result-object v0

    return-object v0
.end method

.method public getStake()Lwallet/core/jni/proto/NEAR$Stake;
    .locals 2

    .line 4884
    iget v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payloadCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 4885
    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payload_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/NEAR$Stake;

    return-object v0

    .line 4887
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/NEAR$Stake;->getDefaultInstance()Lwallet/core/jni/proto/NEAR$Stake;

    move-result-object v0

    return-object v0
.end method

.method public getTransfer()Lwallet/core/jni/proto/NEAR$Transfer;
    .locals 2

    .line 4834
    iget v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payloadCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 4835
    iget-object v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payload_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/NEAR$Transfer;

    return-object v0

    .line 4837
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/NEAR$Transfer;->getDefaultInstance()Lwallet/core/jni/proto/NEAR$Transfer;

    move-result-object v0

    return-object v0
.end method

.method public hasAddKey()Z
    .locals 2

    .line 4927
    iget v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payloadCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasCreateAccount()Z
    .locals 2

    .line 4677
    iget v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payloadCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasDeleteAccount()Z
    .locals 2

    .line 5027
    iget v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payloadCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDeleteKey()Z
    .locals 2

    .line 4977
    iget v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payloadCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDeployContract()Z
    .locals 2

    .line 4727
    iget v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payloadCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFunctionCall()Z
    .locals 2

    .line 4777
    iget v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payloadCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStake()Z
    .locals 2

    .line 4877
    iget v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payloadCase_:I

    const/4 v1, 0x5

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

    .line 4827
    iget v0, p0, Lwallet/core/jni/proto/NEAR$Action;->payloadCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
