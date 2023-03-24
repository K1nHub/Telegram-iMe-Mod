.class public final Lwallet/core/jni/proto/Tron$SigningOutput;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Tron.java"

# interfaces
.implements Lwallet/core/jni/proto/Tron$SigningOutputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Tron;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SigningOutput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Tron$SigningOutput$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Tron$SigningOutput;",
        "Lwallet/core/jni/proto/Tron$SigningOutput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Tron$SigningOutputOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$SigningOutput;

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final JSON_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Tron$SigningOutput;",
            ">;"
        }
    .end annotation
.end field

.field public static final REF_BLOCK_BYTES_FIELD_NUMBER:I = 0x3

.field public static final REF_BLOCK_HASH_FIELD_NUMBER:I = 0x4

.field public static final SIGNATURE_FIELD_NUMBER:I = 0x2


# instance fields
.field private id_:Lcom/google/protobuf/ByteString;

.field private json_:Ljava/lang/String;

.field private refBlockBytes_:Lcom/google/protobuf/ByteString;

.field private refBlockHash_:Lcom/google/protobuf/ByteString;

.field private signature_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14348
    new-instance v0, Lwallet/core/jni/proto/Tron$SigningOutput;

    invoke-direct {v0}, Lwallet/core/jni/proto/Tron$SigningOutput;-><init>()V

    .line 14351
    sput-object v0, Lwallet/core/jni/proto/Tron$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$SigningOutput;

    .line 14352
    const-class v1, Lwallet/core/jni/proto/Tron$SigningOutput;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 13778
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 13779
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Tron$SigningOutput;->id_:Lcom/google/protobuf/ByteString;

    .line 13780
    iput-object v0, p0, Lwallet/core/jni/proto/Tron$SigningOutput;->signature_:Lcom/google/protobuf/ByteString;

    .line 13781
    iput-object v0, p0, Lwallet/core/jni/proto/Tron$SigningOutput;->refBlockBytes_:Lcom/google/protobuf/ByteString;

    .line 13782
    iput-object v0, p0, Lwallet/core/jni/proto/Tron$SigningOutput;->refBlockHash_:Lcom/google/protobuf/ByteString;

    const-string v0, ""

    .line 13783
    iput-object v0, p0, Lwallet/core/jni/proto/Tron$SigningOutput;->json_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$25300()Lwallet/core/jni/proto/Tron$SigningOutput;
    .locals 1

    .line 13773
    sget-object v0, Lwallet/core/jni/proto/Tron$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$SigningOutput;

    return-object v0
.end method

