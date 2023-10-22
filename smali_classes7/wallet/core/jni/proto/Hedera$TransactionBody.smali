.class public final Lwallet/core/jni/proto/Hedera$TransactionBody;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Hedera.java"

# interfaces
.implements Lwallet/core/jni/proto/Hedera$TransactionBodyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Hedera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TransactionBody"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Hedera$TransactionBody$Builder;,
        Lwallet/core/jni/proto/Hedera$TransactionBody$DataCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Hedera$TransactionBody;",
        "Lwallet/core/jni/proto/Hedera$TransactionBody$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Hedera$TransactionBodyOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$TransactionBody;

.field public static final MEMO_FIELD_NUMBER:I = 0x5

.field public static final NODEACCOUNTID_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Hedera$TransactionBody;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRANSACTIONFEE_FIELD_NUMBER:I = 0x3

.field public static final TRANSACTIONID_FIELD_NUMBER:I = 0x1

.field public static final TRANSACTIONVALIDDURATION_FIELD_NUMBER:I = 0x4

.field public static final TRANSFER_FIELD_NUMBER:I = 0x6


# instance fields
.field private dataCase_:I

.field private data_:Ljava/lang/Object;

.field private memo_:Ljava/lang/String;

.field private nodeAccountID_:Ljava/lang/String;

.field private transactionFee_:J

.field private transactionID_:Lwallet/core/jni/proto/Hedera$TransactionID;

.field private transactionValidDuration_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2785
    new-instance v0, Lwallet/core/jni/proto/Hedera$TransactionBody;

    invoke-direct {v0}, Lwallet/core/jni/proto/Hedera$TransactionBody;-><init>()V

    .line 2788
    sput-object v0, Lwallet/core/jni/proto/Hedera$TransactionBody;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$TransactionBody;

    .line 2789
    const-class v1, Lwallet/core/jni/proto/Hedera$TransactionBody;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1848
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 1852
    iput v0, p0, Lwallet/core/jni/proto/Hedera$TransactionBody;->dataCase_:I

    const-string v0, ""

    .line 1849
    iput-object v0, p0, Lwallet/core/jni/proto/Hedera$TransactionBody;->nodeAccountID_:Ljava/lang/String;

    .line 1850
    iput-object v0, p0, Lwallet/core/jni/proto/Hedera$TransactionBody;->memo_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2800()Lwallet/core/jni/proto/Hedera$TransactionBody;
    .locals 1

    .line 1843
    sget-object v0, Lwallet/core/jni/proto/Hedera$TransactionBody;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$TransactionBody;

    return-object v0
.end method

.method static synthetic access$2900(Lwallet/core/jni/proto/Hedera$TransactionBody;)V
    .locals 0

    .line 1843
    invoke-direct {p0}, Lwallet/core/jni/proto/Hedera$TransactionBody;->clearData()V

    return-void
.end method

.method static synthetic access$3000(Lwallet/core/jni/proto/Hedera$TransactionBody;Lwallet/core/jni/proto/Hedera$TransactionID;)V
    .locals 0

    .line 1843
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Hedera$TransactionBody;->setTransactionID(Lwallet/core/jni/proto/Hedera$TransactionID;)V

    return-void
.end method

.method static synthetic access$3100(Lwallet/core/jni/proto/Hedera$TransactionBody;Lwallet/core/jni/proto/Hedera$TransactionID;)V
    .locals 0

    .line 1843
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Hedera$TransactionBody;->mergeTransactionID(Lwallet/core/jni/proto/Hedera$TransactionID;)V

    return-void
.end method

.method static synthetic access$3200(Lwallet/core/jni/proto/Hedera$TransactionBody;)V
    .locals 0

    .line 1843
    invoke-direct {p0}, Lwallet/core/jni/proto/Hedera$TransactionBody;->clearTransactionID()V

    return-void
.end method

