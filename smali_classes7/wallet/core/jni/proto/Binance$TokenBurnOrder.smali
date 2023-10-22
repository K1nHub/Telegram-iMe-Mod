.class public final Lwallet/core/jni/proto/Binance$TokenBurnOrder;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Binance.java"

# interfaces
.implements Lwallet/core/jni/proto/Binance$TokenBurnOrderOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Binance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TokenBurnOrder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Binance$TokenBurnOrder$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Binance$TokenBurnOrder;",
        "Lwallet/core/jni/proto/Binance$TokenBurnOrder$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Binance$TokenBurnOrderOrBuilder;"
    }
.end annotation


# static fields
.field public static final AMOUNT_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TokenBurnOrder;

.field public static final FROM_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Binance$TokenBurnOrder;",
            ">;"
        }
    .end annotation
.end field

.field public static final SYMBOL_FIELD_NUMBER:I = 0x2


# instance fields
.field private amount_:J

.field private from_:Lcom/google/protobuf/ByteString;

.field private symbol_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 7464
    new-instance v0, Lwallet/core/jni/proto/Binance$TokenBurnOrder;

    invoke-direct {v0}, Lwallet/core/jni/proto/Binance$TokenBurnOrder;-><init>()V

    .line 7467
    sput-object v0, Lwallet/core/jni/proto/Binance$TokenBurnOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TokenBurnOrder;

    .line 7468
    const-class v1, Lwallet/core/jni/proto/Binance$TokenBurnOrder;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 7010
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 7011
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$TokenBurnOrder;->from_:Lcom/google/protobuf/ByteString;

    const-string v0, ""

    .line 7012
    iput-object v0, p0, Lwallet/core/jni/proto/Binance$TokenBurnOrder;->symbol_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$12100()Lwallet/core/jni/proto/Binance$TokenBurnOrder;
    .locals 1

    .line 7005
    sget-object v0, Lwallet/core/jni/proto/Binance$TokenBurnOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TokenBurnOrder;

    return-object v0
.end method

