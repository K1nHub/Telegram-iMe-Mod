.class public final Lwallet/core/jni/proto/FIO$PublicAddress;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "FIO.java"

# interfaces
.implements Lwallet/core/jni/proto/FIO$PublicAddressOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/FIO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PublicAddress"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/FIO$PublicAddress$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/FIO$PublicAddress;",
        "Lwallet/core/jni/proto/FIO$PublicAddress$Builder;",
        ">;",
        "Lwallet/core/jni/proto/FIO$PublicAddressOrBuilder;"
    }
.end annotation


# static fields
.field public static final ADDRESS_FIELD_NUMBER:I = 0x2

.field public static final COIN_SYMBOL_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$PublicAddress;

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/FIO$PublicAddress;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private address_:Ljava/lang/String;

.field private coinSymbol_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 499
    new-instance v0, Lwallet/core/jni/proto/FIO$PublicAddress;

    invoke-direct {v0}, Lwallet/core/jni/proto/FIO$PublicAddress;-><init>()V

    .line 502
    sput-object v0, Lwallet/core/jni/proto/FIO$PublicAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$PublicAddress;

    .line 503
    const-class v1, Lwallet/core/jni/proto/FIO$PublicAddress;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 68
    iput-object v0, p0, Lwallet/core/jni/proto/FIO$PublicAddress;->coinSymbol_:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lwallet/core/jni/proto/FIO$PublicAddress;->address_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lwallet/core/jni/proto/FIO$PublicAddress;
    .locals 1

    .line 62
    sget-object v0, Lwallet/core/jni/proto/FIO$PublicAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$PublicAddress;

    return-object v0
.end method

