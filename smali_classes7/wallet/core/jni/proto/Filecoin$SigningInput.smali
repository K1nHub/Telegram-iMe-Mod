.class public final Lwallet/core/jni/proto/Filecoin$SigningInput;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Filecoin.java"

# interfaces
.implements Lwallet/core/jni/proto/Filecoin$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Filecoin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SigningInput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Filecoin$SigningInput$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Filecoin$SigningInput;",
        "Lwallet/core/jni/proto/Filecoin$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Filecoin$SigningInputOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Filecoin$SigningInput;

.field public static final GAS_FEE_CAP_FIELD_NUMBER:I = 0x6

.field public static final GAS_LIMIT_FIELD_NUMBER:I = 0x5

.field public static final GAS_PREMIUM_FIELD_NUMBER:I = 0x7

.field public static final NONCE_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Filecoin$SigningInput;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIVATE_KEY_FIELD_NUMBER:I = 0x1

.field public static final TO_FIELD_NUMBER:I = 0x2

.field public static final VALUE_FIELD_NUMBER:I = 0x4


# instance fields
.field private gasFeeCap_:Lcom/google/protobuf/ByteString;

.field private gasLimit_:J

.field private gasPremium_:Lcom/google/protobuf/ByteString;

.field private nonce_:J

.field private privateKey_:Lcom/google/protobuf/ByteString;

.field private to_:Ljava/lang/String;

.field private value_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 883
    new-instance v0, Lwallet/core/jni/proto/Filecoin$SigningInput;

    invoke-direct {v0}, Lwallet/core/jni/proto/Filecoin$SigningInput;-><init>()V

    .line 886
    sput-object v0, Lwallet/core/jni/proto/Filecoin$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Filecoin$SigningInput;

    .line 887
    const-class v1, Lwallet/core/jni/proto/Filecoin$SigningInput;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 107
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 108
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Filecoin$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    const-string v1, ""

    .line 109
    iput-object v1, p0, Lwallet/core/jni/proto/Filecoin$SigningInput;->to_:Ljava/lang/String;

    .line 110
    iput-object v0, p0, Lwallet/core/jni/proto/Filecoin$SigningInput;->value_:Lcom/google/protobuf/ByteString;

    .line 111
    iput-object v0, p0, Lwallet/core/jni/proto/Filecoin$SigningInput;->gasFeeCap_:Lcom/google/protobuf/ByteString;

    .line 112
    iput-object v0, p0, Lwallet/core/jni/proto/Filecoin$SigningInput;->gasPremium_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$000()Lwallet/core/jni/proto/Filecoin$SigningInput;
    .locals 1

    .line 102
    sget-object v0, Lwallet/core/jni/proto/Filecoin$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Filecoin$SigningInput;

    return-object v0
.end method