.method static synthetic access$12200(Lwallet/core/jni/proto/Binance$TokenBurnOrder;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 7005
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$TokenBurnOrder;->setFrom(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$12300(Lwallet/core/jni/proto/Binance$TokenBurnOrder;)V
    .locals 0

    .line 7005
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$TokenBurnOrder;->clearFrom()V

    return-void
.end method

.method static synthetic access$12400(Lwallet/core/jni/proto/Binance$TokenBurnOrder;Ljava/lang/String;)V
    .locals 0

    .line 7005
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$TokenBurnOrder;->setSymbol(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12500(Lwallet/core/jni/proto/Binance$TokenBurnOrder;)V
    .locals 0

    .line 7005
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$TokenBurnOrder;->clearSymbol()V

    return-void
.end method

.method static synthetic access$12600(Lwallet/core/jni/proto/Binance$TokenBurnOrder;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 7005
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$TokenBurnOrder;->setSymbolBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$12700(Lwallet/core/jni/proto/Binance$TokenBurnOrder;J)V
    .locals 0

    .line 7005
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Binance$TokenBurnOrder;->setAmount(J)V

    return-void
.end method

.method static synthetic access$12800(Lwallet/core/jni/proto/Binance$TokenBurnOrder;)V
    .locals 0

    .line 7005
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$TokenBurnOrder;->clearAmount()V

    return-void
.end method

.method private clearAmount()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 7155
    iput-wide v0, p0, Lwallet/core/jni/proto/Binance$TokenBurnOrder;->amount_:J

    return-void
.end method

.method private clearFrom()V
    .locals 1

    .line 7050
    invoke-static {}, Lwallet/core/jni/proto/Binance$TokenBurnOrder;->getDefaultInstance()Lwallet/core/jni/proto/Binance$TokenBurnOrder;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$TokenBurnOrder;->getFrom()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$TokenBurnOrder;->from_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearSymbol()V
    .locals 1

    .line 7103
    invoke-static {}, Lwallet/core/jni/proto/Binance$TokenBurnOrder;->getDefaultInstance()Lwallet/core/jni/proto/Binance$TokenBurnOrder;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$TokenBurnOrder;->getSymbol()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$TokenBurnOrder;->symbol_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Binance$TokenBurnOrder;
    .locals 1

    .line 7473
    sget-object v0, Lwallet/core/jni/proto/Binance$TokenBurnOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TokenBurnOrder;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Binance$TokenBurnOrder$Builder;
    .locals 1

    .line 7233
    sget-object v0, Lwallet/core/jni/proto/Binance$TokenBurnOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TokenBurnOrder;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenBurnOrder$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Binance$TokenBurnOrder;)Lwallet/core/jni/proto/Binance$TokenBurnOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 7236
    sget-object v0, Lwallet/core/jni/proto/Binance$TokenBurnOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TokenBurnOrder;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TokenBurnOrder$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Binance$TokenBurnOrder;
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

    .line 7210
    sget-object v0, Lwallet/core/jni/proto/Binance$TokenBurnOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TokenBurnOrder;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TokenBurnOrder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$TokenBurnOrder;
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

    .line 7216
    sget-object v0, Lwallet/core/jni/proto/Binance$TokenBurnOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TokenBurnOrder;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TokenBurnOrder;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$TokenBurnOrder;
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

    .line 7174
    sget-object v0, Lwallet/core/jni/proto/Binance$TokenBurnOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TokenBurnOrder;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TokenBurnOrder;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$TokenBurnOrder;
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

    .line 7181
    sget-object v0, Lwallet/core/jni/proto/Binance$TokenBurnOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TokenBurnOrder;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TokenBurnOrder;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Binance$TokenBurnOrder;
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

    .line 7221
    sget-object v0, Lwallet/core/jni/proto/Binance$TokenBurnOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TokenBurnOrder;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TokenBurnOrder;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$TokenBurnOrder;
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

    .line 7228
    sget-object v0, Lwallet/core/jni/proto/Binance$TokenBurnOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TokenBurnOrder;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TokenBurnOrder;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Binance$TokenBurnOrder;
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

    .line 7198
    sget-object v0, Lwallet/core/jni/proto/Binance$TokenBurnOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TokenBurnOrder;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TokenBurnOrder;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$TokenBurnOrder;
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

    .line 7205
    sget-object v0, Lwallet/core/jni/proto/Binance$TokenBurnOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TokenBurnOrder;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TokenBurnOrder;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Binance$TokenBurnOrder;
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

    .line 7161
    sget-object v0, Lwallet/core/jni/proto/Binance$TokenBurnOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TokenBurnOrder;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TokenBurnOrder;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$TokenBurnOrder;
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

    .line 7168
    sget-object v0, Lwallet/core/jni/proto/Binance$TokenBurnOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TokenBurnOrder;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TokenBurnOrder;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Binance$TokenBurnOrder;
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

    .line 7186
    sget-object v0, Lwallet/core/jni/proto/Binance$TokenBurnOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TokenBurnOrder;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TokenBurnOrder;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$TokenBurnOrder;
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

    .line 7193
    sget-object v0, Lwallet/core/jni/proto/Binance$TokenBurnOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TokenBurnOrder;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TokenBurnOrder;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Binance$TokenBurnOrder;",
            ">;"
        }
    .end annotation

    .line 7479
    sget-object v0, Lwallet/core/jni/proto/Binance$TokenBurnOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TokenBurnOrder;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAmount(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 7144
    iput-wide p1, p0, Lwallet/core/jni/proto/Binance$TokenBurnOrder;->amount_:J

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

    .line 7037
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7039
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$TokenBurnOrder;->from_:Lcom/google/protobuf/ByteString;

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

    .line 7090
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7092
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$TokenBurnOrder;->symbol_:Ljava/lang/String;

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

    .line 7115
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 7116
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Binance$TokenBurnOrder;->symbol_:Ljava/lang/String;

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

    .line 7413
    sget-object p2, Lwallet/core/jni/proto/Binance$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 7457
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 7451
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 7436
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Binance$TokenBurnOrder;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 7438
    const-class p2, Lwallet/core/jni/proto/Binance$TokenBurnOrder;

    monitor-enter p2

    .line 7439
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Binance$TokenBurnOrder;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7441
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Binance$TokenBurnOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TokenBurnOrder;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 7444
    sput-object p1, Lwallet/core/jni/proto/Binance$TokenBurnOrder;->PARSER:Lcom/google/protobuf/Parser;

    .line 7446
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

    .line 7433
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Binance$TokenBurnOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TokenBurnOrder;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "from_"

    aput-object v0, p1, p3

    const-string p3, "symbol_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "amount_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\n\u0002\u0208\u0003\u0002"

    .line 7429
    sget-object p3, Lwallet/core/jni/proto/Binance$TokenBurnOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TokenBurnOrder;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7418
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Binance$TokenBurnOrder$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Binance$TokenBurnOrder$Builder;-><init>(Lwallet/core/jni/proto/Binance$1;)V

    return-object p1

    .line 7415
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Binance$TokenBurnOrder;

    invoke-direct {p1}, Lwallet/core/jni/proto/Binance$TokenBurnOrder;-><init>()V

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

.method public getAmount()J
    .locals 2

    .line 7132
    iget-wide v0, p0, Lwallet/core/jni/proto/Binance$TokenBurnOrder;->amount_:J

    return-wide v0
.end method

.method public getFrom()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7026
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$TokenBurnOrder;->from_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSymbol()Ljava/lang/String;
    .locals 1

    .line 7065
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$TokenBurnOrder;->symbol_:Ljava/lang/String;

    return-object v0
.end method

.method public getSymbolBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7078
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$TokenBurnOrder;->symbol_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