.method static synthetic access$100(Lwallet/core/jni/proto/FIO$PublicAddress;Ljava/lang/String;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/FIO$PublicAddress;->setCoinSymbol(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lwallet/core/jni/proto/FIO$PublicAddress;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lwallet/core/jni/proto/FIO$PublicAddress;->clearCoinSymbol()V

    return-void
.end method

.method static synthetic access$300(Lwallet/core/jni/proto/FIO$PublicAddress;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/FIO$PublicAddress;->setCoinSymbolBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lwallet/core/jni/proto/FIO$PublicAddress;Ljava/lang/String;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/FIO$PublicAddress;->setAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lwallet/core/jni/proto/FIO$PublicAddress;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lwallet/core/jni/proto/FIO$PublicAddress;->clearAddress()V

    return-void
.end method

.method static synthetic access$600(Lwallet/core/jni/proto/FIO$PublicAddress;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/FIO$PublicAddress;->setAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearAddress()V
    .locals 1

    .line 188
    invoke-static {}, Lwallet/core/jni/proto/FIO$PublicAddress;->getDefaultInstance()Lwallet/core/jni/proto/FIO$PublicAddress;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$PublicAddress;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/FIO$PublicAddress;->address_:Ljava/lang/String;

    return-void
.end method

.method private clearCoinSymbol()V
    .locals 1

    .line 121
    invoke-static {}, Lwallet/core/jni/proto/FIO$PublicAddress;->getDefaultInstance()Lwallet/core/jni/proto/FIO$PublicAddress;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/FIO$PublicAddress;->getCoinSymbol()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/FIO$PublicAddress;->coinSymbol_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/FIO$PublicAddress;
    .locals 1

    .line 508
    sget-object v0, Lwallet/core/jni/proto/FIO$PublicAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$PublicAddress;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/FIO$PublicAddress$Builder;
    .locals 1

    .line 280
    sget-object v0, Lwallet/core/jni/proto/FIO$PublicAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$PublicAddress;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/FIO$PublicAddress$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/FIO$PublicAddress;)Lwallet/core/jni/proto/FIO$PublicAddress$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 283
    sget-object v0, Lwallet/core/jni/proto/FIO$PublicAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$PublicAddress;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$PublicAddress$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/FIO$PublicAddress;
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

    .line 257
    sget-object v0, Lwallet/core/jni/proto/FIO$PublicAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$PublicAddress;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$PublicAddress;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/FIO$PublicAddress;
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

    .line 263
    sget-object v0, Lwallet/core/jni/proto/FIO$PublicAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$PublicAddress;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$PublicAddress;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/FIO$PublicAddress;
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

    .line 221
    sget-object v0, Lwallet/core/jni/proto/FIO$PublicAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$PublicAddress;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$PublicAddress;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/FIO$PublicAddress;
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

    .line 228
    sget-object v0, Lwallet/core/jni/proto/FIO$PublicAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$PublicAddress;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$PublicAddress;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/FIO$PublicAddress;
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

    .line 268
    sget-object v0, Lwallet/core/jni/proto/FIO$PublicAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$PublicAddress;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$PublicAddress;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/FIO$PublicAddress;
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

    .line 275
    sget-object v0, Lwallet/core/jni/proto/FIO$PublicAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$PublicAddress;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$PublicAddress;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/FIO$PublicAddress;
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

    .line 245
    sget-object v0, Lwallet/core/jni/proto/FIO$PublicAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$PublicAddress;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$PublicAddress;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/FIO$PublicAddress;
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

    .line 252
    sget-object v0, Lwallet/core/jni/proto/FIO$PublicAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$PublicAddress;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$PublicAddress;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/FIO$PublicAddress;
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

    .line 208
    sget-object v0, Lwallet/core/jni/proto/FIO$PublicAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$PublicAddress;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$PublicAddress;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/FIO$PublicAddress;
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

    .line 215
    sget-object v0, Lwallet/core/jni/proto/FIO$PublicAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$PublicAddress;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$PublicAddress;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/FIO$PublicAddress;
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

    .line 233
    sget-object v0, Lwallet/core/jni/proto/FIO$PublicAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$PublicAddress;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$PublicAddress;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/FIO$PublicAddress;
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

    .line 240
    sget-object v0, Lwallet/core/jni/proto/FIO$PublicAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$PublicAddress;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/FIO$PublicAddress;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/FIO$PublicAddress;",
            ">;"
        }
    .end annotation

    .line 514
    sget-object v0, Lwallet/core/jni/proto/FIO$PublicAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$PublicAddress;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAddress(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 175
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    iput-object p1, p0, Lwallet/core/jni/proto/FIO$PublicAddress;->address_:Ljava/lang/String;

    return-void
.end method

.method private setAddressBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 200
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 201
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/FIO$PublicAddress;->address_:Ljava/lang/String;

    return-void
.end method

.method private setCoinSymbol(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 108
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    iput-object p1, p0, Lwallet/core/jni/proto/FIO$PublicAddress;->coinSymbol_:Ljava/lang/String;

    return-void
.end method

.method private setCoinSymbolBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 133
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 134
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/FIO$PublicAddress;->coinSymbol_:Ljava/lang/String;

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

    .line 449
    sget-object p2, Lwallet/core/jni/proto/FIO$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 492
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 486
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 471
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/FIO$PublicAddress;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 473
    const-class p2, Lwallet/core/jni/proto/FIO$PublicAddress;

    monitor-enter p2

    .line 474
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/FIO$PublicAddress;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 476
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/FIO$PublicAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$PublicAddress;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 479
    sput-object p1, Lwallet/core/jni/proto/FIO$PublicAddress;->PARSER:Lcom/google/protobuf/Parser;

    .line 481
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

    .line 468
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/FIO$PublicAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$PublicAddress;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "coinSymbol_"

    aput-object v0, p1, p3

    const-string p3, "address_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0208\u0002\u0208"

    .line 464
    sget-object p3, Lwallet/core/jni/proto/FIO$PublicAddress;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/FIO$PublicAddress;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 454
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/FIO$PublicAddress$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/FIO$PublicAddress$Builder;-><init>(Lwallet/core/jni/proto/FIO$1;)V

    return-object p1

    .line 451
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/FIO$PublicAddress;

    invoke-direct {p1}, Lwallet/core/jni/proto/FIO$PublicAddress;-><init>()V

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

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lwallet/core/jni/proto/FIO$PublicAddress;->address_:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 163
    iget-object v0, p0, Lwallet/core/jni/proto/FIO$PublicAddress;->address_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getCoinSymbol()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lwallet/core/jni/proto/FIO$PublicAddress;->coinSymbol_:Ljava/lang/String;

    return-object v0
.end method

.method public getCoinSymbolBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 96
    iget-object v0, p0, Lwallet/core/jni/proto/FIO$PublicAddress;->coinSymbol_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
