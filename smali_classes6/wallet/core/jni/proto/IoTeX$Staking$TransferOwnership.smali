.class public final Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "IoTeX.java"

# interfaces
.implements Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnershipOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/IoTeX$Staking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TransferOwnership"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;",
        "Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership$Builder;",
        ">;",
        "Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnershipOrBuilder;"
    }
.end annotation


# static fields
.field public static final BUCKETINDEX_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;",
            ">;"
        }
    .end annotation
.end field

.field public static final PAYLOAD_FIELD_NUMBER:I = 0x3

.field public static final VOTERADDRESS_FIELD_NUMBER:I = 0x2


# instance fields
.field private bucketIndex_:J

.field private payload_:Lcom/google/protobuf/ByteString;

.field private voterAddress_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 3992
    new-instance v0, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;

    invoke-direct {v0}, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;-><init>()V

    .line 3995
    sput-object v0, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;

    .line 3996
    const-class v1, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3538
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 3539
    iput-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;->voterAddress_:Ljava/lang/String;

    .line 3540
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;->payload_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$5800()Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;
    .locals 1

    .line 3533
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;

    return-object v0
.end method

.method static synthetic access$5900(Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;J)V
    .locals 0

    .line 3533
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;->setBucketIndex(J)V

    return-void
.end method

.method static synthetic access$6000(Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;)V
    .locals 0

    .line 3533
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;->clearBucketIndex()V

    return-void
.end method

.method static synthetic access$6100(Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;Ljava/lang/String;)V
    .locals 0

    .line 3533
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;->setVoterAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6200(Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;)V
    .locals 0

    .line 3533
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;->clearVoterAddress()V

    return-void
.end method

.method static synthetic access$6300(Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 3533
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;->setVoterAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$6400(Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 3533
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;->setPayload(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$6500(Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;)V
    .locals 0

    .line 3533
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;->clearPayload()V

    return-void
.end method

.method private clearBucketIndex()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 3577
    iput-wide v0, p0, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;->bucketIndex_:J

    return-void
.end method

.method private clearPayload()V
    .locals 1

    .line 3683
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;->getPayload()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;->payload_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearVoterAddress()V
    .locals 1

    .line 3630
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;->getVoterAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;->voterAddress_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;
    .locals 1

    .line 4001
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership$Builder;
    .locals 1

    .line 3761
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;)Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 3764
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;
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

    .line 3738
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;
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

    .line 3744
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;
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

    .line 3702
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;
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

    .line 3709
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;
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

    .line 3749
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;
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

    .line 3756
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;
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

    .line 3726
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;
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

    .line 3733
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;
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

    .line 3689
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;
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

    .line 3696
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;
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

    .line 3714
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;
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

    .line 3721
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;",
            ">;"
        }
    .end annotation

    .line 4007
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setBucketIndex(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3566
    iput-wide p1, p0, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;->bucketIndex_:J

    return-void
.end method

.method private setPayload(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3670
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3672
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;->payload_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setVoterAddress(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3617
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3619
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;->voterAddress_:Ljava/lang/String;

    return-void
.end method

.method private setVoterAddressBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3642
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3643
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;->voterAddress_:Ljava/lang/String;

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

    .line 3941
    sget-object p2, Lwallet/core/jni/proto/IoTeX$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 3985
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 3979
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 3964
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 3966
    const-class p2, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;

    monitor-enter p2

    .line 3967
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 3969
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3972
    sput-object p1, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;->PARSER:Lcom/google/protobuf/Parser;

    .line 3974
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

    .line 3961
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "bucketIndex_"

    aput-object v0, p1, p3

    const-string p3, "voterAddress_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "payload_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0003\u0002\u0208\u0003\n"

    .line 3957
    sget-object p3, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3946
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership$Builder;-><init>(Lwallet/core/jni/proto/IoTeX$1;)V

    return-object p1

    .line 3943
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;

    invoke-direct {p1}, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;-><init>()V

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

.method public getBucketIndex()J
    .locals 2

    .line 3554
    iget-wide v0, p0, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;->bucketIndex_:J

    return-wide v0
.end method

.method public getPayload()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3659
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;->payload_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getVoterAddress()Ljava/lang/String;
    .locals 1

    .line 3592
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;->voterAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getVoterAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3605
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking$TransferOwnership;->voterAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
