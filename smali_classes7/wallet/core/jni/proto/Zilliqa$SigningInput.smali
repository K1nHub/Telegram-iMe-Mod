.class public final Lwallet/core/jni/proto/Zilliqa$SigningInput;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Zilliqa.java"

# interfaces
.implements Lwallet/core/jni/proto/Zilliqa$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Zilliqa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SigningInput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Zilliqa$SigningInput$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Zilliqa$SigningInput;",
        "Lwallet/core/jni/proto/Zilliqa$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Zilliqa$SigningInputOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$SigningInput;

.field public static final GAS_LIMIT_FIELD_NUMBER:I = 0x5

.field public static final GAS_PRICE_FIELD_NUMBER:I = 0x4

.field public static final NONCE_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Zilliqa$SigningInput;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIVATE_KEY_FIELD_NUMBER:I = 0x6

.field public static final TO_FIELD_NUMBER:I = 0x3

.field public static final TRANSACTION_FIELD_NUMBER:I = 0x7

.field public static final VERSION_FIELD_NUMBER:I = 0x1


# instance fields
.field private gasLimit_:J

.field private gasPrice_:Lcom/google/protobuf/ByteString;

.field private nonce_:J

.field private privateKey_:Lcom/google/protobuf/ByteString;

.field private to_:Ljava/lang/String;

.field private transaction_:Lwallet/core/jni/proto/Zilliqa$Transaction;

.field private version_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2162
    new-instance v0, Lwallet/core/jni/proto/Zilliqa$SigningInput;

    invoke-direct {v0}, Lwallet/core/jni/proto/Zilliqa$SigningInput;-><init>()V

    .line 2165
    sput-object v0, Lwallet/core/jni/proto/Zilliqa$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$SigningInput;

    .line 2166
    const-class v1, Lwallet/core/jni/proto/Zilliqa$SigningInput;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1331
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 1332
    iput-object v0, p0, Lwallet/core/jni/proto/Zilliqa$SigningInput;->to_:Ljava/lang/String;

    .line 1333
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Zilliqa$SigningInput;->gasPrice_:Lcom/google/protobuf/ByteString;

    .line 1334
    iput-object v0, p0, Lwallet/core/jni/proto/Zilliqa$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$2100()Lwallet/core/jni/proto/Zilliqa$SigningInput;
    .locals 1

    .line 1326
    sget-object v0, Lwallet/core/jni/proto/Zilliqa$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$SigningInput;

    return-object v0
.end method

.method static synthetic access$2200(Lwallet/core/jni/proto/Zilliqa$SigningInput;I)V
    .locals 0

    .line 1326
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Zilliqa$SigningInput;->setVersion(I)V

    return-void
.end method

.method static synthetic access$2300(Lwallet/core/jni/proto/Zilliqa$SigningInput;)V
    .locals 0

    .line 1326
    invoke-direct {p0}, Lwallet/core/jni/proto/Zilliqa$SigningInput;->clearVersion()V

    return-void
.end method

.method static synthetic access$2400(Lwallet/core/jni/proto/Zilliqa$SigningInput;J)V
    .locals 0

    .line 1326
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Zilliqa$SigningInput;->setNonce(J)V

    return-void
.end method

.method static synthetic access$2500(Lwallet/core/jni/proto/Zilliqa$SigningInput;)V
    .locals 0

    .line 1326
    invoke-direct {p0}, Lwallet/core/jni/proto/Zilliqa$SigningInput;->clearNonce()V

    return-void
.end method

.method static synthetic access$2600(Lwallet/core/jni/proto/Zilliqa$SigningInput;Ljava/lang/String;)V
    .locals 0

    .line 1326
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Zilliqa$SigningInput;->setTo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lwallet/core/jni/proto/Zilliqa$SigningInput;)V
    .locals 0

    .line 1326
    invoke-direct {p0}, Lwallet/core/jni/proto/Zilliqa$SigningInput;->clearTo()V

    return-void
.end method

