.class public final Lwallet/core/jni/proto/Nervos$SigningOutput;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Nervos.java"

# interfaces
.implements Lwallet/core/jni/proto/Nervos$SigningOutputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Nervos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SigningOutput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Nervos$SigningOutput$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Nervos$SigningOutput;",
        "Lwallet/core/jni/proto/Nervos$SigningOutput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Nervos$SigningOutputOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$SigningOutput;

.field public static final ERROR_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Nervos$SigningOutput;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRANSACTION_ID_FIELD_NUMBER:I = 0x2

.field public static final TRANSACTION_JSON_FIELD_NUMBER:I = 0x1


# instance fields
.field private error_:I

.field private transactionId_:Ljava/lang/String;

.field private transactionJson_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10495
    new-instance v0, Lwallet/core/jni/proto/Nervos$SigningOutput;

    invoke-direct {v0}, Lwallet/core/jni/proto/Nervos$SigningOutput;-><init>()V

    .line 10498
    sput-object v0, Lwallet/core/jni/proto/Nervos$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$SigningOutput;

    .line 10499
    const-class v1, Lwallet/core/jni/proto/Nervos$SigningOutput;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 9934
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 9935
    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$SigningOutput;->transactionJson_:Ljava/lang/String;

    .line 9936
    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$SigningOutput;->transactionId_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$17700()Lwallet/core/jni/proto/Nervos$SigningOutput;
    .locals 1

    .line 9929
    sget-object v0, Lwallet/core/jni/proto/Nervos$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$SigningOutput;

    return-object v0
.end method

