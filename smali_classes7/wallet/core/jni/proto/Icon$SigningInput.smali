.class public final Lwallet/core/jni/proto/Icon$SigningInput;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Icon.java"

# interfaces
.implements Lwallet/core/jni/proto/Icon$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Icon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SigningInput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Icon$SigningInput$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Icon$SigningInput;",
        "Lwallet/core/jni/proto/Icon$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Icon$SigningInputOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Icon$SigningInput;

.field public static final FROM_ADDRESS_FIELD_NUMBER:I = 0x1

.field public static final NETWORK_ID_FIELD_NUMBER:I = 0x7

.field public static final NONCE_FIELD_NUMBER:I = 0x6

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Icon$SigningInput;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIVATE_KEY_FIELD_NUMBER:I = 0x8

.field public static final STEP_LIMIT_FIELD_NUMBER:I = 0x4

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x5

.field public static final TO_ADDRESS_FIELD_NUMBER:I = 0x2

.field public static final VALUE_FIELD_NUMBER:I = 0x3


# instance fields
.field private fromAddress_:Ljava/lang/String;

.field private networkId_:Lcom/google/protobuf/ByteString;

.field private nonce_:Lcom/google/protobuf/ByteString;

.field private privateKey_:Lcom/google/protobuf/ByteString;

.field private stepLimit_:Lcom/google/protobuf/ByteString;

.field private timestamp_:J

.field private toAddress_:Ljava/lang/String;

.field private value_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1043
    new-instance v0, Lwallet/core/jni/proto/Icon$SigningInput;

    invoke-direct {v0}, Lwallet/core/jni/proto/Icon$SigningInput;-><init>()V

    .line 1046
    sput-object v0, Lwallet/core/jni/proto/Icon$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Icon$SigningInput;

    .line 1047
    const-class v1, Lwallet/core/jni/proto/Icon$SigningInput;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 127
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 128
    iput-object v0, p0, Lwallet/core/jni/proto/Icon$SigningInput;->fromAddress_:Ljava/lang/String;

    .line 129
    iput-object v0, p0, Lwallet/core/jni/proto/Icon$SigningInput;->toAddress_:Ljava/lang/String;

    .line 130
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Icon$SigningInput;->value_:Lcom/google/protobuf/ByteString;

    .line 131
    iput-object v0, p0, Lwallet/core/jni/proto/Icon$SigningInput;->stepLimit_:Lcom/google/protobuf/ByteString;

    .line 132
    iput-object v0, p0, Lwallet/core/jni/proto/Icon$SigningInput;->nonce_:Lcom/google/protobuf/ByteString;

    .line 133
    iput-object v0, p0, Lwallet/core/jni/proto/Icon$SigningInput;->networkId_:Lcom/google/protobuf/ByteString;

    .line 134
    iput-object v0, p0, Lwallet/core/jni/proto/Icon$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$000()Lwallet/core/jni/proto/Icon$SigningInput;
    .locals 1

    .line 122
    sget-object v0, Lwallet/core/jni/proto/Icon$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Icon$SigningInput;

    return-object v0
.end method

.method static synthetic access$100(Lwallet/core/jni/proto/Icon$SigningInput;Ljava/lang/String;)V
    .locals 0

    .line 122
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Icon$SigningInput;->setFromAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lwallet/core/jni/proto/Icon$SigningInput;)V
    .locals 0

    .line 122
    invoke-direct {p0}, Lwallet/core/jni/proto/Icon$SigningInput;->clearStepLimit()V

    return-void
.end method

.method static synthetic access$1100(Lwallet/core/jni/proto/Icon$SigningInput;J)V
    .locals 0

    .line 122
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Icon$SigningInput;->setTimestamp(J)V

    return-void
.end method

.method static synthetic access$1200(Lwallet/core/jni/proto/Icon$SigningInput;)V
    .locals 0

    .line 122
    invoke-direct {p0}, Lwallet/core/jni/proto/Icon$SigningInput;->clearTimestamp()V

    return-void
.end method