.method static synthetic access$25400(Lwallet/core/jni/proto/Tron$SigningOutput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 13773
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$SigningOutput;->setId(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$25500(Lwallet/core/jni/proto/Tron$SigningOutput;)V
    .locals 0

    .line 13773
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$SigningOutput;->clearId()V

    return-void
.end method

.method static synthetic access$25600(Lwallet/core/jni/proto/Tron$SigningOutput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 13773
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$SigningOutput;->setSignature(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$25700(Lwallet/core/jni/proto/Tron$SigningOutput;)V
    .locals 0

    .line 13773
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$SigningOutput;->clearSignature()V

    return-void
.end method

.method static synthetic access$25800(Lwallet/core/jni/proto/Tron$SigningOutput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 13773
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$SigningOutput;->setRefBlockBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$25900(Lwallet/core/jni/proto/Tron$SigningOutput;)V
    .locals 0

    .line 13773
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$SigningOutput;->clearRefBlockBytes()V

    return-void
.end method

.method static synthetic access$26000(Lwallet/core/jni/proto/Tron$SigningOutput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 13773
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$SigningOutput;->setRefBlockHash(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$26100(Lwallet/core/jni/proto/Tron$SigningOutput;)V
    .locals 0

    .line 13773
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$SigningOutput;->clearRefBlockHash()V

    return-void
.end method

.method static synthetic access$26200(Lwallet/core/jni/proto/Tron$SigningOutput;Ljava/lang/String;)V
    .locals 0

    .line 13773
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$SigningOutput;->setJson(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$26300(Lwallet/core/jni/proto/Tron$SigningOutput;)V
    .locals 0

    .line 13773
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$SigningOutput;->clearJson()V

    return-void
.end method

.method static synthetic access$26400(Lwallet/core/jni/proto/Tron$SigningOutput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 13773
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$SigningOutput;->setJsonBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearId()V
    .locals 1

    .line 13821
    invoke-static {}, Lwallet/core/jni/proto/Tron$SigningOutput;->getDefaultInstance()Lwallet/core/jni/proto/Tron$SigningOutput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$SigningOutput;->getId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Tron$SigningOutput;->id_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearJson()V
    .locals 1

    .line 13967
    invoke-static {}, Lwallet/core/jni/proto/Tron$SigningOutput;->getDefaultInstance()Lwallet/core/jni/proto/Tron$SigningOutput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$SigningOutput;->getJson()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Tron$SigningOutput;->json_:Ljava/lang/String;

    return-void
.end method

.method private clearRefBlockBytes()V
    .locals 1

    .line 13887
    invoke-static {}, Lwallet/core/jni/proto/Tron$SigningOutput;->getDefaultInstance()Lwallet/core/jni/proto/Tron$SigningOutput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$SigningOutput;->getRefBlockBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Tron$SigningOutput;->refBlockBytes_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearRefBlockHash()V
    .locals 1

    .line 13914
    invoke-static {}, Lwallet/core/jni/proto/Tron$SigningOutput;->getDefaultInstance()Lwallet/core/jni/proto/Tron$SigningOutput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$SigningOutput;->getRefBlockHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Tron$SigningOutput;->refBlockHash_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearSignature()V
    .locals 1

    .line 13860
    invoke-static {}, Lwallet/core/jni/proto/Tron$SigningOutput;->getDefaultInstance()Lwallet/core/jni/proto/Tron$SigningOutput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$SigningOutput;->getSignature()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Tron$SigningOutput;->signature_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Tron$SigningOutput;
    .locals 1

    .line 14357
    sget-object v0, Lwallet/core/jni/proto/Tron$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$SigningOutput;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Tron$SigningOutput$Builder;
    .locals 1

    .line 14059
    sget-object v0, Lwallet/core/jni/proto/Tron$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$SigningOutput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Tron$SigningOutput$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Tron$SigningOutput;)Lwallet/core/jni/proto/Tron$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 14062
    sget-object v0, Lwallet/core/jni/proto/Tron$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$SigningOutput;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$SigningOutput$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Tron$SigningOutput;
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

    .line 14036
    sget-object v0, Lwallet/core/jni/proto/Tron$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$SigningOutput;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$SigningOutput;
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

    .line 14042
    sget-object v0, Lwallet/core/jni/proto/Tron$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tron$SigningOutput;
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

    .line 14000
    sget-object v0, Lwallet/core/jni/proto/Tron$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$SigningOutput;
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

    .line 14007
    sget-object v0, Lwallet/core/jni/proto/Tron$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Tron$SigningOutput;
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

    .line 14047
    sget-object v0, Lwallet/core/jni/proto/Tron$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$SigningOutput;
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

    .line 14054
    sget-object v0, Lwallet/core/jni/proto/Tron$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Tron$SigningOutput;
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

    .line 14024
    sget-object v0, Lwallet/core/jni/proto/Tron$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$SigningOutput;
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

    .line 14031
    sget-object v0, Lwallet/core/jni/proto/Tron$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Tron$SigningOutput;
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

    .line 13987
    sget-object v0, Lwallet/core/jni/proto/Tron$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$SigningOutput;
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

    .line 13994
    sget-object v0, Lwallet/core/jni/proto/Tron$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$SigningOutput;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Tron$SigningOutput;
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

    .line 14012
    sget-object v0, Lwallet/core/jni/proto/Tron$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$SigningOutput;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$SigningOutput;
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

    .line 14019
    sget-object v0, Lwallet/core/jni/proto/Tron$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$SigningOutput;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Tron$SigningOutput;",
            ">;"
        }
    .end annotation

    .line 14363
    sget-object v0, Lwallet/core/jni/proto/Tron$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$SigningOutput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setId(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 13808
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13810
    iput-object p1, p0, Lwallet/core/jni/proto/Tron$SigningOutput;->id_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setJson(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 13954
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13956
    iput-object p1, p0, Lwallet/core/jni/proto/Tron$SigningOutput;->json_:Ljava/lang/String;

    return-void
.end method

.method private setJsonBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 13979
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 13980
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Tron$SigningOutput;->json_:Ljava/lang/String;

    return-void
.end method

.method private setRefBlockBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 13878
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13880
    iput-object p1, p0, Lwallet/core/jni/proto/Tron$SigningOutput;->refBlockBytes_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setRefBlockHash(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 13905
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13907
    iput-object p1, p0, Lwallet/core/jni/proto/Tron$SigningOutput;->refBlockHash_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setSignature(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 13847
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13849
    iput-object p1, p0, Lwallet/core/jni/proto/Tron$SigningOutput;->signature_:Lcom/google/protobuf/ByteString;

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

    .line 14295
    sget-object p2, Lwallet/core/jni/proto/Tron$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 14341
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 14335
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 14320
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Tron$SigningOutput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 14322
    const-class p2, Lwallet/core/jni/proto/Tron$SigningOutput;

    monitor-enter p2

    .line 14323
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Tron$SigningOutput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 14325
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Tron$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$SigningOutput;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 14328
    sput-object p1, Lwallet/core/jni/proto/Tron$SigningOutput;->PARSER:Lcom/google/protobuf/Parser;

    .line 14330
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

    .line 14317
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Tron$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$SigningOutput;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "id_"

    aput-object v0, p1, p3

    const-string p3, "signature_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "refBlockBytes_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "refBlockHash_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "json_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001\n\u0002\n\u0003\n\u0004\n\u0005\u0208"

    .line 14313
    sget-object p3, Lwallet/core/jni/proto/Tron$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$SigningOutput;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 14300
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Tron$SigningOutput$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Tron$SigningOutput$Builder;-><init>(Lwallet/core/jni/proto/Tron$1;)V

    return-object p1

    .line 14297
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Tron$SigningOutput;

    invoke-direct {p1}, Lwallet/core/jni/proto/Tron$SigningOutput;-><init>()V

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

.method public getId()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 13797
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$SigningOutput;->id_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getJson()Ljava/lang/String;
    .locals 1

    .line 13929
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$SigningOutput;->json_:Ljava/lang/String;

    return-object v0
.end method

.method public getJsonBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 13942
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$SigningOutput;->json_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRefBlockBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 13871
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$SigningOutput;->refBlockBytes_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getRefBlockHash()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 13898
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$SigningOutput;->refBlockHash_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSignature()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 13836
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$SigningOutput;->signature_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method
