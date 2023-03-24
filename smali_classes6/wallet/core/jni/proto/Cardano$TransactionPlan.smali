.class public final Lwallet/core/jni/proto/Cardano$TransactionPlan;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Cardano.java"

# interfaces
.implements Lwallet/core/jni/proto/Cardano$TransactionPlanOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cardano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TransactionPlan"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Cardano$TransactionPlan$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Cardano$TransactionPlan;",
        "Lwallet/core/jni/proto/Cardano$TransactionPlan$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Cardano$TransactionPlanOrBuilder;"
    }
.end annotation


# static fields
.field public static final AMOUNT_FIELD_NUMBER:I = 0x2

.field public static final AVAILABLE_AMOUNT_FIELD_NUMBER:I = 0x1

.field public static final AVAILABLE_TOKENS_FIELD_NUMBER:I = 0x5

.field public static final CHANGE_FIELD_NUMBER:I = 0x4

.field public static final CHANGE_TOKENS_FIELD_NUMBER:I = 0x7

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TransactionPlan;

.field public static final DEPOSIT_FIELD_NUMBER:I = 0xa

.field public static final ERROR_FIELD_NUMBER:I = 0x9

.field public static final FEE_FIELD_NUMBER:I = 0x3

.field public static final OUTPUT_TOKENS_FIELD_NUMBER:I = 0x6

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Cardano$TransactionPlan;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNDEPOSIT_FIELD_NUMBER:I = 0xb

.field public static final UTXOS_FIELD_NUMBER:I = 0x8


# instance fields
.field private amount_:J

.field private availableAmount_:J

.field private availableTokens_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lwallet/core/jni/proto/Cardano$TokenAmount;",
            ">;"
        }
    .end annotation
.end field

.field private changeTokens_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lwallet/core/jni/proto/Cardano$TokenAmount;",
            ">;"
        }
    .end annotation
.end field

.field private change_:J

.field private deposit_:J

.field private error_:I

.field private fee_:J

.field private outputTokens_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lwallet/core/jni/proto/Cardano$TokenAmount;",
            ">;"
        }
    .end annotation
.end field

.field private undeposit_:J

.field private utxos_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lwallet/core/jni/proto/Cardano$TxInput;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 7976
    new-instance v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-direct {v0}, Lwallet/core/jni/proto/Cardano$TransactionPlan;-><init>()V

    .line 7979
    sput-object v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TransactionPlan;

    .line 7980
    const-class v1, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 6052
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 6053
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->availableTokens_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 6054
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->outputTokens_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 6055
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->changeTokens_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 6056
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->utxos_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$10000()Lwallet/core/jni/proto/Cardano$TransactionPlan;
    .locals 1

    .line 6047
    sget-object v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TransactionPlan;

    return-object v0
.end method

.method static synthetic access$10100(Lwallet/core/jni/proto/Cardano$TransactionPlan;J)V
    .locals 0

    .line 6047
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->setAvailableAmount(J)V

    return-void
.end method

.method static synthetic access$10200(Lwallet/core/jni/proto/Cardano$TransactionPlan;)V
    .locals 0

    .line 6047
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->clearAvailableAmount()V

    return-void
.end method

.method static synthetic access$10300(Lwallet/core/jni/proto/Cardano$TransactionPlan;J)V
    .locals 0

    .line 6047
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->setAmount(J)V

    return-void
.end method

.method static synthetic access$10400(Lwallet/core/jni/proto/Cardano$TransactionPlan;)V
    .locals 0

    .line 6047
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->clearAmount()V

    return-void
.end method

.method static synthetic access$10500(Lwallet/core/jni/proto/Cardano$TransactionPlan;J)V
    .locals 0

    .line 6047
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->setFee(J)V

    return-void
.end method

.method static synthetic access$10600(Lwallet/core/jni/proto/Cardano$TransactionPlan;)V
    .locals 0

    .line 6047
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->clearFee()V

    return-void
.end method

.method static synthetic access$10700(Lwallet/core/jni/proto/Cardano$TransactionPlan;J)V
    .locals 0

    .line 6047
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->setChange(J)V

    return-void
.end method

.method static synthetic access$10800(Lwallet/core/jni/proto/Cardano$TransactionPlan;)V
    .locals 0

    .line 6047
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->clearChange()V

    return-void
.end method

.method static synthetic access$10900(Lwallet/core/jni/proto/Cardano$TransactionPlan;J)V
    .locals 0

    .line 6047
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->setDeposit(J)V

    return-void
