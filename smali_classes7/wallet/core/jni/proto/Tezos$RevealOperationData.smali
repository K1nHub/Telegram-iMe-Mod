.class public final Lwallet/core/jni/proto/Tezos$RevealOperationData;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Tezos.java"

# interfaces
.implements Lwallet/core/jni/proto/Tezos$RevealOperationDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Tezos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RevealOperationData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Tezos$RevealOperationData$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Tezos$RevealOperationData;",
        "Lwallet/core/jni/proto/Tezos$RevealOperationData$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Tezos$RevealOperationDataOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$RevealOperationData;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Tezos$RevealOperationData;",
            ">;"
        }
    .end annotation
.end field

.field public static final PUBLIC_KEY_FIELD_NUMBER:I = 0x1


# instance fields
.field private publicKey_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 6182
    new-instance v0, Lwallet/core/jni/proto/Tezos$RevealOperationData;

    invoke-direct {v0}, Lwallet/core/jni/proto/Tezos$RevealOperationData;-><init>()V

    .line 6185
    sput-object v0, Lwallet/core/jni/proto/Tezos$RevealOperationData;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$RevealOperationData;

    .line 6186
    const-class v1, Lwallet/core/jni/proto/Tezos$RevealOperationData;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5969
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 5970
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Tezos$RevealOperationData;->publicKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$11600()Lwallet/core/jni/proto/Tezos$RevealOperationData;
    .locals 1

    .line 5964
    sget-object v0, Lwallet/core/jni/proto/Tezos$RevealOperationData;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$RevealOperationData;

    return-object v0
.end method

.method static synthetic access$11700(Lwallet/core/jni/proto/Tezos$RevealOperationData;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 5964
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tezos$RevealOperationData;->setPublicKey(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$11800(Lwallet/core/jni/proto/Tezos$RevealOperationData;)V
    .locals 0

    .line 5964
    invoke-direct {p0}, Lwallet/core/jni/proto/Tezos$RevealOperationData;->clearPublicKey()V

    return-void
.end method

.method private clearPublicKey()V
    .locals 1

    .line 5996
    invoke-static {}, Lwallet/core/jni/proto/Tezos$RevealOperationData;->getDefaultInstance()Lwallet/core/jni/proto/Tezos$RevealOperationData;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tezos$RevealOperationData;->getPublicKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Tezos$RevealOperationData;->publicKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Tezos$RevealOperationData;
    .locals 1

    .line 6191
    sget-object v0, Lwallet/core/jni/proto/Tezos$RevealOperationData;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$RevealOperationData;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Tezos$RevealOperationData$Builder;
    .locals 1

    .line 6074
    sget-object v0, Lwallet/core/jni/proto/Tezos$RevealOperationData;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$RevealOperationData;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Tezos$RevealOperationData$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Tezos$RevealOperationData;)Lwallet/core/jni/proto/Tezos$RevealOperationData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 6077
    sget-object v0, Lwallet/core/jni/proto/Tezos$RevealOperationData;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$RevealOperationData;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$RevealOperationData$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Tezos$RevealOperationData;
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

    .line 6051
    sget-object v0, Lwallet/core/jni/proto/Tezos$RevealOperationData;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$RevealOperationData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$RevealOperationData;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tezos$RevealOperationData;
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

    .line 6057
    sget-object v0, Lwallet/core/jni/proto/Tezos$RevealOperationData;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$RevealOperationData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$RevealOperationData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tezos$RevealOperationData;
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

    .line 6015
    sget-object v0, Lwallet/core/jni/proto/Tezos$RevealOperationData;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$RevealOperationData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$RevealOperationData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tezos$RevealOperationData;
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

    .line 6022
    sget-object v0, Lwallet/core/jni/proto/Tezos$RevealOperationData;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$RevealOperationData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$RevealOperationData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Tezos$RevealOperationData;
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

    .line 6062
    sget-object v0, Lwallet/core/jni/proto/Tezos$RevealOperationData;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$RevealOperationData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$RevealOperationData;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tezos$RevealOperationData;
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

    .line 6069
    sget-object v0, Lwallet/core/jni/proto/Tezos$RevealOperationData;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$RevealOperationData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$RevealOperationData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Tezos$RevealOperationData;
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

    .line 6039
    sget-object v0, Lwallet/core/jni/proto/Tezos$RevealOperationData;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$RevealOperationData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$RevealOperationData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tezos$RevealOperationData;
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

    .line 6046
    sget-object v0, Lwallet/core/jni/proto/Tezos$RevealOperationData;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$RevealOperationData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$RevealOperationData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Tezos$RevealOperationData;
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

    .line 6002
    sget-object v0, Lwallet/core/jni/proto/Tezos$RevealOperationData;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$RevealOperationData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$RevealOperationData;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tezos$RevealOperationData;
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

    .line 6009
    sget-object v0, Lwallet/core/jni/proto/Tezos$RevealOperationData;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$RevealOperationData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$RevealOperationData;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Tezos$RevealOperationData;
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

    .line 6027
    sget-object v0, Lwallet/core/jni/proto/Tezos$RevealOperationData;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$RevealOperationData;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$RevealOperationData;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tezos$RevealOperationData;
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

    .line 6034
    sget-object v0, Lwallet/core/jni/proto/Tezos$RevealOperationData;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$RevealOperationData;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tezos$RevealOperationData;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Tezos$RevealOperationData;",
            ">;"
        }
    .end annotation

    .line 6197
    sget-object v0, Lwallet/core/jni/proto/Tezos$RevealOperationData;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$RevealOperationData;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setPublicKey(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5987
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5989
    iput-object p1, p0, Lwallet/core/jni/proto/Tezos$RevealOperationData;->publicKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
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

    .line 6134
    sget-object p2, Lwallet/core/jni/proto/Tezos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 6175
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 6169
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 6154
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Tezos$RevealOperationData;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 6156
    const-class p2, Lwallet/core/jni/proto/Tezos$RevealOperationData;

    monitor-enter p2

    .line 6157
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Tezos$RevealOperationData;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 6159
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Tezos$RevealOperationData;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$RevealOperationData;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 6162
    sput-object p1, Lwallet/core/jni/proto/Tezos$RevealOperationData;->PARSER:Lcom/google/protobuf/Parser;

    .line 6164
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

    .line 6151
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Tezos$RevealOperationData;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$RevealOperationData;

    return-object p1

    :pswitch_4
    new-array p1, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "publicKey_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\n"

    .line 6147
    sget-object p3, Lwallet/core/jni/proto/Tezos$RevealOperationData;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tezos$RevealOperationData;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6139
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Tezos$RevealOperationData$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Tezos$RevealOperationData$Builder;-><init>(Lwallet/core/jni/proto/Tezos$1;)V

    return-object p1

    .line 6136
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Tezos$RevealOperationData;

    invoke-direct {p1}, Lwallet/core/jni/proto/Tezos$RevealOperationData;-><init>()V

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

.method public getPublicKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5980
    iget-object v0, p0, Lwallet/core/jni/proto/Tezos$RevealOperationData;->publicKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method
