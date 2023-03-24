.class public final Lwallet/core/jni/proto/THORChainSwap$Asset;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "THORChainSwap.java"

# interfaces
.implements Lwallet/core/jni/proto/THORChainSwap$AssetOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/THORChainSwap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Asset"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/THORChainSwap$Asset$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/THORChainSwap$Asset;",
        "Lwallet/core/jni/proto/THORChainSwap$Asset$Builder;",
        ">;",
        "Lwallet/core/jni/proto/THORChainSwap$AssetOrBuilder;"
    }
.end annotation


# static fields
.field public static final CHAIN_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$Asset;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/THORChainSwap$Asset;",
            ">;"
        }
    .end annotation
.end field

.field public static final SYMBOL_FIELD_NUMBER:I = 0x2

.field public static final TOKEN_ID_FIELD_NUMBER:I = 0x3


# instance fields
.field private chain_:I

.field private symbol_:Ljava/lang/String;

.field private tokenId_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1419
    new-instance v0, Lwallet/core/jni/proto/THORChainSwap$Asset;

    invoke-direct {v0}, Lwallet/core/jni/proto/THORChainSwap$Asset;-><init>()V

    .line 1422
    sput-object v0, Lwallet/core/jni/proto/THORChainSwap$Asset;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$Asset;

    .line 1423
    const-class v1, Lwallet/core/jni/proto/THORChainSwap$Asset;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 858
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 859
    iput-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$Asset;->symbol_:Ljava/lang/String;

    .line 860
    iput-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$Asset;->tokenId_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1000(Lwallet/core/jni/proto/THORChainSwap$Asset;Lwallet/core/jni/proto/THORChainSwap$Chain;)V
    .locals 0

    .line 853
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/THORChainSwap$Asset;->setChain(Lwallet/core/jni/proto/THORChainSwap$Chain;)V

    return-void
.end method

.method static synthetic access$1100(Lwallet/core/jni/proto/THORChainSwap$Asset;)V
    .locals 0

    .line 853
    invoke-direct {p0}, Lwallet/core/jni/proto/THORChainSwap$Asset;->clearChain()V

    return-void
.end method

.method static synthetic access$1200(Lwallet/core/jni/proto/THORChainSwap$Asset;Ljava/lang/String;)V
    .locals 0

    .line 853
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/THORChainSwap$Asset;->setSymbol(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lwallet/core/jni/proto/THORChainSwap$Asset;)V
    .locals 0

    .line 853
    invoke-direct {p0}, Lwallet/core/jni/proto/THORChainSwap$Asset;->clearSymbol()V

    return-void
.end method

.method static synthetic access$1400(Lwallet/core/jni/proto/THORChainSwap$Asset;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 853
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/THORChainSwap$Asset;->setSymbolBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1500(Lwallet/core/jni/proto/THORChainSwap$Asset;Ljava/lang/String;)V
    .locals 0

    .line 853
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/THORChainSwap$Asset;->setTokenId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lwallet/core/jni/proto/THORChainSwap$Asset;)V
    .locals 0

    .line 853
    invoke-direct {p0}, Lwallet/core/jni/proto/THORChainSwap$Asset;->clearTokenId()V

    return-void
.end method

