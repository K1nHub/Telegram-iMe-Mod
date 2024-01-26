.class public final Lwallet/core/jni/proto/Decred$SigningOutput;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Decred.java"

# interfaces
.implements Lwallet/core/jni/proto/Decred$SigningOutputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Decred;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SigningOutput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Decred$SigningOutput$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Decred$SigningOutput;",
        "Lwallet/core/jni/proto/Decred$SigningOutput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Decred$SigningOutputOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$SigningOutput;

.field public static final ENCODED_FIELD_NUMBER:I = 0x2

.field public static final ERROR_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Decred$SigningOutput;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRANSACTION_FIELD_NUMBER:I = 0x1

.field public static final TRANSACTION_ID_FIELD_NUMBER:I = 0x3


# instance fields
.field private encoded_:Lcom/google/protobuf/ByteString;

.field private error_:I

.field private transactionId_:Ljava/lang/String;

.field private transaction_:Lwallet/core/jni/proto/Decred$Transaction;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 3173
    new-instance v0, Lwallet/core/jni/proto/Decred$SigningOutput;

    invoke-direct {v0}, Lwallet/core/jni/proto/Decred$SigningOutput;-><init>()V

    .line 3176
    sput-object v0, Lwallet/core/jni/proto/Decred$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$SigningOutput;

    .line 3177
    const-class v1, Lwallet/core/jni/proto/Decred$SigningOutput;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2531
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2532
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Decred$SigningOutput;->encoded_:Lcom/google/protobuf/ByteString;

    const-string v0, ""

    .line 2533
    iput-object v0, p0, Lwallet/core/jni/proto/Decred$SigningOutput;->transactionId_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4500()Lwallet/core/jni/proto/Decred$SigningOutput;
    .locals 1

    .line 2526
    sget-object v0, Lwallet/core/jni/proto/Decred$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$SigningOutput;

    return-object v0
.end method

.method static synthetic access$4600(Lwallet/core/jni/proto/Decred$SigningOutput;Lwallet/core/jni/proto/Decred$Transaction;)V
    .locals 0

    .line 2526
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Decred$SigningOutput;->setTransaction(Lwallet/core/jni/proto/Decred$Transaction;)V

    return-void
.end method

.method static synthetic access$4700(Lwallet/core/jni/proto/Decred$SigningOutput;Lwallet/core/jni/proto/Decred$Transaction;)V
    .locals 0

    .line 2526
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Decred$SigningOutput;->mergeTransaction(Lwallet/core/jni/proto/Decred$Transaction;)V

    return-void
.end method

.method static synthetic access$4800(Lwallet/core/jni/proto/Decred$SigningOutput;)V
    .locals 0

    .line 2526
    invoke-direct {p0}, Lwallet/core/jni/proto/Decred$SigningOutput;->clearTransaction()V

    return-void
.end method

