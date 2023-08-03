.class public final Lwallet/core/jni/proto/Nebulas$RawTransaction;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Nebulas.java"

# interfaces
.implements Lwallet/core/jni/proto/Nebulas$RawTransactionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Nebulas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RawTransaction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Nebulas$RawTransaction$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Nebulas$RawTransaction;",
        "Lwallet/core/jni/proto/Nebulas$RawTransaction$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Nebulas$RawTransactionOrBuilder;"
    }
.end annotation


# static fields
.field public static final ALG_FIELD_NUMBER:I = 0xb

.field public static final CHAIN_ID_FIELD_NUMBER:I = 0x8

.field public static final DATA_FIELD_NUMBER:I = 0x7

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$RawTransaction;

.field public static final FROM_FIELD_NUMBER:I = 0x2

.field public static final GAS_LIMIT_FIELD_NUMBER:I = 0xa

.field public static final GAS_PRICE_FIELD_NUMBER:I = 0x9

.field public static final HASH_FIELD_NUMBER:I = 0x1

.field public static final NONCE_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Nebulas$RawTransaction;",
            ">;"
        }
    .end annotation
.end field

.field public static final SIGN_FIELD_NUMBER:I = 0xc

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x6

.field public static final TO_FIELD_NUMBER:I = 0x3

.field public static final VALUE_FIELD_NUMBER:I = 0x4


# instance fields
.field private alg_:I

.field private chainId_:I

.field private data_:Lwallet/core/jni/proto/Nebulas$Data;

.field private from_:Lcom/google/protobuf/ByteString;

.field private gasLimit_:Lcom/google/protobuf/ByteString;

.field private gasPrice_:Lcom/google/protobuf/ByteString;

.field private hash_:Lcom/google/protobuf/ByteString;

.field private nonce_:J

.field private sign_:Lcom/google/protobuf/ByteString;

.field private timestamp_:J

.field private to_:Lcom/google/protobuf/ByteString;

.field private value_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 3528
    new-instance v0, Lwallet/core/jni/proto/Nebulas$RawTransaction;

    invoke-direct {v0}, Lwallet/core/jni/proto/Nebulas$RawTransaction;-><init>()V

    .line 3531
    sput-object v0, Lwallet/core/jni/proto/Nebulas$RawTransaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$RawTransaction;

    .line 3532
    const-class v1, Lwallet/core/jni/proto/Nebulas$RawTransaction;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2351
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2352
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Nebulas$RawTransaction;->hash_:Lcom/google/protobuf/ByteString;

    .line 2353
    iput-object v0, p0, Lwallet/core/jni/proto/Nebulas$RawTransaction;->from_:Lcom/google/protobuf/ByteString;

    .line 2354
    iput-object v0, p0, Lwallet/core/jni/proto/Nebulas$RawTransaction;->to_:Lcom/google/protobuf/ByteString;

    .line 2355
    iput-object v0, p0, Lwallet/core/jni/proto/Nebulas$RawTransaction;->value_:Lcom/google/protobuf/ByteString;

    .line 2356
    iput-object v0, p0, Lwallet/core/jni/proto/Nebulas$RawTransaction;->gasPrice_:Lcom/google/protobuf/ByteString;

    .line 2357
    iput-object v0, p0, Lwallet/core/jni/proto/Nebulas$RawTransaction;->gasLimit_:Lcom/google/protobuf/ByteString;

    .line 2358
    iput-object v0, p0, Lwallet/core/jni/proto/Nebulas$RawTransaction;->sign_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$4100()Lwallet/core/jni/proto/Nebulas$RawTransaction;
    .locals 1

    .line 2346
    sget-object v0, Lwallet/core/jni/proto/Nebulas$RawTransaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$RawTransaction;

    return-object v0
.end method