.method static synthetic access$3300(Lwallet/core/jni/proto/Hedera$TransactionBody;Ljava/lang/String;)V
    .locals 0

    .line 1843
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Hedera$TransactionBody;->setNodeAccountID(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3400(Lwallet/core/jni/proto/Hedera$TransactionBody;)V
    .locals 0

    .line 1843
    invoke-direct {p0}, Lwallet/core/jni/proto/Hedera$TransactionBody;->clearNodeAccountID()V

    return-void
.end method

.method static synthetic access$3500(Lwallet/core/jni/proto/Hedera$TransactionBody;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1843
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Hedera$TransactionBody;->setNodeAccountIDBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3600(Lwallet/core/jni/proto/Hedera$TransactionBody;J)V
    .locals 0

    .line 1843
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Hedera$TransactionBody;->setTransactionFee(J)V

    return-void
.end method

.method static synthetic access$3700(Lwallet/core/jni/proto/Hedera$TransactionBody;)V
    .locals 0

    .line 1843
    invoke-direct {p0}, Lwallet/core/jni/proto/Hedera$TransactionBody;->clearTransactionFee()V

    return-void
.end method

.method static synthetic access$3800(Lwallet/core/jni/proto/Hedera$TransactionBody;J)V
    .locals 0

    .line 1843
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Hedera$TransactionBody;->setTransactionValidDuration(J)V

    return-void
.end method

.method static synthetic access$3900(Lwallet/core/jni/proto/Hedera$TransactionBody;)V
    .locals 0

    .line 1843
    invoke-direct {p0}, Lwallet/core/jni/proto/Hedera$TransactionBody;->clearTransactionValidDuration()V

    return-void
.end method

.method static synthetic access$4000(Lwallet/core/jni/proto/Hedera$TransactionBody;Ljava/lang/String;)V
    .locals 0

    .line 1843
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Hedera$TransactionBody;->setMemo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4100(Lwallet/core/jni/proto/Hedera$TransactionBody;)V
    .locals 0

    .line 1843
    invoke-direct {p0}, Lwallet/core/jni/proto/Hedera$TransactionBody;->clearMemo()V

    return-void
.end method

.method static synthetic access$4200(Lwallet/core/jni/proto/Hedera$TransactionBody;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1843
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Hedera$TransactionBody;->setMemoBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4300(Lwallet/core/jni/proto/Hedera$TransactionBody;Lwallet/core/jni/proto/Hedera$TransferMessage;)V
    .locals 0

    .line 1843
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Hedera$TransactionBody;->setTransfer(Lwallet/core/jni/proto/Hedera$TransferMessage;)V

    return-void
.end method

.method static synthetic access$4400(Lwallet/core/jni/proto/Hedera$TransactionBody;Lwallet/core/jni/proto/Hedera$TransferMessage;)V
    .locals 0

    .line 1843
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Hedera$TransactionBody;->mergeTransfer(Lwallet/core/jni/proto/Hedera$TransferMessage;)V

    return-void
.end method

.method static synthetic access$4500(Lwallet/core/jni/proto/Hedera$TransactionBody;)V
    .locals 0

    .line 1843
    invoke-direct {p0}, Lwallet/core/jni/proto/Hedera$TransactionBody;->clearTransfer()V

    return-void
.end method

.method private clearData()V
    .locals 1

    const/4 v0, 0x0

    .line 1889
    iput v0, p0, Lwallet/core/jni/proto/Hedera$TransactionBody;->dataCase_:I

    const/4 v0, 0x0

    .line 1890
    iput-object v0, p0, Lwallet/core/jni/proto/Hedera$TransactionBody;->data_:Ljava/lang/Object;

    return-void
.end method

.method private clearMemo()V
    .locals 1

    .line 2157
    invoke-static {}, Lwallet/core/jni/proto/Hedera$TransactionBody;->getDefaultInstance()Lwallet/core/jni/proto/Hedera$TransactionBody;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Hedera$TransactionBody;->getMemo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Hedera$TransactionBody;->memo_:Ljava/lang/String;

    return-void
.end method

.method private clearNodeAccountID()V
    .locals 1

    .line 2014
    invoke-static {}, Lwallet/core/jni/proto/Hedera$TransactionBody;->getDefaultInstance()Lwallet/core/jni/proto/Hedera$TransactionBody;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Hedera$TransactionBody;->getNodeAccountID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Hedera$TransactionBody;->nodeAccountID_:Ljava/lang/String;

    return-void
.end method

.method private clearTransactionFee()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 2066
    iput-wide v0, p0, Lwallet/core/jni/proto/Hedera$TransactionBody;->transactionFee_:J

    return-void
.end method

.method private clearTransactionID()V
    .locals 1

    const/4 v0, 0x0

    .line 1960
    iput-object v0, p0, Lwallet/core/jni/proto/Hedera$TransactionBody;->transactionID_:Lwallet/core/jni/proto/Hedera$TransactionID;

    return-void
.end method

.method private clearTransactionValidDuration()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 2104
    iput-wide v0, p0, Lwallet/core/jni/proto/Hedera$TransactionBody;->transactionValidDuration_:J

    return-void
.end method

.method private clearTransfer()V
    .locals 2

    .line 2238
    iget v0, p0, Lwallet/core/jni/proto/Hedera$TransactionBody;->dataCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2239
    iput v0, p0, Lwallet/core/jni/proto/Hedera$TransactionBody;->dataCase_:I

    const/4 v0, 0x0

    .line 2240
    iput-object v0, p0, Lwallet/core/jni/proto/Hedera$TransactionBody;->data_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Hedera$TransactionBody;
    .locals 1

    .line 2794
    sget-object v0, Lwallet/core/jni/proto/Hedera$TransactionBody;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$TransactionBody;

    return-object v0
.end method

.method private mergeTransactionID(Lwallet/core/jni/proto/Hedera$TransactionID;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1942
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1943
    iget-object v0, p0, Lwallet/core/jni/proto/Hedera$TransactionBody;->transactionID_:Lwallet/core/jni/proto/Hedera$TransactionID;

    if-eqz v0, :cond_0

    .line 1944
    invoke-static {}, Lwallet/core/jni/proto/Hedera$TransactionID;->getDefaultInstance()Lwallet/core/jni/proto/Hedera$TransactionID;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1945
    iget-object v0, p0, Lwallet/core/jni/proto/Hedera$TransactionBody;->transactionID_:Lwallet/core/jni/proto/Hedera$TransactionID;

    .line 1946
    invoke-static {v0}, Lwallet/core/jni/proto/Hedera$TransactionID;->newBuilder(Lwallet/core/jni/proto/Hedera$TransactionID;)Lwallet/core/jni/proto/Hedera$TransactionID$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Hedera$TransactionID$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Hedera$TransactionID;

    iput-object p1, p0, Lwallet/core/jni/proto/Hedera$TransactionBody;->transactionID_:Lwallet/core/jni/proto/Hedera$TransactionID;

    goto :goto_0

    .line 1948
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Hedera$TransactionBody;->transactionID_:Lwallet/core/jni/proto/Hedera$TransactionID;

    :goto_0
    return-void
.end method

.method private mergeTransfer(Lwallet/core/jni/proto/Hedera$TransferMessage;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2220
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2221
    iget v0, p0, Lwallet/core/jni/proto/Hedera$TransactionBody;->dataCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Hedera$TransactionBody;->data_:Ljava/lang/Object;

    .line 2222
    invoke-static {}, Lwallet/core/jni/proto/Hedera$TransferMessage;->getDefaultInstance()Lwallet/core/jni/proto/Hedera$TransferMessage;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 2223
    iget-object v0, p0, Lwallet/core/jni/proto/Hedera$TransactionBody;->data_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Hedera$TransferMessage;

    invoke-static {v0}, Lwallet/core/jni/proto/Hedera$TransferMessage;->newBuilder(Lwallet/core/jni/proto/Hedera$TransferMessage;)Lwallet/core/jni/proto/Hedera$TransferMessage$Builder;

    move-result-object v0

    .line 2224
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Hedera$TransferMessage$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Hedera$TransactionBody;->data_:Ljava/lang/Object;

    goto :goto_0

    .line 2226
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Hedera$TransactionBody;->data_:Ljava/lang/Object;

    .line 2228
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Hedera$TransactionBody;->dataCase_:I

    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Hedera$TransactionBody$Builder;
    .locals 1

    .line 2319
    sget-object v0, Lwallet/core/jni/proto/Hedera$TransactionBody;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$TransactionBody;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Hedera$TransactionBody$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Hedera$TransactionBody;)Lwallet/core/jni/proto/Hedera$TransactionBody$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 2322
    sget-object v0, Lwallet/core/jni/proto/Hedera$TransactionBody;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$TransactionBody;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Hedera$TransactionBody$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Hedera$TransactionBody;
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

    .line 2296
    sget-object v0, Lwallet/core/jni/proto/Hedera$TransactionBody;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$TransactionBody;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Hedera$TransactionBody;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Hedera$TransactionBody;
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

    .line 2302
    sget-object v0, Lwallet/core/jni/proto/Hedera$TransactionBody;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$TransactionBody;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Hedera$TransactionBody;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Hedera$TransactionBody;
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

    .line 2260
    sget-object v0, Lwallet/core/jni/proto/Hedera$TransactionBody;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$TransactionBody;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Hedera$TransactionBody;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Hedera$TransactionBody;
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

    .line 2267
    sget-object v0, Lwallet/core/jni/proto/Hedera$TransactionBody;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$TransactionBody;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Hedera$TransactionBody;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Hedera$TransactionBody;
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

    .line 2307
    sget-object v0, Lwallet/core/jni/proto/Hedera$TransactionBody;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$TransactionBody;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Hedera$TransactionBody;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Hedera$TransactionBody;
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

    .line 2314
    sget-object v0, Lwallet/core/jni/proto/Hedera$TransactionBody;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$TransactionBody;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Hedera$TransactionBody;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Hedera$TransactionBody;
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

    .line 2284
    sget-object v0, Lwallet/core/jni/proto/Hedera$TransactionBody;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$TransactionBody;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Hedera$TransactionBody;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Hedera$TransactionBody;
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

    .line 2291
    sget-object v0, Lwallet/core/jni/proto/Hedera$TransactionBody;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$TransactionBody;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Hedera$TransactionBody;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Hedera$TransactionBody;
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

    .line 2247
    sget-object v0, Lwallet/core/jni/proto/Hedera$TransactionBody;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$TransactionBody;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Hedera$TransactionBody;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Hedera$TransactionBody;
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

    .line 2254
    sget-object v0, Lwallet/core/jni/proto/Hedera$TransactionBody;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$TransactionBody;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Hedera$TransactionBody;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Hedera$TransactionBody;
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

    .line 2272
    sget-object v0, Lwallet/core/jni/proto/Hedera$TransactionBody;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$TransactionBody;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Hedera$TransactionBody;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Hedera$TransactionBody;
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

    .line 2279
    sget-object v0, Lwallet/core/jni/proto/Hedera$TransactionBody;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$TransactionBody;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Hedera$TransactionBody;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Hedera$TransactionBody;",
            ">;"
        }
    .end annotation

    .line 2800
    sget-object v0, Lwallet/core/jni/proto/Hedera$TransactionBody;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$TransactionBody;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setMemo(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2144
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2146
    iput-object p1, p0, Lwallet/core/jni/proto/Hedera$TransactionBody;->memo_:Ljava/lang/String;

    return-void
.end method

.method private setMemoBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2169
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2170
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Hedera$TransactionBody;->memo_:Ljava/lang/String;

    return-void
.end method

.method private setNodeAccountID(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2001
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2003
    iput-object p1, p0, Lwallet/core/jni/proto/Hedera$TransactionBody;->nodeAccountID_:Ljava/lang/String;

    return-void
.end method

.method private setNodeAccountIDBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2026
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2027
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Hedera$TransactionBody;->nodeAccountID_:Ljava/lang/String;

    return-void
.end method

.method private setTransactionFee(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2055
    iput-wide p1, p0, Lwallet/core/jni/proto/Hedera$TransactionBody;->transactionFee_:J

    return-void
.end method

.method private setTransactionID(Lwallet/core/jni/proto/Hedera$TransactionID;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1928
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1929
    iput-object p1, p0, Lwallet/core/jni/proto/Hedera$TransactionBody;->transactionID_:Lwallet/core/jni/proto/Hedera$TransactionID;

    return-void
.end method

.method private setTransactionValidDuration(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2093
    iput-wide p1, p0, Lwallet/core/jni/proto/Hedera$TransactionBody;->transactionValidDuration_:J

    return-void
.end method

.method private setTransfer(Lwallet/core/jni/proto/Hedera$TransferMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2208
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2209
    iput-object p1, p0, Lwallet/core/jni/proto/Hedera$TransactionBody;->data_:Ljava/lang/Object;

    const/4 p1, 0x6

    .line 2210
    iput p1, p0, Lwallet/core/jni/proto/Hedera$TransactionBody;->dataCase_:I

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

    .line 2729
    sget-object p2, Lwallet/core/jni/proto/Hedera$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2778
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 2772
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 2757
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Hedera$TransactionBody;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 2759
    const-class p2, Lwallet/core/jni/proto/Hedera$TransactionBody;

    monitor-enter p2

    .line 2760
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Hedera$TransactionBody;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 2762
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Hedera$TransactionBody;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$TransactionBody;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2765
    sput-object p1, Lwallet/core/jni/proto/Hedera$TransactionBody;->PARSER:Lcom/google/protobuf/Parser;

    .line 2767
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

    .line 2754
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Hedera$TransactionBody;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$TransactionBody;

    return-object p1

    :pswitch_4
    const/16 p1, 0x8

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "data_"

    aput-object v0, p1, p3

    const-string p3, "dataCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "transactionID_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "nodeAccountID_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "transactionFee_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "transactionValidDuration_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "memo_"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    .line 2737
    const-class p3, Lwallet/core/jni/proto/Hedera$TransferMessage;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0006\u0001\u0000\u0001\u0006\u0006\u0000\u0000\u0000\u0001\t\u0002\u0208\u0003\u0003\u0004\u0002\u0005\u0208\u0006<\u0000"

    .line 2750
    sget-object p3, Lwallet/core/jni/proto/Hedera$TransactionBody;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Hedera$TransactionBody;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2734
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Hedera$TransactionBody$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Hedera$TransactionBody$Builder;-><init>(Lwallet/core/jni/proto/Hedera$1;)V

    return-object p1

    .line 2731
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Hedera$TransactionBody;

    invoke-direct {p1}, Lwallet/core/jni/proto/Hedera$TransactionBody;-><init>()V

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

.method public getDataCase()Lwallet/core/jni/proto/Hedera$TransactionBody$DataCase;
    .locals 1

    .line 1884
    iget v0, p0, Lwallet/core/jni/proto/Hedera$TransactionBody;->dataCase_:I

    invoke-static {v0}, Lwallet/core/jni/proto/Hedera$TransactionBody$DataCase;->forNumber(I)Lwallet/core/jni/proto/Hedera$TransactionBody$DataCase;

    move-result-object v0

    return-object v0
.end method

.method public getMemo()Ljava/lang/String;
    .locals 1

    .line 2119
    iget-object v0, p0, Lwallet/core/jni/proto/Hedera$TransactionBody;->memo_:Ljava/lang/String;

    return-object v0
.end method

.method public getMemoBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2132
    iget-object v0, p0, Lwallet/core/jni/proto/Hedera$TransactionBody;->memo_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNodeAccountID()Ljava/lang/String;
    .locals 1

    .line 1976
    iget-object v0, p0, Lwallet/core/jni/proto/Hedera$TransactionBody;->nodeAccountID_:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeAccountIDBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1989
    iget-object v0, p0, Lwallet/core/jni/proto/Hedera$TransactionBody;->nodeAccountID_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTransactionFee()J
    .locals 2

    .line 2043
    iget-wide v0, p0, Lwallet/core/jni/proto/Hedera$TransactionBody;->transactionFee_:J

    return-wide v0
.end method

.method public getTransactionID()Lwallet/core/jni/proto/Hedera$TransactionID;
    .locals 1

    .line 1917
    iget-object v0, p0, Lwallet/core/jni/proto/Hedera$TransactionBody;->transactionID_:Lwallet/core/jni/proto/Hedera$TransactionID;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/Hedera$TransactionID;->getDefaultInstance()Lwallet/core/jni/proto/Hedera$TransactionID;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTransactionValidDuration()J
    .locals 2

    .line 2081
    iget-wide v0, p0, Lwallet/core/jni/proto/Hedera$TransactionBody;->transactionValidDuration_:J

    return-wide v0
.end method

.method public getTransfer()Lwallet/core/jni/proto/Hedera$TransferMessage;
    .locals 2

    .line 2195
    iget v0, p0, Lwallet/core/jni/proto/Hedera$TransactionBody;->dataCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 2196
    iget-object v0, p0, Lwallet/core/jni/proto/Hedera$TransactionBody;->data_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Hedera$TransferMessage;

    return-object v0

    .line 2198
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Hedera$TransferMessage;->getDefaultInstance()Lwallet/core/jni/proto/Hedera$TransferMessage;

    move-result-object v0

    return-object v0
.end method

.method public hasTransactionID()Z
    .locals 1

    .line 1905
    iget-object v0, p0, Lwallet/core/jni/proto/Hedera$TransactionBody;->transactionID_:Lwallet/core/jni/proto/Hedera$TransactionID;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTransfer()Z
    .locals 2

    .line 2184
    iget v0, p0, Lwallet/core/jni/proto/Hedera$TransactionBody;->dataCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
