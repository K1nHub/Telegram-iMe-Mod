.class public final Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Cosmos.java"

# interfaces
.implements Lwallet/core/jni/proto/Cosmos$Message$AuthRevokeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cosmos$Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AuthRevoke"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;",
        "Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Cosmos$Message$AuthRevokeOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;

.field public static final GRANTEE_FIELD_NUMBER:I = 0x2

.field public static final GRANTER_FIELD_NUMBER:I = 0x1

.field public static final MSG_TYPE_URL_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private grantee_:Ljava/lang/String;

.field private granter_:Ljava/lang/String;

.field private msgTypeUrl_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16096
    new-instance v0, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;

    invoke-direct {v0}, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;-><init>()V

    .line 16099
    sput-object v0, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;

    .line 16100
    const-class v1, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 15646
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 15647
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->granter_:Ljava/lang/String;

    .line 15648
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->grantee_:Ljava/lang/String;

    .line 15649
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->msgTypeUrl_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$28300()Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;
    .locals 1

    .line 15641
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;

    return-object v0
.end method

.method static synthetic access$28400(Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;Ljava/lang/String;)V
    .locals 0

    .line 15641
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->setGranter(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$28500(Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;)V
    .locals 0

    .line 15641
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->clearGranter()V

    return-void
.end method

.method static synthetic access$28600(Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 15641
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->setGranterBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$28700(Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;Ljava/lang/String;)V
    .locals 0

    .line 15641
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->setGrantee(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$28800(Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;)V
    .locals 0

    .line 15641
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->clearGrantee()V

    return-void
.end method

.method static synthetic access$28900(Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 15641
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->setGranteeBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$29000(Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;Ljava/lang/String;)V
    .locals 0

    .line 15641
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->setMsgTypeUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$29100(Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;)V
    .locals 0

    .line 15641
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->clearMsgTypeUrl()V

    return-void
.end method

.method static synthetic access$29200(Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 15641
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->setMsgTypeUrlBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearGrantee()V
    .locals 1

    .line 15732
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->getGrantee()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->grantee_:Ljava/lang/String;

    return-void
.end method

.method private clearGranter()V
    .locals 1

    .line 15685
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->getGranter()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->granter_:Ljava/lang/String;

    return-void
.end method

.method private clearMsgTypeUrl()V
    .locals 1

    .line 15779
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->getMsgTypeUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->msgTypeUrl_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;
    .locals 1

    .line 16105
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke$Builder;
    .locals 1

    .line 15867
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;)Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 15870
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;
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

    .line 15844
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;
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

    .line 15850
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;
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

    .line 15808
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;
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

    .line 15815
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;
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

    .line 15855
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;
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

    .line 15862
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;
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

    .line 15832
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;
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

    .line 15839
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;
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

    .line 15795
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;
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

    .line 15802
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;
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

    .line 15820
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;
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

    .line 15827
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;",
            ">;"
        }
    .end annotation

    .line 16111
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setGrantee(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 15723
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15725
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->grantee_:Ljava/lang/String;

    return-void
.end method

.method private setGranteeBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 15740
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 15741
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->grantee_:Ljava/lang/String;

    return-void
.end method

.method private setGranter(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 15676
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15678
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->granter_:Ljava/lang/String;

    return-void
.end method

.method private setGranterBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 15693
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 15694
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->granter_:Ljava/lang/String;

    return-void
.end method

.method private setMsgTypeUrl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 15770
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15772
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->msgTypeUrl_:Ljava/lang/String;

    return-void
.end method

.method private setMsgTypeUrlBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 15787
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 15788
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->msgTypeUrl_:Ljava/lang/String;

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

    .line 16045
    sget-object p2, Lwallet/core/jni/proto/Cosmos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 16089
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 16083
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 16068
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 16070
    const-class p2, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;

    monitor-enter p2

    .line 16071
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 16073
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 16076
    sput-object p1, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->PARSER:Lcom/google/protobuf/Parser;

    .line 16078
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

    .line 16065
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "granter_"

    aput-object v0, p1, p3

    const-string p3, "grantee_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "msgTypeUrl_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u0208"

    .line 16061
    sget-object p3, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 16050
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke$Builder;-><init>(Lwallet/core/jni/proto/Cosmos$1;)V

    return-object p1

    .line 16047
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;

    invoke-direct {p1}, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;-><init>()V

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

.method public getGrantee()Ljava/lang/String;
    .locals 1

    .line 15706
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->grantee_:Ljava/lang/String;

    return-object v0
.end method

.method public getGranteeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 15715
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->grantee_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getGranter()Ljava/lang/String;
    .locals 1

    .line 15659
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->granter_:Ljava/lang/String;

    return-object v0
.end method

.method public getGranterBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 15668
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->granter_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getMsgTypeUrl()Ljava/lang/String;
    .locals 1

    .line 15753
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->msgTypeUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgTypeUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 15762
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$AuthRevoke;->msgTypeUrl_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
