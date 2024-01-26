.class public final Lwallet/core/jni/proto/Aptos$ClaimNftMessage;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Aptos.java"

# interfaces
.implements Lwallet/core/jni/proto/Aptos$ClaimNftMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Aptos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClaimNftMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Aptos$ClaimNftMessage$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Aptos$ClaimNftMessage;",
        "Lwallet/core/jni/proto/Aptos$ClaimNftMessage$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Aptos$ClaimNftMessageOrBuilder;"
    }
.end annotation


# static fields
.field public static final COLLECTIONNAME_FIELD_NUMBER:I = 0x3

.field public static final CREATOR_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$ClaimNftMessage;

.field public static final NAME_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Aptos$ClaimNftMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROPERTY_VERSION_FIELD_NUMBER:I = 0x5

.field public static final SENDER_FIELD_NUMBER:I = 0x1


# instance fields
.field private collectionName_:Ljava/lang/String;

.field private creator_:Ljava/lang/String;

.field private name_:Ljava/lang/String;

.field private propertyVersion_:J

.field private sender_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5210
    new-instance v0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;

    invoke-direct {v0}, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;-><init>()V

    .line 5213
    sput-object v0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$ClaimNftMessage;

    .line 5214
    const-class v1, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 4423
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 4424
    iput-object v0, p0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->sender_:Ljava/lang/String;

    .line 4425
    iput-object v0, p0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->creator_:Ljava/lang/String;

    .line 4426
    iput-object v0, p0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->collectionName_:Ljava/lang/String;

    .line 4427
    iput-object v0, p0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->name_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$7200()Lwallet/core/jni/proto/Aptos$ClaimNftMessage;
    .locals 1

    .line 4418
    sget-object v0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$ClaimNftMessage;

    return-object v0
.end method

