.class public final Lwallet/core/jni/proto/Cardano$SigningInput;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Cardano.java"

# interfaces
.implements Lwallet/core/jni/proto/Cardano$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cardano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SigningInput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Cardano$SigningInput$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Cardano$SigningInput;",
        "Lwallet/core/jni/proto/Cardano$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Cardano$SigningInputOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$SigningInput;

.field public static final DELEGATE_FIELD_NUMBER:I = 0x7

.field public static final DEREGISTER_STAKING_KEY_FIELD_NUMBER:I = 0x9

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Cardano$SigningInput;",
            ">;"
        }
    .end annotation
.end field

.field public static final PLAN_FIELD_NUMBER:I = 0x5

.field public static final PRIVATE_KEY_FIELD_NUMBER:I = 0x2

.field public static final REGISTER_STAKING_KEY_FIELD_NUMBER:I = 0x6

.field public static final TRANSFER_MESSAGE_FIELD_NUMBER:I = 0x3

.field public static final TTL_FIELD_NUMBER:I = 0x4

.field public static final UTXOS_FIELD_NUMBER:I = 0x1

.field public static final WITHDRAW_FIELD_NUMBER:I = 0x8


# instance fields
.field private delegate_:Lwallet/core/jni/proto/Cardano$Delegate;

.field private deregisterStakingKey_:Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;

.field private plan_:Lwallet/core/jni/proto/Cardano$TransactionPlan;

.field private privateKey_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private registerStakingKey_:Lwallet/core/jni/proto/Cardano$RegisterStakingKey;

.field private transferMessage_:Lwallet/core/jni/proto/Cardano$Transfer;

.field private ttl_:J

.field private utxos_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lwallet/core/jni/proto/Cardano$TxInput;",
            ">;"
        }
    .end annotation
.end field

.field private withdraw_:Lwallet/core/jni/proto/Cardano$Withdraw;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 9760
    new-instance v0, Lwallet/core/jni/proto/Cardano$SigningInput;

    invoke-direct {v0}, Lwallet/core/jni/proto/Cardano$SigningInput;-><init>()V

    .line 9763
    sput-object v0, Lwallet/core/jni/proto/Cardano$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$SigningInput;

    .line 9764
    const-class v1, Lwallet/core/jni/proto/Cardano$SigningInput;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 8193
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 8194
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->utxos_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 8195
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->privateKey_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$14100()Lwallet/core/jni/proto/Cardano$SigningInput;
    .locals 1

    .line 8188
    sget-object v0, Lwallet/core/jni/proto/Cardano$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$SigningInput;

    return-object v0
.end method

.method static synthetic access$14200(Lwallet/core/jni/proto/Cardano$SigningInput;ILwallet/core/jni/proto/Cardano$TxInput;)V
    .locals 0

    .line 8188
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Cardano$SigningInput;->setUtxos(ILwallet/core/jni/proto/Cardano$TxInput;)V

    return-void
.end method

.method static synthetic access$14300(Lwallet/core/jni/proto/Cardano$SigningInput;Lwallet/core/jni/proto/Cardano$TxInput;)V
    .locals 0

    .line 8188
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cardano$SigningInput;->addUtxos(Lwallet/core/jni/proto/Cardano$TxInput;)V

    return-void
.end method

.method static synthetic access$14400(Lwallet/core/jni/proto/Cardano$SigningInput;ILwallet/core/jni/proto/Cardano$TxInput;)V
    .locals 0

    .line 8188
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Cardano$SigningInput;->addUtxos(ILwallet/core/jni/proto/Cardano$TxInput;)V

    return-void
.end method

