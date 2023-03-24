.class public final Lwallet/core/jni/proto/Binance$CancelTradeOrder;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Binance.java"

# interfaces
.implements Lwallet/core/jni/proto/Binance$CancelTradeOrderOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Binance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CancelTradeOrder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Binance$CancelTradeOrder$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Binance$CancelTradeOrder;",
        "Lwallet/core/jni/proto/Binance$CancelTradeOrder$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Binance$CancelTradeOrderOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$CancelTradeOrder;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Binance$CancelTradeOrder;",
            ">;"
        }
    .end annotation
.end field

.field public static final REFID_FIELD_NUMBER:I = 0x3

.field public static final SENDER_FIELD_NUMBER:I = 0x1

.field public static final SYMBOL_FIELD_NUMBER:I = 0x2


# instance fields
.field private refid_:Ljava/lang/String;

.field private sender_:Lcom/google/protobuf/ByteString;

.field private symbol_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 3169
    new-instance v0, Lwallet/core/jni/proto/Binance$CancelTradeOrder;

    invoke-direct {v0}, Lwallet/core/jni/proto/Binance$CancelTradeOrder;-><init>()V

    .line 3172
    sput-object v0, Lwallet/core/jni/proto/Binance$CancelTradeOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$CancelTradeOrder;

    .line 3173
    const-class v1, Lwallet/core/jni/proto/Binance$CancelTradeOrder;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2656
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2657
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$CancelTradeOrder;->sender_:Lcom/google/protobuf/ByteString;

    const-string v0, ""

    .line 2658
    iput-object v0, p0, Lwallet/core/jni/proto/Binance$CancelTradeOrder;->symbol_:Ljava/lang/String;

    .line 2659
    iput-object v0, p0, Lwallet/core/jni/proto/Binance$CancelTradeOrder;->refid_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4700()Lwallet/core/jni/proto/Binance$CancelTradeOrder;
    .locals 1

    .line 2651
    sget-object v0, Lwallet/core/jni/proto/Binance$CancelTradeOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$CancelTradeOrder;

    return-object v0
.end method

