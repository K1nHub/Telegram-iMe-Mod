.class public final Lwallet/core/jni/proto/Binance$TradeOrder;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Binance.java"

# interfaces
.implements Lwallet/core/jni/proto/Binance$TradeOrderOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Binance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TradeOrder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Binance$TradeOrder$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Binance$TradeOrder;",
        "Lwallet/core/jni/proto/Binance$TradeOrder$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Binance$TradeOrderOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TradeOrder;

.field public static final ID_FIELD_NUMBER:I = 0x2

.field public static final ORDERTYPE_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Binance$TradeOrder;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRICE_FIELD_NUMBER:I = 0x6

.field public static final QUANTITY_FIELD_NUMBER:I = 0x7

.field public static final SENDER_FIELD_NUMBER:I = 0x1

.field public static final SIDE_FIELD_NUMBER:I = 0x5

.field public static final SYMBOL_FIELD_NUMBER:I = 0x3

.field public static final TIMEINFORCE_FIELD_NUMBER:I = 0x8


# instance fields
.field private id_:Ljava/lang/String;

.field private ordertype_:J

.field private price_:J

.field private quantity_:J

.field private sender_:Lcom/google/protobuf/ByteString;

.field private side_:J

.field private symbol_:Ljava/lang/String;

.field private timeinforce_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2571
    new-instance v0, Lwallet/core/jni/proto/Binance$TradeOrder;

    invoke-direct {v0}, Lwallet/core/jni/proto/Binance$TradeOrder;-><init>()V

    .line 2574
    sput-object v0, Lwallet/core/jni/proto/Binance$TradeOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TradeOrder;

    .line 2575
    const-class v1, Lwallet/core/jni/proto/Binance$TradeOrder;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1663
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1664
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$TradeOrder;->sender_:Lcom/google/protobuf/ByteString;

    const-string v0, ""

    .line 1665
    iput-object v0, p0, Lwallet/core/jni/proto/Binance$TradeOrder;->id_:Ljava/lang/String;

    .line 1666
    iput-object v0, p0, Lwallet/core/jni/proto/Binance$TradeOrder;->symbol_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2700()Lwallet/core/jni/proto/Binance$TradeOrder;
    .locals 1

    .line 1658
    sget-object v0, Lwallet/core/jni/proto/Binance$TradeOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TradeOrder;

    return-object v0
.end method

