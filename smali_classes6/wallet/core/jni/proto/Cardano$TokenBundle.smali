.class public final Lwallet/core/jni/proto/Cardano$TokenBundle;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Cardano.java"

# interfaces
.implements Lwallet/core/jni/proto/Cardano$TokenBundleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cardano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TokenBundle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Cardano$TokenBundle$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Cardano$TokenBundle;",
        "Lwallet/core/jni/proto/Cardano$TokenBundle$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Cardano$TokenBundleOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TokenBundle;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Cardano$TokenBundle;",
            ">;"
        }
    .end annotation
.end field

.field public static final TOKEN_FIELD_NUMBER:I = 0x1


# instance fields
.field private token_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lwallet/core/jni/proto/Cardano$TokenAmount;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 3031
    new-instance v0, Lwallet/core/jni/proto/Cardano$TokenBundle;

    invoke-direct {v0}, Lwallet/core/jni/proto/Cardano$TokenBundle;-><init>()V

    .line 3034
    sput-object v0, Lwallet/core/jni/proto/Cardano$TokenBundle;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TokenBundle;

    .line 3035
    const-class v1, Lwallet/core/jni/proto/Cardano$TokenBundle;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2677
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2678
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cardano$TokenBundle;->token_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$4500()Lwallet/core/jni/proto/Cardano$TokenBundle;
    .locals 1

    .line 2672
    sget-object v0, Lwallet/core/jni/proto/Cardano$TokenBundle;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TokenBundle;

    return-object v0
.end method

.method static synthetic access$4600(Lwallet/core/jni/proto/Cardano$TokenBundle;ILwallet/core/jni/proto/Cardano$TokenAmount;)V
    .locals 0

    .line 2672
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Cardano$TokenBundle;->setToken(ILwallet/core/jni/proto/Cardano$TokenAmount;)V

    return-void
.end method

.method static synthetic access$4700(Lwallet/core/jni/proto/Cardano$TokenBundle;Lwallet/core/jni/proto/Cardano$TokenAmount;)V
    .locals 0

    .line 2672
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cardano$TokenBundle;->addToken(Lwallet/core/jni/proto/Cardano$TokenAmount;)V

    return-void
.end method

.method static synthetic access$4800(Lwallet/core/jni/proto/Cardano$TokenBundle;ILwallet/core/jni/proto/Cardano$TokenAmount;)V
    .locals 0

    .line 2672
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Cardano$TokenBundle;->addToken(ILwallet/core/jni/proto/Cardano$TokenAmount;)V

    return-void
.end method

