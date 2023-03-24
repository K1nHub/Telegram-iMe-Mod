.class public final Lwallet/core/jni/proto/Theta$SigningInput;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Theta.java"

# interfaces
.implements Lwallet/core/jni/proto/Theta$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Theta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SigningInput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Theta$SigningInput$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Theta$SigningInput;",
        "Lwallet/core/jni/proto/Theta$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Theta$SigningInputOrBuilder;"
    }
.end annotation


# static fields
.field public static final CHAIN_ID_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Theta$SigningInput;

.field public static final FEE_FIELD_NUMBER:I = 0x6

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Theta$SigningInput;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIVATE_KEY_FIELD_NUMBER:I = 0x7

.field public static final SEQUENCE_FIELD_NUMBER:I = 0x5

.field public static final TFUEL_AMOUNT_FIELD_NUMBER:I = 0x4

.field public static final THETA_AMOUNT_FIELD_NUMBER:I = 0x3

.field public static final TO_ADDRESS_FIELD_NUMBER:I = 0x2


# instance fields
.field private chainId_:Ljava/lang/String;

.field private fee_:Lcom/google/protobuf/ByteString;

.field private privateKey_:Lcom/google/protobuf/ByteString;

.field private sequence_:J

.field private tfuelAmount_:Lcom/google/protobuf/ByteString;

.field private thetaAmount_:Lcom/google/protobuf/ByteString;

.field private toAddress_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 952
    new-instance v0, Lwallet/core/jni/proto/Theta$SigningInput;

    invoke-direct {v0}, Lwallet/core/jni/proto/Theta$SigningInput;-><init>()V

    .line 955
    sput-object v0, Lwallet/core/jni/proto/Theta$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Theta$SigningInput;

    .line 956
    const-class v1, Lwallet/core/jni/proto/Theta$SigningInput;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 117
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 118
    iput-object v0, p0, Lwallet/core/jni/proto/Theta$SigningInput;->chainId_:Ljava/lang/String;

    .line 119
    iput-object v0, p0, Lwallet/core/jni/proto/Theta$SigningInput;->toAddress_:Ljava/lang/String;

    .line 120
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Theta$SigningInput;->thetaAmount_:Lcom/google/protobuf/ByteString;

    .line 121
    iput-object v0, p0, Lwallet/core/jni/proto/Theta$SigningInput;->tfuelAmount_:Lcom/google/protobuf/ByteString;

    .line 122
    iput-object v0, p0, Lwallet/core/jni/proto/Theta$SigningInput;->fee_:Lcom/google/protobuf/ByteString;

    .line 123
    iput-object v0, p0, Lwallet/core/jni/proto/Theta$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$000()Lwallet/core/jni/proto/Theta$SigningInput;
    .locals 1

    .line 112
    sget-object v0, Lwallet/core/jni/proto/Theta$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Theta$SigningInput;

    return-object v0
.end method

.method static synthetic access$100(Lwallet/core/jni/proto/Theta$SigningInput;Ljava/lang/String;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Theta$SigningInput;->setChainId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lwallet/core/jni/proto/Theta$SigningInput;)V
    .locals 0

    .line 112
    invoke-direct {p0}, Lwallet/core/jni/proto/Theta$SigningInput;->clearTfuelAmount()V

    return-void
.end method

.method static synthetic access$1100(Lwallet/core/jni/proto/Theta$SigningInput;J)V
    .locals 0

    .line 112
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Theta$SigningInput;->setSequence(J)V

    return-void
.end method

.method static synthetic access$1200(Lwallet/core/jni/proto/Theta$SigningInput;)V
    .locals 0

    .line 112
    invoke-direct {p0}, Lwallet/core/jni/proto/Theta$SigningInput;->clearSequence()V

    return-void
.end method