.method static synthetic access$1300(Lwallet/core/jni/proto/Icon$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 122
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Icon$SigningInput;->setNonce(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1400(Lwallet/core/jni/proto/Icon$SigningInput;)V
    .locals 0

    .line 122
    invoke-direct {p0}, Lwallet/core/jni/proto/Icon$SigningInput;->clearNonce()V

    return-void
.end method

.method static synthetic access$1500(Lwallet/core/jni/proto/Icon$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 122
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Icon$SigningInput;->setNetworkId(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1600(Lwallet/core/jni/proto/Icon$SigningInput;)V
    .locals 0

    .line 122
    invoke-direct {p0}, Lwallet/core/jni/proto/Icon$SigningInput;->clearNetworkId()V

    return-void
.end method

.method static synthetic access$1700(Lwallet/core/jni/proto/Icon$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 122
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Icon$SigningInput;->setPrivateKey(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1800(Lwallet/core/jni/proto/Icon$SigningInput;)V
    .locals 0

    .line 122
    invoke-direct {p0}, Lwallet/core/jni/proto/Icon$SigningInput;->clearPrivateKey()V

    return-void
.end method

.method static synthetic access$200(Lwallet/core/jni/proto/Icon$SigningInput;)V
    .locals 0

    .line 122
    invoke-direct {p0}, Lwallet/core/jni/proto/Icon$SigningInput;->clearFromAddress()V

    return-void
.end method

.method static synthetic access$300(Lwallet/core/jni/proto/Icon$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 122
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Icon$SigningInput;->setFromAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lwallet/core/jni/proto/Icon$SigningInput;Ljava/lang/String;)V
    .locals 0

    .line 122
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Icon$SigningInput;->setToAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lwallet/core/jni/proto/Icon$SigningInput;)V
    .locals 0

    .line 122
    invoke-direct {p0}, Lwallet/core/jni/proto/Icon$SigningInput;->clearToAddress()V

    return-void
.end method

.method static synthetic access$600(Lwallet/core/jni/proto/Icon$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 122
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Icon$SigningInput;->setToAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$700(Lwallet/core/jni/proto/Icon$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 122
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Icon$SigningInput;->setValue(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$800(Lwallet/core/jni/proto/Icon$SigningInput;)V
    .locals 0

    .line 122
    invoke-direct {p0}, Lwallet/core/jni/proto/Icon$SigningInput;->clearValue()V

    return-void
.end method

.method static synthetic access$900(Lwallet/core/jni/proto/Icon$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 122
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Icon$SigningInput;->setStepLimit(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearFromAddress()V
    .locals 1

    .line 186
    invoke-static {}, Lwallet/core/jni/proto/Icon$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Icon$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Icon$SigningInput;->getFromAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Icon$SigningInput;->fromAddress_:Ljava/lang/String;

    return-void
.end method

.method private clearNetworkId()V
    .locals 1

    .line 461
    invoke-static {}, Lwallet/core/jni/proto/Icon$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Icon$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Icon$SigningInput;->getNetworkId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Icon$SigningInput;->networkId_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearNonce()V
    .locals 1

    .line 422
    invoke-static {}, Lwallet/core/jni/proto/Icon$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Icon$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Icon$SigningInput;->getNonce()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Icon$SigningInput;->nonce_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearPrivateKey()V
    .locals 1

    .line 500
    invoke-static {}, Lwallet/core/jni/proto/Icon$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Icon$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Icon$SigningInput;->getPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Icon$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearStepLimit()V
    .locals 1

    .line 345
    invoke-static {}, Lwallet/core/jni/proto/Icon$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Icon$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Icon$SigningInput;->getStepLimit()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Icon$SigningInput;->stepLimit_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearTimestamp()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 383
    iput-wide v0, p0, Lwallet/core/jni/proto/Icon$SigningInput;->timestamp_:J

    return-void
.end method

.method private clearToAddress()V
    .locals 1

    .line 253
    invoke-static {}, Lwallet/core/jni/proto/Icon$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Icon$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Icon$SigningInput;->getToAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Icon$SigningInput;->toAddress_:Ljava/lang/String;

    return-void
.end method

.method private clearValue()V
    .locals 1

    .line 306
    invoke-static {}, Lwallet/core/jni/proto/Icon$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Icon$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Icon$SigningInput;->getValue()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Icon$SigningInput;->value_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Icon$SigningInput;
    .locals 1

    .line 1052
    sget-object v0, Lwallet/core/jni/proto/Icon$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Icon$SigningInput;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Icon$SigningInput$Builder;
    .locals 1

    .line 578
    sget-object v0, Lwallet/core/jni/proto/Icon$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Icon$SigningInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Icon$SigningInput$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Icon$SigningInput;)Lwallet/core/jni/proto/Icon$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 581
    sget-object v0, Lwallet/core/jni/proto/Icon$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Icon$SigningInput;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Icon$SigningInput$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Icon$SigningInput;
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

    .line 555
    sget-object v0, Lwallet/core/jni/proto/Icon$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Icon$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Icon$SigningInput;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Icon$SigningInput;
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

    .line 561
    sget-object v0, Lwallet/core/jni/proto/Icon$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Icon$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Icon$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Icon$SigningInput;
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

    .line 519
    sget-object v0, Lwallet/core/jni/proto/Icon$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Icon$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Icon$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Icon$SigningInput;
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

    .line 526
    sget-object v0, Lwallet/core/jni/proto/Icon$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Icon$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Icon$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Icon$SigningInput;
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

    .line 566
    sget-object v0, Lwallet/core/jni/proto/Icon$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Icon$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Icon$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Icon$SigningInput;
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

    .line 573
    sget-object v0, Lwallet/core/jni/proto/Icon$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Icon$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Icon$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Icon$SigningInput;
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

    .line 543
    sget-object v0, Lwallet/core/jni/proto/Icon$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Icon$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Icon$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Icon$SigningInput;
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

    .line 550
    sget-object v0, Lwallet/core/jni/proto/Icon$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Icon$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Icon$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Icon$SigningInput;
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

    .line 506
    sget-object v0, Lwallet/core/jni/proto/Icon$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Icon$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Icon$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Icon$SigningInput;
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

    .line 513
    sget-object v0, Lwallet/core/jni/proto/Icon$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Icon$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Icon$SigningInput;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Icon$SigningInput;
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

    .line 531
    sget-object v0, Lwallet/core/jni/proto/Icon$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Icon$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Icon$SigningInput;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Icon$SigningInput;
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

    .line 538
    sget-object v0, Lwallet/core/jni/proto/Icon$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Icon$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Icon$SigningInput;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Icon$SigningInput;",
            ">;"
        }
    .end annotation

    .line 1058
    sget-object v0, Lwallet/core/jni/proto/Icon$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Icon$SigningInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
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

    .line 173
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 175
    iput-object p1, p0, Lwallet/core/jni/proto/Icon$SigningInput;->fromAddress_:Ljava/lang/String;

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

    .line 198
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 199
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Icon$SigningInput;->fromAddress_:Ljava/lang/String;

    return-void
.end method

.method private setNetworkId(Lcom/google/protobuf/ByteString;)V
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
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 450
    iput-object p1, p0, Lwallet/core/jni/proto/Icon$SigningInput;->networkId_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setNonce(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 409
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 411
    iput-object p1, p0, Lwallet/core/jni/proto/Icon$SigningInput;->nonce_:Lcom/google/protobuf/ByteString;

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

    .line 487
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 489
    iput-object p1, p0, Lwallet/core/jni/proto/Icon$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setStepLimit(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 332
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 334
    iput-object p1, p0, Lwallet/core/jni/proto/Icon$SigningInput;->stepLimit_:Lcom/google/protobuf/ByteString;

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

    .line 372
    iput-wide p1, p0, Lwallet/core/jni/proto/Icon$SigningInput;->timestamp_:J

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

    .line 240
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 242
    iput-object p1, p0, Lwallet/core/jni/proto/Icon$SigningInput;->toAddress_:Ljava/lang/String;

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

    .line 265
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 266
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Icon$SigningInput;->toAddress_:Ljava/lang/String;

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

    .line 293
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 295
    iput-object p1, p0, Lwallet/core/jni/proto/Icon$SigningInput;->value_:Lcom/google/protobuf/ByteString;

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

    .line 987
    sget-object p2, Lwallet/core/jni/proto/Icon$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1036
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 1030
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1015
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Icon$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1017
    const-class p2, Lwallet/core/jni/proto/Icon$SigningInput;

    monitor-enter p2

    .line 1018
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Icon$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1020
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Icon$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Icon$SigningInput;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1023
    sput-object p1, Lwallet/core/jni/proto/Icon$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    .line 1025
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

    .line 1012
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Icon$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Icon$SigningInput;

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

    const-string p3, "value_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "stepLimit_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "timestamp_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "nonce_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "networkId_"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "privateKey_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0008\u0000\u0000\u0001\u0008\u0008\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\n\u0004\n\u0005\u0002\u0006\n\u0007\n\u0008\n"

    .line 1008
    sget-object p3, Lwallet/core/jni/proto/Icon$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Icon$SigningInput;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 992
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Icon$SigningInput$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Icon$SigningInput$Builder;-><init>(Lwallet/core/jni/proto/Icon$1;)V

    return-object p1

    .line 989
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Icon$SigningInput;

    invoke-direct {p1}, Lwallet/core/jni/proto/Icon$SigningInput;-><init>()V

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

.method public getFromAddress()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lwallet/core/jni/proto/Icon$SigningInput;->fromAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getFromAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 161
    iget-object v0, p0, Lwallet/core/jni/proto/Icon$SigningInput;->fromAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkId()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 437
    iget-object v0, p0, Lwallet/core/jni/proto/Icon$SigningInput;->networkId_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getNonce()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 398
    iget-object v0, p0, Lwallet/core/jni/proto/Icon$SigningInput;->nonce_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 476
    iget-object v0, p0, Lwallet/core/jni/proto/Icon$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getStepLimit()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 321
    iget-object v0, p0, Lwallet/core/jni/proto/Icon$SigningInput;->stepLimit_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 360
    iget-wide v0, p0, Lwallet/core/jni/proto/Icon$SigningInput;->timestamp_:J

    return-wide v0
.end method

.method public getToAddress()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Lwallet/core/jni/proto/Icon$SigningInput;->toAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getToAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 228
    iget-object v0, p0, Lwallet/core/jni/proto/Icon$SigningInput;->toAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 282
    iget-object v0, p0, Lwallet/core/jni/proto/Icon$SigningInput;->value_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method
