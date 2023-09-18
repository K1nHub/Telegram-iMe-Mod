.class public final Lwallet/core/jni/proto/Binance$HTLTOrder;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Binance.java"

# interfaces
.implements Lwallet/core/jni/proto/Binance$HTLTOrderOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Binance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HTLTOrder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Binance$HTLTOrder$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Binance$HTLTOrder;",
        "Lwallet/core/jni/proto/Binance$HTLTOrder$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Binance$HTLTOrderOrBuilder;"
    }
.end annotation


# static fields
.field public static final AMOUNT_FIELD_NUMBER:I = 0x7

.field public static final CROSS_CHAIN_FIELD_NUMBER:I = 0xa

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$HTLTOrder;

.field public static final EXPECTED_INCOME_FIELD_NUMBER:I = 0x8

.field public static final FROM_FIELD_NUMBER:I = 0x1

.field public static final HEIGHT_SPAN_FIELD_NUMBER:I = 0x9

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Binance$HTLTOrder;",
            ">;"
        }
    .end annotation
.end field

.field public static final RANDOM_NUMBER_HASH_FIELD_NUMBER:I = 0x5

.field public static final RECIPIENT_OTHER_CHAIN_FIELD_NUMBER:I = 0x3

.field public static final SENDER_OTHER_CHAIN_FIELD_NUMBER:I = 0x4

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x6

.field public static final TO_FIELD_NUMBER:I = 0x2


# instance fields
.field private amount_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lwallet/core/jni/proto/Binance$SendOrder$Token;",
            ">;"
        }
    .end annotation
.end field

.field private crossChain_:Z

.field private expectedIncome_:Ljava/lang/String;

.field private from_:Lcom/google/protobuf/ByteString;

.field private heightSpan_:J

.field private randomNumberHash_:Lcom/google/protobuf/ByteString;

.field private recipientOtherChain_:Ljava/lang/String;

.field private senderOtherChain_:Ljava/lang/String;

.field private timestamp_:J

.field private to_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10044
    new-instance v0, Lwallet/core/jni/proto/Binance$HTLTOrder;

    invoke-direct {v0}, Lwallet/core/jni/proto/Binance$HTLTOrder;-><init>()V

    .line 10047
    sput-object v0, Lwallet/core/jni/proto/Binance$HTLTOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$HTLTOrder;

    .line 10048
    const-class v1, Lwallet/core/jni/proto/Binance$HTLTOrder;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 8703
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 8704
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$HTLTOrder;->from_:Lcom/google/protobuf/ByteString;

    .line 8705
    iput-object v0, p0, Lwallet/core/jni/proto/Binance$HTLTOrder;->to_:Lcom/google/protobuf/ByteString;

    const-string v1, ""

    .line 8706
    iput-object v1, p0, Lwallet/core/jni/proto/Binance$HTLTOrder;->recipientOtherChain_:Ljava/lang/String;

    .line 8707
    iput-object v1, p0, Lwallet/core/jni/proto/Binance$HTLTOrder;->senderOtherChain_:Ljava/lang/String;

    .line 8708
    iput-object v0, p0, Lwallet/core/jni/proto/Binance$HTLTOrder;->randomNumberHash_:Lcom/google/protobuf/ByteString;

    .line 8709
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$HTLTOrder;->amount_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 8710
    iput-object v1, p0, Lwallet/core/jni/proto/Binance$HTLTOrder;->expectedIncome_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$14800()Lwallet/core/jni/proto/Binance$HTLTOrder;
    .locals 1

    .line 8698
    sget-object v0, Lwallet/core/jni/proto/Binance$HTLTOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$HTLTOrder;

    return-object v0
.end method