.method static synthetic access$4800(Lwallet/core/jni/proto/Binance$CancelTradeOrder;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 2651
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$CancelTradeOrder;->setSender(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4900(Lwallet/core/jni/proto/Binance$CancelTradeOrder;)V
    .locals 0

    .line 2651
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$CancelTradeOrder;->clearSender()V

    return-void
.end method

.method static synthetic access$5000(Lwallet/core/jni/proto/Binance$CancelTradeOrder;Ljava/lang/String;)V
    .locals 0

    .line 2651
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$CancelTradeOrder;->setSymbol(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5100(Lwallet/core/jni/proto/Binance$CancelTradeOrder;)V
    .locals 0

    .line 2651
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$CancelTradeOrder;->clearSymbol()V

    return-void
.end method

.method static synthetic access$5200(Lwallet/core/jni/proto/Binance$CancelTradeOrder;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 2651
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$CancelTradeOrder;->setSymbolBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$5300(Lwallet/core/jni/proto/Binance$CancelTradeOrder;Ljava/lang/String;)V
    .locals 0

    .line 2651
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$CancelTradeOrder;->setRefid(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5400(Lwallet/core/jni/proto/Binance$CancelTradeOrder;)V
    .locals 0

    .line 2651
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$CancelTradeOrder;->clearRefid()V

    return-void
.end method

.method static synthetic access$5500(Lwallet/core/jni/proto/Binance$CancelTradeOrder;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 2651
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$CancelTradeOrder;->setRefidBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearRefid()V
    .locals 1

    .line 2817
    invoke-static {}, Lwallet/core/jni/proto/Binance$CancelTradeOrder;->getDefaultInstance()Lwallet/core/jni/proto/Binance$CancelTradeOrder;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$CancelTradeOrder;->getRefid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$CancelTradeOrder;->refid_:Ljava/lang/String;

    return-void
.end method

.method private clearSender()V
    .locals 1

    .line 2697
    invoke-static {}, Lwallet/core/jni/proto/Binance$CancelTradeOrder;->getDefaultInstance()Lwallet/core/jni/proto/Binance$CancelTradeOrder;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$CancelTradeOrder;->getSender()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$CancelTradeOrder;->sender_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearSymbol()V
    .locals 1

    .line 2750
    invoke-static {}, Lwallet/core/jni/proto/Binance$CancelTradeOrder;->getDefaultInstance()Lwallet/core/jni/proto/Binance$CancelTradeOrder;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$CancelTradeOrder;->getSymbol()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$CancelTradeOrder;->symbol_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Binance$CancelTradeOrder;
    .locals 1

    .line 3178
    sget-object v0, Lwallet/core/jni/proto/Binance$CancelTradeOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$CancelTradeOrder;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Binance$CancelTradeOrder$Builder;
    .locals 1

    .line 2909
    sget-object v0, Lwallet/core/jni/proto/Binance$CancelTradeOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$CancelTradeOrder;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Binance$CancelTradeOrder$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Binance$CancelTradeOrder;)Lwallet/core/jni/proto/Binance$CancelTradeOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 2912
    sget-object v0, Lwallet/core/jni/proto/Binance$CancelTradeOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$CancelTradeOrder;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$CancelTradeOrder$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Binance$CancelTradeOrder;
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

    .line 2886
    sget-object v0, Lwallet/core/jni/proto/Binance$CancelTradeOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$CancelTradeOrder;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$CancelTradeOrder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$CancelTradeOrder;
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

    .line 2892
    sget-object v0, Lwallet/core/jni/proto/Binance$CancelTradeOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$CancelTradeOrder;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$CancelTradeOrder;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$CancelTradeOrder;
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

    .line 2850
    sget-object v0, Lwallet/core/jni/proto/Binance$CancelTradeOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$CancelTradeOrder;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$CancelTradeOrder;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$CancelTradeOrder;
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

    .line 2857
    sget-object v0, Lwallet/core/jni/proto/Binance$CancelTradeOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$CancelTradeOrder;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$CancelTradeOrder;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Binance$CancelTradeOrder;
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

    .line 2897
    sget-object v0, Lwallet/core/jni/proto/Binance$CancelTradeOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$CancelTradeOrder;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$CancelTradeOrder;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$CancelTradeOrder;
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

    .line 2904
    sget-object v0, Lwallet/core/jni/proto/Binance$CancelTradeOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$CancelTradeOrder;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$CancelTradeOrder;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Binance$CancelTradeOrder;
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

    .line 2874
    sget-object v0, Lwallet/core/jni/proto/Binance$CancelTradeOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$CancelTradeOrder;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$CancelTradeOrder;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$CancelTradeOrder;
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

    .line 2881
    sget-object v0, Lwallet/core/jni/proto/Binance$CancelTradeOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$CancelTradeOrder;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$CancelTradeOrder;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Binance$CancelTradeOrder;
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

    .line 2837
    sget-object v0, Lwallet/core/jni/proto/Binance$CancelTradeOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$CancelTradeOrder;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$CancelTradeOrder;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$CancelTradeOrder;
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

    .line 2844
    sget-object v0, Lwallet/core/jni/proto/Binance$CancelTradeOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$CancelTradeOrder;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$CancelTradeOrder;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Binance$CancelTradeOrder;
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

    .line 2862
    sget-object v0, Lwallet/core/jni/proto/Binance$CancelTradeOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$CancelTradeOrder;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$CancelTradeOrder;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$CancelTradeOrder;
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

    .line 2869
    sget-object v0, Lwallet/core/jni/proto/Binance$CancelTradeOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$CancelTradeOrder;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$CancelTradeOrder;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Binance$CancelTradeOrder;",
            ">;"
        }
    .end annotation

    .line 3184
    sget-object v0, Lwallet/core/jni/proto/Binance$CancelTradeOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$CancelTradeOrder;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setRefid(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2804
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2806
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$CancelTradeOrder;->refid_:Ljava/lang/String;

    return-void
.end method

.method private setRefidBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2829
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2830
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Binance$CancelTradeOrder;->refid_:Ljava/lang/String;

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

    .line 2684
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2686
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$CancelTradeOrder;->sender_:Lcom/google/protobuf/ByteString;

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

    .line 2737
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2739
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$CancelTradeOrder;->symbol_:Ljava/lang/String;

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

    .line 2762
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2763
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Binance$CancelTradeOrder;->symbol_:Ljava/lang/String;

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

    .line 3118
    sget-object p2, Lwallet/core/jni/proto/Binance$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 3162
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 3156
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 3141
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Binance$CancelTradeOrder;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 3143
    const-class p2, Lwallet/core/jni/proto/Binance$CancelTradeOrder;

    monitor-enter p2

    .line 3144
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Binance$CancelTradeOrder;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 3146
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Binance$CancelTradeOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$CancelTradeOrder;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3149
    sput-object p1, Lwallet/core/jni/proto/Binance$CancelTradeOrder;->PARSER:Lcom/google/protobuf/Parser;

    .line 3151
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

    .line 3138
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Binance$CancelTradeOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$CancelTradeOrder;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "sender_"

    aput-object v0, p1, p3

    const-string p3, "symbol_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "refid_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\n\u0002\u0208\u0003\u0208"

    .line 3134
    sget-object p3, Lwallet/core/jni/proto/Binance$CancelTradeOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$CancelTradeOrder;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3123
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Binance$CancelTradeOrder$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Binance$CancelTradeOrder$Builder;-><init>(Lwallet/core/jni/proto/Binance$1;)V

    return-object p1

    .line 3120
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Binance$CancelTradeOrder;

    invoke-direct {p1}, Lwallet/core/jni/proto/Binance$CancelTradeOrder;-><init>()V

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

.method public getRefid()Ljava/lang/String;
    .locals 1

    .line 2779
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$CancelTradeOrder;->refid_:Ljava/lang/String;

    return-object v0
.end method

.method public getRefidBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2792
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$CancelTradeOrder;->refid_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSender()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2673
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$CancelTradeOrder;->sender_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSymbol()Ljava/lang/String;
    .locals 1

    .line 2712
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$CancelTradeOrder;->symbol_:Ljava/lang/String;

    return-object v0
.end method

.method public getSymbolBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2725
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$CancelTradeOrder;->symbol_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