.method static synthetic access$2800(Lwallet/core/jni/proto/Binance$TradeOrder;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1658
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$TradeOrder;->setSender(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2900(Lwallet/core/jni/proto/Binance$TradeOrder;)V
    .locals 0

    .line 1658
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$TradeOrder;->clearSender()V

    return-void
.end method

.method static synthetic access$3000(Lwallet/core/jni/proto/Binance$TradeOrder;Ljava/lang/String;)V
    .locals 0

    .line 1658
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$TradeOrder;->setId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3100(Lwallet/core/jni/proto/Binance$TradeOrder;)V
    .locals 0

    .line 1658
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$TradeOrder;->clearId()V

    return-void
.end method

.method static synthetic access$3200(Lwallet/core/jni/proto/Binance$TradeOrder;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1658
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$TradeOrder;->setIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3300(Lwallet/core/jni/proto/Binance$TradeOrder;Ljava/lang/String;)V
    .locals 0

    .line 1658
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$TradeOrder;->setSymbol(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3400(Lwallet/core/jni/proto/Binance$TradeOrder;)V
    .locals 0

    .line 1658
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$TradeOrder;->clearSymbol()V

    return-void
.end method

.method static synthetic access$3500(Lwallet/core/jni/proto/Binance$TradeOrder;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1658
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$TradeOrder;->setSymbolBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3600(Lwallet/core/jni/proto/Binance$TradeOrder;J)V
    .locals 0

    .line 1658
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Binance$TradeOrder;->setOrdertype(J)V

    return-void
.end method

.method static synthetic access$3700(Lwallet/core/jni/proto/Binance$TradeOrder;)V
    .locals 0

    .line 1658
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$TradeOrder;->clearOrdertype()V

    return-void
.end method

.method static synthetic access$3800(Lwallet/core/jni/proto/Binance$TradeOrder;J)V
    .locals 0

    .line 1658
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Binance$TradeOrder;->setSide(J)V

    return-void
.end method

.method static synthetic access$3900(Lwallet/core/jni/proto/Binance$TradeOrder;)V
    .locals 0

    .line 1658
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$TradeOrder;->clearSide()V

    return-void
.end method

.method static synthetic access$4000(Lwallet/core/jni/proto/Binance$TradeOrder;J)V
    .locals 0

    .line 1658
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Binance$TradeOrder;->setPrice(J)V

    return-void
.end method

.method static synthetic access$4100(Lwallet/core/jni/proto/Binance$TradeOrder;)V
    .locals 0

    .line 1658
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$TradeOrder;->clearPrice()V

    return-void
.end method

.method static synthetic access$4200(Lwallet/core/jni/proto/Binance$TradeOrder;J)V
    .locals 0

    .line 1658
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Binance$TradeOrder;->setQuantity(J)V

    return-void
.end method

.method static synthetic access$4300(Lwallet/core/jni/proto/Binance$TradeOrder;)V
    .locals 0

    .line 1658
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$TradeOrder;->clearQuantity()V

    return-void
.end method

.method static synthetic access$4400(Lwallet/core/jni/proto/Binance$TradeOrder;J)V
    .locals 0

    .line 1658
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Binance$TradeOrder;->setTimeinforce(J)V

    return-void
.end method

.method static synthetic access$4500(Lwallet/core/jni/proto/Binance$TradeOrder;)V
    .locals 0

    .line 1658
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$TradeOrder;->clearTimeinforce()V

    return-void
.end method

.method private clearId()V
    .locals 1

    .line 1757
    invoke-static {}, Lwallet/core/jni/proto/Binance$TradeOrder;->getDefaultInstance()Lwallet/core/jni/proto/Binance$TradeOrder;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$TradeOrder;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$TradeOrder;->id_:Ljava/lang/String;

    return-void
.end method

.method private clearOrdertype()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1876
    iput-wide v0, p0, Lwallet/core/jni/proto/Binance$TradeOrder;->ordertype_:J

    return-void
.end method

.method private clearPrice()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1952
    iput-wide v0, p0, Lwallet/core/jni/proto/Binance$TradeOrder;->price_:J

    return-void
.end method

.method private clearQuantity()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1990
    iput-wide v0, p0, Lwallet/core/jni/proto/Binance$TradeOrder;->quantity_:J

    return-void
.end method

.method private clearSender()V
    .locals 1

    .line 1704
    invoke-static {}, Lwallet/core/jni/proto/Binance$TradeOrder;->getDefaultInstance()Lwallet/core/jni/proto/Binance$TradeOrder;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$TradeOrder;->getSender()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$TradeOrder;->sender_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearSide()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1914
    iput-wide v0, p0, Lwallet/core/jni/proto/Binance$TradeOrder;->side_:J

    return-void
.end method

.method private clearSymbol()V
    .locals 1

    .line 1824
    invoke-static {}, Lwallet/core/jni/proto/Binance$TradeOrder;->getDefaultInstance()Lwallet/core/jni/proto/Binance$TradeOrder;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$TradeOrder;->getSymbol()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$TradeOrder;->symbol_:Ljava/lang/String;

    return-void
.end method

.method private clearTimeinforce()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 2028
    iput-wide v0, p0, Lwallet/core/jni/proto/Binance$TradeOrder;->timeinforce_:J

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Binance$TradeOrder;
    .locals 1

    .line 2580
    sget-object v0, Lwallet/core/jni/proto/Binance$TradeOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TradeOrder;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Binance$TradeOrder$Builder;
    .locals 1

    .line 2106
    sget-object v0, Lwallet/core/jni/proto/Binance$TradeOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TradeOrder;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Binance$TradeOrder$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Binance$TradeOrder;)Lwallet/core/jni/proto/Binance$TradeOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 2109
    sget-object v0, Lwallet/core/jni/proto/Binance$TradeOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TradeOrder;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TradeOrder$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Binance$TradeOrder;
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

    .line 2083
    sget-object v0, Lwallet/core/jni/proto/Binance$TradeOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TradeOrder;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TradeOrder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$TradeOrder;
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

    .line 2089
    sget-object v0, Lwallet/core/jni/proto/Binance$TradeOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TradeOrder;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TradeOrder;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$TradeOrder;
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

    .line 2047
    sget-object v0, Lwallet/core/jni/proto/Binance$TradeOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TradeOrder;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TradeOrder;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$TradeOrder;
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

    .line 2054
    sget-object v0, Lwallet/core/jni/proto/Binance$TradeOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TradeOrder;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TradeOrder;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Binance$TradeOrder;
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

    .line 2094
    sget-object v0, Lwallet/core/jni/proto/Binance$TradeOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TradeOrder;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TradeOrder;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$TradeOrder;
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

    .line 2101
    sget-object v0, Lwallet/core/jni/proto/Binance$TradeOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TradeOrder;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TradeOrder;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Binance$TradeOrder;
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

    .line 2071
    sget-object v0, Lwallet/core/jni/proto/Binance$TradeOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TradeOrder;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TradeOrder;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$TradeOrder;
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

    .line 2078
    sget-object v0, Lwallet/core/jni/proto/Binance$TradeOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TradeOrder;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TradeOrder;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Binance$TradeOrder;
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

    .line 2034
    sget-object v0, Lwallet/core/jni/proto/Binance$TradeOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TradeOrder;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TradeOrder;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$TradeOrder;
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

    .line 2041
    sget-object v0, Lwallet/core/jni/proto/Binance$TradeOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TradeOrder;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TradeOrder;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Binance$TradeOrder;
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

    .line 2059
    sget-object v0, Lwallet/core/jni/proto/Binance$TradeOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TradeOrder;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TradeOrder;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$TradeOrder;
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

    .line 2066
    sget-object v0, Lwallet/core/jni/proto/Binance$TradeOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TradeOrder;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TradeOrder;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Binance$TradeOrder;",
            ">;"
        }
    .end annotation

    .line 2586
    sget-object v0, Lwallet/core/jni/proto/Binance$TradeOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TradeOrder;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1744
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1746
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$TradeOrder;->id_:Ljava/lang/String;

    return-void
.end method

.method private setIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1769
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1770
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Binance$TradeOrder;->id_:Ljava/lang/String;

    return-void
.end method

.method private setOrdertype(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1865
    iput-wide p1, p0, Lwallet/core/jni/proto/Binance$TradeOrder;->ordertype_:J

    return-void
.end method

.method private setPrice(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1941
    iput-wide p1, p0, Lwallet/core/jni/proto/Binance$TradeOrder;->price_:J

    return-void
.end method

.method private setQuantity(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1979
    iput-wide p1, p0, Lwallet/core/jni/proto/Binance$TradeOrder;->quantity_:J

    return-void
.end method

.method private setSender(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1691
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1693
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$TradeOrder;->sender_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setSide(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1903
    iput-wide p1, p0, Lwallet/core/jni/proto/Binance$TradeOrder;->side_:J

    return-void
.end method

.method private setSymbol(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1811
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1813
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$TradeOrder;->symbol_:Ljava/lang/String;

    return-void
.end method

.method private setSymbolBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1836
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1837
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Binance$TradeOrder;->symbol_:Ljava/lang/String;

    return-void
.end method

.method private setTimeinforce(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2017
    iput-wide p1, p0, Lwallet/core/jni/proto/Binance$TradeOrder;->timeinforce_:J

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

    .line 2515
    sget-object p2, Lwallet/core/jni/proto/Binance$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2564
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 2558
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 2543
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Binance$TradeOrder;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 2545
    const-class p2, Lwallet/core/jni/proto/Binance$TradeOrder;

    monitor-enter p2

    .line 2546
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Binance$TradeOrder;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 2548
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Binance$TradeOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TradeOrder;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2551
    sput-object p1, Lwallet/core/jni/proto/Binance$TradeOrder;->PARSER:Lcom/google/protobuf/Parser;

    .line 2553
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

    .line 2540
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Binance$TradeOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TradeOrder;

    return-object p1

    :pswitch_4
    const/16 p1, 0x8

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "sender_"

    aput-object v0, p1, p3

    const-string p3, "id_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "symbol_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "ordertype_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "side_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "price_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "quantity_"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "timeinforce_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0008\u0000\u0000\u0001\u0008\u0008\u0000\u0000\u0000\u0001\n\u0002\u0208\u0003\u0208\u0004\u0002\u0005\u0002\u0006\u0002\u0007\u0002\u0008\u0002"

    .line 2536
    sget-object p3, Lwallet/core/jni/proto/Binance$TradeOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TradeOrder;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2520
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Binance$TradeOrder$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Binance$TradeOrder$Builder;-><init>(Lwallet/core/jni/proto/Binance$1;)V

    return-object p1

    .line 2517
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Binance$TradeOrder;

    invoke-direct {p1}, Lwallet/core/jni/proto/Binance$TradeOrder;-><init>()V

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

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1719
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$TradeOrder;->id_:Ljava/lang/String;

    return-object v0
.end method

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1732
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$TradeOrder;->id_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOrdertype()J
    .locals 2

    .line 1853
    iget-wide v0, p0, Lwallet/core/jni/proto/Binance$TradeOrder;->ordertype_:J

    return-wide v0
.end method

.method public getPrice()J
    .locals 2

    .line 1929
    iget-wide v0, p0, Lwallet/core/jni/proto/Binance$TradeOrder;->price_:J

    return-wide v0
.end method

.method public getQuantity()J
    .locals 2

    .line 1967
    iget-wide v0, p0, Lwallet/core/jni/proto/Binance$TradeOrder;->quantity_:J

    return-wide v0
.end method

.method public getSender()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1680
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$TradeOrder;->sender_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSide()J
    .locals 2

    .line 1891
    iget-wide v0, p0, Lwallet/core/jni/proto/Binance$TradeOrder;->side_:J

    return-wide v0
.end method

.method public getSymbol()Ljava/lang/String;
    .locals 1

    .line 1786
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$TradeOrder;->symbol_:Ljava/lang/String;

    return-object v0
.end method

.method public getSymbolBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1799
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$TradeOrder;->symbol_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTimeinforce()J
    .locals 2

    .line 2005
    iget-wide v0, p0, Lwallet/core/jni/proto/Binance$TradeOrder;->timeinforce_:J

    return-wide v0
.end method