.end method

.method static synthetic access$11000(Lwallet/core/jni/proto/Cardano$TransactionPlan;)V
    .locals 0

    .line 6047
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->clearDeposit()V

    return-void
.end method

.method static synthetic access$11100(Lwallet/core/jni/proto/Cardano$TransactionPlan;J)V
    .locals 0

    .line 6047
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->setUndeposit(J)V

    return-void
.end method

.method static synthetic access$11200(Lwallet/core/jni/proto/Cardano$TransactionPlan;)V
    .locals 0

    .line 6047
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->clearUndeposit()V

    return-void
.end method

.method static synthetic access$11300(Lwallet/core/jni/proto/Cardano$TransactionPlan;ILwallet/core/jni/proto/Cardano$TokenAmount;)V
    .locals 0

    .line 6047
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->setAvailableTokens(ILwallet/core/jni/proto/Cardano$TokenAmount;)V

    return-void
.end method

.method static synthetic access$11400(Lwallet/core/jni/proto/Cardano$TransactionPlan;Lwallet/core/jni/proto/Cardano$TokenAmount;)V
    .locals 0

    .line 6047
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->addAvailableTokens(Lwallet/core/jni/proto/Cardano$TokenAmount;)V

    return-void
.end method

.method static synthetic access$11500(Lwallet/core/jni/proto/Cardano$TransactionPlan;ILwallet/core/jni/proto/Cardano$TokenAmount;)V
    .locals 0

    .line 6047
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->addAvailableTokens(ILwallet/core/jni/proto/Cardano$TokenAmount;)V

    return-void
.end method

