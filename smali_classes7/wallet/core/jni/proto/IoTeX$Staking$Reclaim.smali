.class public final Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "IoTeX.java"

# interfaces
.implements Lwallet/core/jni/proto/IoTeX$Staking$ReclaimOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/IoTeX$Staking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Reclaim"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/IoTeX$Staking$Reclaim$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;",
        "Lwallet/core/jni/proto/IoTeX$Staking$Reclaim$Builder;",
        ">;",
        "Lwallet/core/jni/proto/IoTeX$Staking$ReclaimOrBuilder;"
    }
.end annotation


# static fields
.field public static final BUCKETINDEX_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;",
            ">;"
        }
    .end annotation
.end field

.field public static final PAYLOAD_FIELD_NUMBER:I = 0x2


# instance fields
.field private bucketIndex_:J

.field private payload_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1856
    new-instance v0, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    invoke-direct {v0}, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;-><init>()V

    .line 1859
    sput-object v0, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    .line 1860
    const-class v1, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1540
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1541
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;->payload_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$2400()Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;
    .locals 1

    .line 1535
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    return-object v0
.end method

.method static synthetic access$2500(Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;J)V
    .locals 0

    .line 1535
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;->setBucketIndex(J)V

    return-void
.end method

.method static synthetic access$2600(Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;)V
    .locals 0

    .line 1535
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;->clearBucketIndex()V

    return-void
.end method

.method static synthetic access$2700(Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1535
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;->setPayload(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2800(Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;)V
    .locals 0

    .line 1535
    invoke-direct {p0}, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;->clearPayload()V

    return-void
.end method

.method private clearBucketIndex()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1578
    iput-wide v0, p0, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;->bucketIndex_:J

    return-void
.end method

.method private clearPayload()V
    .locals 1

    .line 1617
    invoke-static {}, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;->getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;->getPayload()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;->payload_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;
    .locals 1

    .line 1865
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/IoTeX$Staking$Reclaim$Builder;
    .locals 1

    .line 1695
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;)Lwallet/core/jni/proto/IoTeX$Staking$Reclaim$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 1698
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;
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

    .line 1672
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;
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

    .line 1678
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;
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

    .line 1636
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;
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

    .line 1643
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;
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

    .line 1683
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;
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

    .line 1690
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;
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

    .line 1660
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;
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

    .line 1667
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;
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

    .line 1623
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;
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

    .line 1630
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;
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

    .line 1648
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;
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

    .line 1655
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;",
            ">;"
        }
    .end annotation

    .line 1871
    sget-object v0, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

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

    .line 1567
    iput-wide p1, p0, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;->bucketIndex_:J

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

    .line 1604
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1606
    iput-object p1, p0, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;->payload_:Lcom/google/protobuf/ByteString;

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

    .line 1806
    sget-object p2, Lwallet/core/jni/proto/IoTeX$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1849
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 1843
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1828
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1830
    const-class p2, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    monitor-enter p2

    .line 1831
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1833
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1836
    sput-object p1, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;->PARSER:Lcom/google/protobuf/Parser;

    .line 1838
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

    .line 1825
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "bucketIndex_"

    aput-object v0, p1, p3

    const-string p3, "payload_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0003\u0002\n"

    .line 1821
    sget-object p3, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1811
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim$Builder;-><init>(Lwallet/core/jni/proto/IoTeX$1;)V

    return-object p1

    .line 1808
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;

    invoke-direct {p1}, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;-><init>()V

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

.method public getBucketIndex()J
    .locals 2

    .line 1555
    iget-wide v0, p0, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;->bucketIndex_:J

    return-wide v0
.end method

.method public getPayload()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1593
    iget-object v0, p0, Lwallet/core/jni/proto/IoTeX$Staking$Reclaim;->payload_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method
