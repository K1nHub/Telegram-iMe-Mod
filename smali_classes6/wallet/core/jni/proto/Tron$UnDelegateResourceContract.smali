.class public final Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Tron.java"

# interfaces
.implements Lwallet/core/jni/proto/Tron$UnDelegateResourceContractOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Tron;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnDelegateResourceContract"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Tron$UnDelegateResourceContract$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;",
        "Lwallet/core/jni/proto/Tron$UnDelegateResourceContract$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Tron$UnDelegateResourceContractOrBuilder;"
    }
.end annotation


# static fields
.field public static final BALANCE_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;

.field public static final OWNER_ADDRESS_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;",
            ">;"
        }
    .end annotation
.end field

.field public static final RECEIVER_ADDRESS_FIELD_NUMBER:I = 0x4

.field public static final RESOURCE_FIELD_NUMBER:I = 0x2


# instance fields
.field private balance_:J

.field private ownerAddress_:Ljava/lang/String;

.field private receiverAddress_:Ljava/lang/String;

.field private resource_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 6092
    new-instance v0, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;

    invoke-direct {v0}, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;-><init>()V

    .line 6095
    sput-object v0, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;

    .line 6096
    const-class v1, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5443
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 5444
    iput-object v0, p0, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->ownerAddress_:Ljava/lang/String;

    .line 5445
    iput-object v0, p0, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->resource_:Ljava/lang/String;

    .line 5446
    iput-object v0, p0, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->receiverAddress_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$10000(Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;Ljava/lang/String;)V
    .locals 0

    .line 5438
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->setReceiverAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10100(Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;)V
    .locals 0

    .line 5438
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->clearReceiverAddress()V

    return-void
.end method

.method static synthetic access$10200(Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 5438
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->setReceiverAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$9100()Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;
    .locals 1

    .line 5438
    sget-object v0, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;

    return-object v0
.end method

.method static synthetic access$9200(Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;Ljava/lang/String;)V
    .locals 0

    .line 5438
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->setOwnerAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9300(Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;)V
    .locals 0

    .line 5438
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->clearOwnerAddress()V

    return-void
.end method

.method static synthetic access$9400(Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 5438
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->setOwnerAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$9500(Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;Ljava/lang/String;)V
    .locals 0

    .line 5438
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->setResource(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9600(Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;)V
    .locals 0

    .line 5438
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->clearResource()V

    return-void
.end method

.method static synthetic access$9700(Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 5438
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->setResourceBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$9800(Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;J)V
    .locals 0

    .line 5438
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->setBalance(J)V

    return-void
.end method

.method static synthetic access$9900(Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;)V
    .locals 0

    .line 5438
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->clearBalance()V

    return-void
.end method

.method private clearBalance()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 5617
    iput-wide v0, p0, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->balance_:J

    return-void
.end method

.method private clearOwnerAddress()V
    .locals 1

    .line 5498
    invoke-static {}, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->getDefaultInstance()Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->getOwnerAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->ownerAddress_:Ljava/lang/String;

    return-void
.end method

.method private clearReceiverAddress()V
    .locals 1

    .line 5670
    invoke-static {}, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->getDefaultInstance()Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->getReceiverAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->receiverAddress_:Ljava/lang/String;

    return-void
.end method

.method private clearResource()V
    .locals 1

    .line 5565
    invoke-static {}, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->getDefaultInstance()Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->getResource()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->resource_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;
    .locals 1

    .line 6101
    sget-object v0, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Tron$UnDelegateResourceContract$Builder;
    .locals 1

    .line 5762
    sget-object v0, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;)Lwallet/core/jni/proto/Tron$UnDelegateResourceContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 5765
    sget-object v0, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;
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

    .line 5739
    sget-object v0, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;
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

    .line 5745
    sget-object v0, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;
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

    .line 5703
    sget-object v0, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;
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

    .line 5710
    sget-object v0, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;
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

    .line 5750
    sget-object v0, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;
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

    .line 5757
    sget-object v0, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;
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

    .line 5727
    sget-object v0, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;
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

    .line 5734
    sget-object v0, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;
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

    .line 5690
    sget-object v0, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;
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

    .line 5697
    sget-object v0, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;
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

    .line 5715
    sget-object v0, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;
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

    .line 5722
    sget-object v0, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;",
            ">;"
        }
    .end annotation

    .line 6107
    sget-object v0, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setBalance(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5606
    iput-wide p1, p0, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->balance_:J

    return-void
.end method

.method private setOwnerAddress(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5485
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5487
    iput-object p1, p0, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->ownerAddress_:Ljava/lang/String;

    return-void
.end method

.method private setOwnerAddressBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5510
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 5511
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->ownerAddress_:Ljava/lang/String;

    return-void
.end method

.method private setReceiverAddress(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5657
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5659
    iput-object p1, p0, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->receiverAddress_:Ljava/lang/String;

    return-void
.end method

.method private setReceiverAddressBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5682
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 5683
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->receiverAddress_:Ljava/lang/String;

    return-void
.end method

.method private setResource(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5552
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5554
    iput-object p1, p0, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->resource_:Ljava/lang/String;

    return-void
.end method

.method private setResourceBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5577
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 5578
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->resource_:Ljava/lang/String;

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

    .line 6040
    sget-object p2, Lwallet/core/jni/proto/Tron$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 6085
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 6079
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 6064
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 6066
    const-class p2, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;

    monitor-enter p2

    .line 6067
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 6069
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 6072
    sput-object p1, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->PARSER:Lcom/google/protobuf/Parser;

    .line 6074
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

    .line 6061
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "ownerAddress_"

    aput-object v0, p1, p3

    const-string p3, "resource_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "balance_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "receiverAddress_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u0002\u0004\u0208"

    .line 6057
    sget-object p3, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6045
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract$Builder;-><init>(Lwallet/core/jni/proto/Tron$1;)V

    return-object p1

    .line 6042
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;

    invoke-direct {p1}, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;-><init>()V

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

.method public getBalance()J
    .locals 2

    .line 5594
    iget-wide v0, p0, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->balance_:J

    return-wide v0
.end method

.method public getOwnerAddress()Ljava/lang/String;
    .locals 1

    .line 5460
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->ownerAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5473
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->ownerAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getReceiverAddress()Ljava/lang/String;
    .locals 1

    .line 5632
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->receiverAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiverAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5645
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->receiverAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getResource()Ljava/lang/String;
    .locals 1

    .line 5527
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->resource_:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5540
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$UnDelegateResourceContract;->resource_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
