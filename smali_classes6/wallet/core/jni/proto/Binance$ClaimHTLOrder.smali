.class public final Lwallet/core/jni/proto/Binance$ClaimHTLOrder;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Binance.java"

# interfaces
.implements Lwallet/core/jni/proto/Binance$ClaimHTLOrderOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Binance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClaimHTLOrder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Binance$ClaimHTLOrder$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Binance$ClaimHTLOrder;",
        "Lwallet/core/jni/proto/Binance$ClaimHTLOrder$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Binance$ClaimHTLOrderOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$ClaimHTLOrder;

.field public static final FROM_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Binance$ClaimHTLOrder;",
            ">;"
        }
    .end annotation
.end field

.field public static final RANDOM_NUMBER_FIELD_NUMBER:I = 0x3

.field public static final SWAP_ID_FIELD_NUMBER:I = 0x2


# instance fields
.field private from_:Lcom/google/protobuf/ByteString;

.field private randomNumber_:Lcom/google/protobuf/ByteString;

.field private swapId_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11198
    new-instance v0, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;

    invoke-direct {v0}, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;-><init>()V

    .line 11201
    sput-object v0, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$ClaimHTLOrder;

    .line 11202
    const-class v1, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 10799
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 10800
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;->from_:Lcom/google/protobuf/ByteString;

    .line 10801
    iput-object v0, p0, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;->swapId_:Lcom/google/protobuf/ByteString;

    .line 10802
    iput-object v0, p0, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;->randomNumber_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$18900()Lwallet/core/jni/proto/Binance$ClaimHTLOrder;
    .locals 1

    .line 10794
    sget-object v0, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$ClaimHTLOrder;

    return-object v0
.end method

.method static synthetic access$19000(Lwallet/core/jni/proto/Binance$ClaimHTLOrder;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 10794
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;->setFrom(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$19100(Lwallet/core/jni/proto/Binance$ClaimHTLOrder;)V
    .locals 0

    .line 10794
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;->clearFrom()V

    return-void
.end method

.method static synthetic access$19200(Lwallet/core/jni/proto/Binance$ClaimHTLOrder;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 10794
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;->setSwapId(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$19300(Lwallet/core/jni/proto/Binance$ClaimHTLOrder;)V
    .locals 0

    .line 10794
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;->clearSwapId()V

    return-void
.end method

.method static synthetic access$19400(Lwallet/core/jni/proto/Binance$ClaimHTLOrder;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 10794
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;->setRandomNumber(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$19500(Lwallet/core/jni/proto/Binance$ClaimHTLOrder;)V
    .locals 0

    .line 10794
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;->clearRandomNumber()V

    return-void
.end method

.method private clearFrom()V
    .locals 1

    .line 10840
    invoke-static {}, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;->getDefaultInstance()Lwallet/core/jni/proto/Binance$ClaimHTLOrder;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;->getFrom()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;->from_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearRandomNumber()V
    .locals 1

    .line 10918
    invoke-static {}, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;->getDefaultInstance()Lwallet/core/jni/proto/Binance$ClaimHTLOrder;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;->getRandomNumber()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;->randomNumber_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearSwapId()V
    .locals 1

    .line 10879
    invoke-static {}, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;->getDefaultInstance()Lwallet/core/jni/proto/Binance$ClaimHTLOrder;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;->getSwapId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;->swapId_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Binance$ClaimHTLOrder;
    .locals 1

    .line 11207
    sget-object v0, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$ClaimHTLOrder;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Binance$ClaimHTLOrder$Builder;
    .locals 1

    .line 10996
    sget-object v0, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$ClaimHTLOrder;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Binance$ClaimHTLOrder$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Binance$ClaimHTLOrder;)Lwallet/core/jni/proto/Binance$ClaimHTLOrder$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 10999
    sget-object v0, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$ClaimHTLOrder;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$ClaimHTLOrder$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Binance$ClaimHTLOrder;
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

    .line 10973
    sget-object v0, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$ClaimHTLOrder;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$ClaimHTLOrder;
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

    .line 10979
    sget-object v0, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$ClaimHTLOrder;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$ClaimHTLOrder;
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

    .line 10937
    sget-object v0, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$ClaimHTLOrder;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$ClaimHTLOrder;
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

    .line 10944
    sget-object v0, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$ClaimHTLOrder;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Binance$ClaimHTLOrder;
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

    .line 10984
    sget-object v0, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$ClaimHTLOrder;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$ClaimHTLOrder;
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

    .line 10991
    sget-object v0, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$ClaimHTLOrder;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Binance$ClaimHTLOrder;
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

    .line 10961
    sget-object v0, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$ClaimHTLOrder;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$ClaimHTLOrder;
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

    .line 10968
    sget-object v0, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$ClaimHTLOrder;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Binance$ClaimHTLOrder;
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

    .line 10924
    sget-object v0, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$ClaimHTLOrder;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$ClaimHTLOrder;
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

    .line 10931
    sget-object v0, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$ClaimHTLOrder;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Binance$ClaimHTLOrder;
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

    .line 10949
    sget-object v0, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$ClaimHTLOrder;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$ClaimHTLOrder;
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

    .line 10956
    sget-object v0, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$ClaimHTLOrder;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Binance$ClaimHTLOrder;",
            ">;"
        }
    .end annotation

    .line 11213
    sget-object v0, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$ClaimHTLOrder;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
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

    .line 10827
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10829
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;->from_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setRandomNumber(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 10905
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10907
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;->randomNumber_:Lcom/google/protobuf/ByteString;

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

    .line 10866
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10868
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;->swapId_:Lcom/google/protobuf/ByteString;

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

    .line 11147
    sget-object p2, Lwallet/core/jni/proto/Binance$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 11191
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 11185
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 11170
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 11172
    const-class p2, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;

    monitor-enter p2

    .line 11173
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 11175
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$ClaimHTLOrder;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 11178
    sput-object p1, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;->PARSER:Lcom/google/protobuf/Parser;

    .line 11180
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

    .line 11167
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$ClaimHTLOrder;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "from_"

    aput-object v0, p1, p3

    const-string p3, "swapId_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "randomNumber_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\n\u0002\n\u0003\n"

    .line 11163
    sget-object p3, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$ClaimHTLOrder;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 11152
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Binance$ClaimHTLOrder$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Binance$ClaimHTLOrder$Builder;-><init>(Lwallet/core/jni/proto/Binance$1;)V

    return-object p1

    .line 11149
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;

    invoke-direct {p1}, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;-><init>()V

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

.method public getFrom()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 10816
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;->from_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getRandomNumber()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 10894
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;->randomNumber_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSwapId()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 10855
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$ClaimHTLOrder;->swapId_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method
