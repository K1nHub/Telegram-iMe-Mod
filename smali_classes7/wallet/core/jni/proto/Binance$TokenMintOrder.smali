.class public final Lwallet/core/jni/proto/Binance$TokenMintOrder;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Binance.java"

# interfaces
.implements Lwallet/core/jni/proto/Binance$TokenMintOrderOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Binance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TokenMintOrder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Binance$TokenMintOrder$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Binance$TokenMintOrder;",
        "Lwallet/core/jni/proto/Binance$TokenMintOrder$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Binance$TokenMintOrderOrBuilder;"
    }
.end annotation


# static fields
.field public static final AMOUNT_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TokenMintOrder;

.field public static final FROM_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Binance$TokenMintOrder;",
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

    .line 6935
    new-instance v0, Lwallet/core/jni/proto/Binance$TokenMintOrder;

    invoke-direct {v0}, Lwallet/core/jni/proto/Binance$TokenMintOrder;-><init>()V

    .line 6938
    sput-object v0, Lwallet/core/jni/proto/Binance$TokenMintOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TokenMintOrder;

    .line 6939
    const-class v1, Lwallet/core/jni/proto/Binance$TokenMintOrder;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 6481
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 6482
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$TokenMintOrder;->from_:Lcom/google/protobuf/ByteString;

    const-string v0, ""

    .line 6483
    iput-object v0, p0, Lwallet/core/jni/proto/Binance$TokenMintOrder;->symbol_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$11200()Lwallet/core/jni/proto/Binance$TokenMintOrder;
    .locals 1

    .line 6476
    sget-object v0, Lwallet/core/jni/proto/Binance$TokenMintOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TokenMintOrder;

    return-object v0
.end method