.method static synthetic access$1300(Lwallet/core/jni/proto/Theta$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Theta$SigningInput;->setFee(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1400(Lwallet/core/jni/proto/Theta$SigningInput;)V
    .locals 0

    .line 112
    invoke-direct {p0}, Lwallet/core/jni/proto/Theta$SigningInput;->clearFee()V

    return-void
.end method

.method static synthetic access$1500(Lwallet/core/jni/proto/Theta$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Theta$SigningInput;->setPrivateKey(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1600(Lwallet/core/jni/proto/Theta$SigningInput;)V
    .locals 0

    .line 112
    invoke-direct {p0}, Lwallet/core/jni/proto/Theta$SigningInput;->clearPrivateKey()V

    return-void
.end method

.method static synthetic access$200(Lwallet/core/jni/proto/Theta$SigningInput;)V
    .locals 0

    .line 112
    invoke-direct {p0}, Lwallet/core/jni/proto/Theta$SigningInput;->clearChainId()V

    return-void
.end method

.method static synthetic access$300(Lwallet/core/jni/proto/Theta$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Theta$SigningInput;->setChainIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lwallet/core/jni/proto/Theta$SigningInput;Ljava/lang/String;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Theta$SigningInput;->setToAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lwallet/core/jni/proto/Theta$SigningInput;)V
    .locals 0

    .line 112
    invoke-direct {p0}, Lwallet/core/jni/proto/Theta$SigningInput;->clearToAddress()V

    return-void
.end method

.method static synthetic access$600(Lwallet/core/jni/proto/Theta$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Theta$SigningInput;->setToAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$700(Lwallet/core/jni/proto/Theta$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Theta$SigningInput;->setThetaAmount(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$800(Lwallet/core/jni/proto/Theta$SigningInput;)V
    .locals 0

    .line 112
    invoke-direct {p0}, Lwallet/core/jni/proto/Theta$SigningInput;->clearThetaAmount()V

    return-void
.end method

.method static synthetic access$900(Lwallet/core/jni/proto/Theta$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Theta$SigningInput;->setTfuelAmount(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearChainId()V
    .locals 1

    .line 175
    invoke-static {}, Lwallet/core/jni/proto/Theta$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Theta$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Theta$SigningInput;->getChainId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Theta$SigningInput;->chainId_:Ljava/lang/String;

    return-void
.end method

.method private clearFee()V
    .locals 1

    .line 411
    invoke-static {}, Lwallet/core/jni/proto/Theta$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Theta$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Theta$SigningInput;->getFee()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Theta$SigningInput;->fee_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearPrivateKey()V
    .locals 1

    .line 450
    invoke-static {}, Lwallet/core/jni/proto/Theta$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Theta$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Theta$SigningInput;->getPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Theta$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearSequence()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 372
    iput-wide v0, p0, Lwallet/core/jni/proto/Theta$SigningInput;->sequence_:J

    return-void
.end method

.method private clearTfuelAmount()V
    .locals 1

    .line 334
    invoke-static {}, Lwallet/core/jni/proto/Theta$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Theta$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Theta$SigningInput;->getTfuelAmount()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Theta$SigningInput;->tfuelAmount_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearThetaAmount()V
    .locals 1

    .line 295
    invoke-static {}, Lwallet/core/jni/proto/Theta$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Theta$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Theta$SigningInput;->getThetaAmount()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Theta$SigningInput;->thetaAmount_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearToAddress()V
    .locals 1

    .line 242
    invoke-static {}, Lwallet/core/jni/proto/Theta$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Theta$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Theta$SigningInput;->getToAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Theta$SigningInput;->toAddress_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Theta$SigningInput;
    .locals 1

    .line 961
    sget-object v0, Lwallet/core/jni/proto/Theta$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Theta$SigningInput;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Theta$SigningInput$Builder;
    .locals 1

    .line 528
    sget-object v0, Lwallet/core/jni/proto/Theta$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Theta$SigningInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Theta$SigningInput$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Theta$SigningInput;)Lwallet/core/jni/proto/Theta$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 531
    sget-object v0, Lwallet/core/jni/proto/Theta$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Theta$SigningInput;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Theta$SigningInput$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Theta$SigningInput;
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

    .line 505
    sget-object v0, Lwallet/core/jni/proto/Theta$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Theta$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Theta$SigningInput;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Theta$SigningInput;
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

    .line 511
    sget-object v0, Lwallet/core/jni/proto/Theta$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Theta$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Theta$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Theta$SigningInput;
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

    .line 469
    sget-object v0, Lwallet/core/jni/proto/Theta$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Theta$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Theta$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Theta$SigningInput;
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

    .line 476
    sget-object v0, Lwallet/core/jni/proto/Theta$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Theta$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Theta$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Theta$SigningInput;
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

    .line 516
    sget-object v0, Lwallet/core/jni/proto/Theta$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Theta$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Theta$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Theta$SigningInput;
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

    .line 523
    sget-object v0, Lwallet/core/jni/proto/Theta$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Theta$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Theta$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Theta$SigningInput;
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

    .line 493
    sget-object v0, Lwallet/core/jni/proto/Theta$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Theta$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Theta$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Theta$SigningInput;
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

    .line 500
    sget-object v0, Lwallet/core/jni/proto/Theta$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Theta$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Theta$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Theta$SigningInput;
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

    .line 456
    sget-object v0, Lwallet/core/jni/proto/Theta$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Theta$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Theta$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Theta$SigningInput;
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

    .line 463
    sget-object v0, Lwallet/core/jni/proto/Theta$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Theta$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Theta$SigningInput;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Theta$SigningInput;
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

    .line 481
    sget-object v0, Lwallet/core/jni/proto/Theta$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Theta$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Theta$SigningInput;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Theta$SigningInput;
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

    .line 488
    sget-object v0, Lwallet/core/jni/proto/Theta$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Theta$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Theta$SigningInput;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Theta$SigningInput;",
            ">;"
        }
    .end annotation

    .line 967
    sget-object v0, Lwallet/core/jni/proto/Theta$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Theta$SigningInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setChainId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 162
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    iput-object p1, p0, Lwallet/core/jni/proto/Theta$SigningInput;->chainId_:Ljava/lang/String;

    return-void
.end method

.method private setChainIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 187
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 188
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Theta$SigningInput;->chainId_:Ljava/lang/String;

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

    .line 398
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 400
    iput-object p1, p0, Lwallet/core/jni/proto/Theta$SigningInput;->fee_:Lcom/google/protobuf/ByteString;

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

    .line 437
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 439
    iput-object p1, p0, Lwallet/core/jni/proto/Theta$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setSequence(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 361
    iput-wide p1, p0, Lwallet/core/jni/proto/Theta$SigningInput;->sequence_:J

    return-void
.end method

.method private setTfuelAmount(Lcom/google/protobuf/ByteString;)V
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
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 323
    iput-object p1, p0, Lwallet/core/jni/proto/Theta$SigningInput;->tfuelAmount_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setThetaAmount(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 282
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 284
    iput-object p1, p0, Lwallet/core/jni/proto/Theta$SigningInput;->thetaAmount_:Lcom/google/protobuf/ByteString;

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

    .line 229
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 231
    iput-object p1, p0, Lwallet/core/jni/proto/Theta$SigningInput;->toAddress_:Ljava/lang/String;

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

    .line 254
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 255
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Theta$SigningInput;->toAddress_:Ljava/lang/String;

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

    .line 897
    sget-object p2, Lwallet/core/jni/proto/Theta$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 945
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 939
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 924
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Theta$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 926
    const-class p2, Lwallet/core/jni/proto/Theta$SigningInput;

    monitor-enter p2

    .line 927
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Theta$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 929
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Theta$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Theta$SigningInput;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 932
    sput-object p1, Lwallet/core/jni/proto/Theta$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    .line 934
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

    .line 921
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Theta$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Theta$SigningInput;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "chainId_"

    aput-object v0, p1, p3

    const-string p3, "toAddress_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "thetaAmount_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "tfuelAmount_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "sequence_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "fee_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "privateKey_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0007\u0000\u0000\u0001\u0007\u0007\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\n\u0004\n\u0005\u0003\u0006\n\u0007\n"

    .line 917
    sget-object p3, Lwallet/core/jni/proto/Theta$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Theta$SigningInput;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 902
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Theta$SigningInput$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Theta$SigningInput$Builder;-><init>(Lwallet/core/jni/proto/Theta$1;)V

    return-object p1

    .line 899
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Theta$SigningInput;

    invoke-direct {p1}, Lwallet/core/jni/proto/Theta$SigningInput;-><init>()V

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

.method public getChainId()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lwallet/core/jni/proto/Theta$SigningInput;->chainId_:Ljava/lang/String;

    return-object v0
.end method

.method public getChainIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 150
    iget-object v0, p0, Lwallet/core/jni/proto/Theta$SigningInput;->chainId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getFee()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 387
    iget-object v0, p0, Lwallet/core/jni/proto/Theta$SigningInput;->fee_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 426
    iget-object v0, p0, Lwallet/core/jni/proto/Theta$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSequence()J
    .locals 2

    .line 349
    iget-wide v0, p0, Lwallet/core/jni/proto/Theta$SigningInput;->sequence_:J

    return-wide v0
.end method

.method public getTfuelAmount()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 310
    iget-object v0, p0, Lwallet/core/jni/proto/Theta$SigningInput;->tfuelAmount_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getThetaAmount()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 271
    iget-object v0, p0, Lwallet/core/jni/proto/Theta$SigningInput;->thetaAmount_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getToAddress()Ljava/lang/String;
    .locals 1

    .line 204
    iget-object v0, p0, Lwallet/core/jni/proto/Theta$SigningInput;->toAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getToAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 217
    iget-object v0, p0, Lwallet/core/jni/proto/Theta$SigningInput;->toAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