.method static synthetic access$4900(Lwallet/core/jni/proto/Cardano$TokenBundle;Ljava/lang/Iterable;)V
    .locals 0

    .line 2672
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cardano$TokenBundle;->addAllToken(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$5000(Lwallet/core/jni/proto/Cardano$TokenBundle;)V
    .locals 0

    .line 2672
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$TokenBundle;->clearToken()V

    return-void
.end method

.method static synthetic access$5100(Lwallet/core/jni/proto/Cardano$TokenBundle;I)V
    .locals 0

    .line 2672
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cardano$TokenBundle;->removeToken(I)V

    return-void
.end method

.method private addAllToken(Ljava/lang/Iterable;)V
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
            "Lwallet/core/jni/proto/Cardano$TokenAmount;",
            ">;)V"
        }
    .end annotation

    .line 2756
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$TokenBundle;->ensureTokenIsMutable()V

    .line 2757
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TokenBundle;->token_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addToken(ILwallet/core/jni/proto/Cardano$TokenAmount;)V
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

    .line 2747
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2748
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$TokenBundle;->ensureTokenIsMutable()V

    .line 2749
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TokenBundle;->token_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addToken(Lwallet/core/jni/proto/Cardano$TokenAmount;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2738
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2739
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$TokenBundle;->ensureTokenIsMutable()V

    .line 2740
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TokenBundle;->token_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearToken()V
    .locals 1

    .line 2764
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cardano$TokenBundle;->token_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureTokenIsMutable()V
    .locals 2

    .line 2718
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TokenBundle;->token_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2719
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2721
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cardano$TokenBundle;->token_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Cardano$TokenBundle;
    .locals 1

    .line 3040
    sget-object v0, Lwallet/core/jni/proto/Cardano$TokenBundle;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TokenBundle;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Cardano$TokenBundle$Builder;
    .locals 1

    .line 2849
    sget-object v0, Lwallet/core/jni/proto/Cardano$TokenBundle;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TokenBundle;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Cardano$TokenBundle$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Cardano$TokenBundle;)Lwallet/core/jni/proto/Cardano$TokenBundle$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 2852
    sget-object v0, Lwallet/core/jni/proto/Cardano$TokenBundle;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TokenBundle;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$TokenBundle$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Cardano$TokenBundle;
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

    .line 2826
    sget-object v0, Lwallet/core/jni/proto/Cardano$TokenBundle;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TokenBundle;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$TokenBundle;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cardano$TokenBundle;
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

    .line 2832
    sget-object v0, Lwallet/core/jni/proto/Cardano$TokenBundle;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TokenBundle;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$TokenBundle;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cardano$TokenBundle;
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

    .line 2790
    sget-object v0, Lwallet/core/jni/proto/Cardano$TokenBundle;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TokenBundle;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$TokenBundle;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cardano$TokenBundle;
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

    .line 2797
    sget-object v0, Lwallet/core/jni/proto/Cardano$TokenBundle;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TokenBundle;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$TokenBundle;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Cardano$TokenBundle;
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

    .line 2837
    sget-object v0, Lwallet/core/jni/proto/Cardano$TokenBundle;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TokenBundle;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$TokenBundle;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cardano$TokenBundle;
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

    .line 2844
    sget-object v0, Lwallet/core/jni/proto/Cardano$TokenBundle;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TokenBundle;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$TokenBundle;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Cardano$TokenBundle;
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

    .line 2814
    sget-object v0, Lwallet/core/jni/proto/Cardano$TokenBundle;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TokenBundle;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$TokenBundle;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cardano$TokenBundle;
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

    .line 2821
    sget-object v0, Lwallet/core/jni/proto/Cardano$TokenBundle;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TokenBundle;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$TokenBundle;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Cardano$TokenBundle;
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

    .line 2777
    sget-object v0, Lwallet/core/jni/proto/Cardano$TokenBundle;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TokenBundle;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$TokenBundle;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cardano$TokenBundle;
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

    .line 2784
    sget-object v0, Lwallet/core/jni/proto/Cardano$TokenBundle;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TokenBundle;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$TokenBundle;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Cardano$TokenBundle;
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

    .line 2802
    sget-object v0, Lwallet/core/jni/proto/Cardano$TokenBundle;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TokenBundle;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$TokenBundle;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cardano$TokenBundle;
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

    .line 2809
    sget-object v0, Lwallet/core/jni/proto/Cardano$TokenBundle;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TokenBundle;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$TokenBundle;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Cardano$TokenBundle;",
            ">;"
        }
    .end annotation

    .line 3046
    sget-object v0, Lwallet/core/jni/proto/Cardano$TokenBundle;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TokenBundle;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeToken(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 2770
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$TokenBundle;->ensureTokenIsMutable()V

    .line 2771
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TokenBundle;->token_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setToken(ILwallet/core/jni/proto/Cardano$TokenAmount;)V
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

    .line 2730
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2731
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$TokenBundle;->ensureTokenIsMutable()V

    .line 2732
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TokenBundle;->token_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

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

    .line 2982
    sget-object p2, Lwallet/core/jni/proto/Cardano$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 3024
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 3018
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 3003
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Cardano$TokenBundle;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 3005
    const-class p2, Lwallet/core/jni/proto/Cardano$TokenBundle;

    monitor-enter p2

    .line 3006
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Cardano$TokenBundle;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 3008
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Cardano$TokenBundle;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TokenBundle;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3011
    sput-object p1, Lwallet/core/jni/proto/Cardano$TokenBundle;->PARSER:Lcom/google/protobuf/Parser;

    .line 3013
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

    .line 3000
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Cardano$TokenBundle;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TokenBundle;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "token_"

    aput-object v0, p1, p3

    .line 2990
    const-class p3, Lwallet/core/jni/proto/Cardano$TokenAmount;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    .line 2996
    sget-object p3, Lwallet/core/jni/proto/Cardano$TokenBundle;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$TokenBundle;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2987
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Cardano$TokenBundle$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Cardano$TokenBundle$Builder;-><init>(Lwallet/core/jni/proto/Cardano$1;)V

    return-object p1

    .line 2984
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Cardano$TokenBundle;

    invoke-direct {p1}, Lwallet/core/jni/proto/Cardano$TokenBundle;-><init>()V

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

.method public getToken(I)Lwallet/core/jni/proto/Cardano$TokenAmount;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 2708
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TokenBundle;->token_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cardano$TokenAmount;

    return-object p1
.end method

.method public getTokenCount()I
    .locals 1

    .line 2701
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TokenBundle;->token_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTokenList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lwallet/core/jni/proto/Cardano$TokenAmount;",
            ">;"
        }
    .end annotation

    .line 2687
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TokenBundle;->token_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getTokenOrBuilder(I)Lwallet/core/jni/proto/Cardano$TokenAmountOrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 2715
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TokenBundle;->token_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cardano$TokenAmountOrBuilder;

    return-object p1
.end method

.method public getTokenOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lwallet/core/jni/proto/Cardano$TokenAmountOrBuilder;",
            ">;"
        }
    .end annotation

    .line 2694
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$TokenBundle;->token_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method
