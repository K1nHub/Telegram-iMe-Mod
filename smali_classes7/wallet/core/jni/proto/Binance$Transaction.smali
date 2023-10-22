.class public final Lwallet/core/jni/proto/Binance$Transaction;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Binance.java"

# interfaces
.implements Lwallet/core/jni/proto/Binance$TransactionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Binance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Transaction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Binance$Transaction$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Binance$Transaction;",
        "Lwallet/core/jni/proto/Binance$Transaction$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Binance$TransactionOrBuilder;"
    }
.end annotation


# static fields
.field public static final DATA_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$Transaction;

.field public static final MEMO_FIELD_NUMBER:I = 0x3

.field public static final MSGS_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Binance$Transaction;",
            ">;"
        }
    .end annotation
.end field

.field public static final SIGNATURES_FIELD_NUMBER:I = 0x2

.field public static final SOURCE_FIELD_NUMBER:I = 0x4


# instance fields
.field private data_:Lcom/google/protobuf/ByteString;

.field private memo_:Ljava/lang/String;

.field private msgs_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private signatures_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private source_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 977
    new-instance v0, Lwallet/core/jni/proto/Binance$Transaction;

    invoke-direct {v0}, Lwallet/core/jni/proto/Binance$Transaction;-><init>()V

    .line 980
    sput-object v0, Lwallet/core/jni/proto/Binance$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$Transaction;

    .line 981
    const-class v1, Lwallet/core/jni/proto/Binance$Transaction;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 125
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 126
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$Transaction;->msgs_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 127
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$Transaction;->signatures_:Lcom/google/protobuf/Internal$ProtobufList;

    const-string v0, ""

    .line 128
    iput-object v0, p0, Lwallet/core/jni/proto/Binance$Transaction;->memo_:Ljava/lang/String;

    .line 129
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$Transaction;->data_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$000()Lwallet/core/jni/proto/Binance$Transaction;
    .locals 1

    .line 120
    sget-object v0, Lwallet/core/jni/proto/Binance$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$Transaction;

    return-object v0
.end method