.method static synthetic access$7300(Lwallet/core/jni/proto/Aptos$ClaimNftMessage;Ljava/lang/String;)V
    .locals 0

    .line 4418
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->setSender(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7400(Lwallet/core/jni/proto/Aptos$ClaimNftMessage;)V
    .locals 0

    .line 4418
    invoke-direct {p0}, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->clearSender()V

    return-void
.end method

.method static synthetic access$7500(Lwallet/core/jni/proto/Aptos$ClaimNftMessage;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 4418
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->setSenderBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$7600(Lwallet/core/jni/proto/Aptos$ClaimNftMessage;Ljava/lang/String;)V
    .locals 0

    .line 4418
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->setCreator(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7700(Lwallet/core/jni/proto/Aptos$ClaimNftMessage;)V
    .locals 0

    .line 4418
    invoke-direct {p0}, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->clearCreator()V

    return-void
.end method

.method static synthetic access$7800(Lwallet/core/jni/proto/Aptos$ClaimNftMessage;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 4418
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->setCreatorBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$7900(Lwallet/core/jni/proto/Aptos$ClaimNftMessage;Ljava/lang/String;)V
    .locals 0

    .line 4418
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->setCollectionName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8000(Lwallet/core/jni/proto/Aptos$ClaimNftMessage;)V
    .locals 0

    .line 4418
    invoke-direct {p0}, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->clearCollectionName()V

    return-void
.end method

.method static synthetic access$8100(Lwallet/core/jni/proto/Aptos$ClaimNftMessage;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 4418
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->setCollectionNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$8200(Lwallet/core/jni/proto/Aptos$ClaimNftMessage;Ljava/lang/String;)V
    .locals 0

    .line 4418
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8300(Lwallet/core/jni/proto/Aptos$ClaimNftMessage;)V
    .locals 0

    .line 4418
    invoke-direct {p0}, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->clearName()V

    return-void
.end method

.method static synthetic access$8400(Lwallet/core/jni/proto/Aptos$ClaimNftMessage;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 4418
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->setNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$8500(Lwallet/core/jni/proto/Aptos$ClaimNftMessage;J)V
    .locals 0

    .line 4418
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->setPropertyVersion(J)V

    return-void
.end method

.method static synthetic access$8600(Lwallet/core/jni/proto/Aptos$ClaimNftMessage;)V
    .locals 0

    .line 4418
    invoke-direct {p0}, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->clearPropertyVersion()V

    return-void
.end method

.method private clearCollectionName()V
    .locals 1

    .line 4613
    invoke-static {}, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->getDefaultInstance()Lwallet/core/jni/proto/Aptos$ClaimNftMessage;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->getCollectionName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->collectionName_:Ljava/lang/String;

    return-void
.end method

.method private clearCreator()V
    .locals 1

    .line 4546
    invoke-static {}, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->getDefaultInstance()Lwallet/core/jni/proto/Aptos$ClaimNftMessage;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->getCreator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->creator_:Ljava/lang/String;

    return-void
.end method

.method private clearName()V
    .locals 1

    .line 4680
    invoke-static {}, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->getDefaultInstance()Lwallet/core/jni/proto/Aptos$ClaimNftMessage;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->name_:Ljava/lang/String;

    return-void
.end method

.method private clearPropertyVersion()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 4732
    iput-wide v0, p0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->propertyVersion_:J

    return-void
.end method

.method private clearSender()V
    .locals 1

    .line 4479
    invoke-static {}, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->getDefaultInstance()Lwallet/core/jni/proto/Aptos$ClaimNftMessage;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->getSender()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->sender_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Aptos$ClaimNftMessage;
    .locals 1

    .line 5219
    sget-object v0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$ClaimNftMessage;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Aptos$ClaimNftMessage$Builder;
    .locals 1

    .line 4810
    sget-object v0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$ClaimNftMessage;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Aptos$ClaimNftMessage;)Lwallet/core/jni/proto/Aptos$ClaimNftMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 4813
    sget-object v0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$ClaimNftMessage;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Aptos$ClaimNftMessage;
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

    .line 4787
    sget-object v0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$ClaimNftMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Aptos$ClaimNftMessage;
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

    .line 4793
    sget-object v0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$ClaimNftMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Aptos$ClaimNftMessage;
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

    .line 4751
    sget-object v0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$ClaimNftMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Aptos$ClaimNftMessage;
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

    .line 4758
    sget-object v0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$ClaimNftMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Aptos$ClaimNftMessage;
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

    .line 4798
    sget-object v0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$ClaimNftMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Aptos$ClaimNftMessage;
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

    .line 4805
    sget-object v0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$ClaimNftMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Aptos$ClaimNftMessage;
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

    .line 4775
    sget-object v0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$ClaimNftMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Aptos$ClaimNftMessage;
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

    .line 4782
    sget-object v0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$ClaimNftMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Aptos$ClaimNftMessage;
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

    .line 4738
    sget-object v0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$ClaimNftMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Aptos$ClaimNftMessage;
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

    .line 4745
    sget-object v0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$ClaimNftMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Aptos$ClaimNftMessage;
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

    .line 4763
    sget-object v0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$ClaimNftMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Aptos$ClaimNftMessage;
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

    .line 4770
    sget-object v0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$ClaimNftMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Aptos$ClaimNftMessage;",
            ">;"
        }
    .end annotation

    .line 5225
    sget-object v0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$ClaimNftMessage;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCollectionName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4600
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4602
    iput-object p1, p0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->collectionName_:Ljava/lang/String;

    return-void
.end method

.method private setCollectionNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4625
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 4626
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->collectionName_:Ljava/lang/String;

    return-void
.end method

.method private setCreator(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4533
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4535
    iput-object p1, p0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->creator_:Ljava/lang/String;

    return-void
.end method

.method private setCreatorBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4558
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 4559
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->creator_:Ljava/lang/String;

    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4667
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4669
    iput-object p1, p0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->name_:Ljava/lang/String;

    return-void
.end method

.method private setNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4692
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 4693
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->name_:Ljava/lang/String;

    return-void
.end method

.method private setPropertyVersion(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4721
    iput-wide p1, p0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->propertyVersion_:J

    return-void
.end method

.method private setSender(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4466
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4468
    iput-object p1, p0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->sender_:Ljava/lang/String;

    return-void
.end method

.method private setSenderBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4491
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 4492
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->sender_:Ljava/lang/String;

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

    .line 5157
    sget-object p2, Lwallet/core/jni/proto/Aptos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 5203
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 5197
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 5182
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5184
    const-class p2, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;

    monitor-enter p2

    .line 5185
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 5187
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$ClaimNftMessage;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 5190
    sput-object p1, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->PARSER:Lcom/google/protobuf/Parser;

    .line 5192
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

    .line 5179
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$ClaimNftMessage;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "sender_"

    aput-object v0, p1, p3

    const-string p3, "creator_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "collectionName_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "name_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "propertyVersion_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u0208\u0004\u0208\u0005\u0003"

    .line 5175
    sget-object p3, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$ClaimNftMessage;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5162
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Aptos$ClaimNftMessage$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Aptos$ClaimNftMessage$Builder;-><init>(Lwallet/core/jni/proto/Aptos$1;)V

    return-object p1

    .line 5159
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;

    invoke-direct {p1}, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;-><init>()V

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

.method public getCollectionName()Ljava/lang/String;
    .locals 1

    .line 4575
    iget-object v0, p0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->collectionName_:Ljava/lang/String;

    return-object v0
.end method

.method public getCollectionNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4588
    iget-object v0, p0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->collectionName_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getCreator()Ljava/lang/String;
    .locals 1

    .line 4508
    iget-object v0, p0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->creator_:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatorBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4521
    iget-object v0, p0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->creator_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 4642
    iget-object v0, p0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4655
    iget-object v0, p0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->name_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyVersion()J
    .locals 2

    .line 4709
    iget-wide v0, p0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->propertyVersion_:J

    return-wide v0
.end method

.method public getSender()Ljava/lang/String;
    .locals 1

    .line 4441
    iget-object v0, p0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->sender_:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4454
    iget-object v0, p0, Lwallet/core/jni/proto/Aptos$ClaimNftMessage;->sender_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
