.class public final Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Ripple.java"

# interfaces
.implements Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOfferOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Ripple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OperationNFTokenCreateOffer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;",
        "Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOfferOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;

.field public static final DESTINATION_FIELD_NUMBER:I = 0x2

.field public static final NFTOKEN_ID_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private destination_:Ljava/lang/String;

.field private nftokenId_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2401
    new-instance v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;

    invoke-direct {v0}, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;-><init>()V

    .line 2404
    sput-object v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;

    .line 2405
    const-class v1, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2026
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2027
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;->nftokenId_:Lcom/google/protobuf/ByteString;

    const-string v0, ""

    .line 2028
    iput-object v0, p0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;->destination_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3300()Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;
    .locals 1

    .line 2021
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;

    return-object v0
.end method

.method static synthetic access$3400(Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 2021
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;->setNftokenId(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3500(Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;)V
    .locals 0

    .line 2021
    invoke-direct {p0}, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;->clearNftokenId()V

    return-void
.end method

.method static synthetic access$3600(Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;Ljava/lang/String;)V
    .locals 0

    .line 2021
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;->setDestination(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3700(Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;)V
    .locals 0

    .line 2021
    invoke-direct {p0}, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;->clearDestination()V

    return-void
.end method

.method static synthetic access$3800(Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 2021
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;->setDestinationBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearDestination()V
    .locals 1

    .line 2119
    invoke-static {}, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;->getDefaultInstance()Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;->getDestination()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;->destination_:Ljava/lang/String;

    return-void
.end method

.method private clearNftokenId()V
    .locals 1

    .line 2066
    invoke-static {}, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;->getDefaultInstance()Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;->getNftokenId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;->nftokenId_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;
    .locals 1

    .line 2410
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer$Builder;
    .locals 1

    .line 2211
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;)Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 2214
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;
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

    .line 2188
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;
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

    .line 2194
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;
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

    .line 2152
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;
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

    .line 2159
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;
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

    .line 2199
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;
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

    .line 2206
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;
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

    .line 2176
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;
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

    .line 2183
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;
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

    .line 2139
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;
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

    .line 2146
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;
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

    .line 2164
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;
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

    .line 2171
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;",
            ">;"
        }
    .end annotation

    .line 2416
    sget-object v0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setDestination(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2106
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2108
    iput-object p1, p0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;->destination_:Ljava/lang/String;

    return-void
.end method

.method private setDestinationBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2131
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2132
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;->destination_:Ljava/lang/String;

    return-void
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

    .line 2053
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2055
    iput-object p1, p0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;->nftokenId_:Lcom/google/protobuf/ByteString;

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

    .line 2351
    sget-object p2, Lwallet/core/jni/proto/Ripple$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2394
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 2388
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 2373
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 2375
    const-class p2, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;

    monitor-enter p2

    .line 2376
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 2378
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2381
    sput-object p1, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;->PARSER:Lcom/google/protobuf/Parser;

    .line 2383
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

    .line 2370
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "nftokenId_"

    aput-object v0, p1, p3

    const-string p3, "destination_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\n\u0002\u0208"

    .line 2366
    sget-object p3, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2356
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer$Builder;-><init>(Lwallet/core/jni/proto/Ripple$1;)V

    return-object p1

    .line 2353
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;

    invoke-direct {p1}, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;-><init>()V

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

.method public getDestination()Ljava/lang/String;
    .locals 1

    .line 2081
    iget-object v0, p0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;->destination_:Ljava/lang/String;

    return-object v0
.end method

.method public getDestinationBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2094
    iget-object v0, p0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;->destination_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNftokenId()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2042
    iget-object v0, p0, Lwallet/core/jni/proto/Ripple$OperationNFTokenCreateOffer;->nftokenId_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method
