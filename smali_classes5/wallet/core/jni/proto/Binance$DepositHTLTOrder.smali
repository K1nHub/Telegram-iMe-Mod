.class public final Lwallet/core/jni/proto/Binance$DepositHTLTOrder;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Binance.java"

# interfaces
.implements Lwallet/core/jni/proto/Binance$DepositHTLTOrderOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Binance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DepositHTLTOrder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Binance$DepositHTLTOrder$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Binance$DepositHTLTOrder;",
        "Lwallet/core/jni/proto/Binance$DepositHTLTOrder$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Binance$DepositHTLTOrderOrBuilder;"
    }
.end annotation


# static fields
.field public static final AMOUNT_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$DepositHTLTOrder;

.field public static final FROM_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Binance$DepositHTLTOrder;",
            ">;"
        }
    .end annotation
.end field

.field public static final SWAP_ID_FIELD_NUMBER:I = 0x3


# instance fields
.field private amount_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lwallet/core/jni/proto/Binance$SendOrder$Token;",
            ">;"
        }
    .end annotation
.end field

.field private from_:Lcom/google/protobuf/ByteString;

.field private swapId_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10734
    new-instance v0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;

    invoke-direct {v0}, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;-><init>()V

    .line 10737
    sput-object v0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$DepositHTLTOrder;

    .line 10738
    const-class v1, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 10125
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 10126
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->from_:Lcom/google/protobuf/ByteString;

    .line 10127
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->amount_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 10128
    iput-object v0, p0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->swapId_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$17700()Lwallet/core/jni/proto/Binance$DepositHTLTOrder;
    .locals 1

    .line 10120
    sget-object v0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$DepositHTLTOrder;

    return-object v0
.end method

