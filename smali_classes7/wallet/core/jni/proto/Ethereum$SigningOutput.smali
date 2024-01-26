.class public final Lwallet/core/jni/proto/Ethereum$SigningOutput;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Ethereum.java"

# interfaces
.implements Lwallet/core/jni/proto/Ethereum$SigningOutputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Ethereum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SigningOutput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Ethereum$SigningOutput$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Ethereum$SigningOutput;",
        "Lwallet/core/jni/proto/Ethereum$SigningOutput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Ethereum$SigningOutputOrBuilder;"
    }
.end annotation


# static fields
.field public static final DATA_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$SigningOutput;

.field public static final ENCODED_FIELD_NUMBER:I = 0x1

.field public static final ERROR_FIELD_NUMBER:I = 0x6

.field public static final ERROR_MESSAGE_FIELD_NUMBER:I = 0x7

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Ethereum$SigningOutput;",
            ">;"
        }
    .end annotation
.end field

.field public static final R_FIELD_NUMBER:I = 0x3

.field public static final S_FIELD_NUMBER:I = 0x4

.field public static final V_FIELD_NUMBER:I = 0x2


# instance fields
.field private data_:Lcom/google/protobuf/ByteString;

.field private encoded_:Lcom/google/protobuf/ByteString;

.field private errorMessage_:Ljava/lang/String;

.field private error_:I

.field private r_:Lcom/google/protobuf/ByteString;

.field private s_:Lcom/google/protobuf/ByteString;

.field private v_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 7574
    new-instance v0, Lwallet/core/jni/proto/Ethereum$SigningOutput;

    invoke-direct {v0}, Lwallet/core/jni/proto/Ethereum$SigningOutput;-><init>()V

    .line 7577
    sput-object v0, Lwallet/core/jni/proto/Ethereum$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$SigningOutput;

    .line 7578
    const-class v1, Lwallet/core/jni/proto/Ethereum$SigningOutput;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 6794
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 6795
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Ethereum$SigningOutput;->encoded_:Lcom/google/protobuf/ByteString;

    .line 6796
    iput-object v0, p0, Lwallet/core/jni/proto/Ethereum$SigningOutput;->v_:Lcom/google/protobuf/ByteString;

    .line 6797
    iput-object v0, p0, Lwallet/core/jni/proto/Ethereum$SigningOutput;->r_:Lcom/google/protobuf/ByteString;

    .line 6798
    iput-object v0, p0, Lwallet/core/jni/proto/Ethereum$SigningOutput;->s_:Lcom/google/protobuf/ByteString;

    .line 6799
    iput-object v0, p0, Lwallet/core/jni/proto/Ethereum$SigningOutput;->data_:Lcom/google/protobuf/ByteString;

    const-string v0, ""

    .line 6800
    iput-object v0, p0, Lwallet/core/jni/proto/Ethereum$SigningOutput;->errorMessage_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$12100()Lwallet/core/jni/proto/Ethereum$SigningOutput;
    .locals 1

    .line 6789
    sget-object v0, Lwallet/core/jni/proto/Ethereum$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$SigningOutput;

    return-object v0
.end method

