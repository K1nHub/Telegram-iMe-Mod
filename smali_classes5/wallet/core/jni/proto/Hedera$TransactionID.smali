.class public final Lwallet/core/jni/proto/Hedera$TransactionID;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Hedera.java"

# interfaces
.implements Lwallet/core/jni/proto/Hedera$TransactionIDOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Hedera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TransactionID"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Hedera$TransactionID$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Hedera$TransactionID;",
        "Lwallet/core/jni/proto/Hedera$TransactionID$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Hedera$TransactionIDOrBuilder;"
    }
.end annotation


# static fields
.field public static final ACCOUNTID_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$TransactionID;

.field public static final NONCE_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Hedera$TransactionID;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCHEDULED_FIELD_NUMBER:I = 0x3

.field public static final TRANSACTIONVALIDSTART_FIELD_NUMBER:I = 0x1


# instance fields
.field private accountID_:Ljava/lang/String;

.field private nonce_:I

.field private scheduled_:Z

.field private transactionValidStart_:Lwallet/core/jni/proto/Hedera$Timestamp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1115
    new-instance v0, Lwallet/core/jni/proto/Hedera$TransactionID;

    invoke-direct {v0}, Lwallet/core/jni/proto/Hedera$TransactionID;-><init>()V

    .line 1118
    sput-object v0, Lwallet/core/jni/proto/Hedera$TransactionID;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$TransactionID;

    .line 1119
    const-class v1, Lwallet/core/jni/proto/Hedera$TransactionID;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 476
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 477
    iput-object v0, p0, Lwallet/core/jni/proto/Hedera$TransactionID;->accountID_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1000(Lwallet/core/jni/proto/Hedera$TransactionID;Ljava/lang/String;)V
    .locals 0

    .line 471
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Hedera$TransactionID;->setAccountID(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lwallet/core/jni/proto/Hedera$TransactionID;)V
    .locals 0

    .line 471
    invoke-direct {p0}, Lwallet/core/jni/proto/Hedera$TransactionID;->clearAccountID()V

    return-void
.end method

