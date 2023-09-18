.class public final Lwallet/core/jni/proto/Solana$SigningOutput;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Solana.java"

# interfaces
.implements Lwallet/core/jni/proto/Solana$SigningOutputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Solana;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SigningOutput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Solana$SigningOutput$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Solana$SigningOutput;",
        "Lwallet/core/jni/proto/Solana$SigningOutput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Solana$SigningOutputOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$SigningOutput;

.field public static final ENCODED_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Solana$SigningOutput;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNSIGNED_TX_FIELD_NUMBER:I = 0x2


# instance fields
.field private encoded_:Ljava/lang/String;

.field private unsignedTx_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 9102
    new-instance v0, Lwallet/core/jni/proto/Solana$SigningOutput;

    invoke-direct {v0}, Lwallet/core/jni/proto/Solana$SigningOutput;-><init>()V

    .line 9105
    sput-object v0, Lwallet/core/jni/proto/Solana$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$SigningOutput;

    .line 9106
    const-class v1, Lwallet/core/jni/proto/Solana$SigningOutput;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 8670
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 8671
    iput-object v0, p0, Lwallet/core/jni/proto/Solana$SigningOutput;->encoded_:Ljava/lang/String;

    .line 8672
    iput-object v0, p0, Lwallet/core/jni/proto/Solana$SigningOutput;->unsignedTx_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$15600()Lwallet/core/jni/proto/Solana$SigningOutput;
    .locals 1

    .line 8665
    sget-object v0, Lwallet/core/jni/proto/Solana$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$SigningOutput;

    return-object v0
.end method