.method static synthetic access$4900(Lwallet/core/jni/proto/Decred$SigningOutput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 2526
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Decred$SigningOutput;->setEncoded(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$5000(Lwallet/core/jni/proto/Decred$SigningOutput;)V
    .locals 0

    .line 2526
    invoke-direct {p0}, Lwallet/core/jni/proto/Decred$SigningOutput;->clearEncoded()V

    return-void
.end method

.method static synthetic access$5100(Lwallet/core/jni/proto/Decred$SigningOutput;Ljava/lang/String;)V
    .locals 0

    .line 2526
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Decred$SigningOutput;->setTransactionId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5200(Lwallet/core/jni/proto/Decred$SigningOutput;)V
    .locals 0

    .line 2526
    invoke-direct {p0}, Lwallet/core/jni/proto/Decred$SigningOutput;->clearTransactionId()V

    return-void
.end method

.method static synthetic access$5300(Lwallet/core/jni/proto/Decred$SigningOutput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 2526
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Decred$SigningOutput;->setTransactionIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$5400(Lwallet/core/jni/proto/Decred$SigningOutput;I)V
    .locals 0

    .line 2526
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Decred$SigningOutput;->setErrorValue(I)V

    return-void
.end method

.method static synthetic access$5500(Lwallet/core/jni/proto/Decred$SigningOutput;Lwallet/core/jni/proto/Common$SigningError;)V
    .locals 0

    .line 2526
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Decred$SigningOutput;->setError(Lwallet/core/jni/proto/Common$SigningError;)V

    return-void
.end method

.method static synthetic access$5600(Lwallet/core/jni/proto/Decred$SigningOutput;)V
    .locals 0

    .line 2526
    invoke-direct {p0}, Lwallet/core/jni/proto/Decred$SigningOutput;->clearError()V

    return-void
.end method

.method private clearEncoded()V
    .locals 1

    .line 2637
    invoke-static {}, Lwallet/core/jni/proto/Decred$SigningOutput;->getDefaultInstance()Lwallet/core/jni/proto/Decred$SigningOutput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Decred$SigningOutput;->getEncoded()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Decred$SigningOutput;->encoded_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearError()V
    .locals 1

    const/4 v0, 0x0

    .line 2766
    iput v0, p0, Lwallet/core/jni/proto/Decred$SigningOutput;->error_:I

    return-void
.end method

.method private clearTransaction()V
    .locals 1

    const/4 v0, 0x0

    .line 2597
    iput-object v0, p0, Lwallet/core/jni/proto/Decred$SigningOutput;->transaction_:Lwallet/core/jni/proto/Decred$Transaction;

    return-void
.end method

.method private clearTransactionId()V
    .locals 1

    .line 2690
    invoke-static {}, Lwallet/core/jni/proto/Decred$SigningOutput;->getDefaultInstance()Lwallet/core/jni/proto/Decred$SigningOutput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Decred$SigningOutput;->getTransactionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Decred$SigningOutput;->transactionId_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Decred$SigningOutput;
    .locals 1

    .line 3182
    sget-object v0, Lwallet/core/jni/proto/Decred$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$SigningOutput;

    return-object v0
.end method

.method private mergeTransaction(Lwallet/core/jni/proto/Decred$Transaction;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2580
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2581
    iget-object v0, p0, Lwallet/core/jni/proto/Decred$SigningOutput;->transaction_:Lwallet/core/jni/proto/Decred$Transaction;

    if-eqz v0, :cond_0

    .line 2582
    invoke-static {}, Lwallet/core/jni/proto/Decred$Transaction;->getDefaultInstance()Lwallet/core/jni/proto/Decred$Transaction;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2583
    iget-object v0, p0, Lwallet/core/jni/proto/Decred$SigningOutput;->transaction_:Lwallet/core/jni/proto/Decred$Transaction;

    .line 2584
    invoke-static {v0}, Lwallet/core/jni/proto/Decred$Transaction;->newBuilder(Lwallet/core/jni/proto/Decred$Transaction;)Lwallet/core/jni/proto/Decred$Transaction$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Decred$Transaction$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Decred$Transaction;

    iput-object p1, p0, Lwallet/core/jni/proto/Decred$SigningOutput;->transaction_:Lwallet/core/jni/proto/Decred$Transaction;

    goto :goto_0

    .line 2586
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Decred$SigningOutput;->transaction_:Lwallet/core/jni/proto/Decred$Transaction;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Decred$SigningOutput$Builder;
    .locals 1

    .line 2844
    sget-object v0, Lwallet/core/jni/proto/Decred$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$SigningOutput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Decred$SigningOutput$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Decred$SigningOutput;)Lwallet/core/jni/proto/Decred$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 2847
    sget-object v0, Lwallet/core/jni/proto/Decred$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$SigningOutput;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Decred$SigningOutput$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Decred$SigningOutput;
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

    .line 2821
    sget-object v0, Lwallet/core/jni/proto/Decred$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Decred$SigningOutput;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Decred$SigningOutput;
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

    .line 2827
    sget-object v0, Lwallet/core/jni/proto/Decred$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Decred$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Decred$SigningOutput;
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

    .line 2785
    sget-object v0, Lwallet/core/jni/proto/Decred$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Decred$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Decred$SigningOutput;
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

    .line 2792
    sget-object v0, Lwallet/core/jni/proto/Decred$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Decred$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Decred$SigningOutput;
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

    .line 2832
    sget-object v0, Lwallet/core/jni/proto/Decred$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Decred$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Decred$SigningOutput;
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

    .line 2839
    sget-object v0, Lwallet/core/jni/proto/Decred$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Decred$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Decred$SigningOutput;
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

    .line 2809
    sget-object v0, Lwallet/core/jni/proto/Decred$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Decred$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Decred$SigningOutput;
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

    .line 2816
    sget-object v0, Lwallet/core/jni/proto/Decred$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Decred$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Decred$SigningOutput;
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

    .line 2772
    sget-object v0, Lwallet/core/jni/proto/Decred$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Decred$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Decred$SigningOutput;
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

    .line 2779
    sget-object v0, Lwallet/core/jni/proto/Decred$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Decred$SigningOutput;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Decred$SigningOutput;
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

    .line 2797
    sget-object v0, Lwallet/core/jni/proto/Decred$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Decred$SigningOutput;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Decred$SigningOutput;
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

    .line 2804
    sget-object v0, Lwallet/core/jni/proto/Decred$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Decred$SigningOutput;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Decred$SigningOutput;",
            ">;"
        }
    .end annotation

    .line 3188
    sget-object v0, Lwallet/core/jni/proto/Decred$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$SigningOutput;

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

    .line 2624
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2626
    iput-object p1, p0, Lwallet/core/jni/proto/Decred$SigningOutput;->encoded_:Lcom/google/protobuf/ByteString;

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

    .line 2754
    invoke-virtual {p1}, Lwallet/core/jni/proto/Common$SigningError;->getNumber()I

    move-result p1

    iput p1, p0, Lwallet/core/jni/proto/Decred$SigningOutput;->error_:I

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

    .line 2743
    iput p1, p0, Lwallet/core/jni/proto/Decred$SigningOutput;->error_:I

    return-void
.end method

.method private setTransaction(Lwallet/core/jni/proto/Decred$Transaction;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2567
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2568
    iput-object p1, p0, Lwallet/core/jni/proto/Decred$SigningOutput;->transaction_:Lwallet/core/jni/proto/Decred$Transaction;

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

    .line 2677
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2679
    iput-object p1, p0, Lwallet/core/jni/proto/Decred$SigningOutput;->transactionId_:Ljava/lang/String;

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

    .line 2702
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2703
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Decred$SigningOutput;->transactionId_:Ljava/lang/String;

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

    .line 3121
    sget-object p2, Lwallet/core/jni/proto/Decred$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 3166
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 3160
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 3145
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Decred$SigningOutput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 3147
    const-class p2, Lwallet/core/jni/proto/Decred$SigningOutput;

    monitor-enter p2

    .line 3148
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Decred$SigningOutput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 3150
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Decred$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$SigningOutput;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3153
    sput-object p1, Lwallet/core/jni/proto/Decred$SigningOutput;->PARSER:Lcom/google/protobuf/Parser;

    .line 3155
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

    .line 3142
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Decred$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$SigningOutput;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

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

    const-string p2, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\t\u0002\n\u0003\u0208\u0004\u000c"

    .line 3138
    sget-object p3, Lwallet/core/jni/proto/Decred$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Decred$SigningOutput;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3126
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Decred$SigningOutput$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Decred$SigningOutput$Builder;-><init>(Lwallet/core/jni/proto/Decred$1;)V

    return-object p1

    .line 3123
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Decred$SigningOutput;

    invoke-direct {p1}, Lwallet/core/jni/proto/Decred$SigningOutput;-><init>()V

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

.method public getEncoded()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2613
    iget-object v0, p0, Lwallet/core/jni/proto/Decred$SigningOutput;->encoded_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getError()Lwallet/core/jni/proto/Common$SigningError;
    .locals 1

    .line 2731
    iget v0, p0, Lwallet/core/jni/proto/Decred$SigningOutput;->error_:I

    invoke-static {v0}, Lwallet/core/jni/proto/Common$SigningError;->forNumber(I)Lwallet/core/jni/proto/Common$SigningError;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2732
    sget-object v0, Lwallet/core/jni/proto/Common$SigningError;->UNRECOGNIZED:Lwallet/core/jni/proto/Common$SigningError;

    :cond_0
    return-object v0
.end method

.method public getErrorValue()I
    .locals 1

    .line 2719
    iget v0, p0, Lwallet/core/jni/proto/Decred$SigningOutput;->error_:I

    return v0
.end method

.method public getTransaction()Lwallet/core/jni/proto/Decred$Transaction;
    .locals 1

    .line 2557
    iget-object v0, p0, Lwallet/core/jni/proto/Decred$SigningOutput;->transaction_:Lwallet/core/jni/proto/Decred$Transaction;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/Decred$Transaction;->getDefaultInstance()Lwallet/core/jni/proto/Decred$Transaction;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTransactionId()Ljava/lang/String;
    .locals 1

    .line 2652
    iget-object v0, p0, Lwallet/core/jni/proto/Decred$SigningOutput;->transactionId_:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2665
    iget-object v0, p0, Lwallet/core/jni/proto/Decred$SigningOutput;->transactionId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasTransaction()Z
    .locals 1

    .line 2546
    iget-object v0, p0, Lwallet/core/jni/proto/Decred$SigningOutput;->transaction_:Lwallet/core/jni/proto/Decred$Transaction;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
