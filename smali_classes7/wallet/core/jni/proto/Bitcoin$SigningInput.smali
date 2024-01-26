.class public final Lwallet/core/jni/proto/Bitcoin$SigningInput;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Bitcoin.java"

# interfaces
.implements Lwallet/core/jni/proto/Bitcoin$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Bitcoin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SigningInput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;,
        Lwallet/core/jni/proto/Bitcoin$SigningInput$ScriptsDefaultEntryHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Bitcoin$SigningInput;",
        "Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Bitcoin$SigningInputOrBuilder;"
    }
.end annotation


# static fields
.field public static final AMOUNT_FIELD_NUMBER:I = 0x2

.field public static final BYTE_FEE_FIELD_NUMBER:I = 0x3

.field public static final CHANGE_ADDRESS_FIELD_NUMBER:I = 0x5

.field public static final COIN_TYPE_FIELD_NUMBER:I = 0xa

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$SigningInput;

.field public static final HASH_TYPE_FIELD_NUMBER:I = 0x1

.field public static final LOCK_TIME_FIELD_NUMBER:I = 0xc

.field public static final OUTPUT_OP_RETURN_FIELD_NUMBER:I = 0xd

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Bitcoin$SigningInput;",
            ">;"
        }
    .end annotation
.end field

.field public static final PLAN_FIELD_NUMBER:I = 0xb

.field public static final PRIVATE_KEY_FIELD_NUMBER:I = 0x6

.field public static final SCRIPTS_FIELD_NUMBER:I = 0x7

.field public static final TO_ADDRESS_FIELD_NUMBER:I = 0x4

.field public static final USE_MAX_AMOUNT_FIELD_NUMBER:I = 0x9

.field public static final UTXO_FIELD_NUMBER:I = 0x8


# instance fields
.field private amount_:J

.field private byteFee_:J

.field private changeAddress_:Ljava/lang/String;

.field private coinType_:I

.field private hashType_:I

.field private lockTime_:I

.field private outputOpReturn_:Lcom/google/protobuf/ByteString;

.field private plan_:Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

.field private privateKey_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private scripts_:Lcom/google/protobuf/MapFieldLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private toAddress_:Ljava/lang/String;

.field private useMaxAmount_:Z

.field private utxo_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5054
    new-instance v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-direct {v0}, Lwallet/core/jni/proto/Bitcoin$SigningInput;-><init>()V

    .line 5057
    sput-object v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$SigningInput;

    .line 5058
    const-class v1, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3161
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3535
    invoke-static {}, Lcom/google/protobuf/MapFieldLite;->emptyMapField()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->scripts_:Lcom/google/protobuf/MapFieldLite;

    const-string v0, ""

    .line 3162
    iput-object v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->toAddress_:Ljava/lang/String;

    .line 3163
    iput-object v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->changeAddress_:Ljava/lang/String;

    .line 3164
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->privateKey_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 3165
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->utxo_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 3166
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->outputOpReturn_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$5000()Lwallet/core/jni/proto/Bitcoin$SigningInput;
    .locals 1

    .line 3156
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$SigningInput;

    return-object v0
.end method

.method static synthetic access$5100(Lwallet/core/jni/proto/Bitcoin$SigningInput;I)V
    .locals 0

    .line 3156
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->setHashType(I)V

    return-void
.end method

.method static synthetic access$5200(Lwallet/core/jni/proto/Bitcoin$SigningInput;)V
    .locals 0

    .line 3156
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->clearHashType()V

    return-void
.end method

.method static synthetic access$5300(Lwallet/core/jni/proto/Bitcoin$SigningInput;J)V
    .locals 0

    .line 3156
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->setAmount(J)V

    return-void
.end method

.method static synthetic access$5400(Lwallet/core/jni/proto/Bitcoin$SigningInput;)V
    .locals 0

    .line 3156
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->clearAmount()V

    return-void
.end method

.method static synthetic access$5500(Lwallet/core/jni/proto/Bitcoin$SigningInput;J)V
    .locals 0

    .line 3156
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->setByteFee(J)V

    return-void
.end method

.method static synthetic access$5600(Lwallet/core/jni/proto/Bitcoin$SigningInput;)V
    .locals 0

    .line 3156
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->clearByteFee()V

    return-void
.end method

