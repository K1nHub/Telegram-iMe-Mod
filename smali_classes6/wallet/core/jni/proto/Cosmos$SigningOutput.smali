.class public final Lwallet/core/jni/proto/Cosmos$SigningOutput;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Cosmos.java"

# interfaces
.implements Lwallet/core/jni/proto/Cosmos$SigningOutputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cosmos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SigningOutput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Cosmos$SigningOutput$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Cosmos$SigningOutput;",
        "Lwallet/core/jni/proto/Cosmos$SigningOutput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Cosmos$SigningOutputOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$SigningOutput;

.field public static final ERROR_FIELD_NUMBER:I = 0x4

.field public static final JSON_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Cosmos$SigningOutput;",
            ">;"
        }
    .end annotation
.end field

.field public static final SERIALIZED_FIELD_NUMBER:I = 0x3

.field public static final SIGNATURE_FIELD_NUMBER:I = 0x1

.field public static final SIGNATURE_JSON_FIELD_NUMBER:I = 0x5


# instance fields
.field private error_:Ljava/lang/String;

.field private json_:Ljava/lang/String;

.field private serialized_:Ljava/lang/String;

.field private signatureJson_:Ljava/lang/String;

.field private signature_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21076
    new-instance v0, Lwallet/core/jni/proto/Cosmos$SigningOutput;

    invoke-direct {v0}, Lwallet/core/jni/proto/Cosmos$SigningOutput;-><init>()V

    .line 21079
    sput-object v0, Lwallet/core/jni/proto/Cosmos$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$SigningOutput;

    .line 21080
    const-class v1, Lwallet/core/jni/proto/Cosmos$SigningOutput;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 20277
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 20278
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$SigningOutput;->signature_:Lcom/google/protobuf/ByteString;

    const-string v0, ""

    .line 20279
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$SigningOutput;->json_:Ljava/lang/String;

    .line 20280
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$SigningOutput;->serialized_:Ljava/lang/String;

    .line 20281
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$SigningOutput;->error_:Ljava/lang/String;

    .line 20282
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$SigningOutput;->signatureJson_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$39000()Lwallet/core/jni/proto/Cosmos$SigningOutput;
    .locals 1

    .line 20272
    sget-object v0, Lwallet/core/jni/proto/Cosmos$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$SigningOutput;

    return-object v0
.end method