.method static synthetic access$17800(Lwallet/core/jni/proto/Nervos$SigningOutput;Ljava/lang/String;)V
    .locals 0

    .line 9929
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$SigningOutput;->setTransactionJson(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$17900(Lwallet/core/jni/proto/Nervos$SigningOutput;)V
    .locals 0

    .line 9929
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$SigningOutput;->clearTransactionJson()V

    return-void
.end method

.method static synthetic access$18000(Lwallet/core/jni/proto/Nervos$SigningOutput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 9929
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$SigningOutput;->setTransactionJsonBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$18100(Lwallet/core/jni/proto/Nervos$SigningOutput;Ljava/lang/String;)V
    .locals 0

    .line 9929
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$SigningOutput;->setTransactionId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$18200(Lwallet/core/jni/proto/Nervos$SigningOutput;)V
    .locals 0

    .line 9929
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$SigningOutput;->clearTransactionId()V

    return-void
.end method

.method static synthetic access$18300(Lwallet/core/jni/proto/Nervos$SigningOutput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 9929
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$SigningOutput;->setTransactionIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$18400(Lwallet/core/jni/proto/Nervos$SigningOutput;I)V
    .locals 0

    .line 9929
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$SigningOutput;->setErrorValue(I)V

    return-void
.end method

.method static synthetic access$18500(Lwallet/core/jni/proto/Nervos$SigningOutput;Lwallet/core/jni/proto/Common$SigningError;)V
    .locals 0

    .line 9929
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Nervos$SigningOutput;->setError(Lwallet/core/jni/proto/Common$SigningError;)V

    return-void
.end method

.method static synthetic access$18600(Lwallet/core/jni/proto/Nervos$SigningOutput;)V
    .locals 0

    .line 9929
    invoke-direct {p0}, Lwallet/core/jni/proto/Nervos$SigningOutput;->clearError()V

    return-void
.end method

.method private clearError()V
    .locals 1

    const/4 v0, 0x0

    .line 10131
    iput v0, p0, Lwallet/core/jni/proto/Nervos$SigningOutput;->error_:I

    return-void
.end method

.method private clearTransactionId()V
    .locals 1

    .line 10055
    invoke-static {}, Lwallet/core/jni/proto/Nervos$SigningOutput;->getDefaultInstance()Lwallet/core/jni/proto/Nervos$SigningOutput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$SigningOutput;->getTransactionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$SigningOutput;->transactionId_:Ljava/lang/String;

    return-void
.end method

.method private clearTransactionJson()V
    .locals 1

    .line 9988
    invoke-static {}, Lwallet/core/jni/proto/Nervos$SigningOutput;->getDefaultInstance()Lwallet/core/jni/proto/Nervos$SigningOutput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Nervos$SigningOutput;->getTransactionJson()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Nervos$SigningOutput;->transactionJson_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Nervos$SigningOutput;
    .locals 1

    .line 10504
    sget-object v0, Lwallet/core/jni/proto/Nervos$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$SigningOutput;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Nervos$SigningOutput$Builder;
    .locals 1

    .line 10209
    sget-object v0, Lwallet/core/jni/proto/Nervos$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$SigningOutput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Nervos$SigningOutput$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Nervos$SigningOutput;)Lwallet/core/jni/proto/Nervos$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 10212
    sget-object v0, Lwallet/core/jni/proto/Nervos$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$SigningOutput;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$SigningOutput$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Nervos$SigningOutput;
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

    .line 10186
    sget-object v0, Lwallet/core/jni/proto/Nervos$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$SigningOutput;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$SigningOutput;
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

    .line 10192
    sget-object v0, Lwallet/core/jni/proto/Nervos$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Nervos$SigningOutput;
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

    .line 10150
    sget-object v0, Lwallet/core/jni/proto/Nervos$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$SigningOutput;
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

    .line 10157
    sget-object v0, Lwallet/core/jni/proto/Nervos$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Nervos$SigningOutput;
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

    .line 10197
    sget-object v0, Lwallet/core/jni/proto/Nervos$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$SigningOutput;
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

    .line 10204
    sget-object v0, Lwallet/core/jni/proto/Nervos$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Nervos$SigningOutput;
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

    .line 10174
    sget-object v0, Lwallet/core/jni/proto/Nervos$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$SigningOutput;
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

    .line 10181
    sget-object v0, Lwallet/core/jni/proto/Nervos$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Nervos$SigningOutput;
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

    .line 10137
    sget-object v0, Lwallet/core/jni/proto/Nervos$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$SigningOutput;
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

    .line 10144
    sget-object v0, Lwallet/core/jni/proto/Nervos$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$SigningOutput;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Nervos$SigningOutput;
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

    .line 10162
    sget-object v0, Lwallet/core/jni/proto/Nervos$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$SigningOutput;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Nervos$SigningOutput;
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

    .line 10169
    sget-object v0, Lwallet/core/jni/proto/Nervos$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Nervos$SigningOutput;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Nervos$SigningOutput;",
            ">;"
        }
    .end annotation

    .line 10510
    sget-object v0, Lwallet/core/jni/proto/Nervos$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$SigningOutput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
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

    .line 10119
    invoke-virtual {p1}, Lwallet/core/jni/proto/Common$SigningError;->getNumber()I

    move-result p1

    iput p1, p0, Lwallet/core/jni/proto/Nervos$SigningOutput;->error_:I

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

    .line 10108
    iput p1, p0, Lwallet/core/jni/proto/Nervos$SigningOutput;->error_:I

    return-void
.end method

.method private setTransactionId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10042
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10044
    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$SigningOutput;->transactionId_:Ljava/lang/String;

    return-void
.end method

.method private setTransactionIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10067
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 10068
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$SigningOutput;->transactionId_:Ljava/lang/String;

    return-void
.end method

.method private setTransactionJson(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9975
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9977
    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$SigningOutput;->transactionJson_:Ljava/lang/String;

    return-void
.end method

.method private setTransactionJsonBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10000
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 10001
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Nervos$SigningOutput;->transactionJson_:Ljava/lang/String;

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

    .line 10444
    sget-object p2, Lwallet/core/jni/proto/Nervos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 10488
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 10482
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 10467
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Nervos$SigningOutput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 10469
    const-class p2, Lwallet/core/jni/proto/Nervos$SigningOutput;

    monitor-enter p2

    .line 10470
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Nervos$SigningOutput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 10472
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Nervos$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$SigningOutput;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 10475
    sput-object p1, Lwallet/core/jni/proto/Nervos$SigningOutput;->PARSER:Lcom/google/protobuf/Parser;

    .line 10477
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

    .line 10464
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Nervos$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$SigningOutput;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "transactionJson_"

    aput-object v0, p1, p3

    const-string p3, "transactionId_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "error_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u000c"

    .line 10460
    sget-object p3, Lwallet/core/jni/proto/Nervos$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Nervos$SigningOutput;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 10449
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Nervos$SigningOutput$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Nervos$SigningOutput$Builder;-><init>(Lwallet/core/jni/proto/Nervos$1;)V

    return-object p1

    .line 10446
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Nervos$SigningOutput;

    invoke-direct {p1}, Lwallet/core/jni/proto/Nervos$SigningOutput;-><init>()V

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

.method public getError()Lwallet/core/jni/proto/Common$SigningError;
    .locals 1

    .line 10096
    iget v0, p0, Lwallet/core/jni/proto/Nervos$SigningOutput;->error_:I

    invoke-static {v0}, Lwallet/core/jni/proto/Common$SigningError;->forNumber(I)Lwallet/core/jni/proto/Common$SigningError;

    move-result-object v0

    if-nez v0, :cond_0

    .line 10097
    sget-object v0, Lwallet/core/jni/proto/Common$SigningError;->UNRECOGNIZED:Lwallet/core/jni/proto/Common$SigningError;

    :cond_0
    return-object v0
.end method

.method public getErrorValue()I
    .locals 1

    .line 10084
    iget v0, p0, Lwallet/core/jni/proto/Nervos$SigningOutput;->error_:I

    return v0
.end method

.method public getTransactionId()Ljava/lang/String;
    .locals 1

    .line 10017
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$SigningOutput;->transactionId_:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 10030
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$SigningOutput;->transactionId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTransactionJson()Ljava/lang/String;
    .locals 1

    .line 9950
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$SigningOutput;->transactionJson_:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionJsonBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 9963
    iget-object v0, p0, Lwallet/core/jni/proto/Nervos$SigningOutput;->transactionJson_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