.method static synthetic access$100(Lwallet/core/jni/proto/Binance$Transaction;ILcom/google/protobuf/ByteString;)V
    .locals 0

    .line 120
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Binance$Transaction;->setMsgs(ILcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1000(Lwallet/core/jni/proto/Binance$Transaction;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$Transaction;->clearMemo()V

    return-void
.end method

.method static synthetic access$1100(Lwallet/core/jni/proto/Binance$Transaction;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$Transaction;->setMemoBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1200(Lwallet/core/jni/proto/Binance$Transaction;J)V
    .locals 0

    .line 120
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Binance$Transaction;->setSource(J)V

    return-void
.end method

.method static synthetic access$1300(Lwallet/core/jni/proto/Binance$Transaction;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$Transaction;->clearSource()V

    return-void
.end method

.method static synthetic access$1400(Lwallet/core/jni/proto/Binance$Transaction;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$Transaction;->setData(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1500(Lwallet/core/jni/proto/Binance$Transaction;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$Transaction;->clearData()V

    return-void
.end method

.method static synthetic access$200(Lwallet/core/jni/proto/Binance$Transaction;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$Transaction;->addMsgs(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$300(Lwallet/core/jni/proto/Binance$Transaction;Ljava/lang/Iterable;)V
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$Transaction;->addAllMsgs(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$400(Lwallet/core/jni/proto/Binance$Transaction;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$Transaction;->clearMsgs()V

    return-void
.end method

.method static synthetic access$500(Lwallet/core/jni/proto/Binance$Transaction;ILcom/google/protobuf/ByteString;)V
    .locals 0

    .line 120
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Binance$Transaction;->setSignatures(ILcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$600(Lwallet/core/jni/proto/Binance$Transaction;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$Transaction;->addSignatures(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$700(Lwallet/core/jni/proto/Binance$Transaction;Ljava/lang/Iterable;)V
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$Transaction;->addAllSignatures(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$800(Lwallet/core/jni/proto/Binance$Transaction;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$Transaction;->clearSignatures()V

    return-void
.end method

.method static synthetic access$900(Lwallet/core/jni/proto/Binance$Transaction;Ljava/lang/String;)V
    .locals 0

    .line 120
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$Transaction;->setMemo(Ljava/lang/String;)V

    return-void
.end method

.method private addAllMsgs(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/ByteString;",
            ">;)V"
        }
    .end annotation

    .line 216
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$Transaction;->ensureMsgsIsMutable()V

    .line 217
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$Transaction;->msgs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAllSignatures(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/ByteString;",
            ">;)V"
        }
    .end annotation

    .line 316
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$Transaction;->ensureSignaturesIsMutable()V

    .line 317
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$Transaction;->signatures_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addMsgs(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 202
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 203
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$Transaction;->ensureMsgsIsMutable()V

    .line 204
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$Transaction;->msgs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addSignatures(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 302
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 303
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$Transaction;->ensureSignaturesIsMutable()V

    .line 304
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$Transaction;->signatures_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearData()V
    .locals 1

    .line 472
    invoke-static {}, Lwallet/core/jni/proto/Binance$Transaction;->getDefaultInstance()Lwallet/core/jni/proto/Binance$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$Transaction;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$Transaction;->data_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearMemo()V
    .locals 1

    .line 381
    invoke-static {}, Lwallet/core/jni/proto/Binance$Transaction;->getDefaultInstance()Lwallet/core/jni/proto/Binance$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$Transaction;->getMemo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$Transaction;->memo_:Ljava/lang/String;

    return-void
.end method

.method private clearMsgs()V
    .locals 1

    .line 228
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$Transaction;->msgs_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearSignatures()V
    .locals 1

    .line 328
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$Transaction;->signatures_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearSource()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 433
    iput-wide v0, p0, Lwallet/core/jni/proto/Binance$Transaction;->source_:J

    return-void
.end method

.method private ensureMsgsIsMutable()V
    .locals 2

    .line 172
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$Transaction;->msgs_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 173
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 175
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$Transaction;->msgs_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureSignaturesIsMutable()V
    .locals 2

    .line 272
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$Transaction;->signatures_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 273
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 275
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$Transaction;->signatures_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Binance$Transaction;
    .locals 1

    .line 986
    sget-object v0, Lwallet/core/jni/proto/Binance$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$Transaction;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Binance$Transaction$Builder;
    .locals 1

    .line 550
    sget-object v0, Lwallet/core/jni/proto/Binance$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$Transaction;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Binance$Transaction$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Binance$Transaction;)Lwallet/core/jni/proto/Binance$Transaction$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 553
    sget-object v0, Lwallet/core/jni/proto/Binance$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$Transaction;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$Transaction$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Binance$Transaction;
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

    .line 527
    sget-object v0, Lwallet/core/jni/proto/Binance$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$Transaction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$Transaction;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$Transaction;
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

    .line 533
    sget-object v0, Lwallet/core/jni/proto/Binance$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$Transaction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$Transaction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$Transaction;
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

    .line 491
    sget-object v0, Lwallet/core/jni/proto/Binance$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$Transaction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$Transaction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$Transaction;
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

    .line 498
    sget-object v0, Lwallet/core/jni/proto/Binance$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$Transaction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$Transaction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Binance$Transaction;
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

    .line 538
    sget-object v0, Lwallet/core/jni/proto/Binance$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$Transaction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$Transaction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$Transaction;
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

    .line 545
    sget-object v0, Lwallet/core/jni/proto/Binance$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$Transaction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$Transaction;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Binance$Transaction;
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

    .line 515
    sget-object v0, Lwallet/core/jni/proto/Binance$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$Transaction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$Transaction;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$Transaction;
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

    .line 522
    sget-object v0, Lwallet/core/jni/proto/Binance$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$Transaction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$Transaction;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Binance$Transaction;
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

    .line 478
    sget-object v0, Lwallet/core/jni/proto/Binance$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$Transaction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$Transaction;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$Transaction;
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

    .line 485
    sget-object v0, Lwallet/core/jni/proto/Binance$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$Transaction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$Transaction;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Binance$Transaction;
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

    .line 503
    sget-object v0, Lwallet/core/jni/proto/Binance$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$Transaction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$Transaction;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$Transaction;
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

    .line 510
    sget-object v0, Lwallet/core/jni/proto/Binance$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$Transaction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$Transaction;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Binance$Transaction;",
            ">;"
        }
    .end annotation

    .line 992
    sget-object v0, Lwallet/core/jni/proto/Binance$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$Transaction;

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

    .line 459
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 461
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$Transaction;->data_:Lcom/google/protobuf/ByteString;

    return-void
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

    .line 368
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 370
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$Transaction;->memo_:Ljava/lang/String;

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

    .line 393
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 394
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Binance$Transaction;->memo_:Ljava/lang/String;

    return-void
.end method

.method private setMsgs(ILcom/google/protobuf/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 189
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$Transaction;->ensureMsgsIsMutable()V

    .line 191
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$Transaction;->msgs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSignatures(ILcom/google/protobuf/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "value"
        }
    .end annotation

    .line 289
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 290
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$Transaction;->ensureSignaturesIsMutable()V

    .line 291
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$Transaction;->signatures_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSource(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 422
    iput-wide p1, p0, Lwallet/core/jni/proto/Binance$Transaction;->source_:J

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

    .line 924
    sget-object p2, Lwallet/core/jni/proto/Binance$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 970
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 964
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 949
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Binance$Transaction;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 951
    const-class p2, Lwallet/core/jni/proto/Binance$Transaction;

    monitor-enter p2

    .line 952
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Binance$Transaction;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 954
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Binance$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$Transaction;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 957
    sput-object p1, Lwallet/core/jni/proto/Binance$Transaction;->PARSER:Lcom/google/protobuf/Parser;

    .line 959
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

    .line 946
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Binance$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$Transaction;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "msgs_"

    aput-object v0, p1, p3

    const-string p3, "signatures_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "memo_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "source_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "data_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0002\u0000\u0001\u001c\u0002\u001c\u0003\u0208\u0004\u0002\u0005\n"

    .line 942
    sget-object p3, Lwallet/core/jni/proto/Binance$Transaction;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$Transaction;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 929
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Binance$Transaction$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Binance$Transaction$Builder;-><init>(Lwallet/core/jni/proto/Binance$1;)V

    return-object p1

    .line 926
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Binance$Transaction;

    invoke-direct {p1}, Lwallet/core/jni/proto/Binance$Transaction;-><init>()V

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

    .line 448
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$Transaction;->data_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getMemo()Ljava/lang/String;
    .locals 1

    .line 343
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$Transaction;->memo_:Ljava/lang/String;

    return-object v0
.end method

.method public getMemoBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 356
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$Transaction;->memo_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getMsgs(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$Transaction;->msgs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method public getMsgsCount()I
    .locals 1

    .line 156
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$Transaction;->msgs_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMsgsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$Transaction;->msgs_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSignatures(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 269
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$Transaction;->signatures_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method public getSignaturesCount()I
    .locals 1

    .line 256
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$Transaction;->signatures_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSignaturesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    .line 244
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$Transaction;->signatures_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSource()J
    .locals 2

    .line 410
    iget-wide v0, p0, Lwallet/core/jni/proto/Binance$Transaction;->source_:J

    return-wide v0
.end method