.method static synthetic access$11300(Lwallet/core/jni/proto/Binance$TokenMintOrder;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 6476
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$TokenMintOrder;->setFrom(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$11400(Lwallet/core/jni/proto/Binance$TokenMintOrder;)V
    .locals 0

    .line 6476
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$TokenMintOrder;->clearFrom()V

    return-void
.end method

.method static synthetic access$11500(Lwallet/core/jni/proto/Binance$TokenMintOrder;Ljava/lang/String;)V
    .locals 0

    .line 6476
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$TokenMintOrder;->setSymbol(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11600(Lwallet/core/jni/proto/Binance$TokenMintOrder;)V
    .locals 0

    .line 6476
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$TokenMintOrder;->clearSymbol()V

    return-void
.end method

.method static synthetic access$11700(Lwallet/core/jni/proto/Binance$TokenMintOrder;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 6476
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$TokenMintOrder;->setSymbolBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$11800(Lwallet/core/jni/proto/Binance$TokenMintOrder;J)V
    .locals 0

    .line 6476
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Binance$TokenMintOrder;->setAmount(J)V

    return-void
.end method

.method static synthetic access$11900(Lwallet/core/jni/proto/Binance$TokenMintOrder;)V
    .locals 0

    .line 6476
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$TokenMintOrder;->clearAmount()V

    return-void
.end method

.method private clearAmount()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 6626
    iput-wide v0, p0, Lwallet/core/jni/proto/Binance$TokenMintOrder;->amount_:J

    return-void
.end method

.method private clearFrom()V
    .locals 1

    .line 6521
    invoke-static {}, Lwallet/core/jni/proto/Binance$TokenMintOrder;->getDefaultInstance()Lwallet/core/jni/proto/Binance$TokenMintOrder;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$TokenMintOrder;->getFrom()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$TokenMintOrder;->from_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearSymbol()V
    .locals 1

    .line 6574
    invoke-static {}, Lwallet/core/jni/proto/Binance$TokenMintOrder;->getDefaultInstance()Lwallet/core/jni/proto/Binance$TokenMintOrder;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$TokenMintOrder;->getSymbol()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$TokenMintOrder;->symbol_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Binance$TokenMintOrder;
    .locals 1

    .line 6944
    sget-object v0, Lwallet/core/jni/proto/Binance$TokenMintOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TokenMintOrder;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Binance$TokenMintOrder$Builder;
    .locals 1

    .line 6704
    sget-object v0, Lwallet/core/jni/proto/Binance$TokenMintOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TokenMintOrder;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Binance$TokenMintOrder$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Binance$TokenMintOrder;)Lwallet/core/jni/proto/Binance$TokenMintOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 6707
    sget-object v0, Lwallet/core/jni/proto/Binance$TokenMintOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TokenMintOrder;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TokenMintOrder$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Binance$TokenMintOrder;
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

    .line 6681
    sget-object v0, Lwallet/core/jni/proto/Binance$TokenMintOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TokenMintOrder;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TokenMintOrder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$TokenMintOrder;
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

    .line 6687
    sget-object v0, Lwallet/core/jni/proto/Binance$TokenMintOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TokenMintOrder;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TokenMintOrder;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$TokenMintOrder;
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

    .line 6645
    sget-object v0, Lwallet/core/jni/proto/Binance$TokenMintOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TokenMintOrder;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TokenMintOrder;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$TokenMintOrder;
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

    .line 6652
    sget-object v0, Lwallet/core/jni/proto/Binance$TokenMintOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TokenMintOrder;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TokenMintOrder;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Binance$TokenMintOrder;
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

    .line 6692
    sget-object v0, Lwallet/core/jni/proto/Binance$TokenMintOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TokenMintOrder;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TokenMintOrder;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$TokenMintOrder;
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

    .line 6699
    sget-object v0, Lwallet/core/jni/proto/Binance$TokenMintOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TokenMintOrder;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TokenMintOrder;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Binance$TokenMintOrder;
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

    .line 6669
    sget-object v0, Lwallet/core/jni/proto/Binance$TokenMintOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TokenMintOrder;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TokenMintOrder;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$TokenMintOrder;
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

    .line 6676
    sget-object v0, Lwallet/core/jni/proto/Binance$TokenMintOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TokenMintOrder;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TokenMintOrder;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Binance$TokenMintOrder;
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

    .line 6632
    sget-object v0, Lwallet/core/jni/proto/Binance$TokenMintOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TokenMintOrder;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TokenMintOrder;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$TokenMintOrder;
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

    .line 6639
    sget-object v0, Lwallet/core/jni/proto/Binance$TokenMintOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TokenMintOrder;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TokenMintOrder;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Binance$TokenMintOrder;
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

    .line 6657
    sget-object v0, Lwallet/core/jni/proto/Binance$TokenMintOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TokenMintOrder;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TokenMintOrder;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$TokenMintOrder;
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

    .line 6664
    sget-object v0, Lwallet/core/jni/proto/Binance$TokenMintOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TokenMintOrder;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$TokenMintOrder;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Binance$TokenMintOrder;",
            ">;"
        }
    .end annotation

    .line 6950
    sget-object v0, Lwallet/core/jni/proto/Binance$TokenMintOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TokenMintOrder;

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

    .line 6615
    iput-wide p1, p0, Lwallet/core/jni/proto/Binance$TokenMintOrder;->amount_:J

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

    .line 6508
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6510
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$TokenMintOrder;->from_:Lcom/google/protobuf/ByteString;

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

    .line 6561
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6563
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$TokenMintOrder;->symbol_:Ljava/lang/String;

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

    .line 6586
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 6587
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Binance$TokenMintOrder;->symbol_:Ljava/lang/String;

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

    .line 6884
    sget-object p2, Lwallet/core/jni/proto/Binance$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 6928
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 6922
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 6907
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Binance$TokenMintOrder;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 6909
    const-class p2, Lwallet/core/jni/proto/Binance$TokenMintOrder;

    monitor-enter p2

    .line 6910
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Binance$TokenMintOrder;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 6912
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Binance$TokenMintOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TokenMintOrder;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 6915
    sput-object p1, Lwallet/core/jni/proto/Binance$TokenMintOrder;->PARSER:Lcom/google/protobuf/Parser;

    .line 6917
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

    .line 6904
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Binance$TokenMintOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TokenMintOrder;

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

    .line 6900
    sget-object p3, Lwallet/core/jni/proto/Binance$TokenMintOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$TokenMintOrder;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6889
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Binance$TokenMintOrder$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Binance$TokenMintOrder$Builder;-><init>(Lwallet/core/jni/proto/Binance$1;)V

    return-object p1

    .line 6886
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Binance$TokenMintOrder;

    invoke-direct {p1}, Lwallet/core/jni/proto/Binance$TokenMintOrder;-><init>()V

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

    .line 6603
    iget-wide v0, p0, Lwallet/core/jni/proto/Binance$TokenMintOrder;->amount_:J

    return-wide v0
.end method

.method public getFrom()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6497
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$TokenMintOrder;->from_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSymbol()Ljava/lang/String;
    .locals 1

    .line 6536
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$TokenMintOrder;->symbol_:Ljava/lang/String;

    return-object v0
.end method

.method public getSymbolBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6549
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$TokenMintOrder;->symbol_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
