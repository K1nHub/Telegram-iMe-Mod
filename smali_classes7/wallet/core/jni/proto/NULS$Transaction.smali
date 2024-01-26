.class public final Lwallet/core/jni/proto/NULS$Transaction;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "NULS.java"

# interfaces
.implements Lwallet/core/jni/proto/NULS$TransactionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/NULS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Transaction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/NULS$Transaction$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/NULS$Transaction;",
        "Lwallet/core/jni/proto/NULS$Transaction$Builder;",
        ">;",
        "Lwallet/core/jni/proto/NULS$TransactionOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$Transaction;

.field public static final HASH_FIELD_NUMBER:I = 0x8

.field public static final INPUT_FIELD_NUMBER:I = 0x5

.field public static final OUTPUT_FIELD_NUMBER:I = 0x6

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/NULS$Transaction;",
            ">;"
        }
    .end annotation
.end field

.field public static final REMARK_FIELD_NUMBER:I = 0x3

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x2

.field public static final TX_DATA_FIELD_NUMBER:I = 0x4

.field public static final TX_SIGS_FIELD_NUMBER:I = 0x7

.field public static final TYPE_FIELD_NUMBER:I = 0x1


# instance fields
.field private hash_:I

.field private input_:Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

.field private output_:Lwallet/core/jni/proto/NULS$TransactionCoinTo;

.field private remark_:Ljava/lang/String;

.field private timestamp_:I

.field private txData_:Lcom/google/protobuf/ByteString;

.field private txSigs_:Lwallet/core/jni/proto/NULS$Signature;

.field private type_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 3226
    new-instance v0, Lwallet/core/jni/proto/NULS$Transaction;

    invoke-direct {v0}, Lwallet/core/jni/proto/NULS$Transaction;-><init>()V

    .line 3229
    sput-object v0, Lwallet/core/jni/proto/NULS$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$Transaction;

    .line 3230
    const-class v1, Lwallet/core/jni/proto/NULS$Transaction;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2200
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 2201
    iput-object v0, p0, Lwallet/core/jni/proto/NULS$Transaction;->remark_:Ljava/lang/String;

    .line 2202
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/NULS$Transaction;->txData_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$3800()Lwallet/core/jni/proto/NULS$Transaction;
    .locals 1

    .line 2195
    sget-object v0, Lwallet/core/jni/proto/NULS$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$Transaction;

    return-object v0
.end method

.method static synthetic access$3900(Lwallet/core/jni/proto/NULS$Transaction;I)V
    .locals 0

    .line 2195
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NULS$Transaction;->setType(I)V

    return-void
.end method

.method static synthetic access$4000(Lwallet/core/jni/proto/NULS$Transaction;)V
    .locals 0

    .line 2195
    invoke-direct {p0}, Lwallet/core/jni/proto/NULS$Transaction;->clearType()V

    return-void
.end method

.method static synthetic access$4100(Lwallet/core/jni/proto/NULS$Transaction;I)V
    .locals 0

    .line 2195
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NULS$Transaction;->setTimestamp(I)V

    return-void
.end method

.method static synthetic access$4200(Lwallet/core/jni/proto/NULS$Transaction;)V
    .locals 0

    .line 2195
    invoke-direct {p0}, Lwallet/core/jni/proto/NULS$Transaction;->clearTimestamp()V

    return-void
.end method