.method static synthetic access$17800(Lwallet/core/jni/proto/Binance$DepositHTLTOrder;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 10120
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->setFrom(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$17900(Lwallet/core/jni/proto/Binance$DepositHTLTOrder;)V
    .locals 0

    .line 10120
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->clearFrom()V

    return-void
.end method

.method static synthetic access$18000(Lwallet/core/jni/proto/Binance$DepositHTLTOrder;ILwallet/core/jni/proto/Binance$SendOrder$Token;)V
    .locals 0

    .line 10120
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->setAmount(ILwallet/core/jni/proto/Binance$SendOrder$Token;)V

    return-void
.end method

.method static synthetic access$18100(Lwallet/core/jni/proto/Binance$DepositHTLTOrder;Lwallet/core/jni/proto/Binance$SendOrder$Token;)V
    .locals 0

    .line 10120
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->addAmount(Lwallet/core/jni/proto/Binance$SendOrder$Token;)V

    return-void
.end method

.method static synthetic access$18200(Lwallet/core/jni/proto/Binance$DepositHTLTOrder;ILwallet/core/jni/proto/Binance$SendOrder$Token;)V
    .locals 0

    .line 10120
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->addAmount(ILwallet/core/jni/proto/Binance$SendOrder$Token;)V

    return-void
.end method

.method static synthetic access$18300(Lwallet/core/jni/proto/Binance$DepositHTLTOrder;Ljava/lang/Iterable;)V
    .locals 0

    .line 10120
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->addAllAmount(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$18400(Lwallet/core/jni/proto/Binance$DepositHTLTOrder;)V
    .locals 0

    .line 10120
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->clearAmount()V

    return-void
.end method

.method static synthetic access$18500(Lwallet/core/jni/proto/Binance$DepositHTLTOrder;I)V
    .locals 0

    .line 10120
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->removeAmount(I)V

    return-void
.end method

.method static synthetic access$18600(Lwallet/core/jni/proto/Binance$DepositHTLTOrder;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 10120
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->setSwapId(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$18700(Lwallet/core/jni/proto/Binance$DepositHTLTOrder;)V
    .locals 0

    .line 10120
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->clearSwapId()V

    return-void
.end method

.method private addAllAmount(Ljava/lang/Iterable;)V
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
            "Lwallet/core/jni/proto/Binance$SendOrder$Token;",
            ">;)V"
        }
    .end annotation

    .line 10281
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->ensureAmountIsMutable()V

    .line 10282
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->amount_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addAmount(ILwallet/core/jni/proto/Binance$SendOrder$Token;)V
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

    .line 10268
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10269
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->ensureAmountIsMutable()V

    .line 10270
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->amount_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addAmount(Lwallet/core/jni/proto/Binance$SendOrder$Token;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10255
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10256
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->ensureAmountIsMutable()V

    .line 10257
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->amount_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearAmount()V
    .locals 1

    .line 10293
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->amount_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearFrom()V
    .locals 1

    .line 10166
    invoke-static {}, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->getDefaultInstance()Lwallet/core/jni/proto/Binance$DepositHTLTOrder;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->getFrom()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->from_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearSwapId()V
    .locals 1

    .line 10343
    invoke-static {}, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->getDefaultInstance()Lwallet/core/jni/proto/Binance$DepositHTLTOrder;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->getSwapId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->swapId_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private ensureAmountIsMutable()V
    .locals 2

    .line 10227
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->amount_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 10228
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 10230
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->amount_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Binance$DepositHTLTOrder;
    .locals 1

    .line 10743
    sget-object v0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$DepositHTLTOrder;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Binance$DepositHTLTOrder$Builder;
    .locals 1

    .line 10421
    sget-object v0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$DepositHTLTOrder;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Binance$DepositHTLTOrder;)Lwallet/core/jni/proto/Binance$DepositHTLTOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 10424
    sget-object v0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$DepositHTLTOrder;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Binance$DepositHTLTOrder;
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

    .line 10398
    sget-object v0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$DepositHTLTOrder;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$DepositHTLTOrder;
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

    .line 10404
    sget-object v0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$DepositHTLTOrder;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$DepositHTLTOrder;
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

    .line 10362
    sget-object v0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$DepositHTLTOrder;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$DepositHTLTOrder;
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

    .line 10369
    sget-object v0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$DepositHTLTOrder;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Binance$DepositHTLTOrder;
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

    .line 10409
    sget-object v0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$DepositHTLTOrder;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$DepositHTLTOrder;
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

    .line 10416
    sget-object v0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$DepositHTLTOrder;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Binance$DepositHTLTOrder;
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

    .line 10386
    sget-object v0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$DepositHTLTOrder;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$DepositHTLTOrder;
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

    .line 10393
    sget-object v0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$DepositHTLTOrder;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Binance$DepositHTLTOrder;
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

    .line 10349
    sget-object v0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$DepositHTLTOrder;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$DepositHTLTOrder;
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

    .line 10356
    sget-object v0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$DepositHTLTOrder;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Binance$DepositHTLTOrder;
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

    .line 10374
    sget-object v0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$DepositHTLTOrder;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$DepositHTLTOrder;
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

    .line 10381
    sget-object v0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$DepositHTLTOrder;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Binance$DepositHTLTOrder;",
            ">;"
        }
    .end annotation

    .line 10749
    sget-object v0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$DepositHTLTOrder;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeAmount(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 10303
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->ensureAmountIsMutable()V

    .line 10304
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->amount_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setAmount(ILwallet/core/jni/proto/Binance$SendOrder$Token;)V
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

    .line 10243
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10244
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->ensureAmountIsMutable()V

    .line 10245
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->amount_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setFrom(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10153
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10155
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->from_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setSwapId(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10330
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10332
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->swapId_:Lcom/google/protobuf/ByteString;

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

    .line 10682
    sget-object p2, Lwallet/core/jni/proto/Binance$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 10727
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 10721
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 10706
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 10708
    const-class p2, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;

    monitor-enter p2

    .line 10709
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 10711
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$DepositHTLTOrder;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 10714
    sput-object p1, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->PARSER:Lcom/google/protobuf/Parser;

    .line 10716
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

    .line 10703
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$DepositHTLTOrder;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "from_"

    aput-object v0, p1, p3

    const-string p3, "amount_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 10690
    const-class p3, Lwallet/core/jni/proto/Binance$SendOrder$Token;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "swapId_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0001\u0000\u0001\n\u0002\u001b\u0003\n"

    .line 10699
    sget-object p3, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$DepositHTLTOrder;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 10687
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Binance$DepositHTLTOrder$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Binance$DepositHTLTOrder$Builder;-><init>(Lwallet/core/jni/proto/Binance$1;)V

    return-object p1

    .line 10684
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;

    invoke-direct {p1}, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;-><init>()V

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

.method public getAmount(I)Lwallet/core/jni/proto/Binance$SendOrder$Token;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 10213
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->amount_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Binance$SendOrder$Token;

    return-object p1
.end method

.method public getAmountCount()I
    .locals 1

    .line 10202
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->amount_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAmountList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Binance$SendOrder$Token;",
            ">;"
        }
    .end annotation

    .line 10180
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->amount_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getAmountOrBuilder(I)Lwallet/core/jni/proto/Binance$SendOrder$TokenOrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 10224
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->amount_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Binance$SendOrder$TokenOrBuilder;

    return-object p1
.end method

.method public getAmountOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lwallet/core/jni/proto/Binance$SendOrder$TokenOrBuilder;",
            ">;"
        }
    .end annotation

    .line 10191
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->amount_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getFrom()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 10142
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->from_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSwapId()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 10319
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$DepositHTLTOrder;->swapId_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method