.method static synthetic access$14500(Lwallet/core/jni/proto/Cardano$SigningInput;Ljava/lang/Iterable;)V
    .locals 0

    .line 8188
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cardano$SigningInput;->addAllUtxos(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$14600(Lwallet/core/jni/proto/Cardano$SigningInput;)V
    .locals 0

    .line 8188
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$SigningInput;->clearUtxos()V

    return-void
.end method

.method static synthetic access$14700(Lwallet/core/jni/proto/Cardano$SigningInput;I)V
    .locals 0

    .line 8188
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cardano$SigningInput;->removeUtxos(I)V

    return-void
.end method

.method static synthetic access$14800(Lwallet/core/jni/proto/Cardano$SigningInput;ILcom/google/protobuf/ByteString;)V
    .locals 0

    .line 8188
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Cardano$SigningInput;->setPrivateKey(ILcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$14900(Lwallet/core/jni/proto/Cardano$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 8188
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cardano$SigningInput;->addPrivateKey(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$15000(Lwallet/core/jni/proto/Cardano$SigningInput;Ljava/lang/Iterable;)V
    .locals 0

    .line 8188
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cardano$SigningInput;->addAllPrivateKey(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$15100(Lwallet/core/jni/proto/Cardano$SigningInput;)V
    .locals 0

    .line 8188
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$SigningInput;->clearPrivateKey()V

    return-void
.end method

.method static synthetic access$15200(Lwallet/core/jni/proto/Cardano$SigningInput;Lwallet/core/jni/proto/Cardano$Transfer;)V
    .locals 0

    .line 8188
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cardano$SigningInput;->setTransferMessage(Lwallet/core/jni/proto/Cardano$Transfer;)V

    return-void
.end method

.method static synthetic access$15300(Lwallet/core/jni/proto/Cardano$SigningInput;Lwallet/core/jni/proto/Cardano$Transfer;)V
    .locals 0

    .line 8188
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cardano$SigningInput;->mergeTransferMessage(Lwallet/core/jni/proto/Cardano$Transfer;)V

    return-void
.end method

.method static synthetic access$15400(Lwallet/core/jni/proto/Cardano$SigningInput;)V
    .locals 0

    .line 8188
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$SigningInput;->clearTransferMessage()V

    return-void
.end method

.method static synthetic access$15500(Lwallet/core/jni/proto/Cardano$SigningInput;Lwallet/core/jni/proto/Cardano$RegisterStakingKey;)V
    .locals 0

    .line 8188
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cardano$SigningInput;->setRegisterStakingKey(Lwallet/core/jni/proto/Cardano$RegisterStakingKey;)V

    return-void
.end method

.method static synthetic access$15600(Lwallet/core/jni/proto/Cardano$SigningInput;Lwallet/core/jni/proto/Cardano$RegisterStakingKey;)V
    .locals 0

    .line 8188
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cardano$SigningInput;->mergeRegisterStakingKey(Lwallet/core/jni/proto/Cardano$RegisterStakingKey;)V

    return-void
.end method

.method static synthetic access$15700(Lwallet/core/jni/proto/Cardano$SigningInput;)V
    .locals 0

    .line 8188
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$SigningInput;->clearRegisterStakingKey()V

    return-void
.end method

.method static synthetic access$15800(Lwallet/core/jni/proto/Cardano$SigningInput;Lwallet/core/jni/proto/Cardano$Delegate;)V
    .locals 0

    .line 8188
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cardano$SigningInput;->setDelegate(Lwallet/core/jni/proto/Cardano$Delegate;)V

    return-void
.end method

.method static synthetic access$15900(Lwallet/core/jni/proto/Cardano$SigningInput;Lwallet/core/jni/proto/Cardano$Delegate;)V
    .locals 0

    .line 8188
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cardano$SigningInput;->mergeDelegate(Lwallet/core/jni/proto/Cardano$Delegate;)V

    return-void
.end method

.method static synthetic access$16000(Lwallet/core/jni/proto/Cardano$SigningInput;)V
    .locals 0

    .line 8188
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$SigningInput;->clearDelegate()V

    return-void
.end method

.method static synthetic access$16100(Lwallet/core/jni/proto/Cardano$SigningInput;Lwallet/core/jni/proto/Cardano$Withdraw;)V
    .locals 0

    .line 8188
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cardano$SigningInput;->setWithdraw(Lwallet/core/jni/proto/Cardano$Withdraw;)V

    return-void
.end method

.method static synthetic access$16200(Lwallet/core/jni/proto/Cardano$SigningInput;Lwallet/core/jni/proto/Cardano$Withdraw;)V
    .locals 0

    .line 8188
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cardano$SigningInput;->mergeWithdraw(Lwallet/core/jni/proto/Cardano$Withdraw;)V

    return-void
.end method

.method static synthetic access$16300(Lwallet/core/jni/proto/Cardano$SigningInput;)V
    .locals 0

    .line 8188
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$SigningInput;->clearWithdraw()V

    return-void
.end method

.method static synthetic access$16400(Lwallet/core/jni/proto/Cardano$SigningInput;Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;)V
    .locals 0

    .line 8188
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cardano$SigningInput;->setDeregisterStakingKey(Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;)V

    return-void
.end method

.method static synthetic access$16500(Lwallet/core/jni/proto/Cardano$SigningInput;Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;)V
    .locals 0

    .line 8188
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cardano$SigningInput;->mergeDeregisterStakingKey(Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;)V

    return-void
.end method

.method static synthetic access$16600(Lwallet/core/jni/proto/Cardano$SigningInput;)V
    .locals 0

    .line 8188
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$SigningInput;->clearDeregisterStakingKey()V

    return-void
.end method

.method static synthetic access$16700(Lwallet/core/jni/proto/Cardano$SigningInput;J)V
    .locals 0

    .line 8188
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Cardano$SigningInput;->setTtl(J)V

    return-void
.end method

.method static synthetic access$16800(Lwallet/core/jni/proto/Cardano$SigningInput;)V
    .locals 0

    .line 8188
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$SigningInput;->clearTtl()V

    return-void
.end method

.method static synthetic access$16900(Lwallet/core/jni/proto/Cardano$SigningInput;Lwallet/core/jni/proto/Cardano$TransactionPlan;)V
    .locals 0

    .line 8188
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cardano$SigningInput;->setPlan(Lwallet/core/jni/proto/Cardano$TransactionPlan;)V

    return-void
.end method

.method static synthetic access$17000(Lwallet/core/jni/proto/Cardano$SigningInput;Lwallet/core/jni/proto/Cardano$TransactionPlan;)V
    .locals 0

    .line 8188
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cardano$SigningInput;->mergePlan(Lwallet/core/jni/proto/Cardano$TransactionPlan;)V

    return-void
.end method

.method static synthetic access$17100(Lwallet/core/jni/proto/Cardano$SigningInput;)V
    .locals 0

    .line 8188
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$SigningInput;->clearPlan()V

    return-void
.end method

.method private addAllPrivateKey(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/ByteString;",
            ">;)V"
        }
    .end annotation

    .line 8426
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$SigningInput;->ensurePrivateKeyIsMutable()V

    .line 8427
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->privateKey_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllUtxos(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lwallet/core/jni/proto/Cardano$TxInput;",
            ">;)V"
        }
    .end annotation

    .line 8309
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$SigningInput;->ensureUtxosIsMutable()V

    .line 8310
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->utxos_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addPrivateKey(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8411
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8412
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$SigningInput;->ensurePrivateKeyIsMutable()V

    .line 8413
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->privateKey_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addUtxos(ILwallet/core/jni/proto/Cardano$TxInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 8296
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8297
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$SigningInput;->ensureUtxosIsMutable()V

    .line 8298
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->utxos_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addUtxos(Lwallet/core/jni/proto/Cardano$TxInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8283
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8284
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$SigningInput;->ensureUtxosIsMutable()V

    .line 8285
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->utxos_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearDelegate()V
    .locals 1

    const/4 v0, 0x0

    .line 8636
    iput-object v0, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->delegate_:Lwallet/core/jni/proto/Cardano$Delegate;

    return-void
.end method

.method private clearDeregisterStakingKey()V
    .locals 1

    const/4 v0, 0x0

    .line 8768
    iput-object v0, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->deregisterStakingKey_:Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;

    return-void
.end method

.method private clearPlan()V
    .locals 1

    const/4 v0, 0x0

    .line 8872
    iput-object v0, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->plan_:Lwallet/core/jni/proto/Cardano$TransactionPlan;

    return-void
.end method

.method private clearPrivateKey()V
    .locals 1

    .line 8439
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->privateKey_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearRegisterStakingKey()V
    .locals 1

    const/4 v0, 0x0

    .line 8570
    iput-object v0, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->registerStakingKey_:Lwallet/core/jni/proto/Cardano$RegisterStakingKey;

    return-void
.end method

.method private clearTransferMessage()V
    .locals 1

    const/4 v0, 0x0

    .line 8504
    iput-object v0, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->transferMessage_:Lwallet/core/jni/proto/Cardano$Transfer;

    return-void
.end method

.method private clearTtl()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 8807
    iput-wide v0, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->ttl_:J

    return-void
.end method

.method private clearUtxos()V
    .locals 1

    .line 8321
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->utxos_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearWithdraw()V
    .locals 1

    const/4 v0, 0x0

    .line 8702
    iput-object v0, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->withdraw_:Lwallet/core/jni/proto/Cardano$Withdraw;

    return-void
.end method

.method private ensurePrivateKeyIsMutable()V
    .locals 2

    .line 8379
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->privateKey_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 8380
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8382
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->privateKey_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureUtxosIsMutable()V
    .locals 2

    .line 8255
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->utxos_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 8256
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8258
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->utxos_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Cardano$SigningInput;
    .locals 1

    .line 9769
    sget-object v0, Lwallet/core/jni/proto/Cardano$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$SigningInput;

    return-object v0
.end method

.method private mergeDelegate(Lwallet/core/jni/proto/Cardano$Delegate;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8619
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8620
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->delegate_:Lwallet/core/jni/proto/Cardano$Delegate;

    if-eqz v0, :cond_0

    .line 8621
    invoke-static {}, Lwallet/core/jni/proto/Cardano$Delegate;->getDefaultInstance()Lwallet/core/jni/proto/Cardano$Delegate;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 8622
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->delegate_:Lwallet/core/jni/proto/Cardano$Delegate;

    .line 8623
    invoke-static {v0}, Lwallet/core/jni/proto/Cardano$Delegate;->newBuilder(Lwallet/core/jni/proto/Cardano$Delegate;)Lwallet/core/jni/proto/Cardano$Delegate$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cardano$Delegate$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cardano$Delegate;

    iput-object p1, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->delegate_:Lwallet/core/jni/proto/Cardano$Delegate;

    goto :goto_0

    .line 8625
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->delegate_:Lwallet/core/jni/proto/Cardano$Delegate;

    :goto_0
    return-void
.end method

.method private mergeDeregisterStakingKey(Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8751
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8752
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->deregisterStakingKey_:Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;

    if-eqz v0, :cond_0

    .line 8753
    invoke-static {}, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;->getDefaultInstance()Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 8754
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->deregisterStakingKey_:Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;

    .line 8755
    invoke-static {v0}, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;->newBuilder(Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;)Lwallet/core/jni/proto/Cardano$DeregisterStakingKey$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;

    iput-object p1, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->deregisterStakingKey_:Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;

    goto :goto_0

    .line 8757
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->deregisterStakingKey_:Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;

    :goto_0
    return-void
.end method

.method private mergePlan(Lwallet/core/jni/proto/Cardano$TransactionPlan;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8855
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8856
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->plan_:Lwallet/core/jni/proto/Cardano$TransactionPlan;

    if-eqz v0, :cond_0

    .line 8857
    invoke-static {}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->getDefaultInstance()Lwallet/core/jni/proto/Cardano$TransactionPlan;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 8858
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->plan_:Lwallet/core/jni/proto/Cardano$TransactionPlan;

    .line 8859
    invoke-static {v0}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->newBuilder(Lwallet/core/jni/proto/Cardano$TransactionPlan;)Lwallet/core/jni/proto/Cardano$TransactionPlan$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cardano$TransactionPlan$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    iput-object p1, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->plan_:Lwallet/core/jni/proto/Cardano$TransactionPlan;

    goto :goto_0

    .line 8861
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->plan_:Lwallet/core/jni/proto/Cardano$TransactionPlan;

    :goto_0
    return-void
.end method

.method private mergeRegisterStakingKey(Lwallet/core/jni/proto/Cardano$RegisterStakingKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8553
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8554
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->registerStakingKey_:Lwallet/core/jni/proto/Cardano$RegisterStakingKey;

    if-eqz v0, :cond_0

    .line 8555
    invoke-static {}, Lwallet/core/jni/proto/Cardano$RegisterStakingKey;->getDefaultInstance()Lwallet/core/jni/proto/Cardano$RegisterStakingKey;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 8556
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->registerStakingKey_:Lwallet/core/jni/proto/Cardano$RegisterStakingKey;

    .line 8557
    invoke-static {v0}, Lwallet/core/jni/proto/Cardano$RegisterStakingKey;->newBuilder(Lwallet/core/jni/proto/Cardano$RegisterStakingKey;)Lwallet/core/jni/proto/Cardano$RegisterStakingKey$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cardano$RegisterStakingKey$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cardano$RegisterStakingKey;

    iput-object p1, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->registerStakingKey_:Lwallet/core/jni/proto/Cardano$RegisterStakingKey;

    goto :goto_0

    .line 8559
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->registerStakingKey_:Lwallet/core/jni/proto/Cardano$RegisterStakingKey;

    :goto_0
    return-void
.end method

.method private mergeTransferMessage(Lwallet/core/jni/proto/Cardano$Transfer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8487
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8488
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->transferMessage_:Lwallet/core/jni/proto/Cardano$Transfer;

    if-eqz v0, :cond_0

    .line 8489
    invoke-static {}, Lwallet/core/jni/proto/Cardano$Transfer;->getDefaultInstance()Lwallet/core/jni/proto/Cardano$Transfer;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 8490
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->transferMessage_:Lwallet/core/jni/proto/Cardano$Transfer;

    .line 8491
    invoke-static {v0}, Lwallet/core/jni/proto/Cardano$Transfer;->newBuilder(Lwallet/core/jni/proto/Cardano$Transfer;)Lwallet/core/jni/proto/Cardano$Transfer$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cardano$Transfer$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cardano$Transfer;

    iput-object p1, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->transferMessage_:Lwallet/core/jni/proto/Cardano$Transfer;

    goto :goto_0

    .line 8493
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->transferMessage_:Lwallet/core/jni/proto/Cardano$Transfer;

    :goto_0
    return-void
.end method

.method private mergeWithdraw(Lwallet/core/jni/proto/Cardano$Withdraw;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8685
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8686
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->withdraw_:Lwallet/core/jni/proto/Cardano$Withdraw;

    if-eqz v0, :cond_0

    .line 8687
    invoke-static {}, Lwallet/core/jni/proto/Cardano$Withdraw;->getDefaultInstance()Lwallet/core/jni/proto/Cardano$Withdraw;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 8688
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->withdraw_:Lwallet/core/jni/proto/Cardano$Withdraw;

    .line 8689
    invoke-static {v0}, Lwallet/core/jni/proto/Cardano$Withdraw;->newBuilder(Lwallet/core/jni/proto/Cardano$Withdraw;)Lwallet/core/jni/proto/Cardano$Withdraw$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cardano$Withdraw$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cardano$Withdraw;

    iput-object p1, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->withdraw_:Lwallet/core/jni/proto/Cardano$Withdraw;

    goto :goto_0

    .line 8691
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->withdraw_:Lwallet/core/jni/proto/Cardano$Withdraw;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Cardano$SigningInput$Builder;
    .locals 1

    .line 8951
    sget-object v0, Lwallet/core/jni/proto/Cardano$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$SigningInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Cardano$SigningInput$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Cardano$SigningInput;)Lwallet/core/jni/proto/Cardano$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 8954
    sget-object v0, Lwallet/core/jni/proto/Cardano$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$SigningInput;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$SigningInput$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Cardano$SigningInput;
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

    .line 8928
    sget-object v0, Lwallet/core/jni/proto/Cardano$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$SigningInput;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cardano$SigningInput;
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

    .line 8934
    sget-object v0, Lwallet/core/jni/proto/Cardano$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cardano$SigningInput;
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

    .line 8892
    sget-object v0, Lwallet/core/jni/proto/Cardano$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cardano$SigningInput;
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

    .line 8899
    sget-object v0, Lwallet/core/jni/proto/Cardano$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Cardano$SigningInput;
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

    .line 8939
    sget-object v0, Lwallet/core/jni/proto/Cardano$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cardano$SigningInput;
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

    .line 8946
    sget-object v0, Lwallet/core/jni/proto/Cardano$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Cardano$SigningInput;
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

    .line 8916
    sget-object v0, Lwallet/core/jni/proto/Cardano$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cardano$SigningInput;
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

    .line 8923
    sget-object v0, Lwallet/core/jni/proto/Cardano$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Cardano$SigningInput;
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

    .line 8879
    sget-object v0, Lwallet/core/jni/proto/Cardano$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cardano$SigningInput;
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

    .line 8886
    sget-object v0, Lwallet/core/jni/proto/Cardano$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$SigningInput;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Cardano$SigningInput;
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

    .line 8904
    sget-object v0, Lwallet/core/jni/proto/Cardano$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$SigningInput;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cardano$SigningInput;
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

    .line 8911
    sget-object v0, Lwallet/core/jni/proto/Cardano$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$SigningInput;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Cardano$SigningInput;",
            ">;"
        }
    .end annotation

    .line 9775
    sget-object v0, Lwallet/core/jni/proto/Cardano$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$SigningInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeUtxos(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 8331
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$SigningInput;->ensureUtxosIsMutable()V

    .line 8332
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->utxos_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setDelegate(Lwallet/core/jni/proto/Cardano$Delegate;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8606
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8607
    iput-object p1, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->delegate_:Lwallet/core/jni/proto/Cardano$Delegate;

    return-void
.end method

.method private setDeregisterStakingKey(Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8738
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8739
    iput-object p1, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->deregisterStakingKey_:Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;

    return-void
.end method

.method private setPlan(Lwallet/core/jni/proto/Cardano$TransactionPlan;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8842
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8843
    iput-object p1, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->plan_:Lwallet/core/jni/proto/Cardano$TransactionPlan;

    return-void
.end method

.method private setPrivateKey(ILcom/google/protobuf/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 8397
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8398
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$SigningInput;->ensurePrivateKeyIsMutable()V

    .line 8399
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->privateKey_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setRegisterStakingKey(Lwallet/core/jni/proto/Cardano$RegisterStakingKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8540
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8541
    iput-object p1, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->registerStakingKey_:Lwallet/core/jni/proto/Cardano$RegisterStakingKey;

    return-void
.end method

.method private setTransferMessage(Lwallet/core/jni/proto/Cardano$Transfer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8474
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8475
    iput-object p1, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->transferMessage_:Lwallet/core/jni/proto/Cardano$Transfer;

    return-void
.end method

.method private setTtl(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8796
    iput-wide p1, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->ttl_:J

    return-void
.end method

.method private setUtxos(ILwallet/core/jni/proto/Cardano$TxInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 8271
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8272
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$SigningInput;->ensureUtxosIsMutable()V

    .line 8273
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->utxos_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setWithdraw(Lwallet/core/jni/proto/Cardano$Withdraw;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8672
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8673
    iput-object p1, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->withdraw_:Lwallet/core/jni/proto/Cardano$Withdraw;

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

    .line 9702
    sget-object p2, Lwallet/core/jni/proto/Cardano$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 9753
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 9747
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 9732
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Cardano$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 9734
    const-class p2, Lwallet/core/jni/proto/Cardano$SigningInput;

    monitor-enter p2

    .line 9735
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Cardano$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 9737
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Cardano$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$SigningInput;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 9740
    sput-object p1, Lwallet/core/jni/proto/Cardano$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    .line 9742
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

    .line 9729
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Cardano$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$SigningInput;

    return-object p1

    :pswitch_4
    const/16 p1, 0xa

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "utxos_"

    aput-object v0, p1, p3

    .line 9710
    const-class p3, Lwallet/core/jni/proto/Cardano$TxInput;

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "privateKey_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "transferMessage_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "ttl_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "plan_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "registerStakingKey_"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "delegate_"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "withdraw_"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "deregisterStakingKey_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\t\u0000\u0000\u0001\t\t\u0000\u0002\u0000\u0001\u001b\u0002\u001c\u0003\t\u0004\u0003\u0005\t\u0006\t\u0007\t\u0008\t\t\t"

    .line 9725
    sget-object p3, Lwallet/core/jni/proto/Cardano$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$SigningInput;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 9707
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Cardano$SigningInput$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Cardano$SigningInput$Builder;-><init>(Lwallet/core/jni/proto/Cardano$1;)V

    return-object p1

    .line 9704
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Cardano$SigningInput;

    invoke-direct {p1}, Lwallet/core/jni/proto/Cardano$SigningInput;-><init>()V

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

.method public getDelegate()Lwallet/core/jni/proto/Cardano$Delegate;
    .locals 1

    .line 8596
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->delegate_:Lwallet/core/jni/proto/Cardano$Delegate;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/Cardano$Delegate;->getDefaultInstance()Lwallet/core/jni/proto/Cardano$Delegate;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDeregisterStakingKey()Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;
    .locals 1

    .line 8728
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->deregisterStakingKey_:Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;->getDefaultInstance()Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPlan()Lwallet/core/jni/proto/Cardano$TransactionPlan;
    .locals 1

    .line 8832
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->plan_:Lwallet/core/jni/proto/Cardano$TransactionPlan;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->getDefaultInstance()Lwallet/core/jni/proto/Cardano$TransactionPlan;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPrivateKey(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 8376
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->privateKey_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method public getPrivateKeyCount()I
    .locals 1

    .line 8362
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->privateKey_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPrivateKeyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    .line 8349
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->privateKey_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getRegisterStakingKey()Lwallet/core/jni/proto/Cardano$RegisterStakingKey;
    .locals 1

    .line 8530
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->registerStakingKey_:Lwallet/core/jni/proto/Cardano$RegisterStakingKey;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/Cardano$RegisterStakingKey;->getDefaultInstance()Lwallet/core/jni/proto/Cardano$RegisterStakingKey;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTransferMessage()Lwallet/core/jni/proto/Cardano$Transfer;
    .locals 1

    .line 8464
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->transferMessage_:Lwallet/core/jni/proto/Cardano$Transfer;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/Cardano$Transfer;->getDefaultInstance()Lwallet/core/jni/proto/Cardano$Transfer;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTtl()J
    .locals 2

    .line 8784
    iget-wide v0, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->ttl_:J

    return-wide v0
.end method

.method public getUtxos(I)Lwallet/core/jni/proto/Cardano$TxInput;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 8241
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->utxos_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cardano$TxInput;

    return-object p1
.end method

.method public getUtxosCount()I
    .locals 1

    .line 8230
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->utxos_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getUtxosList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Cardano$TxInput;",
            ">;"
        }
    .end annotation

    .line 8208
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->utxos_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getUtxosOrBuilder(I)Lwallet/core/jni/proto/Cardano$TxInputOrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 8252
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->utxos_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cardano$TxInputOrBuilder;

    return-object p1
.end method

.method public getUtxosOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lwallet/core/jni/proto/Cardano$TxInputOrBuilder;",
            ">;"
        }
    .end annotation

    .line 8219
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->utxos_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getWithdraw()Lwallet/core/jni/proto/Cardano$Withdraw;
    .locals 1

    .line 8662
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->withdraw_:Lwallet/core/jni/proto/Cardano$Withdraw;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/Cardano$Withdraw;->getDefaultInstance()Lwallet/core/jni/proto/Cardano$Withdraw;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasDelegate()Z
    .locals 1

    .line 8585
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->delegate_:Lwallet/core/jni/proto/Cardano$Delegate;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDeregisterStakingKey()Z
    .locals 1

    .line 8717
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->deregisterStakingKey_:Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPlan()Z
    .locals 1

    .line 8821
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->plan_:Lwallet/core/jni/proto/Cardano$TransactionPlan;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRegisterStakingKey()Z
    .locals 1

    .line 8519
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->registerStakingKey_:Lwallet/core/jni/proto/Cardano$RegisterStakingKey;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTransferMessage()Z
    .locals 1

    .line 8453
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->transferMessage_:Lwallet/core/jni/proto/Cardano$Transfer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasWithdraw()Z
    .locals 1

    .line 8651
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$SigningInput;->withdraw_:Lwallet/core/jni/proto/Cardano$Withdraw;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
