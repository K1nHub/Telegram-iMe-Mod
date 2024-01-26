.class public final Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Ripple.java"

# interfaces
.implements Lwallet/core/jni/proto/Ripple$OperationNFTokenBurnOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Ripple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OperationNFTokenBurn"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;",
        "Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Ripple$OperationNFTokenBurnOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;

.field public static final NFTOKEN_ID_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private nftokenId_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1961
    new-instance v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;

    invoke-direct {v0}, Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;-><init>()V

    .line 1964
    sput-object v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;

    .line 1965
    const-class v1, Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1725
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1726
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;->nftokenId_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$2900()Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;
    .locals 1

    .line 1720
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;

    return-object v0
.end method

.method static synthetic access$3000(Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1720
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;->setNftokenId(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3100(Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;)V
    .locals 0

    .line 1720
    invoke-direct {p0}, Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;->clearNftokenId()V

    return-void
.end method

.method private clearNftokenId()V
    .locals 1

    .line 1764
    invoke-static {}, Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;->getDefaultInstance()Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;->getNftokenId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;->nftokenId_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;
    .locals 1

    .line 1970
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn$Builder;
    .locals 1

    .line 1842
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;)Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 1845
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;
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

    .line 1819
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;
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

    .line 1825
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;
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

    .line 1783
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;
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

    .line 1790
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;
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

    .line 1830
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;
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

    .line 1837
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;
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

    .line 1807
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;
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

    .line 1814
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;
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

    .line 1770
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;
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

    .line 1777
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;
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

    .line 1795
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;
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

    .line 1802
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;",
            ">;"
        }
    .end annotation

    .line 1976
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setNftokenId(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1751
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1753
    iput-object p1, p0, Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;->nftokenId_:Lcom/google/protobuf/ByteString;

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

    .line 1913
    sget-object p2, Lwallet/core/jni/proto/Ripple$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1954
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 1948
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1933
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1935
    const-class p2, Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;

    monitor-enter p2

    .line 1936
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1938
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1941
    sput-object p1, Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;->PARSER:Lcom/google/protobuf/Parser;

    .line 1943
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

    .line 1930
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;

    return-object p1

    :pswitch_4
    new-array p1, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "nftokenId_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\n"

    .line 1926
    sget-object p3, Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1918
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn$Builder;-><init>(Lwallet/core/jni/proto/Ripple$1;)V

    return-object p1

    .line 1915
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;

    invoke-direct {p1}, Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;-><init>()V

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

.method public getNftokenId()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1740
    iget-object v0, p0, Lwallet/core/jni/proto/Ripple$OperationNFTokenBurn;->nftokenId_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method