.method static synthetic access$4300(Lwallet/core/jni/proto/NULS$Transaction;Ljava/lang/String;)V
    .locals 0

    .line 2195
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NULS$Transaction;->setRemark(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4400(Lwallet/core/jni/proto/NULS$Transaction;)V
    .locals 0

    .line 2195
    invoke-direct {p0}, Lwallet/core/jni/proto/NULS$Transaction;->clearRemark()V

    return-void
.end method

.method static synthetic access$4500(Lwallet/core/jni/proto/NULS$Transaction;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 2195
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NULS$Transaction;->setRemarkBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4600(Lwallet/core/jni/proto/NULS$Transaction;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 2195
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NULS$Transaction;->setTxData(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4700(Lwallet/core/jni/proto/NULS$Transaction;)V
    .locals 0

    .line 2195
    invoke-direct {p0}, Lwallet/core/jni/proto/NULS$Transaction;->clearTxData()V

    return-void
.end method

.method static synthetic access$4800(Lwallet/core/jni/proto/NULS$Transaction;Lwallet/core/jni/proto/NULS$TransactionCoinFrom;)V
    .locals 0

    .line 2195
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NULS$Transaction;->setInput(Lwallet/core/jni/proto/NULS$TransactionCoinFrom;)V

    return-void
.end method

.method static synthetic access$4900(Lwallet/core/jni/proto/NULS$Transaction;Lwallet/core/jni/proto/NULS$TransactionCoinFrom;)V
    .locals 0

    .line 2195
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NULS$Transaction;->mergeInput(Lwallet/core/jni/proto/NULS$TransactionCoinFrom;)V

    return-void
.end method

.method static synthetic access$5000(Lwallet/core/jni/proto/NULS$Transaction;)V
    .locals 0

    .line 2195
    invoke-direct {p0}, Lwallet/core/jni/proto/NULS$Transaction;->clearInput()V

    return-void
.end method

.method static synthetic access$5100(Lwallet/core/jni/proto/NULS$Transaction;Lwallet/core/jni/proto/NULS$TransactionCoinTo;)V
    .locals 0

    .line 2195
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NULS$Transaction;->setOutput(Lwallet/core/jni/proto/NULS$TransactionCoinTo;)V

    return-void
.end method

.method static synthetic access$5200(Lwallet/core/jni/proto/NULS$Transaction;Lwallet/core/jni/proto/NULS$TransactionCoinTo;)V
    .locals 0

    .line 2195
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NULS$Transaction;->mergeOutput(Lwallet/core/jni/proto/NULS$TransactionCoinTo;)V

    return-void
.end method

.method static synthetic access$5300(Lwallet/core/jni/proto/NULS$Transaction;)V
    .locals 0

    .line 2195
    invoke-direct {p0}, Lwallet/core/jni/proto/NULS$Transaction;->clearOutput()V

    return-void
.end method

.method static synthetic access$5400(Lwallet/core/jni/proto/NULS$Transaction;Lwallet/core/jni/proto/NULS$Signature;)V
    .locals 0

    .line 2195
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NULS$Transaction;->setTxSigs(Lwallet/core/jni/proto/NULS$Signature;)V

    return-void
.end method

.method static synthetic access$5500(Lwallet/core/jni/proto/NULS$Transaction;Lwallet/core/jni/proto/NULS$Signature;)V
    .locals 0

    .line 2195
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NULS$Transaction;->mergeTxSigs(Lwallet/core/jni/proto/NULS$Signature;)V

    return-void
.end method

.method static synthetic access$5600(Lwallet/core/jni/proto/NULS$Transaction;)V
    .locals 0

    .line 2195
    invoke-direct {p0}, Lwallet/core/jni/proto/NULS$Transaction;->clearTxSigs()V

    return-void
.end method

.method static synthetic access$5700(Lwallet/core/jni/proto/NULS$Transaction;I)V
    .locals 0

    .line 2195
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NULS$Transaction;->setHash(I)V

    return-void
.end method

.method static synthetic access$5800(Lwallet/core/jni/proto/NULS$Transaction;)V
    .locals 0

    .line 2195
    invoke-direct {p0}, Lwallet/core/jni/proto/NULS$Transaction;->clearHash()V

    return-void
.end method

.method private clearHash()V
    .locals 1

    const/4 v0, 0x0

    .line 2619
    iput v0, p0, Lwallet/core/jni/proto/NULS$Transaction;->hash_:I

    return-void
.end method

.method private clearInput()V
    .locals 1

    const/4 v0, 0x0

    .line 2448
    iput-object v0, p0, Lwallet/core/jni/proto/NULS$Transaction;->input_:Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

    return-void
.end method

.method private clearOutput()V
    .locals 1

    const/4 v0, 0x0

    .line 2514
    iput-object v0, p0, Lwallet/core/jni/proto/NULS$Transaction;->output_:Lwallet/core/jni/proto/NULS$TransactionCoinTo;

    return-void
.end method

.method private clearRemark()V
    .locals 1

    .line 2330
    invoke-static {}, Lwallet/core/jni/proto/NULS$Transaction;->getDefaultInstance()Lwallet/core/jni/proto/NULS$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/NULS$Transaction;->getRemark()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/NULS$Transaction;->remark_:Ljava/lang/String;

    return-void
.end method

.method private clearTimestamp()V
    .locals 1

    const/4 v0, 0x0

    .line 2277
    iput v0, p0, Lwallet/core/jni/proto/NULS$Transaction;->timestamp_:I

    return-void
.end method

.method private clearTxData()V
    .locals 1

    .line 2383
    invoke-static {}, Lwallet/core/jni/proto/NULS$Transaction;->getDefaultInstance()Lwallet/core/jni/proto/NULS$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/NULS$Transaction;->getTxData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/NULS$Transaction;->txData_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearTxSigs()V
    .locals 1

    const/4 v0, 0x0

    .line 2580
    iput-object v0, p0, Lwallet/core/jni/proto/NULS$Transaction;->txSigs_:Lwallet/core/jni/proto/NULS$Signature;

    return-void
.end method

.method private clearType()V
    .locals 1

    const/4 v0, 0x0

    .line 2239
    iput v0, p0, Lwallet/core/jni/proto/NULS$Transaction;->type_:I

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/NULS$Transaction;
    .locals 1

    .line 3235
    sget-object v0, Lwallet/core/jni/proto/NULS$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$Transaction;

    return-object v0
.end method

.method private mergeInput(Lwallet/core/jni/proto/NULS$TransactionCoinFrom;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2431
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2432
    iget-object v0, p0, Lwallet/core/jni/proto/NULS$Transaction;->input_:Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

    if-eqz v0, :cond_0

    .line 2433
    invoke-static {}, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->getDefaultInstance()Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2434
    iget-object v0, p0, Lwallet/core/jni/proto/NULS$Transaction;->input_:Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

    .line 2435
    invoke-static {v0}, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->newBuilder(Lwallet/core/jni/proto/NULS$TransactionCoinFrom;)Lwallet/core/jni/proto/NULS$TransactionCoinFrom$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/NULS$TransactionCoinFrom$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

    iput-object p1, p0, Lwallet/core/jni/proto/NULS$Transaction;->input_:Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

    goto :goto_0

    .line 2437
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/NULS$Transaction;->input_:Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

    :goto_0
    return-void
.end method

.method private mergeOutput(Lwallet/core/jni/proto/NULS$TransactionCoinTo;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2497
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2498
    iget-object v0, p0, Lwallet/core/jni/proto/NULS$Transaction;->output_:Lwallet/core/jni/proto/NULS$TransactionCoinTo;

    if-eqz v0, :cond_0

    .line 2499
    invoke-static {}, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->getDefaultInstance()Lwallet/core/jni/proto/NULS$TransactionCoinTo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2500
    iget-object v0, p0, Lwallet/core/jni/proto/NULS$Transaction;->output_:Lwallet/core/jni/proto/NULS$TransactionCoinTo;

    .line 2501
    invoke-static {v0}, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->newBuilder(Lwallet/core/jni/proto/NULS$TransactionCoinTo;)Lwallet/core/jni/proto/NULS$TransactionCoinTo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/NULS$TransactionCoinTo$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/NULS$TransactionCoinTo;

    iput-object p1, p0, Lwallet/core/jni/proto/NULS$Transaction;->output_:Lwallet/core/jni/proto/NULS$TransactionCoinTo;

    goto :goto_0

    .line 2503
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/NULS$Transaction;->output_:Lwallet/core/jni/proto/NULS$TransactionCoinTo;

    :goto_0
    return-void
.end method

.method private mergeTxSigs(Lwallet/core/jni/proto/NULS$Signature;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2563
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2564
    iget-object v0, p0, Lwallet/core/jni/proto/NULS$Transaction;->txSigs_:Lwallet/core/jni/proto/NULS$Signature;

    if-eqz v0, :cond_0

    .line 2565
    invoke-static {}, Lwallet/core/jni/proto/NULS$Signature;->getDefaultInstance()Lwallet/core/jni/proto/NULS$Signature;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2566
    iget-object v0, p0, Lwallet/core/jni/proto/NULS$Transaction;->txSigs_:Lwallet/core/jni/proto/NULS$Signature;

    .line 2567
    invoke-static {v0}, Lwallet/core/jni/proto/NULS$Signature;->newBuilder(Lwallet/core/jni/proto/NULS$Signature;)Lwallet/core/jni/proto/NULS$Signature$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/NULS$Signature$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/NULS$Signature;

    iput-object p1, p0, Lwallet/core/jni/proto/NULS$Transaction;->txSigs_:Lwallet/core/jni/proto/NULS$Signature;

    goto :goto_0

    .line 2569
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/NULS$Transaction;->txSigs_:Lwallet/core/jni/proto/NULS$Signature;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/NULS$Transaction$Builder;
    .locals 1

    .line 2697
    sget-object v0, Lwallet/core/jni/proto/NULS$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$Transaction;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/NULS$Transaction$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/NULS$Transaction;)Lwallet/core/jni/proto/NULS$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 2700
    sget-object v0, Lwallet/core/jni/proto/NULS$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$Transaction;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NULS$Transaction$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/NULS$Transaction;
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

    .line 2674
    sget-object v0, Lwallet/core/jni/proto/NULS$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$Transaction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NULS$Transaction;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NULS$Transaction;
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

    .line 2680
    sget-object v0, Lwallet/core/jni/proto/NULS$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$Transaction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NULS$Transaction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/NULS$Transaction;
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

    .line 2638
    sget-object v0, Lwallet/core/jni/proto/NULS$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$Transaction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NULS$Transaction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NULS$Transaction;
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

    .line 2645
    sget-object v0, Lwallet/core/jni/proto/NULS$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$Transaction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NULS$Transaction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/NULS$Transaction;
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

    .line 2685
    sget-object v0, Lwallet/core/jni/proto/NULS$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$Transaction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NULS$Transaction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NULS$Transaction;
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

    .line 2692
    sget-object v0, Lwallet/core/jni/proto/NULS$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$Transaction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NULS$Transaction;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/NULS$Transaction;
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

    .line 2662
    sget-object v0, Lwallet/core/jni/proto/NULS$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$Transaction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NULS$Transaction;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NULS$Transaction;
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

    .line 2669
    sget-object v0, Lwallet/core/jni/proto/NULS$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$Transaction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NULS$Transaction;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/NULS$Transaction;
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

    .line 2625
    sget-object v0, Lwallet/core/jni/proto/NULS$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$Transaction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NULS$Transaction;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NULS$Transaction;
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

    .line 2632
    sget-object v0, Lwallet/core/jni/proto/NULS$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$Transaction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NULS$Transaction;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/NULS$Transaction;
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

    .line 2650
    sget-object v0, Lwallet/core/jni/proto/NULS$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$Transaction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NULS$Transaction;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NULS$Transaction;
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

    .line 2657
    sget-object v0, Lwallet/core/jni/proto/NULS$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$Transaction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NULS$Transaction;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/NULS$Transaction;",
            ">;"
        }
    .end annotation

    .line 3241
    sget-object v0, Lwallet/core/jni/proto/NULS$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$Transaction;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setHash(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2608
    iput p1, p0, Lwallet/core/jni/proto/NULS$Transaction;->hash_:I

    return-void
.end method

.method private setInput(Lwallet/core/jni/proto/NULS$TransactionCoinFrom;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2418
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2419
    iput-object p1, p0, Lwallet/core/jni/proto/NULS$Transaction;->input_:Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

    return-void
.end method

.method private setOutput(Lwallet/core/jni/proto/NULS$TransactionCoinTo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2484
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2485
    iput-object p1, p0, Lwallet/core/jni/proto/NULS$Transaction;->output_:Lwallet/core/jni/proto/NULS$TransactionCoinTo;

    return-void
.end method

.method private setRemark(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2317
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2319
    iput-object p1, p0, Lwallet/core/jni/proto/NULS$Transaction;->remark_:Ljava/lang/String;

    return-void
.end method

.method private setRemarkBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2342
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2343
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/NULS$Transaction;->remark_:Ljava/lang/String;

    return-void
.end method

.method private setTimestamp(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2266
    iput p1, p0, Lwallet/core/jni/proto/NULS$Transaction;->timestamp_:I

    return-void
.end method

.method private setTxData(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2370
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2372
    iput-object p1, p0, Lwallet/core/jni/proto/NULS$Transaction;->txData_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setTxSigs(Lwallet/core/jni/proto/NULS$Signature;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2550
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2551
    iput-object p1, p0, Lwallet/core/jni/proto/NULS$Transaction;->txSigs_:Lwallet/core/jni/proto/NULS$Signature;

    return-void
.end method

.method private setType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2228
    iput p1, p0, Lwallet/core/jni/proto/NULS$Transaction;->type_:I

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

    .line 3170
    sget-object p2, Lwallet/core/jni/proto/NULS$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 3219
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 3213
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 3198
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/NULS$Transaction;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 3200
    const-class p2, Lwallet/core/jni/proto/NULS$Transaction;

    monitor-enter p2

    .line 3201
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/NULS$Transaction;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 3203
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/NULS$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$Transaction;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3206
    sput-object p1, Lwallet/core/jni/proto/NULS$Transaction;->PARSER:Lcom/google/protobuf/Parser;

    .line 3208
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

    .line 3195
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/NULS$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$Transaction;

    return-object p1

    :pswitch_4
    const/16 p1, 0x8

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "type_"

    aput-object v0, p1, p3

    const-string p3, "timestamp_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "remark_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "txData_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "input_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "output_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "txSigs_"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "hash_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0008\u0000\u0000\u0001\u0008\u0008\u0000\u0000\u0000\u0001\u000b\u0002\u000b\u0003\u0208\u0004\n\u0005\t\u0006\t\u0007\t\u0008\u000b"

    .line 3191
    sget-object p3, Lwallet/core/jni/proto/NULS$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$Transaction;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3175
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/NULS$Transaction$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/NULS$Transaction$Builder;-><init>(Lwallet/core/jni/proto/NULS$1;)V

    return-object p1

    .line 3172
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/NULS$Transaction;

    invoke-direct {p1}, Lwallet/core/jni/proto/NULS$Transaction;-><init>()V

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

.method public getHash()I
    .locals 1

    .line 2596
    iget v0, p0, Lwallet/core/jni/proto/NULS$Transaction;->hash_:I

    return v0
.end method

.method public getInput()Lwallet/core/jni/proto/NULS$TransactionCoinFrom;
    .locals 1

    .line 2408
    iget-object v0, p0, Lwallet/core/jni/proto/NULS$Transaction;->input_:Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/NULS$TransactionCoinFrom;->getDefaultInstance()Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getOutput()Lwallet/core/jni/proto/NULS$TransactionCoinTo;
    .locals 1

    .line 2474
    iget-object v0, p0, Lwallet/core/jni/proto/NULS$Transaction;->output_:Lwallet/core/jni/proto/NULS$TransactionCoinTo;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/NULS$TransactionCoinTo;->getDefaultInstance()Lwallet/core/jni/proto/NULS$TransactionCoinTo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRemark()Ljava/lang/String;
    .locals 1

    .line 2292
    iget-object v0, p0, Lwallet/core/jni/proto/NULS$Transaction;->remark_:Ljava/lang/String;

    return-object v0
.end method

.method public getRemarkBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2305
    iget-object v0, p0, Lwallet/core/jni/proto/NULS$Transaction;->remark_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()I
    .locals 1

    .line 2254
    iget v0, p0, Lwallet/core/jni/proto/NULS$Transaction;->timestamp_:I

    return v0
.end method

.method public getTxData()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2359
    iget-object v0, p0, Lwallet/core/jni/proto/NULS$Transaction;->txData_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getTxSigs()Lwallet/core/jni/proto/NULS$Signature;
    .locals 1

    .line 2540
    iget-object v0, p0, Lwallet/core/jni/proto/NULS$Transaction;->txSigs_:Lwallet/core/jni/proto/NULS$Signature;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/NULS$Signature;->getDefaultInstance()Lwallet/core/jni/proto/NULS$Signature;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 2216
    iget v0, p0, Lwallet/core/jni/proto/NULS$Transaction;->type_:I

    return v0
.end method

.method public hasInput()Z
    .locals 1

    .line 2397
    iget-object v0, p0, Lwallet/core/jni/proto/NULS$Transaction;->input_:Lwallet/core/jni/proto/NULS$TransactionCoinFrom;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasOutput()Z
    .locals 1

    .line 2463
    iget-object v0, p0, Lwallet/core/jni/proto/NULS$Transaction;->output_:Lwallet/core/jni/proto/NULS$TransactionCoinTo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTxSigs()Z
    .locals 1

    .line 2529
    iget-object v0, p0, Lwallet/core/jni/proto/NULS$Transaction;->txSigs_:Lwallet/core/jni/proto/NULS$Signature;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