.method static synthetic access$1200(Lwallet/core/jni/proto/Hedera$TransactionID;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 471
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Hedera$TransactionID;->setAccountIDBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1300(Lwallet/core/jni/proto/Hedera$TransactionID;Z)V
    .locals 0

    .line 471
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Hedera$TransactionID;->setScheduled(Z)V

    return-void
.end method

.method static synthetic access$1400(Lwallet/core/jni/proto/Hedera$TransactionID;)V
    .locals 0

    .line 471
    invoke-direct {p0}, Lwallet/core/jni/proto/Hedera$TransactionID;->clearScheduled()V

    return-void
.end method

.method static synthetic access$1500(Lwallet/core/jni/proto/Hedera$TransactionID;I)V
    .locals 0

    .line 471
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Hedera$TransactionID;->setNonce(I)V

    return-void
.end method

.method static synthetic access$1600(Lwallet/core/jni/proto/Hedera$TransactionID;)V
    .locals 0

    .line 471
    invoke-direct {p0}, Lwallet/core/jni/proto/Hedera$TransactionID;->clearNonce()V

    return-void
.end method

.method static synthetic access$600()Lwallet/core/jni/proto/Hedera$TransactionID;
    .locals 1

    .line 471
    sget-object v0, Lwallet/core/jni/proto/Hedera$TransactionID;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$TransactionID;

    return-object v0
.end method

.method static synthetic access$700(Lwallet/core/jni/proto/Hedera$TransactionID;Lwallet/core/jni/proto/Hedera$Timestamp;)V
    .locals 0

    .line 471
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Hedera$TransactionID;->setTransactionValidStart(Lwallet/core/jni/proto/Hedera$Timestamp;)V

    return-void
.end method

.method static synthetic access$800(Lwallet/core/jni/proto/Hedera$TransactionID;Lwallet/core/jni/proto/Hedera$Timestamp;)V
    .locals 0

    .line 471
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Hedera$TransactionID;->mergeTransactionValidStart(Lwallet/core/jni/proto/Hedera$Timestamp;)V

    return-void
.end method

.method static synthetic access$900(Lwallet/core/jni/proto/Hedera$TransactionID;)V
    .locals 0

    .line 471
    invoke-direct {p0}, Lwallet/core/jni/proto/Hedera$TransactionID;->clearTransactionValidStart()V

    return-void
.end method

.method private clearAccountID()V
    .locals 1

    .line 595
    invoke-static {}, Lwallet/core/jni/proto/Hedera$TransactionID;->getDefaultInstance()Lwallet/core/jni/proto/Hedera$TransactionID;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Hedera$TransactionID;->getAccountID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Hedera$TransactionID;->accountID_:Ljava/lang/String;

    return-void
.end method

.method private clearNonce()V
    .locals 1

    const/4 v0, 0x0

    .line 703
    iput v0, p0, Lwallet/core/jni/proto/Hedera$TransactionID;->nonce_:I

    return-void
.end method

.method private clearScheduled()V
    .locals 1

    const/4 v0, 0x0

    .line 647
    iput-boolean v0, p0, Lwallet/core/jni/proto/Hedera$TransactionID;->scheduled_:Z

    return-void
.end method

.method private clearTransactionValidStart()V
    .locals 1

    const/4 v0, 0x0

    .line 541
    iput-object v0, p0, Lwallet/core/jni/proto/Hedera$TransactionID;->transactionValidStart_:Lwallet/core/jni/proto/Hedera$Timestamp;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Hedera$TransactionID;
    .locals 1

    .line 1124
    sget-object v0, Lwallet/core/jni/proto/Hedera$TransactionID;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$TransactionID;

    return-object v0
.end method

.method private mergeTransactionValidStart(Lwallet/core/jni/proto/Hedera$Timestamp;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 524
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 525
    iget-object v0, p0, Lwallet/core/jni/proto/Hedera$TransactionID;->transactionValidStart_:Lwallet/core/jni/proto/Hedera$Timestamp;

    if-eqz v0, :cond_0

    .line 526
    invoke-static {}, Lwallet/core/jni/proto/Hedera$Timestamp;->getDefaultInstance()Lwallet/core/jni/proto/Hedera$Timestamp;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 527
    iget-object v0, p0, Lwallet/core/jni/proto/Hedera$TransactionID;->transactionValidStart_:Lwallet/core/jni/proto/Hedera$Timestamp;

    .line 528
    invoke-static {v0}, Lwallet/core/jni/proto/Hedera$Timestamp;->newBuilder(Lwallet/core/jni/proto/Hedera$Timestamp;)Lwallet/core/jni/proto/Hedera$Timestamp$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Hedera$Timestamp$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Hedera$Timestamp;

    iput-object p1, p0, Lwallet/core/jni/proto/Hedera$TransactionID;->transactionValidStart_:Lwallet/core/jni/proto/Hedera$Timestamp;

    goto :goto_0

    .line 530
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Hedera$TransactionID;->transactionValidStart_:Lwallet/core/jni/proto/Hedera$Timestamp;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Hedera$TransactionID$Builder;
    .locals 1

    .line 781
    sget-object v0, Lwallet/core/jni/proto/Hedera$TransactionID;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$TransactionID;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Hedera$TransactionID$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Hedera$TransactionID;)Lwallet/core/jni/proto/Hedera$TransactionID$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 784
    sget-object v0, Lwallet/core/jni/proto/Hedera$TransactionID;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$TransactionID;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Hedera$TransactionID$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Hedera$TransactionID;
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

    .line 758
    sget-object v0, Lwallet/core/jni/proto/Hedera$TransactionID;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$TransactionID;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Hedera$TransactionID;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Hedera$TransactionID;
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

    .line 764
    sget-object v0, Lwallet/core/jni/proto/Hedera$TransactionID;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$TransactionID;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Hedera$TransactionID;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Hedera$TransactionID;
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

    .line 722
    sget-object v0, Lwallet/core/jni/proto/Hedera$TransactionID;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$TransactionID;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Hedera$TransactionID;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Hedera$TransactionID;
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

    .line 729
    sget-object v0, Lwallet/core/jni/proto/Hedera$TransactionID;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$TransactionID;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Hedera$TransactionID;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Hedera$TransactionID;
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

    .line 769
    sget-object v0, Lwallet/core/jni/proto/Hedera$TransactionID;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$TransactionID;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Hedera$TransactionID;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Hedera$TransactionID;
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

    .line 776
    sget-object v0, Lwallet/core/jni/proto/Hedera$TransactionID;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$TransactionID;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Hedera$TransactionID;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Hedera$TransactionID;
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

    .line 746
    sget-object v0, Lwallet/core/jni/proto/Hedera$TransactionID;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$TransactionID;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Hedera$TransactionID;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Hedera$TransactionID;
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

    .line 753
    sget-object v0, Lwallet/core/jni/proto/Hedera$TransactionID;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$TransactionID;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Hedera$TransactionID;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Hedera$TransactionID;
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

    .line 709
    sget-object v0, Lwallet/core/jni/proto/Hedera$TransactionID;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$TransactionID;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Hedera$TransactionID;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Hedera$TransactionID;
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

    .line 716
    sget-object v0, Lwallet/core/jni/proto/Hedera$TransactionID;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$TransactionID;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Hedera$TransactionID;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Hedera$TransactionID;
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

    .line 734
    sget-object v0, Lwallet/core/jni/proto/Hedera$TransactionID;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$TransactionID;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Hedera$TransactionID;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Hedera$TransactionID;
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

    .line 741
    sget-object v0, Lwallet/core/jni/proto/Hedera$TransactionID;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$TransactionID;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Hedera$TransactionID;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Hedera$TransactionID;",
            ">;"
        }
    .end annotation

    .line 1130
    sget-object v0, Lwallet/core/jni/proto/Hedera$TransactionID;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$TransactionID;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAccountID(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 582
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 584
    iput-object p1, p0, Lwallet/core/jni/proto/Hedera$TransactionID;->accountID_:Ljava/lang/String;

    return-void
.end method

.method private setAccountIDBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 607
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 608
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Hedera$TransactionID;->accountID_:Ljava/lang/String;

    return-void
.end method

.method private setNonce(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 686
    iput p1, p0, Lwallet/core/jni/proto/Hedera$TransactionID;->nonce_:I

    return-void
.end method

.method private setScheduled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 636
    iput-boolean p1, p0, Lwallet/core/jni/proto/Hedera$TransactionID;->scheduled_:Z

    return-void
.end method

.method private setTransactionValidStart(Lwallet/core/jni/proto/Hedera$Timestamp;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 511
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 512
    iput-object p1, p0, Lwallet/core/jni/proto/Hedera$TransactionID;->transactionValidStart_:Lwallet/core/jni/proto/Hedera$Timestamp;

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

    .line 1063
    sget-object p2, Lwallet/core/jni/proto/Hedera$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1108
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 1102
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1087
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Hedera$TransactionID;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1089
    const-class p2, Lwallet/core/jni/proto/Hedera$TransactionID;

    monitor-enter p2

    .line 1090
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Hedera$TransactionID;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1092
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Hedera$TransactionID;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$TransactionID;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1095
    sput-object p1, Lwallet/core/jni/proto/Hedera$TransactionID;->PARSER:Lcom/google/protobuf/Parser;

    .line 1097
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

    .line 1084
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Hedera$TransactionID;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$TransactionID;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "transactionValidStart_"

    aput-object v0, p1, p3

    const-string p3, "accountID_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "scheduled_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "nonce_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\t\u0002\u0208\u0003\u0007\u0004\u0004"

    .line 1080
    sget-object p3, Lwallet/core/jni/proto/Hedera$TransactionID;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$TransactionID;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1068
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Hedera$TransactionID$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Hedera$TransactionID$Builder;-><init>(Lwallet/core/jni/proto/Hedera$1;)V

    return-object p1

    .line 1065
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Hedera$TransactionID;

    invoke-direct {p1}, Lwallet/core/jni/proto/Hedera$TransactionID;-><init>()V

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

.method public getAccountID()Ljava/lang/String;
    .locals 1

    .line 557
    iget-object v0, p0, Lwallet/core/jni/proto/Hedera$TransactionID;->accountID_:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountIDBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 570
    iget-object v0, p0, Lwallet/core/jni/proto/Hedera$TransactionID;->accountID_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNonce()I
    .locals 1

    .line 668
    iget v0, p0, Lwallet/core/jni/proto/Hedera$TransactionID;->nonce_:I

    return v0
.end method

.method public getScheduled()Z
    .locals 1

    .line 624
    iget-boolean v0, p0, Lwallet/core/jni/proto/Hedera$TransactionID;->scheduled_:Z

    return v0
.end method

.method public getTransactionValidStart()Lwallet/core/jni/proto/Hedera$Timestamp;
    .locals 1

    .line 501
    iget-object v0, p0, Lwallet/core/jni/proto/Hedera$TransactionID;->transactionValidStart_:Lwallet/core/jni/proto/Hedera$Timestamp;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/Hedera$Timestamp;->getDefaultInstance()Lwallet/core/jni/proto/Hedera$Timestamp;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasTransactionValidStart()Z
    .locals 1

    .line 490
    iget-object v0, p0, Lwallet/core/jni/proto/Hedera$TransactionID;->transactionValidStart_:Lwallet/core/jni/proto/Hedera$Timestamp;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