.method static synthetic access$14900(Lwallet/core/jni/proto/Binance$HTLTOrder;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 8698
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$HTLTOrder;->setFrom(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$15000(Lwallet/core/jni/proto/Binance$HTLTOrder;)V
    .locals 0

    .line 8698
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$HTLTOrder;->clearFrom()V

    return-void
.end method

.method static synthetic access$15100(Lwallet/core/jni/proto/Binance$HTLTOrder;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 8698
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$HTLTOrder;->setTo(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$15200(Lwallet/core/jni/proto/Binance$HTLTOrder;)V
    .locals 0

    .line 8698
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$HTLTOrder;->clearTo()V

    return-void
.end method

.method static synthetic access$15300(Lwallet/core/jni/proto/Binance$HTLTOrder;Ljava/lang/String;)V
    .locals 0

    .line 8698
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$HTLTOrder;->setRecipientOtherChain(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$15400(Lwallet/core/jni/proto/Binance$HTLTOrder;)V
    .locals 0

    .line 8698
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$HTLTOrder;->clearRecipientOtherChain()V

    return-void
.end method

.method static synthetic access$15500(Lwallet/core/jni/proto/Binance$HTLTOrder;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 8698
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$HTLTOrder;->setRecipientOtherChainBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$15600(Lwallet/core/jni/proto/Binance$HTLTOrder;Ljava/lang/String;)V
    .locals 0

    .line 8698
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$HTLTOrder;->setSenderOtherChain(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$15700(Lwallet/core/jni/proto/Binance$HTLTOrder;)V
    .locals 0

    .line 8698
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$HTLTOrder;->clearSenderOtherChain()V

    return-void
.end method

.method static synthetic access$15800(Lwallet/core/jni/proto/Binance$HTLTOrder;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 8698
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$HTLTOrder;->setSenderOtherChainBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$15900(Lwallet/core/jni/proto/Binance$HTLTOrder;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 8698
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$HTLTOrder;->setRandomNumberHash(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$16000(Lwallet/core/jni/proto/Binance$HTLTOrder;)V
    .locals 0

    .line 8698
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$HTLTOrder;->clearRandomNumberHash()V

    return-void
.end method

.method static synthetic access$16100(Lwallet/core/jni/proto/Binance$HTLTOrder;J)V
    .locals 0

    .line 8698
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Binance$HTLTOrder;->setTimestamp(J)V

    return-void
.end method

.method static synthetic access$16200(Lwallet/core/jni/proto/Binance$HTLTOrder;)V
    .locals 0

    .line 8698
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$HTLTOrder;->clearTimestamp()V

    return-void
.end method

.method static synthetic access$16300(Lwallet/core/jni/proto/Binance$HTLTOrder;ILwallet/core/jni/proto/Binance$SendOrder$Token;)V
    .locals 0

    .line 8698
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Binance$HTLTOrder;->setAmount(ILwallet/core/jni/proto/Binance$SendOrder$Token;)V

    return-void
.end method

.method static synthetic access$16400(Lwallet/core/jni/proto/Binance$HTLTOrder;Lwallet/core/jni/proto/Binance$SendOrder$Token;)V
    .locals 0

    .line 8698
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$HTLTOrder;->addAmount(Lwallet/core/jni/proto/Binance$SendOrder$Token;)V

    return-void
.end method

.method static synthetic access$16500(Lwallet/core/jni/proto/Binance$HTLTOrder;ILwallet/core/jni/proto/Binance$SendOrder$Token;)V
    .locals 0

    .line 8698
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Binance$HTLTOrder;->addAmount(ILwallet/core/jni/proto/Binance$SendOrder$Token;)V

    return-void
.end method

.method static synthetic access$16600(Lwallet/core/jni/proto/Binance$HTLTOrder;Ljava/lang/Iterable;)V
    .locals 0

    .line 8698
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$HTLTOrder;->addAllAmount(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$16700(Lwallet/core/jni/proto/Binance$HTLTOrder;)V
    .locals 0

    .line 8698
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$HTLTOrder;->clearAmount()V

    return-void
.end method

.method static synthetic access$16800(Lwallet/core/jni/proto/Binance$HTLTOrder;I)V
    .locals 0

    .line 8698
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$HTLTOrder;->removeAmount(I)V

    return-void
.end method

.method static synthetic access$16900(Lwallet/core/jni/proto/Binance$HTLTOrder;Ljava/lang/String;)V
    .locals 0

    .line 8698
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$HTLTOrder;->setExpectedIncome(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$17000(Lwallet/core/jni/proto/Binance$HTLTOrder;)V
    .locals 0

    .line 8698
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$HTLTOrder;->clearExpectedIncome()V

    return-void
.end method

.method static synthetic access$17100(Lwallet/core/jni/proto/Binance$HTLTOrder;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 8698
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$HTLTOrder;->setExpectedIncomeBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$17200(Lwallet/core/jni/proto/Binance$HTLTOrder;J)V
    .locals 0

    .line 8698
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Binance$HTLTOrder;->setHeightSpan(J)V

    return-void
.end method

.method static synthetic access$17300(Lwallet/core/jni/proto/Binance$HTLTOrder;)V
    .locals 0

    .line 8698
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$HTLTOrder;->clearHeightSpan()V

    return-void
.end method

.method static synthetic access$17400(Lwallet/core/jni/proto/Binance$HTLTOrder;Z)V
    .locals 0

    .line 8698
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$HTLTOrder;->setCrossChain(Z)V

    return-void
.end method

.method static synthetic access$17500(Lwallet/core/jni/proto/Binance$HTLTOrder;)V
    .locals 0

    .line 8698
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$HTLTOrder;->clearCrossChain()V

    return-void
.end method

.method private addAllAmount(Ljava/lang/Iterable;)V
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
            "Lwallet/core/jni/proto/Binance$SendOrder$Token;",
            ">;)V"
        }
    .end annotation

    .line 9113
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$HTLTOrder;->ensureAmountIsMutable()V

    .line 9114
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$HTLTOrder;->amount_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAmount(ILwallet/core/jni/proto/Binance$SendOrder$Token;)V
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

    .line 9100
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9101
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$HTLTOrder;->ensureAmountIsMutable()V

    .line 9102
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$HTLTOrder;->amount_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addAmount(Lwallet/core/jni/proto/Binance$SendOrder$Token;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9087
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9088
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$HTLTOrder;->ensureAmountIsMutable()V

    .line 9089
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$HTLTOrder;->amount_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearAmount()V
    .locals 1

    .line 9125
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$HTLTOrder;->amount_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearCrossChain()V
    .locals 1

    const/4 v0, 0x0

    .line 9279
    iput-boolean v0, p0, Lwallet/core/jni/proto/Binance$HTLTOrder;->crossChain_:Z

    return-void
.end method

.method private clearExpectedIncome()V
    .locals 1

    .line 9189
    invoke-static {}, Lwallet/core/jni/proto/Binance$HTLTOrder;->getDefaultInstance()Lwallet/core/jni/proto/Binance$HTLTOrder;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$HTLTOrder;->getExpectedIncome()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$HTLTOrder;->expectedIncome_:Ljava/lang/String;

    return-void
.end method

.method private clearFrom()V
    .locals 1

    .line 8748
    invoke-static {}, Lwallet/core/jni/proto/Binance$HTLTOrder;->getDefaultInstance()Lwallet/core/jni/proto/Binance$HTLTOrder;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$HTLTOrder;->getFrom()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$HTLTOrder;->from_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearHeightSpan()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 9241
    iput-wide v0, p0, Lwallet/core/jni/proto/Binance$HTLTOrder;->heightSpan_:J

    return-void
.end method

.method private clearRandomNumberHash()V
    .locals 1

    .line 8960
    invoke-static {}, Lwallet/core/jni/proto/Binance$HTLTOrder;->getDefaultInstance()Lwallet/core/jni/proto/Binance$HTLTOrder;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$HTLTOrder;->getRandomNumberHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$HTLTOrder;->randomNumberHash_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearRecipientOtherChain()V
    .locals 1

    .line 8840
    invoke-static {}, Lwallet/core/jni/proto/Binance$HTLTOrder;->getDefaultInstance()Lwallet/core/jni/proto/Binance$HTLTOrder;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$HTLTOrder;->getRecipientOtherChain()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$HTLTOrder;->recipientOtherChain_:Ljava/lang/String;

    return-void
.end method

.method private clearSenderOtherChain()V
    .locals 1

    .line 8907
    invoke-static {}, Lwallet/core/jni/proto/Binance$HTLTOrder;->getDefaultInstance()Lwallet/core/jni/proto/Binance$HTLTOrder;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$HTLTOrder;->getSenderOtherChain()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$HTLTOrder;->senderOtherChain_:Ljava/lang/String;

    return-void
.end method

.method private clearTimestamp()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 8998
    iput-wide v0, p0, Lwallet/core/jni/proto/Binance$HTLTOrder;->timestamp_:J

    return-void
.end method

.method private clearTo()V
    .locals 1

    .line 8787
    invoke-static {}, Lwallet/core/jni/proto/Binance$HTLTOrder;->getDefaultInstance()Lwallet/core/jni/proto/Binance$HTLTOrder;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$HTLTOrder;->getTo()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$HTLTOrder;->to_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private ensureAmountIsMutable()V
    .locals 2

    .line 9059
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$HTLTOrder;->amount_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 9060
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 9062
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$HTLTOrder;->amount_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Binance$HTLTOrder;
    .locals 1

    .line 10053
    sget-object v0, Lwallet/core/jni/proto/Binance$HTLTOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$HTLTOrder;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Binance$HTLTOrder$Builder;
    .locals 1

    .line 9357
    sget-object v0, Lwallet/core/jni/proto/Binance$HTLTOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$HTLTOrder;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Binance$HTLTOrder$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Binance$HTLTOrder;)Lwallet/core/jni/proto/Binance$HTLTOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 9360
    sget-object v0, Lwallet/core/jni/proto/Binance$HTLTOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$HTLTOrder;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$HTLTOrder$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Binance$HTLTOrder;
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

    .line 9334
    sget-object v0, Lwallet/core/jni/proto/Binance$HTLTOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$HTLTOrder;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$HTLTOrder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$HTLTOrder;
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

    .line 9340
    sget-object v0, Lwallet/core/jni/proto/Binance$HTLTOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$HTLTOrder;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$HTLTOrder;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$HTLTOrder;
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

    .line 9298
    sget-object v0, Lwallet/core/jni/proto/Binance$HTLTOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$HTLTOrder;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$HTLTOrder;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$HTLTOrder;
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

    .line 9305
    sget-object v0, Lwallet/core/jni/proto/Binance$HTLTOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$HTLTOrder;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$HTLTOrder;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Binance$HTLTOrder;
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

    .line 9345
    sget-object v0, Lwallet/core/jni/proto/Binance$HTLTOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$HTLTOrder;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$HTLTOrder;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$HTLTOrder;
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

    .line 9352
    sget-object v0, Lwallet/core/jni/proto/Binance$HTLTOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$HTLTOrder;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$HTLTOrder;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Binance$HTLTOrder;
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

    .line 9322
    sget-object v0, Lwallet/core/jni/proto/Binance$HTLTOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$HTLTOrder;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$HTLTOrder;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$HTLTOrder;
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

    .line 9329
    sget-object v0, Lwallet/core/jni/proto/Binance$HTLTOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$HTLTOrder;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$HTLTOrder;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Binance$HTLTOrder;
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

    .line 9285
    sget-object v0, Lwallet/core/jni/proto/Binance$HTLTOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$HTLTOrder;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$HTLTOrder;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$HTLTOrder;
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

    .line 9292
    sget-object v0, Lwallet/core/jni/proto/Binance$HTLTOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$HTLTOrder;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$HTLTOrder;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Binance$HTLTOrder;
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

    .line 9310
    sget-object v0, Lwallet/core/jni/proto/Binance$HTLTOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$HTLTOrder;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$HTLTOrder;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$HTLTOrder;
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

    .line 9317
    sget-object v0, Lwallet/core/jni/proto/Binance$HTLTOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$HTLTOrder;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$HTLTOrder;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Binance$HTLTOrder;",
            ">;"
        }
    .end annotation

    .line 10059
    sget-object v0, Lwallet/core/jni/proto/Binance$HTLTOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$HTLTOrder;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeAmount(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 9135
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$HTLTOrder;->ensureAmountIsMutable()V

    .line 9136
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$HTLTOrder;->amount_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setAmount(ILwallet/core/jni/proto/Binance$SendOrder$Token;)V
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

    .line 9075
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9076
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$HTLTOrder;->ensureAmountIsMutable()V

    .line 9077
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$HTLTOrder;->amount_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setCrossChain(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9268
    iput-boolean p1, p0, Lwallet/core/jni/proto/Binance$HTLTOrder;->crossChain_:Z

    return-void
.end method

.method private setExpectedIncome(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9176
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9178
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$HTLTOrder;->expectedIncome_:Ljava/lang/String;

    return-void
.end method

.method private setExpectedIncomeBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9201
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 9202
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Binance$HTLTOrder;->expectedIncome_:Ljava/lang/String;

    return-void
.end method

.method private setFrom(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8735
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8737
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$HTLTOrder;->from_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setHeightSpan(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9230
    iput-wide p1, p0, Lwallet/core/jni/proto/Binance$HTLTOrder;->heightSpan_:J

    return-void
.end method

.method private setRandomNumberHash(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8947
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8949
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$HTLTOrder;->randomNumberHash_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setRecipientOtherChain(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8827
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8829
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$HTLTOrder;->recipientOtherChain_:Ljava/lang/String;

    return-void
.end method

.method private setRecipientOtherChainBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8852
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 8853
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Binance$HTLTOrder;->recipientOtherChain_:Ljava/lang/String;

    return-void
.end method

.method private setSenderOtherChain(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8894
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8896
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$HTLTOrder;->senderOtherChain_:Ljava/lang/String;

    return-void
.end method

.method private setSenderOtherChainBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8919
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 8920
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Binance$HTLTOrder;->senderOtherChain_:Ljava/lang/String;

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

    .line 8987
    iput-wide p1, p0, Lwallet/core/jni/proto/Binance$HTLTOrder;->timestamp_:J

    return-void
.end method

.method private setTo(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8774
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8776
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$HTLTOrder;->to_:Lcom/google/protobuf/ByteString;

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

    .line 9985
    sget-object p2, Lwallet/core/jni/proto/Binance$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 10037
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 10031
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 10016
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Binance$HTLTOrder;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 10018
    const-class p2, Lwallet/core/jni/proto/Binance$HTLTOrder;

    monitor-enter p2

    .line 10019
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Binance$HTLTOrder;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 10021
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Binance$HTLTOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$HTLTOrder;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 10024
    sput-object p1, Lwallet/core/jni/proto/Binance$HTLTOrder;->PARSER:Lcom/google/protobuf/Parser;

    .line 10026
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

    .line 10013
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Binance$HTLTOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$HTLTOrder;

    return-object p1

    :pswitch_4
    const/16 p1, 0xb

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "from_"

    aput-object v0, p1, p3

    const-string p3, "to_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "recipientOtherChain_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "senderOtherChain_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "randomNumberHash_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "timestamp_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "amount_"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    .line 9993
    const-class p3, Lwallet/core/jni/proto/Binance$SendOrder$Token;

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "expectedIncome_"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "heightSpan_"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "crossChain_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\n\u0000\u0000\u0001\n\n\u0000\u0001\u0000\u0001\n\u0002\n\u0003\u0208\u0004\u0208\u0005\n\u0006\u0002\u0007\u001b\u0008\u0208\t\u0002\n\u0007"

    .line 10009
    sget-object p3, Lwallet/core/jni/proto/Binance$HTLTOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$HTLTOrder;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 9990
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Binance$HTLTOrder$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Binance$HTLTOrder$Builder;-><init>(Lwallet/core/jni/proto/Binance$1;)V

    return-object p1

    .line 9987
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Binance$HTLTOrder;

    invoke-direct {p1}, Lwallet/core/jni/proto/Binance$HTLTOrder;-><init>()V

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

.method public getAmount(I)Lwallet/core/jni/proto/Binance$SendOrder$Token;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 9045
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$HTLTOrder;->amount_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Binance$SendOrder$Token;

    return-object p1
.end method

.method public getAmountCount()I
    .locals 1

    .line 9034
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$HTLTOrder;->amount_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAmountList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Binance$SendOrder$Token;",
            ">;"
        }
    .end annotation

    .line 9012
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$HTLTOrder;->amount_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getAmountOrBuilder(I)Lwallet/core/jni/proto/Binance$SendOrder$TokenOrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 9056
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$HTLTOrder;->amount_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Binance$SendOrder$TokenOrBuilder;

    return-object p1
.end method

.method public getAmountOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lwallet/core/jni/proto/Binance$SendOrder$TokenOrBuilder;",
            ">;"
        }
    .end annotation

    .line 9023
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$HTLTOrder;->amount_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getCrossChain()Z
    .locals 1

    .line 9256
    iget-boolean v0, p0, Lwallet/core/jni/proto/Binance$HTLTOrder;->crossChain_:Z

    return v0
.end method

.method public getExpectedIncome()Ljava/lang/String;
    .locals 1

    .line 9151
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$HTLTOrder;->expectedIncome_:Ljava/lang/String;

    return-object v0
.end method

.method public getExpectedIncomeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 9164
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$HTLTOrder;->expectedIncome_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getFrom()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 8724
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$HTLTOrder;->from_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getHeightSpan()J
    .locals 2

    .line 9218
    iget-wide v0, p0, Lwallet/core/jni/proto/Binance$HTLTOrder;->heightSpan_:J

    return-wide v0
.end method

.method public getRandomNumberHash()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 8936
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$HTLTOrder;->randomNumberHash_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getRecipientOtherChain()Ljava/lang/String;
    .locals 1

    .line 8802
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$HTLTOrder;->recipientOtherChain_:Ljava/lang/String;

    return-object v0
.end method

.method public getRecipientOtherChainBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 8815
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$HTLTOrder;->recipientOtherChain_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSenderOtherChain()Ljava/lang/String;
    .locals 1

    .line 8869
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$HTLTOrder;->senderOtherChain_:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderOtherChainBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 8882
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$HTLTOrder;->senderOtherChain_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 8975
    iget-wide v0, p0, Lwallet/core/jni/proto/Binance$HTLTOrder;->timestamp_:J

    return-wide v0
.end method

.method public getTo()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 8763
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$HTLTOrder;->to_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method