.method static synthetic access$15700(Lwallet/core/jni/proto/Solana$SigningOutput;Ljava/lang/String;)V
    .locals 0

    .line 8665
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$SigningOutput;->setEncoded(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$15800(Lwallet/core/jni/proto/Solana$SigningOutput;)V
    .locals 0

    .line 8665
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$SigningOutput;->clearEncoded()V

    return-void
.end method

.method static synthetic access$15900(Lwallet/core/jni/proto/Solana$SigningOutput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 8665
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$SigningOutput;->setEncodedBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$16000(Lwallet/core/jni/proto/Solana$SigningOutput;Ljava/lang/String;)V
    .locals 0

    .line 8665
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$SigningOutput;->setUnsignedTx(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$16100(Lwallet/core/jni/proto/Solana$SigningOutput;)V
    .locals 0

    .line 8665
    invoke-direct {p0}, Lwallet/core/jni/proto/Solana$SigningOutput;->clearUnsignedTx()V

    return-void
.end method

.method static synthetic access$16200(Lwallet/core/jni/proto/Solana$SigningOutput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 8665
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Solana$SigningOutput;->setUnsignedTxBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearEncoded()V
    .locals 1

    .line 8724
    invoke-static {}, Lwallet/core/jni/proto/Solana$SigningOutput;->getDefaultInstance()Lwallet/core/jni/proto/Solana$SigningOutput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$SigningOutput;->getEncoded()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Solana$SigningOutput;->encoded_:Ljava/lang/String;

    return-void
.end method

.method private clearUnsignedTx()V
    .locals 1

    .line 8791
    invoke-static {}, Lwallet/core/jni/proto/Solana$SigningOutput;->getDefaultInstance()Lwallet/core/jni/proto/Solana$SigningOutput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Solana$SigningOutput;->getUnsignedTx()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Solana$SigningOutput;->unsignedTx_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Solana$SigningOutput;
    .locals 1

    .line 9111
    sget-object v0, Lwallet/core/jni/proto/Solana$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$SigningOutput;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Solana$SigningOutput$Builder;
    .locals 1

    .line 8883
    sget-object v0, Lwallet/core/jni/proto/Solana$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$SigningOutput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Solana$SigningOutput$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Solana$SigningOutput;)Lwallet/core/jni/proto/Solana$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 8886
    sget-object v0, Lwallet/core/jni/proto/Solana$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$SigningOutput;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$SigningOutput$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Solana$SigningOutput;
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

    .line 8860
    sget-object v0, Lwallet/core/jni/proto/Solana$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$SigningOutput;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Solana$SigningOutput;
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

    .line 8866
    sget-object v0, Lwallet/core/jni/proto/Solana$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Solana$SigningOutput;
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

    .line 8824
    sget-object v0, Lwallet/core/jni/proto/Solana$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Solana$SigningOutput;
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

    .line 8831
    sget-object v0, Lwallet/core/jni/proto/Solana$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Solana$SigningOutput;
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

    .line 8871
    sget-object v0, Lwallet/core/jni/proto/Solana$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Solana$SigningOutput;
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

    .line 8878
    sget-object v0, Lwallet/core/jni/proto/Solana$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Solana$SigningOutput;
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

    .line 8848
    sget-object v0, Lwallet/core/jni/proto/Solana$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Solana$SigningOutput;
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

    .line 8855
    sget-object v0, Lwallet/core/jni/proto/Solana$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Solana$SigningOutput;
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

    .line 8811
    sget-object v0, Lwallet/core/jni/proto/Solana$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Solana$SigningOutput;
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

    .line 8818
    sget-object v0, Lwallet/core/jni/proto/Solana$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$SigningOutput;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Solana$SigningOutput;
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

    .line 8836
    sget-object v0, Lwallet/core/jni/proto/Solana$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$SigningOutput;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Solana$SigningOutput;
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

    .line 8843
    sget-object v0, Lwallet/core/jni/proto/Solana$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Solana$SigningOutput;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Solana$SigningOutput;",
            ">;"
        }
    .end annotation

    .line 9117
    sget-object v0, Lwallet/core/jni/proto/Solana$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$SigningOutput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setEncoded(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8711
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8713
    iput-object p1, p0, Lwallet/core/jni/proto/Solana$SigningOutput;->encoded_:Ljava/lang/String;

    return-void
.end method

.method private setEncodedBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8736
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 8737
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Solana$SigningOutput;->encoded_:Ljava/lang/String;

    return-void
.end method

.method private setUnsignedTx(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8778
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8780
    iput-object p1, p0, Lwallet/core/jni/proto/Solana$SigningOutput;->unsignedTx_:Ljava/lang/String;

    return-void
.end method

.method private setUnsignedTxBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8803
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 8804
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Solana$SigningOutput;->unsignedTx_:Ljava/lang/String;

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

    .line 9052
    sget-object p2, Lwallet/core/jni/proto/Solana$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 9095
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 9089
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 9074
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Solana$SigningOutput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 9076
    const-class p2, Lwallet/core/jni/proto/Solana$SigningOutput;

    monitor-enter p2

    .line 9077
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Solana$SigningOutput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 9079
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Solana$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$SigningOutput;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 9082
    sput-object p1, Lwallet/core/jni/proto/Solana$SigningOutput;->PARSER:Lcom/google/protobuf/Parser;

    .line 9084
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

    .line 9071
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Solana$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$SigningOutput;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "encoded_"

    aput-object v0, p1, p3

    const-string p3, "unsignedTx_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0208\u0002\u0208"

    .line 9067
    sget-object p3, Lwallet/core/jni/proto/Solana$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Solana$SigningOutput;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 9057
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Solana$SigningOutput$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Solana$SigningOutput$Builder;-><init>(Lwallet/core/jni/proto/Solana$1;)V

    return-object p1

    .line 9054
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Solana$SigningOutput;

    invoke-direct {p1}, Lwallet/core/jni/proto/Solana$SigningOutput;-><init>()V

    return-object p1

    nop

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

.method public getEncoded()Ljava/lang/String;
    .locals 1

    .line 8686
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$SigningOutput;->encoded_:Ljava/lang/String;

    return-object v0
.end method

.method public getEncodedBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 8699
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$SigningOutput;->encoded_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getUnsignedTx()Ljava/lang/String;
    .locals 1

    .line 8753
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$SigningOutput;->unsignedTx_:Ljava/lang/String;

    return-object v0
.end method

.method public getUnsignedTxBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 8766
    iget-object v0, p0, Lwallet/core/jni/proto/Solana$SigningOutput;->unsignedTx_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