.method static synthetic access$4200(Lwallet/core/jni/proto/Nebulas$RawTransaction;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 2346
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->setHash(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4300(Lwallet/core/jni/proto/Nebulas$RawTransaction;)V
    .locals 0

    .line 2346
    invoke-direct {p0}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->clearHash()V

    return-void
.end method

.method static synthetic access$4400(Lwallet/core/jni/proto/Nebulas$RawTransaction;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 2346
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->setFrom(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4500(Lwallet/core/jni/proto/Nebulas$RawTransaction;)V
    .locals 0

    .line 2346
    invoke-direct {p0}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->clearFrom()V

    return-void
.end method

.method static synthetic access$4600(Lwallet/core/jni/proto/Nebulas$RawTransaction;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 2346
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->setTo(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4700(Lwallet/core/jni/proto/Nebulas$RawTransaction;)V
    .locals 0

    .line 2346
    invoke-direct {p0}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->clearTo()V

    return-void
.end method

.method static synthetic access$4800(Lwallet/core/jni/proto/Nebulas$RawTransaction;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 2346
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->setValue(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4900(Lwallet/core/jni/proto/Nebulas$RawTransaction;)V
    .locals 0

    .line 2346
    invoke-direct {p0}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->clearValue()V

    return-void
.end method

.method static synthetic access$5000(Lwallet/core/jni/proto/Nebulas$RawTransaction;J)V
    .locals 0

    .line 2346
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->setNonce(J)V

    return-void
.end method

.method static synthetic access$5100(Lwallet/core/jni/proto/Nebulas$RawTransaction;)V
    .locals 0

    .line 2346
    invoke-direct {p0}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->clearNonce()V

    return-void
.end method

.method static synthetic access$5200(Lwallet/core/jni/proto/Nebulas$RawTransaction;J)V
    .locals 0

    .line 2346
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->setTimestamp(J)V

    return-void
.end method

.method static synthetic access$5300(Lwallet/core/jni/proto/Nebulas$RawTransaction;)V
    .locals 0

    .line 2346
    invoke-direct {p0}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->clearTimestamp()V

    return-void
.end method

.method static synthetic access$5400(Lwallet/core/jni/proto/Nebulas$RawTransaction;Lwallet/core/jni/proto/Nebulas$Data;)V
    .locals 0

    .line 2346
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->setData(Lwallet/core/jni/proto/Nebulas$Data;)V

    return-void
.end method

.method static synthetic access$5500(Lwallet/core/jni/proto/Nebulas$RawTransaction;Lwallet/core/jni/proto/Nebulas$Data;)V
    .locals 0

    .line 2346
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->mergeData(Lwallet/core/jni/proto/Nebulas$Data;)V

    return-void
.end method

.method static synthetic access$5600(Lwallet/core/jni/proto/Nebulas$RawTransaction;)V
    .locals 0

    .line 2346
    invoke-direct {p0}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->clearData()V

    return-void
.end method

.method static synthetic access$5700(Lwallet/core/jni/proto/Nebulas$RawTransaction;I)V
    .locals 0

    .line 2346
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->setChainId(I)V

    return-void
.end method

.method static synthetic access$5800(Lwallet/core/jni/proto/Nebulas$RawTransaction;)V
    .locals 0

    .line 2346
    invoke-direct {p0}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->clearChainId()V

    return-void
.end method

.method static synthetic access$5900(Lwallet/core/jni/proto/Nebulas$RawTransaction;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 2346
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->setGasPrice(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$6000(Lwallet/core/jni/proto/Nebulas$RawTransaction;)V
    .locals 0

    .line 2346
    invoke-direct {p0}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->clearGasPrice()V

    return-void
.end method

.method static synthetic access$6100(Lwallet/core/jni/proto/Nebulas$RawTransaction;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 2346
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->setGasLimit(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$6200(Lwallet/core/jni/proto/Nebulas$RawTransaction;)V
    .locals 0

    .line 2346
    invoke-direct {p0}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->clearGasLimit()V

    return-void
.end method

.method static synthetic access$6300(Lwallet/core/jni/proto/Nebulas$RawTransaction;I)V
    .locals 0

    .line 2346
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->setAlg(I)V

    return-void
.end method

.method static synthetic access$6400(Lwallet/core/jni/proto/Nebulas$RawTransaction;)V
    .locals 0

    .line 2346
    invoke-direct {p0}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->clearAlg()V

    return-void
.end method

.method static synthetic access$6500(Lwallet/core/jni/proto/Nebulas$RawTransaction;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 2346
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->setSign(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$6600(Lwallet/core/jni/proto/Nebulas$RawTransaction;)V
    .locals 0

    .line 2346
    invoke-direct {p0}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->clearSign()V

    return-void
.end method

.method private clearAlg()V
    .locals 1

    const/4 v0, 0x0

    .line 2809
    iput v0, p0, Lwallet/core/jni/proto/Nebulas$RawTransaction;->alg_:I

    return-void
.end method

.method private clearChainId()V
    .locals 1

    const/4 v0, 0x0

    .line 2693
    iput v0, p0, Lwallet/core/jni/proto/Nebulas$RawTransaction;->chainId_:I

    return-void
.end method

.method private clearData()V
    .locals 1

    const/4 v0, 0x0

    .line 2654
    iput-object v0, p0, Lwallet/core/jni/proto/Nebulas$RawTransaction;->data_:Lwallet/core/jni/proto/Nebulas$Data;

    return-void
.end method

.method private clearFrom()V
    .locals 1

    .line 2435
    invoke-static {}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->getDefaultInstance()Lwallet/core/jni/proto/Nebulas$RawTransaction;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->getFrom()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Nebulas$RawTransaction;->from_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearGasLimit()V
    .locals 1

    .line 2771
    invoke-static {}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->getDefaultInstance()Lwallet/core/jni/proto/Nebulas$RawTransaction;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->getGasLimit()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Nebulas$RawTransaction;->gasLimit_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearGasPrice()V
    .locals 1

    .line 2732
    invoke-static {}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->getDefaultInstance()Lwallet/core/jni/proto/Nebulas$RawTransaction;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->getGasPrice()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Nebulas$RawTransaction;->gasPrice_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearHash()V
    .locals 1

    .line 2396
    invoke-static {}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->getDefaultInstance()Lwallet/core/jni/proto/Nebulas$RawTransaction;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->getHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Nebulas$RawTransaction;->hash_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearNonce()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 2551
    iput-wide v0, p0, Lwallet/core/jni/proto/Nebulas$RawTransaction;->nonce_:J

    return-void
.end method

.method private clearSign()V
    .locals 1

    .line 2848
    invoke-static {}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->getDefaultInstance()Lwallet/core/jni/proto/Nebulas$RawTransaction;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->getSign()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Nebulas$RawTransaction;->sign_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearTimestamp()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 2589
    iput-wide v0, p0, Lwallet/core/jni/proto/Nebulas$RawTransaction;->timestamp_:J

    return-void
.end method

.method private clearTo()V
    .locals 1

    .line 2474
    invoke-static {}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->getDefaultInstance()Lwallet/core/jni/proto/Nebulas$RawTransaction;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->getTo()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Nebulas$RawTransaction;->to_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearValue()V
    .locals 1

    .line 2513
    invoke-static {}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->getDefaultInstance()Lwallet/core/jni/proto/Nebulas$RawTransaction;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nebulas$RawTransaction;->getValue()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Nebulas$RawTransaction;->value_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Nebulas$RawTransaction;
    .locals 1

    .line 3537
    sget-object v0, Lwallet/core/jni/proto/Nebulas$RawTransaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$RawTransaction;

    return-object v0
.end method

.method private mergeData(Lwallet/core/jni/proto/Nebulas$Data;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2637
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2638
    iget-object v0, p0, Lwallet/core/jni/proto/Nebulas$RawTransaction;->data_:Lwallet/core/jni/proto/Nebulas$Data;

    if-eqz v0, :cond_0

    .line 2639
    invoke-static {}, Lwallet/core/jni/proto/Nebulas$Data;->getDefaultInstance()Lwallet/core/jni/proto/Nebulas$Data;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2640
    iget-object v0, p0, Lwallet/core/jni/proto/Nebulas$RawTransaction;->data_:Lwallet/core/jni/proto/Nebulas$Data;

    .line 2641
    invoke-static {v0}, Lwallet/core/jni/proto/Nebulas$Data;->newBuilder(Lwallet/core/jni/proto/Nebulas$Data;)Lwallet/core/jni/proto/Nebulas$Data$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Nebulas$Data$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Nebulas$Data;

    iput-object p1, p0, Lwallet/core/jni/proto/Nebulas$RawTransaction;->data_:Lwallet/core/jni/proto/Nebulas$Data;

    goto :goto_0

    .line 2643
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Nebulas$RawTransaction;->data_:Lwallet/core/jni/proto/Nebulas$Data;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Nebulas$RawTransaction$Builder;
    .locals 1

    .line 2926
    sget-object v0, Lwallet/core/jni/proto/Nebulas$RawTransaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$RawTransaction;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Nebulas$RawTransaction$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Nebulas$RawTransaction;)Lwallet/core/jni/proto/Nebulas$RawTransaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 2929
    sget-object v0, Lwallet/core/jni/proto/Nebulas$RawTransaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$RawTransaction;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nebulas$RawTransaction$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Nebulas$RawTransaction;
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

    .line 2903
    sget-object v0, Lwallet/core/jni/proto/Nebulas$RawTransaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$RawTransaction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nebulas$RawTransaction;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nebulas$RawTransaction;
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

    .line 2909
    sget-object v0, Lwallet/core/jni/proto/Nebulas$RawTransaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$RawTransaction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nebulas$RawTransaction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nebulas$RawTransaction;
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

    .line 2867
    sget-object v0, Lwallet/core/jni/proto/Nebulas$RawTransaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$RawTransaction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nebulas$RawTransaction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nebulas$RawTransaction;
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

    .line 2874
    sget-object v0, Lwallet/core/jni/proto/Nebulas$RawTransaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$RawTransaction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nebulas$RawTransaction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Nebulas$RawTransaction;
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

    .line 2914
    sget-object v0, Lwallet/core/jni/proto/Nebulas$RawTransaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$RawTransaction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nebulas$RawTransaction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nebulas$RawTransaction;
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

    .line 2921
    sget-object v0, Lwallet/core/jni/proto/Nebulas$RawTransaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$RawTransaction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nebulas$RawTransaction;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Nebulas$RawTransaction;
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

    .line 2891
    sget-object v0, Lwallet/core/jni/proto/Nebulas$RawTransaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$RawTransaction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nebulas$RawTransaction;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nebulas$RawTransaction;
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

    .line 2898
    sget-object v0, Lwallet/core/jni/proto/Nebulas$RawTransaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$RawTransaction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nebulas$RawTransaction;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Nebulas$RawTransaction;
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

    .line 2854
    sget-object v0, Lwallet/core/jni/proto/Nebulas$RawTransaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$RawTransaction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nebulas$RawTransaction;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nebulas$RawTransaction;
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

    .line 2861
    sget-object v0, Lwallet/core/jni/proto/Nebulas$RawTransaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$RawTransaction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nebulas$RawTransaction;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Nebulas$RawTransaction;
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

    .line 2879
    sget-object v0, Lwallet/core/jni/proto/Nebulas$RawTransaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$RawTransaction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nebulas$RawTransaction;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nebulas$RawTransaction;
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

    .line 2886
    sget-object v0, Lwallet/core/jni/proto/Nebulas$RawTransaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$RawTransaction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nebulas$RawTransaction;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Nebulas$RawTransaction;",
            ">;"
        }
    .end annotation

    .line 3543
    sget-object v0, Lwallet/core/jni/proto/Nebulas$RawTransaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$RawTransaction;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAlg(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2798
    iput p1, p0, Lwallet/core/jni/proto/Nebulas$RawTransaction;->alg_:I

    return-void
.end method

.method private setChainId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2682
    iput p1, p0, Lwallet/core/jni/proto/Nebulas$RawTransaction;->chainId_:I

    return-void
.end method

.method private setData(Lwallet/core/jni/proto/Nebulas$Data;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2624
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2625
    iput-object p1, p0, Lwallet/core/jni/proto/Nebulas$RawTransaction;->data_:Lwallet/core/jni/proto/Nebulas$Data;

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

    .line 2422
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2424
    iput-object p1, p0, Lwallet/core/jni/proto/Nebulas$RawTransaction;->from_:Lcom/google/protobuf/ByteString;

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

    .line 2758
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2760
    iput-object p1, p0, Lwallet/core/jni/proto/Nebulas$RawTransaction;->gasLimit_:Lcom/google/protobuf/ByteString;

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

    .line 2719
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2721
    iput-object p1, p0, Lwallet/core/jni/proto/Nebulas$RawTransaction;->gasPrice_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setHash(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2383
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2385
    iput-object p1, p0, Lwallet/core/jni/proto/Nebulas$RawTransaction;->hash_:Lcom/google/protobuf/ByteString;

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

    .line 2540
    iput-wide p1, p0, Lwallet/core/jni/proto/Nebulas$RawTransaction;->nonce_:J

    return-void
.end method

.method private setSign(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2835
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2837
    iput-object p1, p0, Lwallet/core/jni/proto/Nebulas$RawTransaction;->sign_:Lcom/google/protobuf/ByteString;

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

    .line 2578
    iput-wide p1, p0, Lwallet/core/jni/proto/Nebulas$RawTransaction;->timestamp_:J

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

    .line 2461
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2463
    iput-object p1, p0, Lwallet/core/jni/proto/Nebulas$RawTransaction;->to_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setValue(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2500
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2502
    iput-object p1, p0, Lwallet/core/jni/proto/Nebulas$RawTransaction;->value_:Lcom/google/protobuf/ByteString;

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

    .line 3468
    sget-object p2, Lwallet/core/jni/proto/Nebulas$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 3521
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 3515
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 3500
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Nebulas$RawTransaction;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 3502
    const-class p2, Lwallet/core/jni/proto/Nebulas$RawTransaction;

    monitor-enter p2

    .line 3503
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Nebulas$RawTransaction;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 3505
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Nebulas$RawTransaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$RawTransaction;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3508
    sput-object p1, Lwallet/core/jni/proto/Nebulas$RawTransaction;->PARSER:Lcom/google/protobuf/Parser;

    .line 3510
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

    .line 3497
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Nebulas$RawTransaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$RawTransaction;

    return-object p1

    :pswitch_4
    const/16 p1, 0xc

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "hash_"

    aput-object v0, p1, p3

    const-string p3, "from_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "to_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "value_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "nonce_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "timestamp_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "data_"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "chainId_"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "gasPrice_"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "gasLimit_"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "alg_"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "sign_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u000c\u0000\u0000\u0001\u000c\u000c\u0000\u0000\u0000\u0001\n\u0002\n\u0003\n\u0004\n\u0005\u0003\u0006\u0002\u0007\t\u0008\u000b\t\n\n\n\u000b\u000b\u000c\n"

    .line 3493
    sget-object p3, Lwallet/core/jni/proto/Nebulas$RawTransaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nebulas$RawTransaction;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3473
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Nebulas$RawTransaction$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Nebulas$RawTransaction$Builder;-><init>(Lwallet/core/jni/proto/Nebulas$1;)V

    return-object p1

    .line 3470
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Nebulas$RawTransaction;

    invoke-direct {p1}, Lwallet/core/jni/proto/Nebulas$RawTransaction;-><init>()V

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

.method public getAlg()I
    .locals 1

    .line 2786
    iget v0, p0, Lwallet/core/jni/proto/Nebulas$RawTransaction;->alg_:I

    return v0
.end method

.method public getChainId()I
    .locals 1

    .line 2670
    iget v0, p0, Lwallet/core/jni/proto/Nebulas$RawTransaction;->chainId_:I

    return v0
.end method

.method public getData()Lwallet/core/jni/proto/Nebulas$Data;
    .locals 1

    .line 2614
    iget-object v0, p0, Lwallet/core/jni/proto/Nebulas$RawTransaction;->data_:Lwallet/core/jni/proto/Nebulas$Data;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/Nebulas$Data;->getDefaultInstance()Lwallet/core/jni/proto/Nebulas$Data;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getFrom()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2411
    iget-object v0, p0, Lwallet/core/jni/proto/Nebulas$RawTransaction;->from_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getGasLimit()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2747
    iget-object v0, p0, Lwallet/core/jni/proto/Nebulas$RawTransaction;->gasLimit_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getGasPrice()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2708
    iget-object v0, p0, Lwallet/core/jni/proto/Nebulas$RawTransaction;->gasPrice_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getHash()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2372
    iget-object v0, p0, Lwallet/core/jni/proto/Nebulas$RawTransaction;->hash_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getNonce()J
    .locals 2

    .line 2528
    iget-wide v0, p0, Lwallet/core/jni/proto/Nebulas$RawTransaction;->nonce_:J

    return-wide v0
.end method

.method public getSign()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2824
    iget-object v0, p0, Lwallet/core/jni/proto/Nebulas$RawTransaction;->sign_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 2566
    iget-wide v0, p0, Lwallet/core/jni/proto/Nebulas$RawTransaction;->timestamp_:J

    return-wide v0
.end method

.method public getTo()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2450
    iget-object v0, p0, Lwallet/core/jni/proto/Nebulas$RawTransaction;->to_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getValue()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2489
    iget-object v0, p0, Lwallet/core/jni/proto/Nebulas$RawTransaction;->value_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasData()Z
    .locals 1

    .line 2603
    iget-object v0, p0, Lwallet/core/jni/proto/Nebulas$RawTransaction;->data_:Lwallet/core/jni/proto/Nebulas$Data;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