.method static synthetic access$12200(Lwallet/core/jni/proto/Ethereum$SigningOutput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 6789
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ethereum$SigningOutput;->setEncoded(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$12300(Lwallet/core/jni/proto/Ethereum$SigningOutput;)V
    .locals 0

    .line 6789
    invoke-direct {p0}, Lwallet/core/jni/proto/Ethereum$SigningOutput;->clearEncoded()V

    return-void
.end method

.method static synthetic access$12400(Lwallet/core/jni/proto/Ethereum$SigningOutput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 6789
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ethereum$SigningOutput;->setV(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$12500(Lwallet/core/jni/proto/Ethereum$SigningOutput;)V
    .locals 0

    .line 6789
    invoke-direct {p0}, Lwallet/core/jni/proto/Ethereum$SigningOutput;->clearV()V

    return-void
.end method

.method static synthetic access$12600(Lwallet/core/jni/proto/Ethereum$SigningOutput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 6789
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ethereum$SigningOutput;->setR(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$12700(Lwallet/core/jni/proto/Ethereum$SigningOutput;)V
    .locals 0

    .line 6789
    invoke-direct {p0}, Lwallet/core/jni/proto/Ethereum$SigningOutput;->clearR()V

    return-void
.end method

.method static synthetic access$12800(Lwallet/core/jni/proto/Ethereum$SigningOutput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 6789
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ethereum$SigningOutput;->setS(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$12900(Lwallet/core/jni/proto/Ethereum$SigningOutput;)V
    .locals 0

    .line 6789
    invoke-direct {p0}, Lwallet/core/jni/proto/Ethereum$SigningOutput;->clearS()V

    return-void
.end method

.method static synthetic access$13000(Lwallet/core/jni/proto/Ethereum$SigningOutput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 6789
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ethereum$SigningOutput;->setData(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$13100(Lwallet/core/jni/proto/Ethereum$SigningOutput;)V
    .locals 0

    .line 6789
    invoke-direct {p0}, Lwallet/core/jni/proto/Ethereum$SigningOutput;->clearData()V

    return-void
.end method

.method static synthetic access$13200(Lwallet/core/jni/proto/Ethereum$SigningOutput;I)V
    .locals 0

    .line 6789
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ethereum$SigningOutput;->setErrorValue(I)V

    return-void
.end method

.method static synthetic access$13300(Lwallet/core/jni/proto/Ethereum$SigningOutput;Lwallet/core/jni/proto/Common$SigningError;)V
    .locals 0

    .line 6789
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ethereum$SigningOutput;->setError(Lwallet/core/jni/proto/Common$SigningError;)V

    return-void
.end method

.method static synthetic access$13400(Lwallet/core/jni/proto/Ethereum$SigningOutput;)V
    .locals 0

    .line 6789
    invoke-direct {p0}, Lwallet/core/jni/proto/Ethereum$SigningOutput;->clearError()V

    return-void
.end method

.method static synthetic access$13500(Lwallet/core/jni/proto/Ethereum$SigningOutput;Ljava/lang/String;)V
    .locals 0

    .line 6789
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ethereum$SigningOutput;->setErrorMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$13600(Lwallet/core/jni/proto/Ethereum$SigningOutput;)V
    .locals 0

    .line 6789
    invoke-direct {p0}, Lwallet/core/jni/proto/Ethereum$SigningOutput;->clearErrorMessage()V

    return-void
.end method

.method static synthetic access$13700(Lwallet/core/jni/proto/Ethereum$SigningOutput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 6789
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ethereum$SigningOutput;->setErrorMessageBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearData()V
    .locals 1

    .line 6970
    invoke-static {}, Lwallet/core/jni/proto/Ethereum$SigningOutput;->getDefaultInstance()Lwallet/core/jni/proto/Ethereum$SigningOutput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$SigningOutput;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Ethereum$SigningOutput;->data_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearEncoded()V
    .locals 1

    .line 6838
    invoke-static {}, Lwallet/core/jni/proto/Ethereum$SigningOutput;->getDefaultInstance()Lwallet/core/jni/proto/Ethereum$SigningOutput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$SigningOutput;->getEncoded()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Ethereum$SigningOutput;->encoded_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearError()V
    .locals 1

    const/4 v0, 0x0

    .line 7032
    iput v0, p0, Lwallet/core/jni/proto/Ethereum$SigningOutput;->error_:I

    return-void
.end method

.method private clearErrorMessage()V
    .locals 1

    .line 7085
    invoke-static {}, Lwallet/core/jni/proto/Ethereum$SigningOutput;->getDefaultInstance()Lwallet/core/jni/proto/Ethereum$SigningOutput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$SigningOutput;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Ethereum$SigningOutput;->errorMessage_:Ljava/lang/String;

    return-void
.end method

.method private clearR()V
    .locals 1

    .line 6904
    invoke-static {}, Lwallet/core/jni/proto/Ethereum$SigningOutput;->getDefaultInstance()Lwallet/core/jni/proto/Ethereum$SigningOutput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$SigningOutput;->getR()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Ethereum$SigningOutput;->r_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearS()V
    .locals 1

    .line 6931
    invoke-static {}, Lwallet/core/jni/proto/Ethereum$SigningOutput;->getDefaultInstance()Lwallet/core/jni/proto/Ethereum$SigningOutput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$SigningOutput;->getS()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Ethereum$SigningOutput;->s_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearV()V
    .locals 1

    .line 6877
    invoke-static {}, Lwallet/core/jni/proto/Ethereum$SigningOutput;->getDefaultInstance()Lwallet/core/jni/proto/Ethereum$SigningOutput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$SigningOutput;->getV()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Ethereum$SigningOutput;->v_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Ethereum$SigningOutput;
    .locals 1

    .line 7583
    sget-object v0, Lwallet/core/jni/proto/Ethereum$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$SigningOutput;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Ethereum$SigningOutput$Builder;
    .locals 1

    .line 7177
    sget-object v0, Lwallet/core/jni/proto/Ethereum$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$SigningOutput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Ethereum$SigningOutput$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Ethereum$SigningOutput;)Lwallet/core/jni/proto/Ethereum$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 7180
    sget-object v0, Lwallet/core/jni/proto/Ethereum$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$SigningOutput;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$SigningOutput$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Ethereum$SigningOutput;
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

    .line 7154
    sget-object v0, Lwallet/core/jni/proto/Ethereum$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$SigningOutput;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ethereum$SigningOutput;
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

    .line 7160
    sget-object v0, Lwallet/core/jni/proto/Ethereum$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ethereum$SigningOutput;
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

    .line 7118
    sget-object v0, Lwallet/core/jni/proto/Ethereum$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ethereum$SigningOutput;
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

    .line 7125
    sget-object v0, Lwallet/core/jni/proto/Ethereum$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Ethereum$SigningOutput;
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

    .line 7165
    sget-object v0, Lwallet/core/jni/proto/Ethereum$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ethereum$SigningOutput;
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

    .line 7172
    sget-object v0, Lwallet/core/jni/proto/Ethereum$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Ethereum$SigningOutput;
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

    .line 7142
    sget-object v0, Lwallet/core/jni/proto/Ethereum$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ethereum$SigningOutput;
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

    .line 7149
    sget-object v0, Lwallet/core/jni/proto/Ethereum$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Ethereum$SigningOutput;
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

    .line 7105
    sget-object v0, Lwallet/core/jni/proto/Ethereum$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ethereum$SigningOutput;
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

    .line 7112
    sget-object v0, Lwallet/core/jni/proto/Ethereum$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$SigningOutput;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Ethereum$SigningOutput;
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

    .line 7130
    sget-object v0, Lwallet/core/jni/proto/Ethereum$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$SigningOutput;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ethereum$SigningOutput;
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

    .line 7137
    sget-object v0, Lwallet/core/jni/proto/Ethereum$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$SigningOutput;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Ethereum$SigningOutput;",
            ">;"
        }
    .end annotation

    .line 7589
    sget-object v0, Lwallet/core/jni/proto/Ethereum$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$SigningOutput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setData(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6957
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6959
    iput-object p1, p0, Lwallet/core/jni/proto/Ethereum$SigningOutput;->data_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setEncoded(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6825
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6827
    iput-object p1, p0, Lwallet/core/jni/proto/Ethereum$SigningOutput;->encoded_:Lcom/google/protobuf/ByteString;

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

    .line 7020
    invoke-virtual {p1}, Lwallet/core/jni/proto/Common$SigningError;->getNumber()I

    move-result p1

    iput p1, p0, Lwallet/core/jni/proto/Ethereum$SigningOutput;->error_:I

    return-void
.end method

.method private setErrorMessage(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7072
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7074
    iput-object p1, p0, Lwallet/core/jni/proto/Ethereum$SigningOutput;->errorMessage_:Ljava/lang/String;

    return-void
.end method

.method private setErrorMessageBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7097
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 7098
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Ethereum$SigningOutput;->errorMessage_:Ljava/lang/String;

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

    .line 7009
    iput p1, p0, Lwallet/core/jni/proto/Ethereum$SigningOutput;->error_:I

    return-void
.end method

.method private setR(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6895
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6897
    iput-object p1, p0, Lwallet/core/jni/proto/Ethereum$SigningOutput;->r_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setS(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6922
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6924
    iput-object p1, p0, Lwallet/core/jni/proto/Ethereum$SigningOutput;->s_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setV(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6864
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6866
    iput-object p1, p0, Lwallet/core/jni/proto/Ethereum$SigningOutput;->v_:Lcom/google/protobuf/ByteString;

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

    .line 7519
    sget-object p2, Lwallet/core/jni/proto/Ethereum$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 7567
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 7561
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 7546
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Ethereum$SigningOutput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 7548
    const-class p2, Lwallet/core/jni/proto/Ethereum$SigningOutput;

    monitor-enter p2

    .line 7549
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Ethereum$SigningOutput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7551
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Ethereum$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$SigningOutput;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 7554
    sput-object p1, Lwallet/core/jni/proto/Ethereum$SigningOutput;->PARSER:Lcom/google/protobuf/Parser;

    .line 7556
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

    .line 7543
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Ethereum$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$SigningOutput;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "encoded_"

    aput-object v0, p1, p3

    const-string p3, "v_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "r_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "s_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "data_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "error_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "errorMessage_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0007\u0000\u0000\u0001\u0007\u0007\u0000\u0000\u0000\u0001\n\u0002\n\u0003\n\u0004\n\u0005\n\u0006\u000c\u0007\u0208"

    .line 7539
    sget-object p3, Lwallet/core/jni/proto/Ethereum$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$SigningOutput;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7524
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Ethereum$SigningOutput$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Ethereum$SigningOutput$Builder;-><init>(Lwallet/core/jni/proto/Ethereum$1;)V

    return-object p1

    .line 7521
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Ethereum$SigningOutput;

    invoke-direct {p1}, Lwallet/core/jni/proto/Ethereum$SigningOutput;-><init>()V

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

.method public getData()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6946
    iget-object v0, p0, Lwallet/core/jni/proto/Ethereum$SigningOutput;->data_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getEncoded()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6814
    iget-object v0, p0, Lwallet/core/jni/proto/Ethereum$SigningOutput;->encoded_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getError()Lwallet/core/jni/proto/Common$SigningError;
    .locals 1

    .line 6997
    iget v0, p0, Lwallet/core/jni/proto/Ethereum$SigningOutput;->error_:I

    invoke-static {v0}, Lwallet/core/jni/proto/Common$SigningError;->forNumber(I)Lwallet/core/jni/proto/Common$SigningError;

    move-result-object v0

    if-nez v0, :cond_0

    .line 6998
    sget-object v0, Lwallet/core/jni/proto/Common$SigningError;->UNRECOGNIZED:Lwallet/core/jni/proto/Common$SigningError;

    :cond_0
    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 7047
    iget-object v0, p0, Lwallet/core/jni/proto/Ethereum$SigningOutput;->errorMessage_:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMessageBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7060
    iget-object v0, p0, Lwallet/core/jni/proto/Ethereum$SigningOutput;->errorMessage_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getErrorValue()I
    .locals 1

    .line 6985
    iget v0, p0, Lwallet/core/jni/proto/Ethereum$SigningOutput;->error_:I

    return v0
.end method

.method public getR()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6888
    iget-object v0, p0, Lwallet/core/jni/proto/Ethereum$SigningOutput;->r_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getS()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6915
    iget-object v0, p0, Lwallet/core/jni/proto/Ethereum$SigningOutput;->s_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getV()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6853
    iget-object v0, p0, Lwallet/core/jni/proto/Ethereum$SigningOutput;->v_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method
