.class public final Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Aptos.java"

# interfaces
.implements Lwallet/core/jni/proto/Aptos$CancelOfferNftMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Aptos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CancelOfferNftMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;",
        "Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Aptos$CancelOfferNftMessageOrBuilder;"
    }
.end annotation


# static fields
.field public static final COLLECTIONNAME_FIELD_NUMBER:I = 0x3

.field public static final CREATOR_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;

.field public static final NAME_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROPERTY_VERSION_FIELD_NUMBER:I = 0x5

.field public static final RECEIVER_FIELD_NUMBER:I = 0x1


# instance fields
.field private collectionName_:Ljava/lang/String;

.field private creator_:Ljava/lang/String;

.field private name_:Ljava/lang/String;

.field private propertyVersion_:J

.field private receiver_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 4298
    new-instance v0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;

    invoke-direct {v0}, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;-><init>()V

    .line 4301
    sput-object v0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;

    .line 4302
    const-class v1, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3511
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 3512
    iput-object v0, p0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->receiver_:Ljava/lang/String;

    .line 3513
    iput-object v0, p0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->creator_:Ljava/lang/String;

    .line 3514
    iput-object v0, p0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->collectionName_:Ljava/lang/String;

    .line 3515
    iput-object v0, p0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->name_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5600()Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;
    .locals 1

    .line 3506
    sget-object v0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;

    return-object v0
.end method

.method static synthetic access$5700(Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;Ljava/lang/String;)V
    .locals 0

    .line 3506
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->setReceiver(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5800(Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;)V
    .locals 0

    .line 3506
    invoke-direct {p0}, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->clearReceiver()V

    return-void
.end method

.method static synthetic access$5900(Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 3506
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->setReceiverBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$6000(Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;Ljava/lang/String;)V
    .locals 0

    .line 3506
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->setCreator(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6100(Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;)V
    .locals 0

    .line 3506
    invoke-direct {p0}, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->clearCreator()V

    return-void
.end method

.method static synthetic access$6200(Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 3506
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->setCreatorBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$6300(Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;Ljava/lang/String;)V
    .locals 0

    .line 3506
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->setCollectionName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6400(Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;)V
    .locals 0

    .line 3506
    invoke-direct {p0}, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->clearCollectionName()V

    return-void
.end method

.method static synthetic access$6500(Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 3506
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->setCollectionNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$6600(Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;Ljava/lang/String;)V
    .locals 0

    .line 3506
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6700(Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;)V
    .locals 0

    .line 3506
    invoke-direct {p0}, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->clearName()V

    return-void
.end method

.method static synthetic access$6800(Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 3506
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->setNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$6900(Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;J)V
    .locals 0

    .line 3506
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->setPropertyVersion(J)V

    return-void
.end method

.method static synthetic access$7000(Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;)V
    .locals 0

    .line 3506
    invoke-direct {p0}, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->clearPropertyVersion()V

    return-void
.end method

.method private clearCollectionName()V
    .locals 1

    .line 3701
    invoke-static {}, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->getDefaultInstance()Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->getCollectionName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->collectionName_:Ljava/lang/String;

    return-void
.end method

.method private clearCreator()V
    .locals 1

    .line 3634
    invoke-static {}, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->getDefaultInstance()Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->getCreator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->creator_:Ljava/lang/String;

    return-void
.end method

.method private clearName()V
    .locals 1

    .line 3768
    invoke-static {}, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->getDefaultInstance()Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->name_:Ljava/lang/String;

    return-void
.end method

.method private clearPropertyVersion()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 3820
    iput-wide v0, p0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->propertyVersion_:J

    return-void
.end method

.method private clearReceiver()V
    .locals 1

    .line 3567
    invoke-static {}, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->getDefaultInstance()Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->getReceiver()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->receiver_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;
    .locals 1

    .line 4307
    sget-object v0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage$Builder;
    .locals 1

    .line 3898
    sget-object v0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;)Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 3901
    sget-object v0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;
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

    .line 3875
    sget-object v0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;
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

    .line 3881
    sget-object v0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;
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

    .line 3839
    sget-object v0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;
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

    .line 3846
    sget-object v0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;
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

    .line 3886
    sget-object v0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;
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

    .line 3893
    sget-object v0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;
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

    .line 3863
    sget-object v0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;
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

    .line 3870
    sget-object v0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;
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

    .line 3826
    sget-object v0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;
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

    .line 3833
    sget-object v0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;
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

    .line 3851
    sget-object v0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;
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

    .line 3858
    sget-object v0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;",
            ">;"
        }
    .end annotation

    .line 4313
    sget-object v0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;

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

    .line 3688
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3690
    iput-object p1, p0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->collectionName_:Ljava/lang/String;

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

    .line 3713
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3714
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->collectionName_:Ljava/lang/String;

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

    .line 3621
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3623
    iput-object p1, p0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->creator_:Ljava/lang/String;

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

    .line 3646
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3647
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->creator_:Ljava/lang/String;

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

    .line 3755
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3757
    iput-object p1, p0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->name_:Ljava/lang/String;

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

    .line 3780
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3781
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->name_:Ljava/lang/String;

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

    .line 3809
    iput-wide p1, p0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->propertyVersion_:J

    return-void
.end method

.method private setReceiver(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3554
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3556
    iput-object p1, p0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->receiver_:Ljava/lang/String;

    return-void
.end method

.method private setReceiverBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3579
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3580
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->receiver_:Ljava/lang/String;

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

    .line 4245
    sget-object p2, Lwallet/core/jni/proto/Aptos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 4291
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 4285
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 4270
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 4272
    const-class p2, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;

    monitor-enter p2

    .line 4273
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 4275
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 4278
    sput-object p1, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->PARSER:Lcom/google/protobuf/Parser;

    .line 4280
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

    .line 4267
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "receiver_"

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

    .line 4263
    sget-object p3, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4250
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage$Builder;-><init>(Lwallet/core/jni/proto/Aptos$1;)V

    return-object p1

    .line 4247
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;

    invoke-direct {p1}, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;-><init>()V

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

    .line 3663
    iget-object v0, p0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->collectionName_:Ljava/lang/String;

    return-object v0
.end method

.method public getCollectionNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3676
    iget-object v0, p0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->collectionName_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getCreator()Ljava/lang/String;
    .locals 1

    .line 3596
    iget-object v0, p0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->creator_:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatorBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3609
    iget-object v0, p0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->creator_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 3730
    iget-object v0, p0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3743
    iget-object v0, p0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->name_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyVersion()J
    .locals 2

    .line 3797
    iget-wide v0, p0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->propertyVersion_:J

    return-wide v0
.end method

.method public getReceiver()Ljava/lang/String;
    .locals 1

    .line 3529
    iget-object v0, p0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->receiver_:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiverBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3542
    iget-object v0, p0, Lwallet/core/jni/proto/Aptos$CancelOfferNftMessage;->receiver_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
