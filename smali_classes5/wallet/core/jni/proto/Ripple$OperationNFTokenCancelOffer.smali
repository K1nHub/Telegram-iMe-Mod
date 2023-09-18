.class public final Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Ripple.java"

# interfaces
.implements Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOfferOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Ripple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OperationNFTokenCancelOffer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;",
        "Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOfferOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;",
            ">;"
        }
    .end annotation
.end field

.field public static final TOKEN_OFFERS_FIELD_NUMBER:I = 0x1


# instance fields
.field private tokenOffers_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 3100
    new-instance v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;

    invoke-direct {v0}, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;-><init>()V

    .line 3103
    sput-object v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;

    .line 3104
    const-class v1, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2746
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2747
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;->tokenOffers_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$4400()Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;
    .locals 1

    .line 2741
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;

    return-object v0
.end method

.method static synthetic access$4500(Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;ILcom/google/protobuf/ByteString;)V
    .locals 0

    .line 2741
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;->setTokenOffers(ILcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4600(Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 2741
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;->addTokenOffers(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4700(Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;Ljava/lang/Iterable;)V
    .locals 0

    .line 2741
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;->addAllTokenOffers(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$4800(Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;)V
    .locals 0

    .line 2741
    invoke-direct {p0}, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;->clearTokenOffers()V

    return-void
.end method

.method private addAllTokenOffers(Ljava/lang/Iterable;)V
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
            "Lcom/google/protobuf/ByteString;",
            ">;)V"
        }
    .end annotation

    .line 2834
    invoke-direct {p0}, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;->ensureTokenOffersIsMutable()V

    .line 2835
    iget-object v0, p0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;->tokenOffers_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addTokenOffers(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2820
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2821
    invoke-direct {p0}, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;->ensureTokenOffersIsMutable()V

    .line 2822
    iget-object v0, p0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;->tokenOffers_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearTokenOffers()V
    .locals 1

    .line 2846
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;->tokenOffers_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureTokenOffersIsMutable()V
    .locals 2

    .line 2790
    iget-object v0, p0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;->tokenOffers_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2791
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2793
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;->tokenOffers_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;
    .locals 1

    .line 3109
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer$Builder;
    .locals 1

    .line 2924
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;)Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 2927
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;
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

    .line 2901
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;
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

    .line 2907
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;
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

    .line 2865
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;
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

    .line 2872
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;
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

    .line 2912
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;
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

    .line 2919
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;
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

    .line 2889
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;
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

    .line 2896
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;
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

    .line 2852
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;
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

    .line 2859
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;
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

    .line 2877
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;
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

    .line 2884
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;",
            ">;"
        }
    .end annotation

    .line 3115
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setTokenOffers(ILcom/google/protobuf/ByteString;)V
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

    .line 2807
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2808
    invoke-direct {p0}, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;->ensureTokenOffersIsMutable()V

    .line 2809
    iget-object v0, p0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;->tokenOffers_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

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

    .line 3052
    sget-object p2, Lwallet/core/jni/proto/Ripple$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 3093
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 3087
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 3072
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 3074
    const-class p2, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;

    monitor-enter p2

    .line 3075
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 3077
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3080
    sput-object p1, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;->PARSER:Lcom/google/protobuf/Parser;

    .line 3082
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

    .line 3069
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;

    return-object p1

    :pswitch_4
    new-array p1, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "tokenOffers_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001c"

    .line 3065
    sget-object p3, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3057
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer$Builder;-><init>(Lwallet/core/jni/proto/Ripple$1;)V

    return-object p1

    .line 3054
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;

    invoke-direct {p1}, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;-><init>()V

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

.method public getTokenOffers(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 2787
    iget-object v0, p0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;->tokenOffers_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method public getTokenOffersCount()I
    .locals 1

    .line 2774
    iget-object v0, p0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;->tokenOffers_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTokenOffersList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    .line 2762
    iget-object v0, p0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCancelOffer;->tokenOffers_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method