.method static synthetic access$2800(Lwallet/core/jni/proto/Zilliqa$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1326
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Zilliqa$SigningInput;->setToBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2900(Lwallet/core/jni/proto/Zilliqa$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1326
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Zilliqa$SigningInput;->setGasPrice(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3000(Lwallet/core/jni/proto/Zilliqa$SigningInput;)V
    .locals 0

    .line 1326
    invoke-direct {p0}, Lwallet/core/jni/proto/Zilliqa$SigningInput;->clearGasPrice()V

    return-void
.end method

.method static synthetic access$3100(Lwallet/core/jni/proto/Zilliqa$SigningInput;J)V
    .locals 0

    .line 1326
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Zilliqa$SigningInput;->setGasLimit(J)V

    return-void
.end method

.method static synthetic access$3200(Lwallet/core/jni/proto/Zilliqa$SigningInput;)V
    .locals 0

    .line 1326
    invoke-direct {p0}, Lwallet/core/jni/proto/Zilliqa$SigningInput;->clearGasLimit()V

    return-void
.end method

.method static synthetic access$3300(Lwallet/core/jni/proto/Zilliqa$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1326
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Zilliqa$SigningInput;->setPrivateKey(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3400(Lwallet/core/jni/proto/Zilliqa$SigningInput;)V
    .locals 0

    .line 1326
    invoke-direct {p0}, Lwallet/core/jni/proto/Zilliqa$SigningInput;->clearPrivateKey()V

    return-void
.end method

.method static synthetic access$3500(Lwallet/core/jni/proto/Zilliqa$SigningInput;Lwallet/core/jni/proto/Zilliqa$Transaction;)V
    .locals 0

    .line 1326
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Zilliqa$SigningInput;->setTransaction(Lwallet/core/jni/proto/Zilliqa$Transaction;)V

    return-void
.end method

.method static synthetic access$3600(Lwallet/core/jni/proto/Zilliqa$SigningInput;Lwallet/core/jni/proto/Zilliqa$Transaction;)V
    .locals 0

    .line 1326
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Zilliqa$SigningInput;->mergeTransaction(Lwallet/core/jni/proto/Zilliqa$Transaction;)V

    return-void
.end method

.method static synthetic access$3700(Lwallet/core/jni/proto/Zilliqa$SigningInput;)V
    .locals 0

    .line 1326
    invoke-direct {p0}, Lwallet/core/jni/proto/Zilliqa$SigningInput;->clearTransaction()V

    return-void
.end method

.method private clearGasLimit()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1553
    iput-wide v0, p0, Lwallet/core/jni/proto/Zilliqa$SigningInput;->gasLimit_:J

    return-void
.end method

.method private clearGasPrice()V
    .locals 1

    .line 1515
    invoke-static {}, Lwallet/core/jni/proto/Zilliqa$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Zilliqa$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Zilliqa$SigningInput;->getGasPrice()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Zilliqa$SigningInput;->gasPrice_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearNonce()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1409
    iput-wide v0, p0, Lwallet/core/jni/proto/Zilliqa$SigningInput;->nonce_:J

    return-void
.end method

.method private clearPrivateKey()V
    .locals 1

    .line 1592
    invoke-static {}, Lwallet/core/jni/proto/Zilliqa$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Zilliqa$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Zilliqa$SigningInput;->getPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Zilliqa$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearTo()V
    .locals 1

    .line 1462
    invoke-static {}, Lwallet/core/jni/proto/Zilliqa$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Zilliqa$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Zilliqa$SigningInput;->getTo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Zilliqa$SigningInput;->to_:Ljava/lang/String;

    return-void
.end method

.method private clearTransaction()V
    .locals 1

    const/4 v0, 0x0

    .line 1657
    iput-object v0, p0, Lwallet/core/jni/proto/Zilliqa$SigningInput;->transaction_:Lwallet/core/jni/proto/Zilliqa$Transaction;

    return-void
.end method

.method private clearVersion()V
    .locals 1

    const/4 v0, 0x0

    .line 1371
    iput v0, p0, Lwallet/core/jni/proto/Zilliqa$SigningInput;->version_:I

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Zilliqa$SigningInput;
    .locals 1

    .line 2171
    sget-object v0, Lwallet/core/jni/proto/Zilliqa$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$SigningInput;

    return-object v0
.end method

.method private mergeTransaction(Lwallet/core/jni/proto/Zilliqa$Transaction;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1640
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1641
    iget-object v0, p0, Lwallet/core/jni/proto/Zilliqa$SigningInput;->transaction_:Lwallet/core/jni/proto/Zilliqa$Transaction;

    if-eqz v0, :cond_0

    .line 1642
    invoke-static {}, Lwallet/core/jni/proto/Zilliqa$Transaction;->getDefaultInstance()Lwallet/core/jni/proto/Zilliqa$Transaction;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1643
    iget-object v0, p0, Lwallet/core/jni/proto/Zilliqa$SigningInput;->transaction_:Lwallet/core/jni/proto/Zilliqa$Transaction;

    .line 1644
    invoke-static {v0}, Lwallet/core/jni/proto/Zilliqa$Transaction;->newBuilder(Lwallet/core/jni/proto/Zilliqa$Transaction;)Lwallet/core/jni/proto/Zilliqa$Transaction$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Zilliqa$Transaction$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Zilliqa$Transaction;

    iput-object p1, p0, Lwallet/core/jni/proto/Zilliqa$SigningInput;->transaction_:Lwallet/core/jni/proto/Zilliqa$Transaction;

    goto :goto_0

    .line 1646
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Zilliqa$SigningInput;->transaction_:Lwallet/core/jni/proto/Zilliqa$Transaction;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Zilliqa$SigningInput$Builder;
    .locals 1

    .line 1736
    sget-object v0, Lwallet/core/jni/proto/Zilliqa$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$SigningInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Zilliqa$SigningInput$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Zilliqa$SigningInput;)Lwallet/core/jni/proto/Zilliqa$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 1739
    sget-object v0, Lwallet/core/jni/proto/Zilliqa$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$SigningInput;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Zilliqa$SigningInput$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Zilliqa$SigningInput;
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

    .line 1713
    sget-object v0, Lwallet/core/jni/proto/Zilliqa$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Zilliqa$SigningInput;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Zilliqa$SigningInput;
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

    .line 1719
    sget-object v0, Lwallet/core/jni/proto/Zilliqa$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Zilliqa$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Zilliqa$SigningInput;
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

    .line 1677
    sget-object v0, Lwallet/core/jni/proto/Zilliqa$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Zilliqa$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Zilliqa$SigningInput;
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

    .line 1684
    sget-object v0, Lwallet/core/jni/proto/Zilliqa$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Zilliqa$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Zilliqa$SigningInput;
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

    .line 1724
    sget-object v0, Lwallet/core/jni/proto/Zilliqa$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Zilliqa$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Zilliqa$SigningInput;
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

    .line 1731
    sget-object v0, Lwallet/core/jni/proto/Zilliqa$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Zilliqa$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Zilliqa$SigningInput;
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

    .line 1701
    sget-object v0, Lwallet/core/jni/proto/Zilliqa$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Zilliqa$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Zilliqa$SigningInput;
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

    .line 1708
    sget-object v0, Lwallet/core/jni/proto/Zilliqa$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Zilliqa$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Zilliqa$SigningInput;
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

    .line 1664
    sget-object v0, Lwallet/core/jni/proto/Zilliqa$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Zilliqa$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Zilliqa$SigningInput;
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

    .line 1671
    sget-object v0, Lwallet/core/jni/proto/Zilliqa$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Zilliqa$SigningInput;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Zilliqa$SigningInput;
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

    .line 1689
    sget-object v0, Lwallet/core/jni/proto/Zilliqa$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Zilliqa$SigningInput;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Zilliqa$SigningInput;
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

    .line 1696
    sget-object v0, Lwallet/core/jni/proto/Zilliqa$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Zilliqa$SigningInput;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Zilliqa$SigningInput;",
            ">;"
        }
    .end annotation

    .line 2177
    sget-object v0, Lwallet/core/jni/proto/Zilliqa$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$SigningInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
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

    .line 1542
    iput-wide p1, p0, Lwallet/core/jni/proto/Zilliqa$SigningInput;->gasLimit_:J

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

    .line 1502
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1504
    iput-object p1, p0, Lwallet/core/jni/proto/Zilliqa$SigningInput;->gasPrice_:Lcom/google/protobuf/ByteString;

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

    .line 1398
    iput-wide p1, p0, Lwallet/core/jni/proto/Zilliqa$SigningInput;->nonce_:J

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

    .line 1579
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1581
    iput-object p1, p0, Lwallet/core/jni/proto/Zilliqa$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setTo(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1449
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1451
    iput-object p1, p0, Lwallet/core/jni/proto/Zilliqa$SigningInput;->to_:Ljava/lang/String;

    return-void
.end method

.method private setToBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1474
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1475
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Zilliqa$SigningInput;->to_:Ljava/lang/String;

    return-void
.end method

.method private setTransaction(Lwallet/core/jni/proto/Zilliqa$Transaction;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1627
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1628
    iput-object p1, p0, Lwallet/core/jni/proto/Zilliqa$SigningInput;->transaction_:Lwallet/core/jni/proto/Zilliqa$Transaction;

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

    .line 1360
    iput p1, p0, Lwallet/core/jni/proto/Zilliqa$SigningInput;->version_:I

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

    .line 2107
    sget-object p2, Lwallet/core/jni/proto/Zilliqa$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2155
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 2149
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 2134
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Zilliqa$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 2136
    const-class p2, Lwallet/core/jni/proto/Zilliqa$SigningInput;

    monitor-enter p2

    .line 2137
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Zilliqa$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 2139
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Zilliqa$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$SigningInput;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2142
    sput-object p1, Lwallet/core/jni/proto/Zilliqa$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    .line 2144
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

    .line 2131
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Zilliqa$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$SigningInput;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "version_"

    aput-object v0, p1, p3

    const-string p3, "nonce_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "to_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "gasPrice_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "gasLimit_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "privateKey_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "transaction_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0007\u0000\u0000\u0001\u0007\u0007\u0000\u0000\u0000\u0001\u000b\u0002\u0003\u0003\u0208\u0004\n\u0005\u0003\u0006\n\u0007\t"

    .line 2127
    sget-object p3, Lwallet/core/jni/proto/Zilliqa$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Zilliqa$SigningInput;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2112
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Zilliqa$SigningInput$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Zilliqa$SigningInput$Builder;-><init>(Lwallet/core/jni/proto/Zilliqa$1;)V

    return-object p1

    .line 2109
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Zilliqa$SigningInput;

    invoke-direct {p1}, Lwallet/core/jni/proto/Zilliqa$SigningInput;-><init>()V

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

.method public getGasLimit()J
    .locals 2

    .line 1530
    iget-wide v0, p0, Lwallet/core/jni/proto/Zilliqa$SigningInput;->gasLimit_:J

    return-wide v0
.end method

.method public getGasPrice()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1491
    iget-object v0, p0, Lwallet/core/jni/proto/Zilliqa$SigningInput;->gasPrice_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getNonce()J
    .locals 2

    .line 1386
    iget-wide v0, p0, Lwallet/core/jni/proto/Zilliqa$SigningInput;->nonce_:J

    return-wide v0
.end method

.method public getPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1568
    iget-object v0, p0, Lwallet/core/jni/proto/Zilliqa$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getTo()Ljava/lang/String;
    .locals 1

    .line 1424
    iget-object v0, p0, Lwallet/core/jni/proto/Zilliqa$SigningInput;->to_:Ljava/lang/String;

    return-object v0
.end method

.method public getToBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1437
    iget-object v0, p0, Lwallet/core/jni/proto/Zilliqa$SigningInput;->to_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTransaction()Lwallet/core/jni/proto/Zilliqa$Transaction;
    .locals 1

    .line 1617
    iget-object v0, p0, Lwallet/core/jni/proto/Zilliqa$SigningInput;->transaction_:Lwallet/core/jni/proto/Zilliqa$Transaction;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/Zilliqa$Transaction;->getDefaultInstance()Lwallet/core/jni/proto/Zilliqa$Transaction;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 1348
    iget v0, p0, Lwallet/core/jni/proto/Zilliqa$SigningInput;->version_:I

    return v0
.end method

.method public hasTransaction()Z
    .locals 1

    .line 1606
    iget-object v0, p0, Lwallet/core/jni/proto/Zilliqa$SigningInput;->transaction_:Lwallet/core/jni/proto/Zilliqa$Transaction;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
