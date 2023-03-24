.class public final Lwallet/core/jni/proto/Aeternity$SigningInput;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Aeternity.java"

# interfaces
.implements Lwallet/core/jni/proto/Aeternity$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Aeternity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SigningInput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Aeternity$SigningInput$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Aeternity$SigningInput;",
        "Lwallet/core/jni/proto/Aeternity$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Aeternity$SigningInputOrBuilder;"
    }
.end annotation


# static fields
.field public static final AMOUNT_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aeternity$SigningInput;

.field public static final FEE_FIELD_NUMBER:I = 0x4

.field public static final FROM_ADDRESS_FIELD_NUMBER:I = 0x1

.field public static final NONCE_FIELD_NUMBER:I = 0x7

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Aeternity$SigningInput;",
            ">;"
        }
    .end annotation
.end field

.field public static final PAYLOAD_FIELD_NUMBER:I = 0x5

.field public static final PRIVATE_KEY_FIELD_NUMBER:I = 0x8

.field public static final TO_ADDRESS_FIELD_NUMBER:I = 0x2

.field public static final TTL_FIELD_NUMBER:I = 0x6


# instance fields
.field private amount_:Lcom/google/protobuf/ByteString;

.field private fee_:Lcom/google/protobuf/ByteString;

.field private fromAddress_:Ljava/lang/String;

.field private nonce_:J

.field private payload_:Ljava/lang/String;

.field private privateKey_:Lcom/google/protobuf/ByteString;

.field private toAddress_:Ljava/lang/String;

.field private ttl_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1108
    new-instance v0, Lwallet/core/jni/proto/Aeternity$SigningInput;

    invoke-direct {v0}, Lwallet/core/jni/proto/Aeternity$SigningInput;-><init>()V

    .line 1111
    sput-object v0, Lwallet/core/jni/proto/Aeternity$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aeternity$SigningInput;

    .line 1112
    const-class v1, Lwallet/core/jni/proto/Aeternity$SigningInput;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 137
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 138
    iput-object v0, p0, Lwallet/core/jni/proto/Aeternity$SigningInput;->fromAddress_:Ljava/lang/String;

    .line 139
    iput-object v0, p0, Lwallet/core/jni/proto/Aeternity$SigningInput;->toAddress_:Ljava/lang/String;

    .line 140
    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v1, p0, Lwallet/core/jni/proto/Aeternity$SigningInput;->amount_:Lcom/google/protobuf/ByteString;

    .line 141
    iput-object v1, p0, Lwallet/core/jni/proto/Aeternity$SigningInput;->fee_:Lcom/google/protobuf/ByteString;

    .line 142
    iput-object v0, p0, Lwallet/core/jni/proto/Aeternity$SigningInput;->payload_:Ljava/lang/String;

    .line 143
    iput-object v1, p0, Lwallet/core/jni/proto/Aeternity$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$000()Lwallet/core/jni/proto/Aeternity$SigningInput;
    .locals 1

    .line 132
    sget-object v0, Lwallet/core/jni/proto/Aeternity$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aeternity$SigningInput;

    return-object v0
.end method

.method static synthetic access$100(Lwallet/core/jni/proto/Aeternity$SigningInput;Ljava/lang/String;)V
    .locals 0

    .line 132
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aeternity$SigningInput;->setFromAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lwallet/core/jni/proto/Aeternity$SigningInput;)V
    .locals 0

    .line 132
    invoke-direct {p0}, Lwallet/core/jni/proto/Aeternity$SigningInput;->clearFee()V

    return-void
.end method

.method static synthetic access$1100(Lwallet/core/jni/proto/Aeternity$SigningInput;Ljava/lang/String;)V
    .locals 0

    .line 132
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aeternity$SigningInput;->setPayload(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lwallet/core/jni/proto/Aeternity$SigningInput;)V
    .locals 0

    .line 132
    invoke-direct {p0}, Lwallet/core/jni/proto/Aeternity$SigningInput;->clearPayload()V

    return-void
.end method