.method static synthetic access$11600(Lwallet/core/jni/proto/Cardano$TransactionPlan;Ljava/lang/Iterable;)V
    .locals 0

    .line 6047
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->addAllAvailableTokens(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$11700(Lwallet/core/jni/proto/Cardano$TransactionPlan;)V
    .locals 0

    .line 6047
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->clearAvailableTokens()V

    return-void
.end method

.method static synthetic access$11800(Lwallet/core/jni/proto/Cardano$TransactionPlan;I)V
    .locals 0

    .line 6047
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->removeAvailableTokens(I)V

    return-void
.end method

.method static synthetic access$11900(Lwallet/core/jni/proto/Cardano$TransactionPlan;ILwallet/core/jni/proto/Cardano$TokenAmount;)V
    .locals 0

    .line 6047
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->setOutputTokens(ILwallet/core/jni/proto/Cardano$TokenAmount;)V

    return-void
.end method

.method static synthetic access$12000(Lwallet/core/jni/proto/Cardano$TransactionPlan;Lwallet/core/jni/proto/Cardano$TokenAmount;)V
    .locals 0

    .line 6047
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->addOutputTokens(Lwallet/core/jni/proto/Cardano$TokenAmount;)V

    return-void
.end method

.method static synthetic access$12100(Lwallet/core/jni/proto/Cardano$TransactionPlan;ILwallet/core/jni/proto/Cardano$TokenAmount;)V
    .locals 0

    .line 6047
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->addOutputTokens(ILwallet/core/jni/proto/Cardano$TokenAmount;)V

    return-void
.end method

.method static synthetic access$12200(Lwallet/core/jni/proto/Cardano$TransactionPlan;Ljava/lang/Iterable;)V
    .locals 0

    .line 6047
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->addAllOutputTokens(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$12300(Lwallet/core/jni/proto/Cardano$TransactionPlan;)V
    .locals 0

    .line 6047
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->clearOutputTokens()V

    return-void
.end method

.method static synthetic access$12400(Lwallet/core/jni/proto/Cardano$TransactionPlan;I)V
    .locals 0

    .line 6047
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->removeOutputTokens(I)V

    return-void
.end method

.method static synthetic access$12500(Lwallet/core/jni/proto/Cardano$TransactionPlan;ILwallet/core/jni/proto/Cardano$TokenAmount;)V
    .locals 0

    .line 6047
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->setChangeTokens(ILwallet/core/jni/proto/Cardano$TokenAmount;)V

    return-void
.end method

.method static synthetic access$12600(Lwallet/core/jni/proto/Cardano$TransactionPlan;Lwallet/core/jni/proto/Cardano$TokenAmount;)V
    .locals 0

    .line 6047
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->addChangeTokens(Lwallet/core/jni/proto/Cardano$TokenAmount;)V

    return-void
.end method

.method static synthetic access$12700(Lwallet/core/jni/proto/Cardano$TransactionPlan;ILwallet/core/jni/proto/Cardano$TokenAmount;)V
    .locals 0

    .line 6047
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->addChangeTokens(ILwallet/core/jni/proto/Cardano$TokenAmount;)V

    return-void
.end method

.method static synthetic access$12800(Lwallet/core/jni/proto/Cardano$TransactionPlan;Ljava/lang/Iterable;)V
    .locals 0

    .line 6047
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->addAllChangeTokens(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$12900(Lwallet/core/jni/proto/Cardano$TransactionPlan;)V
    .locals 0

    .line 6047
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->clearChangeTokens()V

    return-void
.end method

.method static synthetic access$13000(Lwallet/core/jni/proto/Cardano$TransactionPlan;I)V
    .locals 0

    .line 6047
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->removeChangeTokens(I)V

    return-void
.end method

.method static synthetic access$13100(Lwallet/core/jni/proto/Cardano$TransactionPlan;ILwallet/core/jni/proto/Cardano$TxInput;)V
    .locals 0

    .line 6047
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->setUtxos(ILwallet/core/jni/proto/Cardano$TxInput;)V

    return-void
.end method

.method static synthetic access$13200(Lwallet/core/jni/proto/Cardano$TransactionPlan;Lwallet/core/jni/proto/Cardano$TxInput;)V
    .locals 0

    .line 6047
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->addUtxos(Lwallet/core/jni/proto/Cardano$TxInput;)V

    return-void
.end method

.method static synthetic access$13300(Lwallet/core/jni/proto/Cardano$TransactionPlan;ILwallet/core/jni/proto/Cardano$TxInput;)V
    .locals 0

    .line 6047
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->addUtxos(ILwallet/core/jni/proto/Cardano$TxInput;)V

    return-void
.end method

.method static synthetic access$13400(Lwallet/core/jni/proto/Cardano$TransactionPlan;Ljava/lang/Iterable;)V
    .locals 0

    .line 6047
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->addAllUtxos(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$13500(Lwallet/core/jni/proto/Cardano$TransactionPlan;)V
    .locals 0

    .line 6047
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->clearUtxos()V

    return-void
.end method

.method static synthetic access$13600(Lwallet/core/jni/proto/Cardano$TransactionPlan;I)V
    .locals 0

    .line 6047
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->removeUtxos(I)V

    return-void
.end method

.method static synthetic access$13700(Lwallet/core/jni/proto/Cardano$TransactionPlan;I)V
    .locals 0

    .line 6047
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->setErrorValue(I)V

    return-void
.end method

.method static synthetic access$13800(Lwallet/core/jni/proto/Cardano$TransactionPlan;Lwallet/core/jni/proto/Common$SigningError;)V
    .locals 0

    .line 6047
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->setError(Lwallet/core/jni/proto/Common$SigningError;)V

    return-void
.end method

.method static synthetic access$13900(Lwallet/core/jni/proto/Cardano$TransactionPlan;)V
    .locals 0

    .line 6047
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->clearError()V

    return-void
.end method

.method private addAllAvailableTokens(Ljava/lang/Iterable;)V
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
            "Lwallet/core/jni/proto/Cardano$TokenAmount;",
            ">;)V"
        }
    .end annotation

    .line 6398
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->ensureAvailableTokensIsMutable()V

    .line 6399
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->availableTokens_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllChangeTokens(Ljava/lang/Iterable;)V
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
            "Lwallet/core/jni/proto/Cardano$TokenAmount;",
            ">;)V"
        }
    .end annotation

    .line 6674
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->ensureChangeTokensIsMutable()V

    .line 6675
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->changeTokens_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllOutputTokens(Ljava/lang/Iterable;)V
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
            "Lwallet/core/jni/proto/Cardano$TokenAmount;",
            ">;)V"
        }
    .end annotation

    .line 6536
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->ensureOutputTokensIsMutable()V

    .line 6537
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->outputTokens_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 6812
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->ensureUtxosIsMutable()V

    .line 6813
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->utxos_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAvailableTokens(ILwallet/core/jni/proto/Cardano$TokenAmount;)V
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

    .line 6385
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6386
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->ensureAvailableTokensIsMutable()V

    .line 6387
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->availableTokens_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addAvailableTokens(Lwallet/core/jni/proto/Cardano$TokenAmount;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6372
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6373
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->ensureAvailableTokensIsMutable()V

    .line 6374
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->availableTokens_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addChangeTokens(ILwallet/core/jni/proto/Cardano$TokenAmount;)V
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

    .line 6661
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6662
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->ensureChangeTokensIsMutable()V

    .line 6663
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->changeTokens_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addChangeTokens(Lwallet/core/jni/proto/Cardano$TokenAmount;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6648
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6649
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->ensureChangeTokensIsMutable()V

    .line 6650
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->changeTokens_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addOutputTokens(ILwallet/core/jni/proto/Cardano$TokenAmount;)V
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

    .line 6523
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6524
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->ensureOutputTokensIsMutable()V

    .line 6525
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->outputTokens_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addOutputTokens(Lwallet/core/jni/proto/Cardano$TokenAmount;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6510
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6511
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->ensureOutputTokensIsMutable()V

    .line 6512
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->outputTokens_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 6799
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6800
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->ensureUtxosIsMutable()V

    .line 6801
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->utxos_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 6786
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6787
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->ensureUtxosIsMutable()V

    .line 6788
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->utxos_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearAmount()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 6131
    iput-wide v0, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->amount_:J

    return-void
.end method

.method private clearAvailableAmount()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 6093
    iput-wide v0, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->availableAmount_:J

    return-void
.end method

.method private clearAvailableTokens()V
    .locals 1

    .line 6410
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->availableTokens_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearChange()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 6207
    iput-wide v0, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->change_:J

    return-void
.end method

.method private clearChangeTokens()V
    .locals 1

    .line 6686
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->changeTokens_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearDeposit()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 6245
    iput-wide v0, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->deposit_:J

    return-void
.end method

.method private clearError()V
    .locals 1

    const/4 v0, 0x0

    .line 6897
    iput v0, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->error_:I

    return-void
.end method

.method private clearFee()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 6169
    iput-wide v0, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->fee_:J

    return-void
.end method

.method private clearOutputTokens()V
    .locals 1

    .line 6548
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->outputTokens_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearUndeposit()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 6283
    iput-wide v0, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->undeposit_:J

    return-void
.end method

.method private clearUtxos()V
    .locals 1

    .line 6824
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->utxos_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureAvailableTokensIsMutable()V
    .locals 2

    .line 6344
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->availableTokens_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 6345
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6347
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->availableTokens_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureChangeTokensIsMutable()V
    .locals 2

    .line 6620
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->changeTokens_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 6621
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6623
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->changeTokens_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureOutputTokensIsMutable()V
    .locals 2

    .line 6482
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->outputTokens_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 6483
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6485
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->outputTokens_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureUtxosIsMutable()V
    .locals 2

    .line 6758
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->utxos_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 6759
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6761
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->utxos_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Cardano$TransactionPlan;
    .locals 1

    .line 7985
    sget-object v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TransactionPlan;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Cardano$TransactionPlan$Builder;
    .locals 1

    .line 6975
    sget-object v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Cardano$TransactionPlan$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Cardano$TransactionPlan;)Lwallet/core/jni/proto/Cardano$TransactionPlan$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 6978
    sget-object v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$TransactionPlan$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Cardano$TransactionPlan;
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

    .line 6952
    sget-object v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cardano$TransactionPlan;
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

    .line 6958
    sget-object v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cardano$TransactionPlan;
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

    .line 6916
    sget-object v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cardano$TransactionPlan;
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

    .line 6923
    sget-object v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Cardano$TransactionPlan;
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

    .line 6963
    sget-object v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cardano$TransactionPlan;
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

    .line 6970
    sget-object v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Cardano$TransactionPlan;
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

    .line 6940
    sget-object v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cardano$TransactionPlan;
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

    .line 6947
    sget-object v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Cardano$TransactionPlan;
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

    .line 6903
    sget-object v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cardano$TransactionPlan;
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

    .line 6910
    sget-object v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Cardano$TransactionPlan;
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

    .line 6928
    sget-object v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cardano$TransactionPlan;
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

    .line 6935
    sget-object v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Cardano$TransactionPlan;",
            ">;"
        }
    .end annotation

    .line 7991
    sget-object v0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeAvailableTokens(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 6420
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->ensureAvailableTokensIsMutable()V

    .line 6421
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->availableTokens_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private removeChangeTokens(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 6696
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->ensureChangeTokensIsMutable()V

    .line 6697
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->changeTokens_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private removeOutputTokens(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 6558
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->ensureOutputTokensIsMutable()V

    .line 6559
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->outputTokens_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
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

    .line 6834
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->ensureUtxosIsMutable()V

    .line 6835
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->utxos_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 6120
    iput-wide p1, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->amount_:J

    return-void
.end method

.method private setAvailableAmount(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6082
    iput-wide p1, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->availableAmount_:J

    return-void
.end method

.method private setAvailableTokens(ILwallet/core/jni/proto/Cardano$TokenAmount;)V
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

    .line 6360
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6361
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->ensureAvailableTokensIsMutable()V

    .line 6362
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->availableTokens_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setChange(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6196
    iput-wide p1, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->change_:J

    return-void
.end method

.method private setChangeTokens(ILwallet/core/jni/proto/Cardano$TokenAmount;)V
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

    .line 6636
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6637
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->ensureChangeTokensIsMutable()V

    .line 6638
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->changeTokens_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setDeposit(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6234
    iput-wide p1, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->deposit_:J

    return-void
.end method

.method private setError(Lwallet/core/jni/proto/Common$SigningError;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6885
    invoke-virtual {p1}, Lwallet/core/jni/proto/Common$SigningError;->getNumber()I

    move-result p1

    iput p1, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->error_:I

    return-void
.end method

.method private setErrorValue(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6874
    iput p1, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->error_:I

    return-void
.end method

.method private setFee(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6158
    iput-wide p1, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->fee_:J

    return-void
.end method

.method private setOutputTokens(ILwallet/core/jni/proto/Cardano$TokenAmount;)V
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

    .line 6498
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6499
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->ensureOutputTokensIsMutable()V

    .line 6500
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->outputTokens_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setUndeposit(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6272
    iput-wide p1, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->undeposit_:J

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

    .line 6774
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6775
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$TransactionPlan;->ensureUtxosIsMutable()V

    .line 6776
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->utxos_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

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

    .line 7912
    const-class p2, Lwallet/core/jni/proto/Cardano$TokenAmount;

    sget-object p3, Lwallet/core/jni/proto/Cardano$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p3, p1

    const/4 p3, 0x1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 7969
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object v0

    .line 7963
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 7948
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Cardano$TransactionPlan;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 7950
    const-class p2, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    monitor-enter p2

    .line 7951
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Cardano$TransactionPlan;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7953
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Cardano$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 7956
    sput-object p1, Lwallet/core/jni/proto/Cardano$TransactionPlan;->PARSER:Lcom/google/protobuf/Parser;

    .line 7958
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

    .line 7945
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Cardano$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TransactionPlan;

    return-object p1

    :pswitch_4
    const/16 p1, 0xf

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "availableAmount_"

    aput-object v1, p1, v0

    const-string v0, "amount_"

    aput-object v0, p1, p3

    const/4 p3, 0x2

    const-string v0, "fee_"

    aput-object v0, p1, p3

    const/4 p3, 0x3

    const-string v0, "change_"

    aput-object v0, p1, p3

    const/4 p3, 0x4

    const-string v0, "availableTokens_"

    aput-object v0, p1, p3

    const/4 p3, 0x5

    aput-object p2, p1, p3

    const/4 p3, 0x6

    const-string v0, "outputTokens_"

    aput-object v0, p1, p3

    const/4 p3, 0x7

    aput-object p2, p1, p3

    const/16 p3, 0x8

    const-string v0, "changeTokens_"

    aput-object v0, p1, p3

    const/16 p3, 0x9

    aput-object p2, p1, p3

    const/16 p2, 0xa

    const-string p3, "utxos_"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    .line 7920
    const-class p3, Lwallet/core/jni/proto/Cardano$TxInput;

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-string p3, "error_"

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-string p3, "deposit_"

    aput-object p3, p1, p2

    const/16 p2, 0xe

    const-string p3, "undeposit_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u000b\u0000\u0000\u0001\u000b\u000b\u0000\u0004\u0000\u0001\u0003\u0002\u0003\u0003\u0003\u0004\u0003\u0005\u001b\u0006\u001b\u0007\u001b\u0008\u001b\t\u000c\n\u0003\u000b\u0003"

    .line 7941
    sget-object p3, Lwallet/core/jni/proto/Cardano$TransactionPlan;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7917
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Cardano$TransactionPlan$Builder;

    invoke-direct {p1, v0}, Lwallet/core/jni/proto/Cardano$TransactionPlan$Builder;-><init>(Lwallet/core/jni/proto/Cardano$1;)V

    return-object p1

    .line 7914
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Cardano$TransactionPlan;

    invoke-direct {p1}, Lwallet/core/jni/proto/Cardano$TransactionPlan;-><init>()V

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

    .line 6108
    iget-wide v0, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->amount_:J

    return-wide v0
.end method

.method public getAvailableAmount()J
    .locals 2

    .line 6070
    iget-wide v0, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->availableAmount_:J

    return-wide v0
.end method

.method public getAvailableTokens(I)Lwallet/core/jni/proto/Cardano$TokenAmount;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 6330
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->availableTokens_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cardano$TokenAmount;

    return-object p1
.end method

.method public getAvailableTokensCount()I
    .locals 1

    .line 6319
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->availableTokens_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAvailableTokensList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Cardano$TokenAmount;",
            ">;"
        }
    .end annotation

    .line 6297
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->availableTokens_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getAvailableTokensOrBuilder(I)Lwallet/core/jni/proto/Cardano$TokenAmountOrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 6341
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->availableTokens_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cardano$TokenAmountOrBuilder;

    return-object p1
.end method

.method public getAvailableTokensOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lwallet/core/jni/proto/Cardano$TokenAmountOrBuilder;",
            ">;"
        }
    .end annotation

    .line 6308
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->availableTokens_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getChange()J
    .locals 2

    .line 6184
    iget-wide v0, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->change_:J

    return-wide v0
.end method

.method public getChangeTokens(I)Lwallet/core/jni/proto/Cardano$TokenAmount;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 6606
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->changeTokens_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cardano$TokenAmount;

    return-object p1
.end method

.method public getChangeTokensCount()I
    .locals 1

    .line 6595
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->changeTokens_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getChangeTokensList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Cardano$TokenAmount;",
            ">;"
        }
    .end annotation

    .line 6573
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->changeTokens_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getChangeTokensOrBuilder(I)Lwallet/core/jni/proto/Cardano$TokenAmountOrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 6617
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->changeTokens_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cardano$TokenAmountOrBuilder;

    return-object p1
.end method

.method public getChangeTokensOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lwallet/core/jni/proto/Cardano$TokenAmountOrBuilder;",
            ">;"
        }
    .end annotation

    .line 6584
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->changeTokens_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getDeposit()J
    .locals 2

    .line 6222
    iget-wide v0, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->deposit_:J

    return-wide v0
.end method

.method public getError()Lwallet/core/jni/proto/Common$SigningError;
    .locals 1

    .line 6862
    iget v0, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->error_:I

    invoke-static {v0}, Lwallet/core/jni/proto/Common$SigningError;->forNumber(I)Lwallet/core/jni/proto/Common$SigningError;

    move-result-object v0

    if-nez v0, :cond_0

    .line 6863
    sget-object v0, Lwallet/core/jni/proto/Common$SigningError;->UNRECOGNIZED:Lwallet/core/jni/proto/Common$SigningError;

    :cond_0
    return-object v0
.end method

.method public getErrorValue()I
    .locals 1

    .line 6850
    iget v0, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->error_:I

    return v0
.end method

.method public getFee()J
    .locals 2

    .line 6146
    iget-wide v0, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->fee_:J

    return-wide v0
.end method

.method public getOutputTokens(I)Lwallet/core/jni/proto/Cardano$TokenAmount;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 6468
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->outputTokens_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cardano$TokenAmount;

    return-object p1
.end method

.method public getOutputTokensCount()I
    .locals 1

    .line 6457
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->outputTokens_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOutputTokensList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Cardano$TokenAmount;",
            ">;"
        }
    .end annotation

    .line 6435
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->outputTokens_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getOutputTokensOrBuilder(I)Lwallet/core/jni/proto/Cardano$TokenAmountOrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 6479
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->outputTokens_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cardano$TokenAmountOrBuilder;

    return-object p1
.end method

.method public getOutputTokensOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lwallet/core/jni/proto/Cardano$TokenAmountOrBuilder;",
            ">;"
        }
    .end annotation

    .line 6446
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->outputTokens_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getUndeposit()J
    .locals 2

    .line 6260
    iget-wide v0, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->undeposit_:J

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

    .line 6744
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->utxos_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cardano$TxInput;

    return-object p1
.end method

.method public getUtxosCount()I
    .locals 1

    .line 6733
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->utxos_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 6711
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->utxos_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 6755
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->utxos_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 6722
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TransactionPlan;->utxos_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method
