.class public final Lwallet/core/jni/proto/Bitcoin$SigningOutput;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Bitcoin.java"

# interfaces
.implements Lwallet/core/jni/proto/Bitcoin$SigningOutputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Bitcoin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SigningOutput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Bitcoin$SigningOutput$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Bitcoin$SigningOutput;",
        "Lwallet/core/jni/proto/Bitcoin$SigningOutput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Bitcoin$SigningOutputOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$SigningOutput;

.field public static final ENCODED_FIELD_NUMBER:I = 0x2

.field public static final ERROR_FIELD_NUMBER:I = 0x4

.field public static final ERROR_MESSAGE_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Bitcoin$SigningOutput;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRANSACTION_FIELD_NUMBER:I = 0x1

.field public static final TRANSACTION_ID_FIELD_NUMBER:I = 0x3


# instance fields
.field private encoded_:Lcom/google/protobuf/ByteString;

.field private errorMessage_:Ljava/lang/String;

.field private error_:I

.field private transactionId_:Ljava/lang/String;

.field private transaction_:Lwallet/core/jni/proto/Bitcoin$Transaction;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 7153
    new-instance v0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;

    invoke-direct {v0}, Lwallet/core/jni/proto/Bitcoin$SigningOutput;-><init>()V

    .line 7156
    sput-object v0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$SigningOutput;

    .line 7157
    const-class v1, Lwallet/core/jni/proto/Bitcoin$SigningOutput;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 6372
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 6373
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->encoded_:Lcom/google/protobuf/ByteString;

    const-string v0, ""

    .line 6374
    iput-object v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->transactionId_:Ljava/lang/String;

    .line 6375
    iput-object v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->errorMessage_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$10900()Lwallet/core/jni/proto/Bitcoin$SigningOutput;
    .locals 1

    .line 6367
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$SigningOutput;

    return-object v0
.end method

.method static synthetic access$11000(Lwallet/core/jni/proto/Bitcoin$SigningOutput;Lwallet/core/jni/proto/Bitcoin$Transaction;)V
    .locals 0

    .line 6367
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->setTransaction(Lwallet/core/jni/proto/Bitcoin$Transaction;)V

    return-void
.end method

.method static synthetic access$11100(Lwallet/core/jni/proto/Bitcoin$SigningOutput;Lwallet/core/jni/proto/Bitcoin$Transaction;)V
    .locals 0

    .line 6367
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->mergeTransaction(Lwallet/core/jni/proto/Bitcoin$Transaction;)V

    return-void
.end method

.method static synthetic access$11200(Lwallet/core/jni/proto/Bitcoin$SigningOutput;)V
    .locals 0

    .line 6367
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->clearTransaction()V

    return-void
.end method

