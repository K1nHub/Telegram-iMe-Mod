.class public final Lwallet/core/jni/proto/Aptos$OfferNftMessage;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Aptos.java"

# interfaces
.implements Lwallet/core/jni/proto/Aptos$OfferNftMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Aptos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OfferNftMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Aptos$OfferNftMessage$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Aptos$OfferNftMessage;",
        "Lwallet/core/jni/proto/Aptos$OfferNftMessage$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Aptos$OfferNftMessageOrBuilder;"
    }
.end annotation


# static fields
.field public static final AMOUNT_FIELD_NUMBER:I = 0x6

.field public static final COLLECTIONNAME_FIELD_NUMBER:I = 0x3

.field public static final CREATOR_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$OfferNftMessage;

.field public static final NAME_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Aptos$OfferNftMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROPERTY_VERSION_FIELD_NUMBER:I = 0x5

.field public static final RECEIVER_FIELD_NUMBER:I = 0x1


# instance fields
.field private amount_:J

.field private collectionName_:Ljava/lang/String;

.field private creator_:Ljava/lang/String;

.field private name_:Ljava/lang/String;

.field private propertyVersion_:J

.field private receiver_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 3386
    new-instance v0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    invoke-direct {v0}, Lwallet/core/jni/proto/Aptos$OfferNftMessage;-><init>()V

    .line 3389
    sput-object v0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    .line 3390
    const-class v1, Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2520
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 2521
    iput-object v0, p0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->receiver_:Ljava/lang/String;

    .line 2522
    iput-object v0, p0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->creator_:Ljava/lang/String;

    .line 2523
    iput-object v0, p0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->collectionName_:Ljava/lang/String;

    .line 2524
    iput-object v0, p0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->name_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3800()Lwallet/core/jni/proto/Aptos$OfferNftMessage;
    .locals 1

    .line 2515
    sget-object v0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    return-object v0
.end method

