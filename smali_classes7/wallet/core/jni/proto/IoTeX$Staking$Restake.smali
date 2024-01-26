.class public final Lwallet/core/jni/proto/IoTeX$Staking$Restake;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "IoTeX.java"

# interfaces
.implements Lwallet/core/jni/proto/IoTeX$Staking$RestakeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/IoTeX$Staking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Restake"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/IoTeX$Staking$Restake$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/IoTeX$Staking$Restake;",
        "Lwallet/core/jni/proto/IoTeX$Staking$Restake$Builder;",
        ">;",
        "Lwallet/core/jni/proto/IoTeX$Staking$RestakeOrBuilder;"
    }
.end annotation


# static fields
.field public static final AUTOSTAKE_FIELD_NUMBER:I = 0x3

.field public static final BUCKETINDEX_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$Restake;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/IoTeX$Staking$Restake;",
            ">;"
        }
    .end annotation
.end field

.field public static final PAYLOAD_FIELD_NUMBER:I = 0x4

.field public static final STAKEDDURATION_FIELD_NUMBER:I = 0x2


# instance fields
.field private autoStake_:Z

.field private bucketIndex_:J

.field private payload_:Lcom/google/protobuf/ByteString;

.field private stakedDuration_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2934
    new-instance v0, Lwallet/core/jni/proto/IoTeX$Staking$Restake;

    invoke-direct {v0}, Lwallet/core/jni/proto/IoTeX$Staking$Restake;-><init>()V

    .line 2937
    sput-object v0, Lwallet/core/jni/proto/IoTeX$Staking$Restake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$Restake;

    .line 2938
    const-class v1, Lwallet/core/jni/proto/IoTeX$Staking$Restake;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2460
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2461
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking$Restake;->payload_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$3900()Lwallet/core/jni/proto/IoTeX$Staking$Restake;
    .locals 1

    .line 2455
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$Restake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$Restake;

    return-object v0
.end method

.method static synthetic access$4000(Lwallet/core/jni/proto/IoTeX$Staking$Restake;J)V
    .locals 0

    .line 2455
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/IoTeX$Staking$Restake;->setBucketIndex(J)V

    return-void
.end method

.method static synthetic access$4100(Lwallet/core/jni/proto/IoTeX$Staking$Restake;)V
    .locals 0

    .line 2455
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$Staking$Restake;->clearBucketIndex()V

    return-void
.end method

.method static synthetic access$4200(Lwallet/core/jni/proto/IoTeX$Staking$Restake;I)V
    .locals 0

    .line 2455
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$Staking$Restake;->setStakedDuration(I)V

    return-void
.end method

.method static synthetic access$4300(Lwallet/core/jni/proto/IoTeX$Staking$Restake;)V
    .locals 0

    .line 2455
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$Staking$Restake;->clearStakedDuration()V

    return-void
.end method

.method static synthetic access$4400(Lwallet/core/jni/proto/IoTeX$Staking$Restake;Z)V
    .locals 0

    .line 2455
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$Staking$Restake;->setAutoStake(Z)V

    return-void
.end method

.method static synthetic access$4500(Lwallet/core/jni/proto/IoTeX$Staking$Restake;)V
    .locals 0

    .line 2455
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$Staking$Restake;->clearAutoStake()V

    return-void
.end method