.method static synthetic access$11300(Lwallet/core/jni/proto/Bitcoin$SigningOutput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 6367
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->setEncoded(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$11400(Lwallet/core/jni/proto/Bitcoin$SigningOutput;)V
    .locals 0

    .line 6367
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->clearEncoded()V

    return-void
.end method

.method static synthetic access$11500(Lwallet/core/jni/proto/Bitcoin$SigningOutput;Ljava/lang/String;)V
    .locals 0

    .line 6367
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->setTransactionId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11600(Lwallet/core/jni/proto/Bitcoin$SigningOutput;)V
    .locals 0

    .line 6367
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->clearTransactionId()V

    return-void
.end method

.method static synthetic access$11700(Lwallet/core/jni/proto/Bitcoin$SigningOutput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 6367
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->setTransactionIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$11800(Lwallet/core/jni/proto/Bitcoin$SigningOutput;I)V
    .locals 0

    .line 6367
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->setErrorValue(I)V

    return-void
.end method

.method static synthetic access$11900(Lwallet/core/jni/proto/Bitcoin$SigningOutput;Lwallet/core/jni/proto/Common$SigningError;)V
    .locals 0

    .line 6367
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->setError(Lwallet/core/jni/proto/Common$SigningError;)V

    return-void
.end method

.method static synthetic access$12000(Lwallet/core/jni/proto/Bitcoin$SigningOutput;)V
    .locals 0

    .line 6367
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->clearError()V

    return-void
.end method

.method static synthetic access$12100(Lwallet/core/jni/proto/Bitcoin$SigningOutput;Ljava/lang/String;)V
    .locals 0

    .line 6367
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->setErrorMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12200(Lwallet/core/jni/proto/Bitcoin$SigningOutput;)V
    .locals 0

    .line 6367
    invoke-direct {p0}, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->clearErrorMessage()V

    return-void
.end method

.method static synthetic access$12300(Lwallet/core/jni/proto/Bitcoin$SigningOutput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 6367
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->setErrorMessageBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearEncoded()V
    .locals 1

    .line 6479
    invoke-static {}, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->getDefaultInstance()Lwallet/core/jni/proto/Bitcoin$SigningOutput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->getEncoded()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->encoded_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearError()V
    .locals 1

    const/4 v0, 0x0

    .line 6608
    iput v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->error_:I

    return-void
.end method

.method private clearErrorMessage()V
    .locals 1

    .line 6661
    invoke-static {}, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->getDefaultInstance()Lwallet/core/jni/proto/Bitcoin$SigningOutput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->errorMessage_:Ljava/lang/String;

    return-void
.end method

.method private clearTransaction()V
    .locals 1

    const/4 v0, 0x0

    .line 6439
    iput-object v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->transaction_:Lwallet/core/jni/proto/Bitcoin$Transaction;

    return-void
.end method

.method private clearTransactionId()V
    .locals 1

    .line 6532
    invoke-static {}, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->getDefaultInstance()Lwallet/core/jni/proto/Bitcoin$SigningOutput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->getTransactionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->transactionId_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Bitcoin$SigningOutput;
    .locals 1

    .line 7162
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$SigningOutput;

    return-object v0
.end method

.method private mergeTransaction(Lwallet/core/jni/proto/Bitcoin$Transaction;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6422
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6423
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->transaction_:Lwallet/core/jni/proto/Bitcoin$Transaction;

    if-eqz v0, :cond_0

    .line 6424
    invoke-static {}, Lwallet/core/jni/proto/Bitcoin$Transaction;->getDefaultInstance()Lwallet/core/jni/proto/Bitcoin$Transaction;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 6425
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->transaction_:Lwallet/core/jni/proto/Bitcoin$Transaction;

    .line 6426
    invoke-static {v0}, Lwallet/core/jni/proto/Bitcoin$Transaction;->newBuilder(Lwallet/core/jni/proto/Bitcoin$Transaction;)Lwallet/core/jni/proto/Bitcoin$Transaction$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Bitcoin$Transaction$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Bitcoin$Transaction;

    iput-object p1, p0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->transaction_:Lwallet/core/jni/proto/Bitcoin$Transaction;

    goto :goto_0

    .line 6428
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->transaction_:Lwallet/core/jni/proto/Bitcoin$Transaction;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Bitcoin$SigningOutput$Builder;
    .locals 1

    .line 6753
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$SigningOutput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Bitcoin$SigningOutput$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Bitcoin$SigningOutput;)Lwallet/core/jni/proto/Bitcoin$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 6756
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$SigningOutput;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$SigningOutput$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Bitcoin$SigningOutput;
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

    .line 6730
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Bitcoin$SigningOutput;
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

    .line 6736
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Bitcoin$SigningOutput;
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

    .line 6694
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Bitcoin$SigningOutput;
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

    .line 6701
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Bitcoin$SigningOutput;
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

    .line 6741
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Bitcoin$SigningOutput;
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

    .line 6748
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Bitcoin$SigningOutput;
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

    .line 6718
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Bitcoin$SigningOutput;
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

    .line 6725
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Bitcoin$SigningOutput;
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

    .line 6681
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Bitcoin$SigningOutput;
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

    .line 6688
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Bitcoin$SigningOutput;
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

    .line 6706
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Bitcoin$SigningOutput;
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

    .line 6713
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Bitcoin$SigningOutput;",
            ">;"
        }
    .end annotation

    .line 7168
    sget-object v0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$SigningOutput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
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

    .line 6466
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6468
    iput-object p1, p0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->encoded_:Lcom/google/protobuf/ByteString;

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

    .line 6596
    invoke-virtual {p1}, Lwallet/core/jni/proto/Common$SigningError;->getNumber()I

    move-result p1

    iput p1, p0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->error_:I

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

    .line 6648
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6650
    iput-object p1, p0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->errorMessage_:Ljava/lang/String;

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

    .line 6673
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 6674
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->errorMessage_:Ljava/lang/String;

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

    .line 6585
    iput p1, p0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->error_:I

    return-void
.end method

.method private setTransaction(Lwallet/core/jni/proto/Bitcoin$Transaction;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6409
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6410
    iput-object p1, p0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->transaction_:Lwallet/core/jni/proto/Bitcoin$Transaction;

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

    .line 6519
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6521
    iput-object p1, p0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->transactionId_:Ljava/lang/String;

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

    .line 6544
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 6545
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->transactionId_:Ljava/lang/String;

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

    .line 7100
    sget-object p2, Lwallet/core/jni/proto/Bitcoin$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 7146
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 7140
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 7125
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 7127
    const-class p2, Lwallet/core/jni/proto/Bitcoin$SigningOutput;

    monitor-enter p2

    .line 7128
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7130
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$SigningOutput;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 7133
    sput-object p1, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->PARSER:Lcom/google/protobuf/Parser;

    .line 7135
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

    .line 7122
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$SigningOutput;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "transaction_"

    aput-object v0, p1, p3

    const-string p3, "encoded_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "transactionId_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "error_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "errorMessage_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001\t\u0002\n\u0003\u0208\u0004\u000c\u0005\u0208"

    .line 7118
    sget-object p3, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Bitcoin$SigningOutput;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7105
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Bitcoin$SigningOutput$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Bitcoin$SigningOutput$Builder;-><init>(Lwallet/core/jni/proto/Bitcoin$1;)V

    return-object p1

    .line 7102
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Bitcoin$SigningOutput;

    invoke-direct {p1}, Lwallet/core/jni/proto/Bitcoin$SigningOutput;-><init>()V

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

.method public getEncoded()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6455
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->encoded_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getError()Lwallet/core/jni/proto/Common$SigningError;
    .locals 1

    .line 6573
    iget v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->error_:I

    invoke-static {v0}, Lwallet/core/jni/proto/Common$SigningError;->forNumber(I)Lwallet/core/jni/proto/Common$SigningError;

    move-result-object v0

    if-nez v0, :cond_0

    .line 6574
    sget-object v0, Lwallet/core/jni/proto/Common$SigningError;->UNRECOGNIZED:Lwallet/core/jni/proto/Common$SigningError;

    :cond_0
    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 6623
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->errorMessage_:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMessageBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6636
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->errorMessage_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getErrorValue()I
    .locals 1

    .line 6561
    iget v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->error_:I

    return v0
.end method

.method public getTransaction()Lwallet/core/jni/proto/Bitcoin$Transaction;
    .locals 1

    .line 6399
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->transaction_:Lwallet/core/jni/proto/Bitcoin$Transaction;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/Bitcoin$Transaction;->getDefaultInstance()Lwallet/core/jni/proto/Bitcoin$Transaction;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTransactionId()Ljava/lang/String;
    .locals 1

    .line 6494
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->transactionId_:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6507
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->transactionId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasTransaction()Z
    .locals 1

    .line 6388
    iget-object v0, p0, Lwallet/core/jni/proto/Bitcoin$SigningOutput;->transaction_:Lwallet/core/jni/proto/Bitcoin$Transaction;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
