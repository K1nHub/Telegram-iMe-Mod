.class public final Lwallet/core/jni/proto/Polkadot$SigningInput;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Polkadot.java"

# interfaces
.implements Lwallet/core/jni/proto/Polkadot$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Polkadot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SigningInput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Polkadot$SigningInput$Builder;,
        Lwallet/core/jni/proto/Polkadot$SigningInput$MessageOneofCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Polkadot$SigningInput;",
        "Lwallet/core/jni/proto/Polkadot$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Polkadot$SigningInputOrBuilder;"
    }
.end annotation


# static fields
.field public static final BALANCE_CALL_FIELD_NUMBER:I = 0xa

.field public static final BLOCK_HASH_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$SigningInput;

.field public static final ERA_FIELD_NUMBER:I = 0x7

.field public static final GENESIS_HASH_FIELD_NUMBER:I = 0x2

.field public static final NETWORK_FIELD_NUMBER:I = 0x9

.field public static final NONCE_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Polkadot$SigningInput;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIVATE_KEY_FIELD_NUMBER:I = 0x8

.field public static final SPEC_VERSION_FIELD_NUMBER:I = 0x4

.field public static final STAKING_CALL_FIELD_NUMBER:I = 0xb

.field public static final TIP_FIELD_NUMBER:I = 0x6

.field public static final TRANSACTION_VERSION_FIELD_NUMBER:I = 0x5


# instance fields
.field private blockHash_:Lcom/google/protobuf/ByteString;

.field private era_:Lwallet/core/jni/proto/Polkadot$Era;

.field private genesisHash_:Lcom/google/protobuf/ByteString;

.field private messageOneofCase_:I

.field private messageOneof_:Ljava/lang/Object;

.field private network_:I

.field private nonce_:J

.field private privateKey_:Lcom/google/protobuf/ByteString;

.field private specVersion_:I

.field private tip_:Lcom/google/protobuf/ByteString;