.method static synthetic access$4600(Lwallet/core/jni/proto/IoTeX$Staking$Restake;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 2455
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$Staking$Restake;->setPayload(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4700(Lwallet/core/jni/proto/IoTeX$Staking$Restake;)V
    .locals 0

    .line 2455
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$Staking$Restake;->clearPayload()V

    return-void
.end method

.method private clearAutoStake()V
    .locals 1

    const/4 v0, 0x0

    .line 2574
    iput-boolean v0, p0, Lwallet/core/jni/proto/IoTeX$Staking$Restake;->autoStake_:Z

    return-void
.end method

.method private clearBucketIndex()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 2498
    iput-wide v0, p0, Lwallet/core/jni/proto/IoTeX$Staking$Restake;->bucketIndex_:J

    return-void
.end method

.method private clearPayload()V
    .locals 1

    .line 2613
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking$Restake;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Staking$Restake;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Staking$Restake;->getPayload()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking$Restake;->payload_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearStakedDuration()V
    .locals 1

    const/4 v0, 0x0

    .line 2536
    iput v0, p0, Lwallet/core/jni/proto/IoTeX$Staking$Restake;->stakedDuration_:I

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Staking$Restake;
    .locals 1

    .line 2943
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$Restake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$Restake;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/IoTeX$Staking$Restake$Builder;
    .locals 1

    .line 2691
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$Restake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$Restake;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$Restake$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/IoTeX$Staking$Restake;)Lwallet/core/jni/proto/IoTeX$Staking$Restake$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 2694
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$Restake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$Restake;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking$Restake$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/IoTeX$Staking$Restake;
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

    .line 2668
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$Restake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$Restake;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking$Restake;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/IoTeX$Staking$Restake;
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

    .line 2674
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$Restake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$Restake;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking$Restake;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/IoTeX$Staking$Restake;
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

    .line 2632
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$Restake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$Restake;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking$Restake;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/IoTeX$Staking$Restake;
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

    .line 2639
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$Restake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$Restake;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking$Restake;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/IoTeX$Staking$Restake;
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

    .line 2679
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$Restake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$Restake;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking$Restake;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/IoTeX$Staking$Restake;
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

    .line 2686
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$Restake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$Restake;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking$Restake;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/IoTeX$Staking$Restake;
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

    .line 2656
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$Restake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$Restake;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking$Restake;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/IoTeX$Staking$Restake;
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

    .line 2663
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$Restake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$Restake;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking$Restake;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/IoTeX$Staking$Restake;
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

    .line 2619
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$Restake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$Restake;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking$Restake;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/IoTeX$Staking$Restake;
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

    .line 2626
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$Restake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$Restake;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking$Restake;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/IoTeX$Staking$Restake;
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

    .line 2644
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$Restake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$Restake;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking$Restake;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/IoTeX$Staking$Restake;
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

    .line 2651
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$Restake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$Restake;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking$Restake;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/IoTeX$Staking$Restake;",
            ">;"
        }
    .end annotation

    .line 2949
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$Restake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$Restake;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAutoStake(Z)V
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
    iput-boolean p1, p0, Lwallet/core/jni/proto/IoTeX$Staking$Restake;->autoStake_:Z

    return-void
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

    .line 2487
    iput-wide p1, p0, Lwallet/core/jni/proto/IoTeX$Staking$Restake;->bucketIndex_:J

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

    .line 2600
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2602
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$Staking$Restake;->payload_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setStakedDuration(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2525
    iput p1, p0, Lwallet/core/jni/proto/IoTeX$Staking$Restake;->stakedDuration_:I

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

    .line 2882
    sget-object p2, Lwallet/core/jni/proto/IoTeX$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2927
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 2921
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 2906
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/IoTeX$Staking$Restake;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 2908
    const-class p2, Lwallet/core/jni/proto/IoTeX$Staking$Restake;

    monitor-enter p2

    .line 2909
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/IoTeX$Staking$Restake;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 2911
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/IoTeX$Staking$Restake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$Restake;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2914
    sput-object p1, Lwallet/core/jni/proto/IoTeX$Staking$Restake;->PARSER:Lcom/google/protobuf/Parser;

    .line 2916
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

    .line 2903
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/IoTeX$Staking$Restake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$Restake;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "bucketIndex_"

    aput-object v0, p1, p3

    const-string p3, "stakedDuration_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "autoStake_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "payload_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u0003\u0002\u000b\u0003\u0007\u0004\n"

    .line 2899
    sget-object p3, Lwallet/core/jni/proto/IoTeX$Staking$Restake;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$Restake;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2887
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/IoTeX$Staking$Restake$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/IoTeX$Staking$Restake$Builder;-><init>(Lwallet/core/jni/proto/IoTeX$1;)V

    return-object p1

    .line 2884
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/IoTeX$Staking$Restake;

    invoke-direct {p1}, Lwallet/core/jni/proto/IoTeX$Staking$Restake;-><init>()V

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

.method public getAutoStake()Z
    .locals 1

    .line 2551
    iget-boolean v0, p0, Lwallet/core/jni/proto/IoTeX$Staking$Restake;->autoStake_:Z

    return v0
.end method

.method public getBucketIndex()J
    .locals 2

    .line 2475
    iget-wide v0, p0, Lwallet/core/jni/proto/IoTeX$Staking$Restake;->bucketIndex_:J

    return-wide v0
.end method

.method public getPayload()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2589
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking$Restake;->payload_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getStakedDuration()I
    .locals 1

    .line 2513
    iget v0, p0, Lwallet/core/jni/proto/IoTeX$Staking$Restake;->stakedDuration_:I

    return v0
.end method
