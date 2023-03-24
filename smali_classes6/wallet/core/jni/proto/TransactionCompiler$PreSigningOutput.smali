.class public final Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "TransactionCompiler.java"

# interfaces
.implements Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/TransactionCompiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PreSigningOutput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;",
        "Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutputOrBuilder;"
    }
.end annotation


# static fields
.field public static final DATA_FIELD_NUMBER:I = 0x2

.field public static final DATA_HASH_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;

.field public static final ERROR_FIELD_NUMBER:I = 0x3

.field public static final ERROR_MESSAGE_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private dataHash_:Lcom/google/protobuf/ByteString;

.field private data_:Lcom/google/protobuf/ByteString;

.field private errorMessage_:Ljava/lang/String;

.field private error_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 671
    new-instance v0, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;

    invoke-direct {v0}, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;-><init>()V

    .line 674
    sput-object v0, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;

    .line 675
    const-class v1, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 86
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 87
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->dataHash_:Lcom/google/protobuf/ByteString;

    .line 88
    iput-object v0, p0, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->data_:Lcom/google/protobuf/ByteString;

    const-string v0, ""

    .line 89
    iput-object v0, p0, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->errorMessage_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;
    .locals 1

    .line 81
    sget-object v0, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;

    return-object v0
.end method

.method static synthetic access$100(Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->setDataHash(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1000(Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->setErrorMessageBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$200(Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->clearDataHash()V

    return-void
.end method

.method static synthetic access$300(Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->setData(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->clearData()V

    return-void
.end method

.method static synthetic access$500(Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;I)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->setErrorValue(I)V

    return-void
.end method

.method static synthetic access$600(Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;Lwallet/core/jni/proto/Common$SigningError;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->setError(Lwallet/core/jni/proto/Common$SigningError;)V

    return-void
.end method

.method static synthetic access$700(Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->clearError()V

    return-void
.end method

.method static synthetic access$800(Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;Ljava/lang/String;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->setErrorMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->clearErrorMessage()V

    return-void
.end method

.method private clearData()V
    .locals 1

    .line 166
    invoke-static {}, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->getDefaultInstance()Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->data_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearDataHash()V
    .locals 1

    .line 127
    invoke-static {}, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->getDefaultInstance()Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->getDataHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->dataHash_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearError()V
    .locals 1

    const/4 v0, 0x0

    .line 228
    iput v0, p0, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->error_:I

    return-void
.end method

.method private clearErrorMessage()V
    .locals 1

    .line 281
    invoke-static {}, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->getDefaultInstance()Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->errorMessage_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;
    .locals 1

    .line 680
    sget-object v0, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput$Builder;
    .locals 1

    .line 373
    sget-object v0, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;)Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 376
    sget-object v0, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;
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

    .line 350
    sget-object v0, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;
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

    .line 356
    sget-object v0, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;
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

    .line 314
    sget-object v0, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;
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

    .line 321
    sget-object v0, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;
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

    .line 361
    sget-object v0, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;
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

    .line 368
    sget-object v0, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;
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

    .line 338
    sget-object v0, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;
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

    .line 345
    sget-object v0, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;
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

    .line 301
    sget-object v0, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;
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

    .line 308
    sget-object v0, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;
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

    .line 326
    sget-object v0, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;
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

    .line 333
    sget-object v0, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;",
            ">;"
        }
    .end annotation

    .line 686
    sget-object v0, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;

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

    .line 153
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    iput-object p1, p0, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->data_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setDataHash(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 114
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    iput-object p1, p0, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->dataHash_:Lcom/google/protobuf/ByteString;

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

    .line 216
    invoke-virtual {p1}, Lwallet/core/jni/proto/Common$SigningError;->getNumber()I

    move-result p1

    iput p1, p0, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->error_:I

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

    .line 268
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 270
    iput-object p1, p0, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->errorMessage_:Ljava/lang/String;

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

    .line 293
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 294
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->errorMessage_:Ljava/lang/String;

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

    .line 205
    iput p1, p0, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->error_:I

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

    .line 619
    sget-object p2, Lwallet/core/jni/proto/TransactionCompiler$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 664
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 658
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 643
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 645
    const-class p2, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;

    monitor-enter p2

    .line 646
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 648
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 651
    sput-object p1, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->PARSER:Lcom/google/protobuf/Parser;

    .line 653
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

    .line 640
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "dataHash_"

    aput-object v0, p1, p3

    const-string p3, "data_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "error_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "errorMessage_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\n\u0002\n\u0003\u000c\u0004\u0208"

    .line 636
    sget-object p3, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 624
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput$Builder;-><init>(Lwallet/core/jni/proto/TransactionCompiler$1;)V

    return-object p1

    .line 621
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;

    invoke-direct {p1}, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;-><init>()V

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

.method public getData()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 142
    iget-object v0, p0, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->data_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getDataHash()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 103
    iget-object v0, p0, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->dataHash_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getError()Lwallet/core/jni/proto/Common$SigningError;
    .locals 1

    .line 193
    iget v0, p0, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->error_:I

    invoke-static {v0}, Lwallet/core/jni/proto/Common$SigningError;->forNumber(I)Lwallet/core/jni/proto/Common$SigningError;

    move-result-object v0

    if-nez v0, :cond_0

    .line 194
    sget-object v0, Lwallet/core/jni/proto/Common$SigningError;->UNRECOGNIZED:Lwallet/core/jni/proto/Common$SigningError;

    :cond_0
    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 243
    iget-object v0, p0, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->errorMessage_:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMessageBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 256
    iget-object v0, p0, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->errorMessage_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getErrorValue()I
    .locals 1

    .line 181
    iget v0, p0, Lwallet/core/jni/proto/TransactionCompiler$PreSigningOutput;->error_:I

    return v0
.end method