.method static synthetic access$1300(Lwallet/core/jni/proto/Aeternity$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 132
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aeternity$SigningInput;->setPayloadBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1400(Lwallet/core/jni/proto/Aeternity$SigningInput;J)V
    .locals 0

    .line 132
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Aeternity$SigningInput;->setTtl(J)V

    return-void
.end method

.method static synthetic access$1500(Lwallet/core/jni/proto/Aeternity$SigningInput;)V
    .locals 0

    .line 132
    invoke-direct {p0}, Lwallet/core/jni/proto/Aeternity$SigningInput;->clearTtl()V

    return-void
.end method

.method static synthetic access$1600(Lwallet/core/jni/proto/Aeternity$SigningInput;J)V
    .locals 0

    .line 132
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Aeternity$SigningInput;->setNonce(J)V

    return-void
.end method

.method static synthetic access$1700(Lwallet/core/jni/proto/Aeternity$SigningInput;)V
    .locals 0

    .line 132
    invoke-direct {p0}, Lwallet/core/jni/proto/Aeternity$SigningInput;->clearNonce()V

    return-void
.end method

.method static synthetic access$1800(Lwallet/core/jni/proto/Aeternity$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 132
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aeternity$SigningInput;->setPrivateKey(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1900(Lwallet/core/jni/proto/Aeternity$SigningInput;)V
    .locals 0

    .line 132
    invoke-direct {p0}, Lwallet/core/jni/proto/Aeternity$SigningInput;->clearPrivateKey()V

    return-void
.end method

.method static synthetic access$200(Lwallet/core/jni/proto/Aeternity$SigningInput;)V
    .locals 0

    .line 132
    invoke-direct {p0}, Lwallet/core/jni/proto/Aeternity$SigningInput;->clearFromAddress()V

    return-void
.end method

.method static synthetic access$300(Lwallet/core/jni/proto/Aeternity$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 132
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aeternity$SigningInput;->setFromAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lwallet/core/jni/proto/Aeternity$SigningInput;Ljava/lang/String;)V
    .locals 0

    .line 132
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aeternity$SigningInput;->setToAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lwallet/core/jni/proto/Aeternity$SigningInput;)V
    .locals 0

    .line 132
    invoke-direct {p0}, Lwallet/core/jni/proto/Aeternity$SigningInput;->clearToAddress()V

    return-void
.end method

.method static synthetic access$600(Lwallet/core/jni/proto/Aeternity$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 132
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aeternity$SigningInput;->setToAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$700(Lwallet/core/jni/proto/Aeternity$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 132
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aeternity$SigningInput;->setAmount(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$800(Lwallet/core/jni/proto/Aeternity$SigningInput;)V
    .locals 0

    .line 132
    invoke-direct {p0}, Lwallet/core/jni/proto/Aeternity$SigningInput;->clearAmount()V

    return-void
.end method

.method static synthetic access$900(Lwallet/core/jni/proto/Aeternity$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 132
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aeternity$SigningInput;->setFee(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearAmount()V
    .locals 1

    .line 315
    invoke-static {}, Lwallet/core/jni/proto/Aeternity$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Aeternity$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aeternity$SigningInput;->getAmount()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Aeternity$SigningInput;->amount_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearFee()V
    .locals 1

    .line 354
    invoke-static {}, Lwallet/core/jni/proto/Aeternity$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Aeternity$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aeternity$SigningInput;->getFee()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Aeternity$SigningInput;->fee_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearFromAddress()V
    .locals 1

    .line 195
    invoke-static {}, Lwallet/core/jni/proto/Aeternity$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Aeternity$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aeternity$SigningInput;->getFromAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Aeternity$SigningInput;->fromAddress_:Ljava/lang/String;

    return-void
.end method

.method private clearNonce()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 497
    iput-wide v0, p0, Lwallet/core/jni/proto/Aeternity$SigningInput;->nonce_:J

    return-void
.end method

.method private clearPayload()V
    .locals 1

    .line 407
    invoke-static {}, Lwallet/core/jni/proto/Aeternity$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Aeternity$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aeternity$SigningInput;->getPayload()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Aeternity$SigningInput;->payload_:Ljava/lang/String;

    return-void
.end method

.method private clearPrivateKey()V
    .locals 1

    .line 536
    invoke-static {}, Lwallet/core/jni/proto/Aeternity$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Aeternity$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aeternity$SigningInput;->getPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Aeternity$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearToAddress()V
    .locals 1

    .line 262
    invoke-static {}, Lwallet/core/jni/proto/Aeternity$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Aeternity$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aeternity$SigningInput;->getToAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Aeternity$SigningInput;->toAddress_:Ljava/lang/String;

    return-void
.end method

.method private clearTtl()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 459
    iput-wide v0, p0, Lwallet/core/jni/proto/Aeternity$SigningInput;->ttl_:J

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Aeternity$SigningInput;
    .locals 1

    .line 1117
    sget-object v0, Lwallet/core/jni/proto/Aeternity$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aeternity$SigningInput;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Aeternity$SigningInput$Builder;
    .locals 1

    .line 614
    sget-object v0, Lwallet/core/jni/proto/Aeternity$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aeternity$SigningInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Aeternity$SigningInput$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Aeternity$SigningInput;)Lwallet/core/jni/proto/Aeternity$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 617
    sget-object v0, Lwallet/core/jni/proto/Aeternity$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aeternity$SigningInput;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aeternity$SigningInput$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Aeternity$SigningInput;
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

    .line 591
    sget-object v0, Lwallet/core/jni/proto/Aeternity$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aeternity$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aeternity$SigningInput;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Aeternity$SigningInput;
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

    .line 597
    sget-object v0, Lwallet/core/jni/proto/Aeternity$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aeternity$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aeternity$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Aeternity$SigningInput;
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

    .line 555
    sget-object v0, Lwallet/core/jni/proto/Aeternity$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aeternity$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aeternity$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Aeternity$SigningInput;
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

    .line 562
    sget-object v0, Lwallet/core/jni/proto/Aeternity$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aeternity$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aeternity$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Aeternity$SigningInput;
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

    .line 602
    sget-object v0, Lwallet/core/jni/proto/Aeternity$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aeternity$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aeternity$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Aeternity$SigningInput;
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

    .line 609
    sget-object v0, Lwallet/core/jni/proto/Aeternity$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aeternity$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aeternity$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Aeternity$SigningInput;
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

    .line 579
    sget-object v0, Lwallet/core/jni/proto/Aeternity$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aeternity$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aeternity$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Aeternity$SigningInput;
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

    .line 586
    sget-object v0, Lwallet/core/jni/proto/Aeternity$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aeternity$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aeternity$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Aeternity$SigningInput;
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

    .line 542
    sget-object v0, Lwallet/core/jni/proto/Aeternity$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aeternity$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aeternity$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Aeternity$SigningInput;
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

    .line 549
    sget-object v0, Lwallet/core/jni/proto/Aeternity$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aeternity$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aeternity$SigningInput;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Aeternity$SigningInput;
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

    .line 567
    sget-object v0, Lwallet/core/jni/proto/Aeternity$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aeternity$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aeternity$SigningInput;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Aeternity$SigningInput;
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

    .line 574
    sget-object v0, Lwallet/core/jni/proto/Aeternity$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aeternity$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aeternity$SigningInput;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Aeternity$SigningInput;",
            ">;"
        }
    .end annotation

    .line 1123
    sget-object v0, Lwallet/core/jni/proto/Aeternity$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aeternity$SigningInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAmount(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 302
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 304
    iput-object p1, p0, Lwallet/core/jni/proto/Aeternity$SigningInput;->amount_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setFee(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 341
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 343
    iput-object p1, p0, Lwallet/core/jni/proto/Aeternity$SigningInput;->fee_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setFromAddress(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 182
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    iput-object p1, p0, Lwallet/core/jni/proto/Aeternity$SigningInput;->fromAddress_:Ljava/lang/String;

    return-void
.end method

.method private setFromAddressBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 207
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 208
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Aeternity$SigningInput;->fromAddress_:Ljava/lang/String;

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

    .line 486
    iput-wide p1, p0, Lwallet/core/jni/proto/Aeternity$SigningInput;->nonce_:J

    return-void
.end method

.method private setPayload(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 394
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 396
    iput-object p1, p0, Lwallet/core/jni/proto/Aeternity$SigningInput;->payload_:Ljava/lang/String;

    return-void
.end method

.method private setPayloadBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 419
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 420
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Aeternity$SigningInput;->payload_:Ljava/lang/String;

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

    .line 523
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 525
    iput-object p1, p0, Lwallet/core/jni/proto/Aeternity$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

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

    .line 249
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 251
    iput-object p1, p0, Lwallet/core/jni/proto/Aeternity$SigningInput;->toAddress_:Ljava/lang/String;

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

    .line 274
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 275
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Aeternity$SigningInput;->toAddress_:Ljava/lang/String;

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

    .line 448
    iput-wide p1, p0, Lwallet/core/jni/proto/Aeternity$SigningInput;->ttl_:J

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

    .line 1052
    sget-object p2, Lwallet/core/jni/proto/Aeternity$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1101
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 1095
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1080
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Aeternity$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1082
    const-class p2, Lwallet/core/jni/proto/Aeternity$SigningInput;

    monitor-enter p2

    .line 1083
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Aeternity$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1085
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Aeternity$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aeternity$SigningInput;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1088
    sput-object p1, Lwallet/core/jni/proto/Aeternity$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    .line 1090
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

    .line 1077
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Aeternity$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aeternity$SigningInput;

    return-object p1

    :pswitch_4
    const/16 p1, 0x8

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "fromAddress_"

    aput-object v0, p1, p3

    const-string p3, "toAddress_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "amount_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "fee_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "payload_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "ttl_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "nonce_"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "privateKey_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0008\u0000\u0000\u0001\u0008\u0008\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\n\u0004\n\u0005\u0208\u0006\u0003\u0007\u0003\u0008\n"

    .line 1073
    sget-object p3, Lwallet/core/jni/proto/Aeternity$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aeternity$SigningInput;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1057
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Aeternity$SigningInput$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Aeternity$SigningInput$Builder;-><init>(Lwallet/core/jni/proto/Aeternity$1;)V

    return-object p1

    .line 1054
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Aeternity$SigningInput;

    invoke-direct {p1}, Lwallet/core/jni/proto/Aeternity$SigningInput;-><init>()V

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

.method public getAmount()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 291
    iget-object v0, p0, Lwallet/core/jni/proto/Aeternity$SigningInput;->amount_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getFee()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 330
    iget-object v0, p0, Lwallet/core/jni/proto/Aeternity$SigningInput;->fee_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getFromAddress()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lwallet/core/jni/proto/Aeternity$SigningInput;->fromAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getFromAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 170
    iget-object v0, p0, Lwallet/core/jni/proto/Aeternity$SigningInput;->fromAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNonce()J
    .locals 2

    .line 474
    iget-wide v0, p0, Lwallet/core/jni/proto/Aeternity$SigningInput;->nonce_:J

    return-wide v0
.end method

.method public getPayload()Ljava/lang/String;
    .locals 1

    .line 369
    iget-object v0, p0, Lwallet/core/jni/proto/Aeternity$SigningInput;->payload_:Ljava/lang/String;

    return-object v0
.end method

.method public getPayloadBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 382
    iget-object v0, p0, Lwallet/core/jni/proto/Aeternity$SigningInput;->payload_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 512
    iget-object v0, p0, Lwallet/core/jni/proto/Aeternity$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getToAddress()Ljava/lang/String;
    .locals 1

    .line 224
    iget-object v0, p0, Lwallet/core/jni/proto/Aeternity$SigningInput;->toAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getToAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 237
    iget-object v0, p0, Lwallet/core/jni/proto/Aeternity$SigningInput;->toAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTtl()J
    .locals 2

    .line 436
    iget-wide v0, p0, Lwallet/core/jni/proto/Aeternity$SigningInput;->ttl_:J

    return-wide v0
.end method