.method static synthetic access$39100(Lwallet/core/jni/proto/Cosmos$SigningOutput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 20272
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$SigningOutput;->setSignature(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$39200(Lwallet/core/jni/proto/Cosmos$SigningOutput;)V
    .locals 0

    .line 20272
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$SigningOutput;->clearSignature()V

    return-void
.end method

.method static synthetic access$39300(Lwallet/core/jni/proto/Cosmos$SigningOutput;Ljava/lang/String;)V
    .locals 0

    .line 20272
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$SigningOutput;->setJson(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$39400(Lwallet/core/jni/proto/Cosmos$SigningOutput;)V
    .locals 0

    .line 20272
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$SigningOutput;->clearJson()V

    return-void
.end method

.method static synthetic access$39500(Lwallet/core/jni/proto/Cosmos$SigningOutput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 20272
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$SigningOutput;->setJsonBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$39600(Lwallet/core/jni/proto/Cosmos$SigningOutput;Ljava/lang/String;)V
    .locals 0

    .line 20272
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$SigningOutput;->setSerialized(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$39700(Lwallet/core/jni/proto/Cosmos$SigningOutput;)V
    .locals 0

    .line 20272
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$SigningOutput;->clearSerialized()V

    return-void
.end method

.method static synthetic access$39800(Lwallet/core/jni/proto/Cosmos$SigningOutput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 20272
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$SigningOutput;->setSerializedBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$39900(Lwallet/core/jni/proto/Cosmos$SigningOutput;Ljava/lang/String;)V
    .locals 0

    .line 20272
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$SigningOutput;->setError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$40000(Lwallet/core/jni/proto/Cosmos$SigningOutput;)V
    .locals 0

    .line 20272
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$SigningOutput;->clearError()V

    return-void
.end method

.method static synthetic access$40100(Lwallet/core/jni/proto/Cosmos$SigningOutput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 20272
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$SigningOutput;->setErrorBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$40200(Lwallet/core/jni/proto/Cosmos$SigningOutput;Ljava/lang/String;)V
    .locals 0

    .line 20272
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$SigningOutput;->setSignatureJson(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$40300(Lwallet/core/jni/proto/Cosmos$SigningOutput;)V
    .locals 0

    .line 20272
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$SigningOutput;->clearSignatureJson()V

    return-void
.end method

.method static synthetic access$40400(Lwallet/core/jni/proto/Cosmos$SigningOutput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 20272
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$SigningOutput;->setSignatureJsonBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearError()V
    .locals 1

    .line 20512
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$SigningOutput;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$SigningOutput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$SigningOutput;->getError()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$SigningOutput;->error_:Ljava/lang/String;

    return-void
.end method

.method private clearJson()V
    .locals 1

    .line 20373
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$SigningOutput;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$SigningOutput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$SigningOutput;->getJson()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$SigningOutput;->json_:Ljava/lang/String;

    return-void
.end method

.method private clearSerialized()V
    .locals 1

    .line 20444
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$SigningOutput;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$SigningOutput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$SigningOutput;->getSerialized()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$SigningOutput;->serialized_:Ljava/lang/String;

    return-void
.end method

.method private clearSignature()V
    .locals 1

    .line 20320
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$SigningOutput;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$SigningOutput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$SigningOutput;->getSignature()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$SigningOutput;->signature_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearSignatureJson()V
    .locals 1

    .line 20579
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$SigningOutput;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$SigningOutput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$SigningOutput;->getSignatureJson()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$SigningOutput;->signatureJson_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Cosmos$SigningOutput;
    .locals 1

    .line 21085
    sget-object v0, Lwallet/core/jni/proto/Cosmos$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$SigningOutput;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Cosmos$SigningOutput$Builder;
    .locals 1

    .line 20671
    sget-object v0, Lwallet/core/jni/proto/Cosmos$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$SigningOutput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Cosmos$SigningOutput$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Cosmos$SigningOutput;)Lwallet/core/jni/proto/Cosmos$SigningOutput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 20674
    sget-object v0, Lwallet/core/jni/proto/Cosmos$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$SigningOutput;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$SigningOutput$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Cosmos$SigningOutput;
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

    .line 20648
    sget-object v0, Lwallet/core/jni/proto/Cosmos$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$SigningOutput;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$SigningOutput;
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

    .line 20654
    sget-object v0, Lwallet/core/jni/proto/Cosmos$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$SigningOutput;
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

    .line 20612
    sget-object v0, Lwallet/core/jni/proto/Cosmos$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$SigningOutput;
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

    .line 20619
    sget-object v0, Lwallet/core/jni/proto/Cosmos$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Cosmos$SigningOutput;
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

    .line 20659
    sget-object v0, Lwallet/core/jni/proto/Cosmos$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$SigningOutput;
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

    .line 20666
    sget-object v0, Lwallet/core/jni/proto/Cosmos$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Cosmos$SigningOutput;
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

    .line 20636
    sget-object v0, Lwallet/core/jni/proto/Cosmos$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$SigningOutput;
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

    .line 20643
    sget-object v0, Lwallet/core/jni/proto/Cosmos$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Cosmos$SigningOutput;
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

    .line 20599
    sget-object v0, Lwallet/core/jni/proto/Cosmos$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$SigningOutput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$SigningOutput;
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

    .line 20606
    sget-object v0, Lwallet/core/jni/proto/Cosmos$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$SigningOutput;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Cosmos$SigningOutput;
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

    .line 20624
    sget-object v0, Lwallet/core/jni/proto/Cosmos$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$SigningOutput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$SigningOutput;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$SigningOutput;
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

    .line 20631
    sget-object v0, Lwallet/core/jni/proto/Cosmos$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$SigningOutput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$SigningOutput;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Cosmos$SigningOutput;",
            ">;"
        }
    .end annotation

    .line 21091
    sget-object v0, Lwallet/core/jni/proto/Cosmos$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$SigningOutput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setError(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 20499
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20501
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$SigningOutput;->error_:Ljava/lang/String;

    return-void
.end method

.method private setErrorBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 20524
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 20525
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$SigningOutput;->error_:Ljava/lang/String;

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

    .line 20360
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20362
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$SigningOutput;->json_:Ljava/lang/String;

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

    .line 20385
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 20386
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$SigningOutput;->json_:Ljava/lang/String;

    return-void
.end method

.method private setSerialized(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 20430
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20432
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$SigningOutput;->serialized_:Ljava/lang/String;

    return-void
.end method

.method private setSerializedBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 20457
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 20458
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$SigningOutput;->serialized_:Ljava/lang/String;

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

    .line 20307
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20309
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$SigningOutput;->signature_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setSignatureJson(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 20566
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20568
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$SigningOutput;->signatureJson_:Ljava/lang/String;

    return-void
.end method

.method private setSignatureJsonBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 20591
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 20592
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$SigningOutput;->signatureJson_:Ljava/lang/String;

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

    .line 21023
    sget-object p2, Lwallet/core/jni/proto/Cosmos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 21069
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 21063
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 21048
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Cosmos$SigningOutput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 21050
    const-class p2, Lwallet/core/jni/proto/Cosmos$SigningOutput;

    monitor-enter p2

    .line 21051
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Cosmos$SigningOutput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 21053
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Cosmos$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$SigningOutput;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 21056
    sput-object p1, Lwallet/core/jni/proto/Cosmos$SigningOutput;->PARSER:Lcom/google/protobuf/Parser;

    .line 21058
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

    .line 21045
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Cosmos$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$SigningOutput;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "signature_"

    aput-object v0, p1, p3

    const-string p3, "json_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "serialized_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "error_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "signatureJson_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001\n\u0002\u0208\u0003\u0208\u0004\u0208\u0005\u0208"

    .line 21041
    sget-object p3, Lwallet/core/jni/proto/Cosmos$SigningOutput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$SigningOutput;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 21028
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Cosmos$SigningOutput$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Cosmos$SigningOutput$Builder;-><init>(Lwallet/core/jni/proto/Cosmos$1;)V

    return-object p1

    .line 21025
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Cosmos$SigningOutput;

    invoke-direct {p1}, Lwallet/core/jni/proto/Cosmos$SigningOutput;-><init>()V

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

.method public getError()Ljava/lang/String;
    .locals 1

    .line 20474
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$SigningOutput;->error_:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 20487
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$SigningOutput;->error_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getJson()Ljava/lang/String;
    .locals 1

    .line 20335
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$SigningOutput;->json_:Ljava/lang/String;

    return-object v0
.end method

.method public getJsonBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 20348
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$SigningOutput;->json_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSerialized()Ljava/lang/String;
    .locals 1

    .line 20403
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$SigningOutput;->serialized_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 20417
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$SigningOutput;->serialized_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 20296
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$SigningOutput;->signature_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSignatureJson()Ljava/lang/String;
    .locals 1

    .line 20541
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$SigningOutput;->signatureJson_:Ljava/lang/String;

    return-object v0
.end method

.method public getSignatureJsonBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 20554
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$SigningOutput;->signatureJson_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