.field private transactionVersion_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 6998
    new-instance v0, Lwallet/core/jni/proto/Polkadot$SigningInput;

    invoke-direct {v0}, Lwallet/core/jni/proto/Polkadot$SigningInput;-><init>()V

    .line 7001
    sput-object v0, Lwallet/core/jni/proto/Polkadot$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$SigningInput;

    .line 7002
    const-class v1, Lwallet/core/jni/proto/Polkadot$SigningInput;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5808
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 5814
    iput v0, p0, Lwallet/core/jni/proto/Polkadot$SigningInput;->messageOneofCase_:I

    .line 5809
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Polkadot$SigningInput;->blockHash_:Lcom/google/protobuf/ByteString;

    .line 5810
    iput-object v0, p0, Lwallet/core/jni/proto/Polkadot$SigningInput;->genesisHash_:Lcom/google/protobuf/ByteString;

    .line 5811
    iput-object v0, p0, Lwallet/core/jni/proto/Polkadot$SigningInput;->tip_:Lcom/google/protobuf/ByteString;

    .line 5812
    iput-object v0, p0, Lwallet/core/jni/proto/Polkadot$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$10000(Lwallet/core/jni/proto/Polkadot$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 5803
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Polkadot$SigningInput;->setGenesisHash(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$10100(Lwallet/core/jni/proto/Polkadot$SigningInput;)V
    .locals 0

    .line 5803
    invoke-direct {p0}, Lwallet/core/jni/proto/Polkadot$SigningInput;->clearGenesisHash()V

    return-void
.end method

.method static synthetic access$10200(Lwallet/core/jni/proto/Polkadot$SigningInput;J)V
    .locals 0

    .line 5803
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Polkadot$SigningInput;->setNonce(J)V

    return-void
.end method

.method static synthetic access$10300(Lwallet/core/jni/proto/Polkadot$SigningInput;)V
    .locals 0

    .line 5803
    invoke-direct {p0}, Lwallet/core/jni/proto/Polkadot$SigningInput;->clearNonce()V

    return-void
.end method

.method static synthetic access$10400(Lwallet/core/jni/proto/Polkadot$SigningInput;I)V
    .locals 0

    .line 5803
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Polkadot$SigningInput;->setSpecVersion(I)V

    return-void
.end method

.method static synthetic access$10500(Lwallet/core/jni/proto/Polkadot$SigningInput;)V
    .locals 0

    .line 5803
    invoke-direct {p0}, Lwallet/core/jni/proto/Polkadot$SigningInput;->clearSpecVersion()V

    return-void
.end method

.method static synthetic access$10600(Lwallet/core/jni/proto/Polkadot$SigningInput;I)V
    .locals 0

    .line 5803
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Polkadot$SigningInput;->setTransactionVersion(I)V

    return-void
.end method

.method static synthetic access$10700(Lwallet/core/jni/proto/Polkadot$SigningInput;)V
    .locals 0

    .line 5803
    invoke-direct {p0}, Lwallet/core/jni/proto/Polkadot$SigningInput;->clearTransactionVersion()V

    return-void
.end method

.method static synthetic access$10800(Lwallet/core/jni/proto/Polkadot$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 5803
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Polkadot$SigningInput;->setTip(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$10900(Lwallet/core/jni/proto/Polkadot$SigningInput;)V
    .locals 0

    .line 5803
    invoke-direct {p0}, Lwallet/core/jni/proto/Polkadot$SigningInput;->clearTip()V

    return-void
.end method

.method static synthetic access$11000(Lwallet/core/jni/proto/Polkadot$SigningInput;Lwallet/core/jni/proto/Polkadot$Era;)V
    .locals 0

    .line 5803
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Polkadot$SigningInput;->setEra(Lwallet/core/jni/proto/Polkadot$Era;)V

    return-void
.end method

.method static synthetic access$11100(Lwallet/core/jni/proto/Polkadot$SigningInput;Lwallet/core/jni/proto/Polkadot$Era;)V
    .locals 0

    .line 5803
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Polkadot$SigningInput;->mergeEra(Lwallet/core/jni/proto/Polkadot$Era;)V

    return-void
.end method

.method static synthetic access$11200(Lwallet/core/jni/proto/Polkadot$SigningInput;)V
    .locals 0

    .line 5803
    invoke-direct {p0}, Lwallet/core/jni/proto/Polkadot$SigningInput;->clearEra()V

    return-void
.end method

.method static synthetic access$11300(Lwallet/core/jni/proto/Polkadot$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 5803
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Polkadot$SigningInput;->setPrivateKey(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$11400(Lwallet/core/jni/proto/Polkadot$SigningInput;)V
    .locals 0

    .line 5803
    invoke-direct {p0}, Lwallet/core/jni/proto/Polkadot$SigningInput;->clearPrivateKey()V

    return-void
.end method

.method static synthetic access$11500(Lwallet/core/jni/proto/Polkadot$SigningInput;I)V
    .locals 0

    .line 5803
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Polkadot$SigningInput;->setNetwork(I)V

    return-void
.end method

.method static synthetic access$11600(Lwallet/core/jni/proto/Polkadot$SigningInput;)V
    .locals 0

    .line 5803
    invoke-direct {p0}, Lwallet/core/jni/proto/Polkadot$SigningInput;->clearNetwork()V

    return-void
.end method

.method static synthetic access$11700(Lwallet/core/jni/proto/Polkadot$SigningInput;Lwallet/core/jni/proto/Polkadot$Balance;)V
    .locals 0

    .line 5803
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Polkadot$SigningInput;->setBalanceCall(Lwallet/core/jni/proto/Polkadot$Balance;)V

    return-void
.end method

.method static synthetic access$11800(Lwallet/core/jni/proto/Polkadot$SigningInput;Lwallet/core/jni/proto/Polkadot$Balance;)V
    .locals 0

    .line 5803
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Polkadot$SigningInput;->mergeBalanceCall(Lwallet/core/jni/proto/Polkadot$Balance;)V

    return-void
.end method

.method static synthetic access$11900(Lwallet/core/jni/proto/Polkadot$SigningInput;)V
    .locals 0

    .line 5803
    invoke-direct {p0}, Lwallet/core/jni/proto/Polkadot$SigningInput;->clearBalanceCall()V

    return-void
.end method

.method static synthetic access$12000(Lwallet/core/jni/proto/Polkadot$SigningInput;Lwallet/core/jni/proto/Polkadot$Staking;)V
    .locals 0

    .line 5803
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Polkadot$SigningInput;->setStakingCall(Lwallet/core/jni/proto/Polkadot$Staking;)V

    return-void
.end method

.method static synthetic access$12100(Lwallet/core/jni/proto/Polkadot$SigningInput;Lwallet/core/jni/proto/Polkadot$Staking;)V
    .locals 0

    .line 5803
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Polkadot$SigningInput;->mergeStakingCall(Lwallet/core/jni/proto/Polkadot$Staking;)V

    return-void
.end method

.method static synthetic access$12200(Lwallet/core/jni/proto/Polkadot$SigningInput;)V
    .locals 0

    .line 5803
    invoke-direct {p0}, Lwallet/core/jni/proto/Polkadot$SigningInput;->clearStakingCall()V

    return-void
.end method

.method static synthetic access$9600()Lwallet/core/jni/proto/Polkadot$SigningInput;
    .locals 1

    .line 5803
    sget-object v0, Lwallet/core/jni/proto/Polkadot$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$SigningInput;

    return-object v0
.end method

.method static synthetic access$9700(Lwallet/core/jni/proto/Polkadot$SigningInput;)V
    .locals 0

    .line 5803
    invoke-direct {p0}, Lwallet/core/jni/proto/Polkadot$SigningInput;->clearMessageOneof()V

    return-void
.end method

.method static synthetic access$9800(Lwallet/core/jni/proto/Polkadot$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 5803
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Polkadot$SigningInput;->setBlockHash(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$9900(Lwallet/core/jni/proto/Polkadot$SigningInput;)V
    .locals 0

    .line 5803
    invoke-direct {p0}, Lwallet/core/jni/proto/Polkadot$SigningInput;->clearBlockHash()V

    return-void
.end method

.method private clearBalanceCall()V
    .locals 2

    .line 6275
    iget v0, p0, Lwallet/core/jni/proto/Polkadot$SigningInput;->messageOneofCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 6276
    iput v0, p0, Lwallet/core/jni/proto/Polkadot$SigningInput;->messageOneofCase_:I

    const/4 v0, 0x0

    .line 6277
    iput-object v0, p0, Lwallet/core/jni/proto/Polkadot$SigningInput;->messageOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearBlockHash()V
    .locals 1

    .line 5893
    invoke-static {}, Lwallet/core/jni/proto/Polkadot$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Polkadot$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Polkadot$SigningInput;->getBlockHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Polkadot$SigningInput;->blockHash_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearEra()V
    .locals 1

    const/4 v0, 0x0

    .line 6150
    iput-object v0, p0, Lwallet/core/jni/proto/Polkadot$SigningInput;->era_:Lwallet/core/jni/proto/Polkadot$Era;

    return-void
.end method

.method private clearGenesisHash()V
    .locals 1

    .line 5932
    invoke-static {}, Lwallet/core/jni/proto/Polkadot$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Polkadot$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Polkadot$SigningInput;->getGenesisHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Polkadot$SigningInput;->genesisHash_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearMessageOneof()V
    .locals 1

    const/4 v0, 0x0

    .line 5853
    iput v0, p0, Lwallet/core/jni/proto/Polkadot$SigningInput;->messageOneofCase_:I

    const/4 v0, 0x0

    .line 5854
    iput-object v0, p0, Lwallet/core/jni/proto/Polkadot$SigningInput;->messageOneof_:Ljava/lang/Object;

    return-void
.end method

.method private clearNetwork()V
    .locals 1

    const/4 v0, 0x0

    .line 6228
    iput v0, p0, Lwallet/core/jni/proto/Polkadot$SigningInput;->network_:I

    return-void
.end method

.method private clearNonce()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 5970
    iput-wide v0, p0, Lwallet/core/jni/proto/Polkadot$SigningInput;->nonce_:J

    return-void
.end method

.method private clearPrivateKey()V
    .locals 1

    .line 6190
    invoke-static {}, Lwallet/core/jni/proto/Polkadot$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Polkadot$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Polkadot$SigningInput;->getPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Polkadot$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearSpecVersion()V
    .locals 1

    const/4 v0, 0x0

    .line 6008
    iput v0, p0, Lwallet/core/jni/proto/Polkadot$SigningInput;->specVersion_:I

    return-void
.end method

.method private clearStakingCall()V
    .locals 2

    .line 6325
    iget v0, p0, Lwallet/core/jni/proto/Polkadot$SigningInput;->messageOneofCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 6326
    iput v0, p0, Lwallet/core/jni/proto/Polkadot$SigningInput;->messageOneofCase_:I

    const/4 v0, 0x0

    .line 6327
    iput-object v0, p0, Lwallet/core/jni/proto/Polkadot$SigningInput;->messageOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearTip()V
    .locals 1

    .line 6085
    invoke-static {}, Lwallet/core/jni/proto/Polkadot$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Polkadot$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Polkadot$SigningInput;->getTip()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Polkadot$SigningInput;->tip_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearTransactionVersion()V
    .locals 1

    const/4 v0, 0x0

    .line 6046
    iput v0, p0, Lwallet/core/jni/proto/Polkadot$SigningInput;->transactionVersion_:I

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Polkadot$SigningInput;
    .locals 1

    .line 7007
    sget-object v0, Lwallet/core/jni/proto/Polkadot$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$SigningInput;

    return-object v0
.end method

.method private mergeBalanceCall(Lwallet/core/jni/proto/Polkadot$Balance;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6261
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6262
    iget v0, p0, Lwallet/core/jni/proto/Polkadot$SigningInput;->messageOneofCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Polkadot$SigningInput;->messageOneof_:Ljava/lang/Object;

    .line 6263
    invoke-static {}, Lwallet/core/jni/proto/Polkadot$Balance;->getDefaultInstance()Lwallet/core/jni/proto/Polkadot$Balance;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 6264
    iget-object v0, p0, Lwallet/core/jni/proto/Polkadot$SigningInput;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Balance;

    invoke-static {v0}, Lwallet/core/jni/proto/Polkadot$Balance;->newBuilder(Lwallet/core/jni/proto/Polkadot$Balance;)Lwallet/core/jni/proto/Polkadot$Balance$Builder;

    move-result-object v0

    .line 6265
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Polkadot$Balance$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Polkadot$SigningInput;->messageOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 6267
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Polkadot$SigningInput;->messageOneof_:Ljava/lang/Object;

    .line 6269
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Polkadot$SigningInput;->messageOneofCase_:I

    return-void
.end method

.method private mergeEra(Lwallet/core/jni/proto/Polkadot$Era;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6133
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6134
    iget-object v0, p0, Lwallet/core/jni/proto/Polkadot$SigningInput;->era_:Lwallet/core/jni/proto/Polkadot$Era;

    if-eqz v0, :cond_0

    .line 6135
    invoke-static {}, Lwallet/core/jni/proto/Polkadot$Era;->getDefaultInstance()Lwallet/core/jni/proto/Polkadot$Era;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 6136
    iget-object v0, p0, Lwallet/core/jni/proto/Polkadot$SigningInput;->era_:Lwallet/core/jni/proto/Polkadot$Era;

    .line 6137
    invoke-static {v0}, Lwallet/core/jni/proto/Polkadot$Era;->newBuilder(Lwallet/core/jni/proto/Polkadot$Era;)Lwallet/core/jni/proto/Polkadot$Era$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Polkadot$Era$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Polkadot$Era;

    iput-object p1, p0, Lwallet/core/jni/proto/Polkadot$SigningInput;->era_:Lwallet/core/jni/proto/Polkadot$Era;

    goto :goto_0

    .line 6139
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Polkadot$SigningInput;->era_:Lwallet/core/jni/proto/Polkadot$Era;

    :goto_0
    return-void
.end method

.method private mergeStakingCall(Lwallet/core/jni/proto/Polkadot$Staking;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6311
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6312
    iget v0, p0, Lwallet/core/jni/proto/Polkadot$SigningInput;->messageOneofCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Polkadot$SigningInput;->messageOneof_:Ljava/lang/Object;

    .line 6313
    invoke-static {}, Lwallet/core/jni/proto/Polkadot$Staking;->getDefaultInstance()Lwallet/core/jni/proto/Polkadot$Staking;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 6314
    iget-object v0, p0, Lwallet/core/jni/proto/Polkadot$SigningInput;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking;

    invoke-static {v0}, Lwallet/core/jni/proto/Polkadot$Staking;->newBuilder(Lwallet/core/jni/proto/Polkadot$Staking;)Lwallet/core/jni/proto/Polkadot$Staking$Builder;

    move-result-object v0

    .line 6315
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Polkadot$Staking$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Polkadot$SigningInput;->messageOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 6317
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Polkadot$SigningInput;->messageOneof_:Ljava/lang/Object;

    .line 6319
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Polkadot$SigningInput;->messageOneofCase_:I

    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Polkadot$SigningInput$Builder;
    .locals 1

    .line 6406
    sget-object v0, Lwallet/core/jni/proto/Polkadot$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$SigningInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Polkadot$SigningInput$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Polkadot$SigningInput;)Lwallet/core/jni/proto/Polkadot$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 6409
    sget-object v0, Lwallet/core/jni/proto/Polkadot$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$SigningInput;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$SigningInput$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Polkadot$SigningInput;
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

    .line 6383
    sget-object v0, Lwallet/core/jni/proto/Polkadot$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$SigningInput;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Polkadot$SigningInput;
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

    .line 6389
    sget-object v0, Lwallet/core/jni/proto/Polkadot$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Polkadot$SigningInput;
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

    .line 6347
    sget-object v0, Lwallet/core/jni/proto/Polkadot$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Polkadot$SigningInput;
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

    .line 6354
    sget-object v0, Lwallet/core/jni/proto/Polkadot$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Polkadot$SigningInput;
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

    .line 6394
    sget-object v0, Lwallet/core/jni/proto/Polkadot$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Polkadot$SigningInput;
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

    .line 6401
    sget-object v0, Lwallet/core/jni/proto/Polkadot$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Polkadot$SigningInput;
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

    .line 6371
    sget-object v0, Lwallet/core/jni/proto/Polkadot$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Polkadot$SigningInput;
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

    .line 6378
    sget-object v0, Lwallet/core/jni/proto/Polkadot$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Polkadot$SigningInput;
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

    .line 6334
    sget-object v0, Lwallet/core/jni/proto/Polkadot$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Polkadot$SigningInput;
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

    .line 6341
    sget-object v0, Lwallet/core/jni/proto/Polkadot$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$SigningInput;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Polkadot$SigningInput;
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

    .line 6359
    sget-object v0, Lwallet/core/jni/proto/Polkadot$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$SigningInput;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Polkadot$SigningInput;
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

    .line 6366
    sget-object v0, Lwallet/core/jni/proto/Polkadot$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$SigningInput;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Polkadot$SigningInput;",
            ">;"
        }
    .end annotation

    .line 7013
    sget-object v0, Lwallet/core/jni/proto/Polkadot$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$SigningInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setBalanceCall(Lwallet/core/jni/proto/Polkadot$Balance;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6253
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6254
    iput-object p1, p0, Lwallet/core/jni/proto/Polkadot$SigningInput;->messageOneof_:Ljava/lang/Object;

    const/16 p1, 0xa

    .line 6255
    iput p1, p0, Lwallet/core/jni/proto/Polkadot$SigningInput;->messageOneofCase_:I

    return-void
.end method

.method private setBlockHash(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5880
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5882
    iput-object p1, p0, Lwallet/core/jni/proto/Polkadot$SigningInput;->blockHash_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setEra(Lwallet/core/jni/proto/Polkadot$Era;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6120
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6121
    iput-object p1, p0, Lwallet/core/jni/proto/Polkadot$SigningInput;->era_:Lwallet/core/jni/proto/Polkadot$Era;

    return-void
.end method

.method private setGenesisHash(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5919
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5921
    iput-object p1, p0, Lwallet/core/jni/proto/Polkadot$SigningInput;->genesisHash_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setNetwork(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6217
    iput p1, p0, Lwallet/core/jni/proto/Polkadot$SigningInput;->network_:I

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

    .line 5959
    iput-wide p1, p0, Lwallet/core/jni/proto/Polkadot$SigningInput;->nonce_:J

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

    .line 6177
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6179
    iput-object p1, p0, Lwallet/core/jni/proto/Polkadot$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setSpecVersion(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5997
    iput p1, p0, Lwallet/core/jni/proto/Polkadot$SigningInput;->specVersion_:I

    return-void
.end method

.method private setStakingCall(Lwallet/core/jni/proto/Polkadot$Staking;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6303
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6304
    iput-object p1, p0, Lwallet/core/jni/proto/Polkadot$SigningInput;->messageOneof_:Ljava/lang/Object;

    const/16 p1, 0xb

    .line 6305
    iput p1, p0, Lwallet/core/jni/proto/Polkadot$SigningInput;->messageOneofCase_:I

    return-void
.end method

.method private setTip(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6072
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6074
    iput-object p1, p0, Lwallet/core/jni/proto/Polkadot$SigningInput;->tip_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setTransactionVersion(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6035
    iput p1, p0, Lwallet/core/jni/proto/Polkadot$SigningInput;->transactionVersion_:I

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

    .line 6936
    sget-object p2, Lwallet/core/jni/proto/Polkadot$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 6991
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 6985
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 6970
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Polkadot$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 6972
    const-class p2, Lwallet/core/jni/proto/Polkadot$SigningInput;

    monitor-enter p2

    .line 6973
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Polkadot$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 6975
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Polkadot$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$SigningInput;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 6978
    sput-object p1, Lwallet/core/jni/proto/Polkadot$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    .line 6980
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

    .line 6967
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Polkadot$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$SigningInput;

    return-object p1

    :pswitch_4
    const/16 p1, 0xd

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "messageOneof_"

    aput-object v0, p1, p3

    const-string p3, "messageOneofCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "blockHash_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "genesisHash_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "nonce_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "specVersion_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "transactionVersion_"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "tip_"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "era_"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "privateKey_"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "network_"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    .line 6944
    const-class p3, Lwallet/core/jni/proto/Polkadot$Balance;

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-class p3, Lwallet/core/jni/proto/Polkadot$Staking;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u000b\u0001\u0000\u0001\u000b\u000b\u0000\u0000\u0000\u0001\n\u0002\n\u0003\u0003\u0004\u000b\u0005\u000b\u0006\n\u0007\t\u0008\n\t\u000b\n<\u0000\u000b<\u0000"

    .line 6963
    sget-object p3, Lwallet/core/jni/proto/Polkadot$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$SigningInput;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6941
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Polkadot$SigningInput$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Polkadot$SigningInput$Builder;-><init>(Lwallet/core/jni/proto/Polkadot$1;)V

    return-object p1

    .line 6938
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Polkadot$SigningInput;

    invoke-direct {p1}, Lwallet/core/jni/proto/Polkadot$SigningInput;-><init>()V

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

.method public getBalanceCall()Lwallet/core/jni/proto/Polkadot$Balance;
    .locals 2

    .line 6244
    iget v0, p0, Lwallet/core/jni/proto/Polkadot$SigningInput;->messageOneofCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 6245
    iget-object v0, p0, Lwallet/core/jni/proto/Polkadot$SigningInput;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Balance;

    return-object v0

    .line 6247
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Polkadot$Balance;->getDefaultInstance()Lwallet/core/jni/proto/Polkadot$Balance;

    move-result-object v0

    return-object v0
.end method

.method public getBlockHash()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5869
    iget-object v0, p0, Lwallet/core/jni/proto/Polkadot$SigningInput;->blockHash_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getEra()Lwallet/core/jni/proto/Polkadot$Era;
    .locals 1

    .line 6110
    iget-object v0, p0, Lwallet/core/jni/proto/Polkadot$SigningInput;->era_:Lwallet/core/jni/proto/Polkadot$Era;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/Polkadot$Era;->getDefaultInstance()Lwallet/core/jni/proto/Polkadot$Era;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getGenesisHash()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5908
    iget-object v0, p0, Lwallet/core/jni/proto/Polkadot$SigningInput;->genesisHash_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getMessageOneofCase()Lwallet/core/jni/proto/Polkadot$SigningInput$MessageOneofCase;
    .locals 1

    .line 5848
    iget v0, p0, Lwallet/core/jni/proto/Polkadot$SigningInput;->messageOneofCase_:I

    invoke-static {v0}, Lwallet/core/jni/proto/Polkadot$SigningInput$MessageOneofCase;->forNumber(I)Lwallet/core/jni/proto/Polkadot$SigningInput$MessageOneofCase;

    move-result-object v0

    return-object v0
.end method

.method public getNetwork()I
    .locals 1

    .line 6205
    iget v0, p0, Lwallet/core/jni/proto/Polkadot$SigningInput;->network_:I

    return v0
.end method

.method public getNonce()J
    .locals 2

    .line 5947
    iget-wide v0, p0, Lwallet/core/jni/proto/Polkadot$SigningInput;->nonce_:J

    return-wide v0
.end method

.method public getPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6166
    iget-object v0, p0, Lwallet/core/jni/proto/Polkadot$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSpecVersion()I
    .locals 1

    .line 5985
    iget v0, p0, Lwallet/core/jni/proto/Polkadot$SigningInput;->specVersion_:I

    return v0
.end method

.method public getStakingCall()Lwallet/core/jni/proto/Polkadot$Staking;
    .locals 2

    .line 6294
    iget v0, p0, Lwallet/core/jni/proto/Polkadot$SigningInput;->messageOneofCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 6295
    iget-object v0, p0, Lwallet/core/jni/proto/Polkadot$SigningInput;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking;

    return-object v0

    .line 6297
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Polkadot$Staking;->getDefaultInstance()Lwallet/core/jni/proto/Polkadot$Staking;

    move-result-object v0

    return-object v0
.end method

.method public getTip()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6061
    iget-object v0, p0, Lwallet/core/jni/proto/Polkadot$SigningInput;->tip_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getTransactionVersion()I
    .locals 1

    .line 6023
    iget v0, p0, Lwallet/core/jni/proto/Polkadot$SigningInput;->transactionVersion_:I

    return v0
.end method

.method public hasBalanceCall()Z
    .locals 2

    .line 6237
    iget v0, p0, Lwallet/core/jni/proto/Polkadot$SigningInput;->messageOneofCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasEra()Z
    .locals 1

    .line 6099
    iget-object v0, p0, Lwallet/core/jni/proto/Polkadot$SigningInput;->era_:Lwallet/core/jni/proto/Polkadot$Era;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStakingCall()Z
    .locals 2

    .line 6287
    iget v0, p0, Lwallet/core/jni/proto/Polkadot$SigningInput;->messageOneofCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