.method static synthetic access$100(Lwallet/core/jni/proto/Filecoin$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Filecoin$SigningInput;->setPrivateKey(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1000(Lwallet/core/jni/proto/Filecoin$SigningInput;J)V
    .locals 0

    .line 102
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Filecoin$SigningInput;->setGasLimit(J)V

    return-void
.end method

.method static synthetic access$1100(Lwallet/core/jni/proto/Filecoin$SigningInput;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lwallet/core/jni/proto/Filecoin$SigningInput;->clearGasLimit()V

    return-void
.end method

.method static synthetic access$1200(Lwallet/core/jni/proto/Filecoin$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Filecoin$SigningInput;->setGasFeeCap(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1300(Lwallet/core/jni/proto/Filecoin$SigningInput;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lwallet/core/jni/proto/Filecoin$SigningInput;->clearGasFeeCap()V

    return-void
.end method

.method static synthetic access$1400(Lwallet/core/jni/proto/Filecoin$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Filecoin$SigningInput;->setGasPremium(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1500(Lwallet/core/jni/proto/Filecoin$SigningInput;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lwallet/core/jni/proto/Filecoin$SigningInput;->clearGasPremium()V

    return-void
.end method

.method static synthetic access$200(Lwallet/core/jni/proto/Filecoin$SigningInput;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lwallet/core/jni/proto/Filecoin$SigningInput;->clearPrivateKey()V

    return-void
.end method

.method static synthetic access$300(Lwallet/core/jni/proto/Filecoin$SigningInput;Ljava/lang/String;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Filecoin$SigningInput;->setTo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lwallet/core/jni/proto/Filecoin$SigningInput;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lwallet/core/jni/proto/Filecoin$SigningInput;->clearTo()V

    return-void
.end method

.method static synthetic access$500(Lwallet/core/jni/proto/Filecoin$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Filecoin$SigningInput;->setToBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$600(Lwallet/core/jni/proto/Filecoin$SigningInput;J)V
    .locals 0

    .line 102
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Filecoin$SigningInput;->setNonce(J)V

    return-void
.end method

.method static synthetic access$700(Lwallet/core/jni/proto/Filecoin$SigningInput;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lwallet/core/jni/proto/Filecoin$SigningInput;->clearNonce()V

    return-void
.end method

.method static synthetic access$800(Lwallet/core/jni/proto/Filecoin$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Filecoin$SigningInput;->setValue(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$900(Lwallet/core/jni/proto/Filecoin$SigningInput;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lwallet/core/jni/proto/Filecoin$SigningInput;->clearValue()V

    return-void
.end method

.method private clearGasFeeCap()V
    .locals 1

    .line 371
    invoke-static {}, Lwallet/core/jni/proto/Filecoin$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Filecoin$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Filecoin$SigningInput;->getGasFeeCap()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Filecoin$SigningInput;->gasFeeCap_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearGasLimit()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 332
    iput-wide v0, p0, Lwallet/core/jni/proto/Filecoin$SigningInput;->gasLimit_:J

    return-void
.end method

.method private clearGasPremium()V
    .locals 1

    .line 410
    invoke-static {}, Lwallet/core/jni/proto/Filecoin$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Filecoin$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Filecoin$SigningInput;->getGasPremium()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Filecoin$SigningInput;->gasPremium_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearNonce()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 255
    iput-wide v0, p0, Lwallet/core/jni/proto/Filecoin$SigningInput;->nonce_:J

    return-void
.end method

.method private clearPrivateKey()V
    .locals 1

    .line 150
    invoke-static {}, Lwallet/core/jni/proto/Filecoin$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Filecoin$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Filecoin$SigningInput;->getPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Filecoin$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearTo()V
    .locals 1

    .line 203
    invoke-static {}, Lwallet/core/jni/proto/Filecoin$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Filecoin$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Filecoin$SigningInput;->getTo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Filecoin$SigningInput;->to_:Ljava/lang/String;

    return-void
.end method

.method private clearValue()V
    .locals 1

    .line 294
    invoke-static {}, Lwallet/core/jni/proto/Filecoin$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Filecoin$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Filecoin$SigningInput;->getValue()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Filecoin$SigningInput;->value_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Filecoin$SigningInput;
    .locals 1

    .line 892
    sget-object v0, Lwallet/core/jni/proto/Filecoin$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Filecoin$SigningInput;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Filecoin$SigningInput$Builder;
    .locals 1

    .line 488
    sget-object v0, Lwallet/core/jni/proto/Filecoin$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Filecoin$SigningInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Filecoin$SigningInput$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Filecoin$SigningInput;)Lwallet/core/jni/proto/Filecoin$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 491
    sget-object v0, Lwallet/core/jni/proto/Filecoin$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Filecoin$SigningInput;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Filecoin$SigningInput$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Filecoin$SigningInput;
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

    .line 465
    sget-object v0, Lwallet/core/jni/proto/Filecoin$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Filecoin$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Filecoin$SigningInput;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Filecoin$SigningInput;
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

    .line 471
    sget-object v0, Lwallet/core/jni/proto/Filecoin$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Filecoin$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Filecoin$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Filecoin$SigningInput;
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

    .line 429
    sget-object v0, Lwallet/core/jni/proto/Filecoin$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Filecoin$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Filecoin$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Filecoin$SigningInput;
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

    .line 436
    sget-object v0, Lwallet/core/jni/proto/Filecoin$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Filecoin$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Filecoin$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Filecoin$SigningInput;
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

    .line 476
    sget-object v0, Lwallet/core/jni/proto/Filecoin$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Filecoin$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Filecoin$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Filecoin$SigningInput;
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

    .line 483
    sget-object v0, Lwallet/core/jni/proto/Filecoin$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Filecoin$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Filecoin$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Filecoin$SigningInput;
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

    .line 453
    sget-object v0, Lwallet/core/jni/proto/Filecoin$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Filecoin$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Filecoin$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Filecoin$SigningInput;
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

    .line 460
    sget-object v0, Lwallet/core/jni/proto/Filecoin$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Filecoin$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Filecoin$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Filecoin$SigningInput;
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

    .line 416
    sget-object v0, Lwallet/core/jni/proto/Filecoin$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Filecoin$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Filecoin$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Filecoin$SigningInput;
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

    .line 423
    sget-object v0, Lwallet/core/jni/proto/Filecoin$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Filecoin$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Filecoin$SigningInput;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Filecoin$SigningInput;
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

    .line 441
    sget-object v0, Lwallet/core/jni/proto/Filecoin$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Filecoin$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Filecoin$SigningInput;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Filecoin$SigningInput;
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

    .line 448
    sget-object v0, Lwallet/core/jni/proto/Filecoin$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Filecoin$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Filecoin$SigningInput;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Filecoin$SigningInput;",
            ">;"
        }
    .end annotation

    .line 898
    sget-object v0, Lwallet/core/jni/proto/Filecoin$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Filecoin$SigningInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setGasFeeCap(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 358
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 360
    iput-object p1, p0, Lwallet/core/jni/proto/Filecoin$SigningInput;->gasFeeCap_:Lcom/google/protobuf/ByteString;

    return-void
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

    .line 321
    iput-wide p1, p0, Lwallet/core/jni/proto/Filecoin$SigningInput;->gasLimit_:J

    return-void
.end method

.method private setGasPremium(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 397
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 399
    iput-object p1, p0, Lwallet/core/jni/proto/Filecoin$SigningInput;->gasPremium_:Lcom/google/protobuf/ByteString;

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

    .line 244
    iput-wide p1, p0, Lwallet/core/jni/proto/Filecoin$SigningInput;->nonce_:J

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

    .line 137
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    iput-object p1, p0, Lwallet/core/jni/proto/Filecoin$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

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

    .line 190
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 192
    iput-object p1, p0, Lwallet/core/jni/proto/Filecoin$SigningInput;->to_:Ljava/lang/String;

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

    .line 215
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 216
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Filecoin$SigningInput;->to_:Ljava/lang/String;

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

    .line 281
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 283
    iput-object p1, p0, Lwallet/core/jni/proto/Filecoin$SigningInput;->value_:Lcom/google/protobuf/ByteString;

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

    .line 828
    sget-object p2, Lwallet/core/jni/proto/Filecoin$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 876
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 870
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 855
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Filecoin$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 857
    const-class p2, Lwallet/core/jni/proto/Filecoin$SigningInput;

    monitor-enter p2

    .line 858
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Filecoin$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 860
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Filecoin$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Filecoin$SigningInput;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 863
    sput-object p1, Lwallet/core/jni/proto/Filecoin$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    .line 865
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

    .line 852
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Filecoin$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Filecoin$SigningInput;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "privateKey_"

    aput-object v0, p1, p3

    const-string p3, "to_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "nonce_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "value_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "gasLimit_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "gasFeeCap_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "gasPremium_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0007\u0000\u0000\u0001\u0007\u0007\u0000\u0000\u0000\u0001\n\u0002\u0208\u0003\u0003\u0004\n\u0005\u0002\u0006\n\u0007\n"

    .line 848
    sget-object p3, Lwallet/core/jni/proto/Filecoin$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Filecoin$SigningInput;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 833
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Filecoin$SigningInput$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Filecoin$SigningInput$Builder;-><init>(Lwallet/core/jni/proto/Filecoin$1;)V

    return-object p1

    .line 830
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Filecoin$SigningInput;

    invoke-direct {p1}, Lwallet/core/jni/proto/Filecoin$SigningInput;-><init>()V

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

.method public getGasFeeCap()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 347
    iget-object v0, p0, Lwallet/core/jni/proto/Filecoin$SigningInput;->gasFeeCap_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getGasLimit()J
    .locals 2

    .line 309
    iget-wide v0, p0, Lwallet/core/jni/proto/Filecoin$SigningInput;->gasLimit_:J

    return-wide v0
.end method

.method public getGasPremium()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 386
    iget-object v0, p0, Lwallet/core/jni/proto/Filecoin$SigningInput;->gasPremium_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getNonce()J
    .locals 2

    .line 232
    iget-wide v0, p0, Lwallet/core/jni/proto/Filecoin$SigningInput;->nonce_:J

    return-wide v0
.end method

.method public getPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 126
    iget-object v0, p0, Lwallet/core/jni/proto/Filecoin$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getTo()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lwallet/core/jni/proto/Filecoin$SigningInput;->to_:Ljava/lang/String;

    return-object v0
.end method

.method public getToBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 178
    iget-object v0, p0, Lwallet/core/jni/proto/Filecoin$SigningInput;->to_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 270
    iget-object v0, p0, Lwallet/core/jni/proto/Filecoin$SigningInput;->value_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method