.method static synthetic access$1700(Lwallet/core/jni/proto/THORChainSwap$Asset;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 853
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/THORChainSwap$Asset;->setTokenIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$800()Lwallet/core/jni/proto/THORChainSwap$Asset;
    .locals 1

    .line 853
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$Asset;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$Asset;

    return-object v0
.end method

.method static synthetic access$900(Lwallet/core/jni/proto/THORChainSwap$Asset;I)V
    .locals 0

    .line 853
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/THORChainSwap$Asset;->setChainValue(I)V

    return-void
.end method

.method private clearChain()V
    .locals 1

    const/4 v0, 0x0

    .line 921
    iput v0, p0, Lwallet/core/jni/proto/THORChainSwap$Asset;->chain_:I

    return-void
.end method

.method private clearSymbol()V
    .locals 1

    .line 974
    invoke-static {}, Lwallet/core/jni/proto/THORChainSwap$Asset;->getDefaultInstance()Lwallet/core/jni/proto/THORChainSwap$Asset;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/THORChainSwap$Asset;->getSymbol()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$Asset;->symbol_:Ljava/lang/String;

    return-void
.end method

.method private clearTokenId()V
    .locals 1

    .line 1041
    invoke-static {}, Lwallet/core/jni/proto/THORChainSwap$Asset;->getDefaultInstance()Lwallet/core/jni/proto/THORChainSwap$Asset;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/THORChainSwap$Asset;->getTokenId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$Asset;->tokenId_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/THORChainSwap$Asset;
    .locals 1

    .line 1428
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$Asset;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$Asset;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/THORChainSwap$Asset$Builder;
    .locals 1

    .line 1133
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$Asset;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$Asset;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/THORChainSwap$Asset$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/THORChainSwap$Asset;)Lwallet/core/jni/proto/THORChainSwap$Asset$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 1136
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$Asset;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$Asset;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/THORChainSwap$Asset$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/THORChainSwap$Asset;
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

    .line 1110
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$Asset;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$Asset;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/THORChainSwap$Asset;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/THORChainSwap$Asset;
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

    .line 1116
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$Asset;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$Asset;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/THORChainSwap$Asset;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/THORChainSwap$Asset;
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

    .line 1074
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$Asset;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$Asset;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/THORChainSwap$Asset;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/THORChainSwap$Asset;
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

    .line 1081
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$Asset;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$Asset;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/THORChainSwap$Asset;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/THORChainSwap$Asset;
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

    .line 1121
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$Asset;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$Asset;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/THORChainSwap$Asset;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/THORChainSwap$Asset;
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

    .line 1128
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$Asset;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$Asset;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/THORChainSwap$Asset;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/THORChainSwap$Asset;
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

    .line 1098
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$Asset;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$Asset;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/THORChainSwap$Asset;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/THORChainSwap$Asset;
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

    .line 1105
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$Asset;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$Asset;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/THORChainSwap$Asset;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/THORChainSwap$Asset;
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

    .line 1061
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$Asset;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$Asset;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/THORChainSwap$Asset;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/THORChainSwap$Asset;
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

    .line 1068
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$Asset;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$Asset;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/THORChainSwap$Asset;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/THORChainSwap$Asset;
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

    .line 1086
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$Asset;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$Asset;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/THORChainSwap$Asset;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/THORChainSwap$Asset;
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

    .line 1093
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$Asset;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$Asset;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/THORChainSwap$Asset;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/THORChainSwap$Asset;",
            ">;"
        }
    .end annotation

    .line 1434
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$Asset;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$Asset;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setChain(Lwallet/core/jni/proto/THORChainSwap$Chain;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 909
    invoke-virtual {p1}, Lwallet/core/jni/proto/THORChainSwap$Chain;->getNumber()I

    move-result p1

    iput p1, p0, Lwallet/core/jni/proto/THORChainSwap$Asset;->chain_:I

    return-void
.end method

.method private setChainValue(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 898
    iput p1, p0, Lwallet/core/jni/proto/THORChainSwap$Asset;->chain_:I

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

    .line 961
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 963
    iput-object p1, p0, Lwallet/core/jni/proto/THORChainSwap$Asset;->symbol_:Ljava/lang/String;

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

    .line 986
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 987
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/THORChainSwap$Asset;->symbol_:Ljava/lang/String;

    return-void
.end method

.method private setTokenId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1028
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1030
    iput-object p1, p0, Lwallet/core/jni/proto/THORChainSwap$Asset;->tokenId_:Ljava/lang/String;

    return-void
.end method

.method private setTokenIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1053
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1054
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/THORChainSwap$Asset;->tokenId_:Ljava/lang/String;

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

    .line 1368
    sget-object p2, Lwallet/core/jni/proto/THORChainSwap$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1412
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 1406
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1391
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/THORChainSwap$Asset;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1393
    const-class p2, Lwallet/core/jni/proto/THORChainSwap$Asset;

    monitor-enter p2

    .line 1394
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/THORChainSwap$Asset;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1396
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/THORChainSwap$Asset;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$Asset;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1399
    sput-object p1, Lwallet/core/jni/proto/THORChainSwap$Asset;->PARSER:Lcom/google/protobuf/Parser;

    .line 1401
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

    .line 1388
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/THORChainSwap$Asset;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$Asset;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "chain_"

    aput-object v0, p1, p3

    const-string p3, "symbol_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "tokenId_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000c\u0002\u0208\u0003\u0208"

    .line 1384
    sget-object p3, Lwallet/core/jni/proto/THORChainSwap$Asset;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/THORChainSwap$Asset;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1373
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/THORChainSwap$Asset$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/THORChainSwap$Asset$Builder;-><init>(Lwallet/core/jni/proto/THORChainSwap$1;)V

    return-object p1

    .line 1370
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/THORChainSwap$Asset;

    invoke-direct {p1}, Lwallet/core/jni/proto/THORChainSwap$Asset;-><init>()V

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

.method public getChain()Lwallet/core/jni/proto/THORChainSwap$Chain;
    .locals 1

    .line 886
    iget v0, p0, Lwallet/core/jni/proto/THORChainSwap$Asset;->chain_:I

    invoke-static {v0}, Lwallet/core/jni/proto/THORChainSwap$Chain;->forNumber(I)Lwallet/core/jni/proto/THORChainSwap$Chain;

    move-result-object v0

    if-nez v0, :cond_0

    .line 887
    sget-object v0, Lwallet/core/jni/proto/THORChainSwap$Chain;->UNRECOGNIZED:Lwallet/core/jni/proto/THORChainSwap$Chain;

    :cond_0
    return-object v0
.end method

.method public getChainValue()I
    .locals 1

    .line 874
    iget v0, p0, Lwallet/core/jni/proto/THORChainSwap$Asset;->chain_:I

    return v0
.end method

.method public getSymbol()Ljava/lang/String;
    .locals 1

    .line 936
    iget-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$Asset;->symbol_:Ljava/lang/String;

    return-object v0
.end method

.method public getSymbolBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 949
    iget-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$Asset;->symbol_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTokenId()Ljava/lang/String;
    .locals 1

    .line 1003
    iget-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$Asset;->tokenId_:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1016
    iget-object v0, p0, Lwallet/core/jni/proto/THORChainSwap$Asset;->tokenId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