.method static synthetic access$3900(Lwallet/core/jni/proto/Aptos$OfferNftMessage;Ljava/lang/String;)V
    .locals 0

    .line 2515
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->setReceiver(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4000(Lwallet/core/jni/proto/Aptos$OfferNftMessage;)V
    .locals 0

    .line 2515
    invoke-direct {p0}, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->clearReceiver()V

    return-void
.end method

.method static synthetic access$4100(Lwallet/core/jni/proto/Aptos$OfferNftMessage;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 2515
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->setReceiverBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4200(Lwallet/core/jni/proto/Aptos$OfferNftMessage;Ljava/lang/String;)V
    .locals 0

    .line 2515
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->setCreator(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4300(Lwallet/core/jni/proto/Aptos$OfferNftMessage;)V
    .locals 0

    .line 2515
    invoke-direct {p0}, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->clearCreator()V

    return-void
.end method

.method static synthetic access$4400(Lwallet/core/jni/proto/Aptos$OfferNftMessage;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 2515
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->setCreatorBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4500(Lwallet/core/jni/proto/Aptos$OfferNftMessage;Ljava/lang/String;)V
    .locals 0

    .line 2515
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->setCollectionName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4600(Lwallet/core/jni/proto/Aptos$OfferNftMessage;)V
    .locals 0

    .line 2515
    invoke-direct {p0}, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->clearCollectionName()V

    return-void
.end method

.method static synthetic access$4700(Lwallet/core/jni/proto/Aptos$OfferNftMessage;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 2515
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->setCollectionNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4800(Lwallet/core/jni/proto/Aptos$OfferNftMessage;Ljava/lang/String;)V
    .locals 0

    .line 2515
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4900(Lwallet/core/jni/proto/Aptos$OfferNftMessage;)V
    .locals 0

    .line 2515
    invoke-direct {p0}, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->clearName()V

    return-void
.end method

.method static synthetic access$5000(Lwallet/core/jni/proto/Aptos$OfferNftMessage;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 2515
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->setNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$5100(Lwallet/core/jni/proto/Aptos$OfferNftMessage;J)V
    .locals 0

    .line 2515
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->setPropertyVersion(J)V

    return-void
.end method

.method static synthetic access$5200(Lwallet/core/jni/proto/Aptos$OfferNftMessage;)V
    .locals 0

    .line 2515
    invoke-direct {p0}, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->clearPropertyVersion()V

    return-void
.end method

.method static synthetic access$5300(Lwallet/core/jni/proto/Aptos$OfferNftMessage;J)V
    .locals 0

    .line 2515
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->setAmount(J)V

    return-void
.end method

.method static synthetic access$5400(Lwallet/core/jni/proto/Aptos$OfferNftMessage;)V
    .locals 0

    .line 2515
    invoke-direct {p0}, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->clearAmount()V

    return-void
.end method

.method private clearAmount()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 2867
    iput-wide v0, p0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->amount_:J

    return-void
.end method

.method private clearCollectionName()V
    .locals 1

    .line 2710
    invoke-static {}, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->getDefaultInstance()Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->getCollectionName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->collectionName_:Ljava/lang/String;

    return-void
.end method

.method private clearCreator()V
    .locals 1

    .line 2643
    invoke-static {}, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->getDefaultInstance()Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->getCreator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->creator_:Ljava/lang/String;

    return-void
.end method

.method private clearName()V
    .locals 1

    .line 2777
    invoke-static {}, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->getDefaultInstance()Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->name_:Ljava/lang/String;

    return-void
.end method

.method private clearPropertyVersion()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 2829
    iput-wide v0, p0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->propertyVersion_:J

    return-void
.end method

.method private clearReceiver()V
    .locals 1

    .line 2576
    invoke-static {}, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->getDefaultInstance()Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->getReceiver()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->receiver_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Aptos$OfferNftMessage;
    .locals 1

    .line 3395
    sget-object v0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Aptos$OfferNftMessage$Builder;
    .locals 1

    .line 2945
    sget-object v0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Aptos$OfferNftMessage$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Aptos$OfferNftMessage;)Lwallet/core/jni/proto/Aptos$OfferNftMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 2948
    sget-object v0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$OfferNftMessage$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Aptos$OfferNftMessage;
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

    .line 2922
    sget-object v0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Aptos$OfferNftMessage;
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

    .line 2928
    sget-object v0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Aptos$OfferNftMessage;
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

    .line 2886
    sget-object v0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Aptos$OfferNftMessage;
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

    .line 2893
    sget-object v0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Aptos$OfferNftMessage;
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

    .line 2933
    sget-object v0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Aptos$OfferNftMessage;
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

    .line 2940
    sget-object v0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Aptos$OfferNftMessage;
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

    .line 2910
    sget-object v0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Aptos$OfferNftMessage;
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

    .line 2917
    sget-object v0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Aptos$OfferNftMessage;
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

    .line 2873
    sget-object v0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Aptos$OfferNftMessage;
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

    .line 2880
    sget-object v0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Aptos$OfferNftMessage;
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

    .line 2898
    sget-object v0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Aptos$OfferNftMessage;
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

    .line 2905
    sget-object v0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Aptos$OfferNftMessage;",
            ">;"
        }
    .end annotation

    .line 3401
    sget-object v0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAmount(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2856
    iput-wide p1, p0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->amount_:J

    return-void
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

    .line 2697
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2699
    iput-object p1, p0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->collectionName_:Ljava/lang/String;

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

    .line 2722
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2723
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->collectionName_:Ljava/lang/String;

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

    .line 2630
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2632
    iput-object p1, p0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->creator_:Ljava/lang/String;

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

    .line 2655
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2656
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->creator_:Ljava/lang/String;

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

    .line 2764
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2766
    iput-object p1, p0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->name_:Ljava/lang/String;

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

    .line 2789
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2790
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->name_:Ljava/lang/String;

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

    .line 2818
    iput-wide p1, p0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->propertyVersion_:J

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

    .line 2563
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2565
    iput-object p1, p0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->receiver_:Ljava/lang/String;

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

    .line 2588
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2589
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->receiver_:Ljava/lang/String;

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

    .line 3332
    sget-object p2, Lwallet/core/jni/proto/Aptos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 3379
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 3373
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 3358
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 3360
    const-class p2, Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    monitor-enter p2

    .line 3361
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 3363
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3366
    sput-object p1, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->PARSER:Lcom/google/protobuf/Parser;

    .line 3368
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

    .line 3355
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

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

    const/4 p2, 0x5

    const-string p3, "amount_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0006\u0000\u0000\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u0208\u0004\u0208\u0005\u0003\u0006\u0003"

    .line 3351
    sget-object p3, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3337
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Aptos$OfferNftMessage$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Aptos$OfferNftMessage$Builder;-><init>(Lwallet/core/jni/proto/Aptos$1;)V

    return-object p1

    .line 3334
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Aptos$OfferNftMessage;

    invoke-direct {p1}, Lwallet/core/jni/proto/Aptos$OfferNftMessage;-><init>()V

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

.method public getAmount()J
    .locals 2

    .line 2844
    iget-wide v0, p0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->amount_:J

    return-wide v0
.end method

.method public getCollectionName()Ljava/lang/String;
    .locals 1

    .line 2672
    iget-object v0, p0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->collectionName_:Ljava/lang/String;

    return-object v0
.end method

.method public getCollectionNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2685
    iget-object v0, p0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->collectionName_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getCreator()Ljava/lang/String;
    .locals 1

    .line 2605
    iget-object v0, p0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->creator_:Ljava/lang/String;

    return-object v0
.end method

.method public getCreatorBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2618
    iget-object v0, p0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->creator_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 2739
    iget-object v0, p0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2752
    iget-object v0, p0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->name_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyVersion()J
    .locals 2

    .line 2806
    iget-wide v0, p0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->propertyVersion_:J

    return-wide v0
.end method

.method public getReceiver()Ljava/lang/String;
    .locals 1

    .line 2538
    iget-object v0, p0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->receiver_:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiverBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2551
    iget-object v0, p0, Lwallet/core/jni/proto/Aptos$OfferNftMessage;->receiver_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