.method static synthetic access$5700(Lwallet/core/jni/proto/Bitcoin$SigningInput;Ljava/lang/String;)V
    .locals 0

    .line 3156
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->setToAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5800(Lwallet/core/jni/proto/Bitcoin$SigningInput;)V
    .locals 0

    .line 3156
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->clearToAddress()V

    return-void
.end method

.method static synthetic access$5900(Lwallet/core/jni/proto/Bitcoin$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 3156
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->setToAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$6000(Lwallet/core/jni/proto/Bitcoin$SigningInput;Ljava/lang/String;)V
    .locals 0

    .line 3156
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->setChangeAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6100(Lwallet/core/jni/proto/Bitcoin$SigningInput;)V
    .locals 0

    .line 3156
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->clearChangeAddress()V

    return-void
.end method

.method static synthetic access$6200(Lwallet/core/jni/proto/Bitcoin$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 3156
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->setChangeAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$6300(Lwallet/core/jni/proto/Bitcoin$SigningInput;ILcom/google/protobuf/ByteString;)V
    .locals 0

    .line 3156
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->setPrivateKey(ILcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$6400(Lwallet/core/jni/proto/Bitcoin$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 3156
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->addPrivateKey(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$6500(Lwallet/core/jni/proto/Bitcoin$SigningInput;Ljava/lang/Iterable;)V
    .locals 0

    .line 3156
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->addAllPrivateKey(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$6600(Lwallet/core/jni/proto/Bitcoin$SigningInput;)V
    .locals 0

    .line 3156
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->clearPrivateKey()V

    return-void
.end method

.method static synthetic access$6700(Lwallet/core/jni/proto/Bitcoin$SigningInput;)Ljava/util/Map;
    .locals 0

    .line 3156
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->getMutableScriptsMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6800(Lwallet/core/jni/proto/Bitcoin$SigningInput;ILwallet/core/jni/proto/Bitcoin$UnspentTransaction;)V
    .locals 0

    .line 3156
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->setUtxo(ILwallet/core/jni/proto/Bitcoin$UnspentTransaction;)V

    return-void
.end method

.method static synthetic access$6900(Lwallet/core/jni/proto/Bitcoin$SigningInput;Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;)V
    .locals 0

    .line 3156
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->addUtxo(Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;)V

    return-void
.end method

.method static synthetic access$7000(Lwallet/core/jni/proto/Bitcoin$SigningInput;ILwallet/core/jni/proto/Bitcoin$UnspentTransaction;)V
    .locals 0

    .line 3156
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->addUtxo(ILwallet/core/jni/proto/Bitcoin$UnspentTransaction;)V

    return-void
.end method

.method static synthetic access$7100(Lwallet/core/jni/proto/Bitcoin$SigningInput;Ljava/lang/Iterable;)V
    .locals 0

    .line 3156
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->addAllUtxo(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$7200(Lwallet/core/jni/proto/Bitcoin$SigningInput;)V
    .locals 0

    .line 3156
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->clearUtxo()V

    return-void
.end method

.method static synthetic access$7300(Lwallet/core/jni/proto/Bitcoin$SigningInput;I)V
    .locals 0

    .line 3156
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->removeUtxo(I)V

    return-void
.end method

.method static synthetic access$7400(Lwallet/core/jni/proto/Bitcoin$SigningInput;Z)V
    .locals 0

    .line 3156
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->setUseMaxAmount(Z)V

    return-void
.end method

.method static synthetic access$7500(Lwallet/core/jni/proto/Bitcoin$SigningInput;)V
    .locals 0

    .line 3156
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->clearUseMaxAmount()V

    return-void
.end method

.method static synthetic access$7600(Lwallet/core/jni/proto/Bitcoin$SigningInput;I)V
    .locals 0

    .line 3156
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->setCoinType(I)V

    return-void
.end method

.method static synthetic access$7700(Lwallet/core/jni/proto/Bitcoin$SigningInput;)V
    .locals 0

    .line 3156
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->clearCoinType()V

    return-void
.end method

.method static synthetic access$7800(Lwallet/core/jni/proto/Bitcoin$SigningInput;Lwallet/core/jni/proto/Bitcoin$TransactionPlan;)V
    .locals 0

    .line 3156
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->setPlan(Lwallet/core/jni/proto/Bitcoin$TransactionPlan;)V

    return-void
.end method

.method static synthetic access$7900(Lwallet/core/jni/proto/Bitcoin$SigningInput;Lwallet/core/jni/proto/Bitcoin$TransactionPlan;)V
    .locals 0

    .line 3156
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->mergePlan(Lwallet/core/jni/proto/Bitcoin$TransactionPlan;)V

    return-void
.end method

.method static synthetic access$8000(Lwallet/core/jni/proto/Bitcoin$SigningInput;)V
    .locals 0

    .line 3156
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->clearPlan()V

    return-void
.end method

.method static synthetic access$8100(Lwallet/core/jni/proto/Bitcoin$SigningInput;I)V
    .locals 0

    .line 3156
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->setLockTime(I)V

    return-void
.end method

.method static synthetic access$8200(Lwallet/core/jni/proto/Bitcoin$SigningInput;)V
    .locals 0

    .line 3156
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->clearLockTime()V

    return-void
.end method

.method static synthetic access$8300(Lwallet/core/jni/proto/Bitcoin$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 3156
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->setOutputOpReturn(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$8400(Lwallet/core/jni/proto/Bitcoin$SigningInput;)V
    .locals 0

    .line 3156
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->clearOutputOpReturn()V

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

    .line 3507
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->ensurePrivateKeyIsMutable()V

    .line 3508
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->privateKey_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllUtxo(Ljava/lang/Iterable;)V
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
            "Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;",
            ">;)V"
        }
    .end annotation

    .line 3747
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->ensureUtxoIsMutable()V

    .line 3748
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->utxo_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 3493
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3494
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->ensurePrivateKeyIsMutable()V

    .line 3495
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->privateKey_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addUtxo(ILwallet/core/jni/proto/Bitcoin$UnspentTransaction;)V
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

    .line 3734
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3735
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->ensureUtxoIsMutable()V

    .line 3736
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->utxo_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addUtxo(Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3721
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3722
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->ensureUtxoIsMutable()V

    .line 3723
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->utxo_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearAmount()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 3247
    iput-wide v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->amount_:J

    return-void
.end method

.method private clearByteFee()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 3285
    iput-wide v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->byteFee_:J

    return-void
.end method

.method private clearChangeAddress()V
    .locals 1

    .line 3405
    invoke-static {}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Bitcoin$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->getChangeAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->changeAddress_:Ljava/lang/String;

    return-void
.end method

.method private clearCoinType()V
    .locals 1

    const/4 v0, 0x0

    .line 3846
    iput v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->coinType_:I

    return-void
.end method

.method private clearHashType()V
    .locals 1

    const/4 v0, 0x0

    .line 3203
    iput v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->hashType_:I

    return-void
.end method

.method private clearLockTime()V
    .locals 1

    const/4 v0, 0x0

    .line 3962
    iput v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->lockTime_:I

    return-void
.end method

.method private clearOutputOpReturn()V
    .locals 1

    .line 4001
    invoke-static {}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Bitcoin$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->getOutputOpReturn()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->outputOpReturn_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearPlan()V
    .locals 1

    const/4 v0, 0x0

    .line 3911
    iput-object v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->plan_:Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    return-void
.end method

.method private clearPrivateKey()V
    .locals 1

    .line 3519
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->privateKey_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearToAddress()V
    .locals 1

    .line 3338
    invoke-static {}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Bitcoin$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->getToAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->toAddress_:Ljava/lang/String;

    return-void
.end method

.method private clearUseMaxAmount()V
    .locals 1

    const/4 v0, 0x0

    .line 3808
    iput-boolean v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->useMaxAmount_:Z

    return-void
.end method

.method private clearUtxo()V
    .locals 1

    .line 3759
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->utxo_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensurePrivateKeyIsMutable()V
    .locals 2

    .line 3463
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->privateKey_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 3464
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3466
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->privateKey_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureUtxoIsMutable()V
    .locals 2

    .line 3693
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->utxo_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 3694
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3696
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->utxo_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Bitcoin$SigningInput;
    .locals 1

    .line 5063
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$SigningInput;

    return-object v0
.end method

.method private getMutableScriptsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    .line 3632
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->internalGetMutableScripts()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    return-object v0
.end method

.method private internalGetMutableScripts()Lcom/google/protobuf/MapFieldLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    .line 3542
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->scripts_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3543
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->scripts_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->mutableCopy()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->scripts_:Lcom/google/protobuf/MapFieldLite;

    .line 3545
    :cond_0
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->scripts_:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method private internalGetScripts()Lcom/google/protobuf/MapFieldLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    .line 3538
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->scripts_:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method private mergePlan(Lwallet/core/jni/proto/Bitcoin$TransactionPlan;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3894
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3895
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->plan_:Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    if-eqz v0, :cond_0

    .line 3896
    invoke-static {}, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->getDefaultInstance()Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 3897
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->plan_:Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    .line 3898
    invoke-static {v0}, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->newBuilder(Lwallet/core/jni/proto/Bitcoin$TransactionPlan;)Lwallet/core/jni/proto/Bitcoin$TransactionPlan$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Bitcoin$TransactionPlan$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    iput-object p1, p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->plan_:Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    goto :goto_0

    .line 3900
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->plan_:Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;
    .locals 1

    .line 4079
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Bitcoin$SigningInput;)Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 4082
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Bitcoin$SigningInput;
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

    .line 4056
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Bitcoin$SigningInput;
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

    .line 4062
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Bitcoin$SigningInput;
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

    .line 4020
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Bitcoin$SigningInput;
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

    .line 4027
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Bitcoin$SigningInput;
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

    .line 4067
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Bitcoin$SigningInput;
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

    .line 4074
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Bitcoin$SigningInput;
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

    .line 4044
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Bitcoin$SigningInput;
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

    .line 4051
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Bitcoin$SigningInput;
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

    .line 4007
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Bitcoin$SigningInput;
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

    .line 4014
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Bitcoin$SigningInput;
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

    .line 4032
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Bitcoin$SigningInput;
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

    .line 4039
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Bitcoin$SigningInput;",
            ">;"
        }
    .end annotation

    .line 5069
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeUtxo(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 3769
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->ensureUtxoIsMutable()V

    .line 3770
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->utxo_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setAmount(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3234
    iput-wide p1, p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->amount_:J

    return-void
.end method

.method private setByteFee(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3274
    iput-wide p1, p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->byteFee_:J

    return-void
.end method

.method private setChangeAddress(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3392
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3394
    iput-object p1, p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->changeAddress_:Ljava/lang/String;

    return-void
.end method

.method private setChangeAddressBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3417
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3418
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->changeAddress_:Ljava/lang/String;

    return-void
.end method

.method private setCoinType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3835
    iput p1, p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->coinType_:I

    return-void
.end method

.method private setHashType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3192
    iput p1, p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->hashType_:I

    return-void
.end method

.method private setLockTime(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3947
    iput p1, p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->lockTime_:I

    return-void
.end method

.method private setOutputOpReturn(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3988
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3990
    iput-object p1, p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->outputOpReturn_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setPlan(Lwallet/core/jni/proto/Bitcoin$TransactionPlan;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3881
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3882
    iput-object p1, p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->plan_:Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

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

    .line 3480
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3481
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->ensurePrivateKeyIsMutable()V

    .line 3482
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->privateKey_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

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

    .line 3325
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3327
    iput-object p1, p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->toAddress_:Ljava/lang/String;

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

    .line 3350
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3351
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->toAddress_:Ljava/lang/String;

    return-void
.end method

.method private setUseMaxAmount(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3797
    iput-boolean p1, p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->useMaxAmount_:Z

    return-void
.end method

.method private setUtxo(ILwallet/core/jni/proto/Bitcoin$UnspentTransaction;)V
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

    .line 3709
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3710
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->ensureUtxoIsMutable()V

    .line 3711
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->utxo_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public containsScripts(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 3563
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3564
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->internalGetScripts()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

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

    .line 4990
    sget-object p2, Lwallet/core/jni/proto/Bitcoin$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 5047
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 5041
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 5026
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Bitcoin$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5028
    const-class p2, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    monitor-enter p2

    .line 5029
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Bitcoin$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 5031
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Bitcoin$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 5034
    sput-object p1, Lwallet/core/jni/proto/Bitcoin$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    .line 5036
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

    .line 5023
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Bitcoin$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$SigningInput;

    return-object p1

    :pswitch_4
    const/16 p1, 0xf

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "hashType_"

    aput-object v0, p1, p3

    const-string p3, "amount_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "byteFee_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "toAddress_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "changeAddress_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "privateKey_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "scripts_"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    .line 4998
    sget-object p3, Lwallet/core/jni/proto/Bitcoin$SigningInput$ScriptsDefaultEntryHolder;->defaultEntry:Lcom/google/protobuf/MapEntryLite;

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "utxo_"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-class p3, Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "useMaxAmount_"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "coinType_"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-string p3, "plan_"

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-string p3, "lockTime_"

    aput-object p3, p1, p2

    const/16 p2, 0xe

    const-string p3, "outputOpReturn_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\r\u0000\u0000\u0001\r\r\u0001\u0002\u0000\u0001\u000b\u0002\u0002\u0003\u0002\u0004\u0208\u0005\u0208\u0006\u001c\u00072\u0008\u001b\t\u0007\n\u000b\u000b\t\u000c\u000b\r\n"

    .line 5019
    sget-object p3, Lwallet/core/jni/proto/Bitcoin$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4995
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Bitcoin$SigningInput$Builder;-><init>(Lwallet/core/jni/proto/Bitcoin$1;)V

    return-object p1

    .line 4992
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Bitcoin$SigningInput;

    invoke-direct {p1}, Lwallet/core/jni/proto/Bitcoin$SigningInput;-><init>()V

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

.method public getAmount()J
    .locals 2

    .line 3220
    iget-wide v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->amount_:J

    return-wide v0
.end method

.method public getByteFee()J
    .locals 2

    .line 3262
    iget-wide v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->byteFee_:J

    return-wide v0
.end method

.method public getChangeAddress()Ljava/lang/String;
    .locals 1

    .line 3367
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->changeAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getChangeAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3380
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->changeAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getCoinType()I
    .locals 1

    .line 3823
    iget v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->coinType_:I

    return v0
.end method

.method public getHashType()I
    .locals 1

    .line 3180
    iget v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->hashType_:I

    return v0
.end method

.method public getLockTime()I
    .locals 1

    .line 3931
    iget v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->lockTime_:I

    return v0
.end method

.method public getOutputOpReturn()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3977
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->outputOpReturn_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPlan()Lwallet/core/jni/proto/Bitcoin$TransactionPlan;
    .locals 1

    .line 3871
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->plan_:Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/Bitcoin$TransactionPlan;->getDefaultInstance()Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

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

    .line 3460
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->privateKey_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method public getPrivateKeyCount()I
    .locals 1

    .line 3447
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->privateKey_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 3435
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->privateKey_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getScripts()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3572
    invoke-virtual {p0}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->getScriptsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getScriptsCount()I
    .locals 1

    .line 3550
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->internalGetScripts()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    return v0
.end method

.method public getScriptsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    .line 3585
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->internalGetScripts()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 3584
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getScriptsOrDefault(Ljava/lang/String;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "defaultValue"
        }
    .end annotation

    .line 3599
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3601
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->internalGetScripts()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 3602
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lcom/google/protobuf/ByteString;

    :cond_0
    return-object p2
.end method

.method public getScriptsOrThrow(Ljava/lang/String;)Lcom/google/protobuf/ByteString;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 3615
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3617
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$SigningInput;->internalGetScripts()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 3618
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3621
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/ByteString;

    return-object p1

    .line 3619
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public getToAddress()Ljava/lang/String;
    .locals 1

    .line 3300
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->toAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getToAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3313
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->toAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getUseMaxAmount()Z
    .locals 1

    .line 3785
    iget-boolean v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->useMaxAmount_:Z

    return v0
.end method

.method public getUtxo(I)Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 3679
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->utxo_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;

    return-object p1
.end method

.method public getUtxoCount()I
    .locals 1

    .line 3668
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->utxo_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getUtxoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Bitcoin$UnspentTransaction;",
            ">;"
        }
    .end annotation

    .line 3646
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->utxo_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getUtxoOrBuilder(I)Lwallet/core/jni/proto/Bitcoin$UnspentTransactionOrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 3690
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->utxo_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Bitcoin$UnspentTransactionOrBuilder;

    return-object p1
.end method

.method public getUtxoOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lwallet/core/jni/proto/Bitcoin$UnspentTransactionOrBuilder;",
            ">;"
        }
    .end annotation

    .line 3657
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->utxo_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public hasPlan()Z
    .locals 1

    .line 3860
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningInput;->plan_:Lwallet/core/jni/proto/Bitcoin$TransactionPlan;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
