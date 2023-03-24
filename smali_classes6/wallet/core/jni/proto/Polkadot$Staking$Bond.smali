.class public final Lwallet/core/jni/proto/Polkadot$Staking$Bond;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Polkadot.java"

# interfaces
.implements Lwallet/core/jni/proto/Polkadot$Staking$BondOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Polkadot$Staking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Bond"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Polkadot$Staking$Bond$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Polkadot$Staking$Bond;",
        "Lwallet/core/jni/proto/Polkadot$Staking$Bond$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Polkadot$Staking$BondOrBuilder;"
    }
.end annotation


# static fields
.field public static final CONTROLLER_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Bond;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Polkadot$Staking$Bond;",
            ">;"
        }
    .end annotation
.end field

.field public static final REWARD_DESTINATION_FIELD_NUMBER:I = 0x3

.field public static final VALUE_FIELD_NUMBER:I = 0x2


# instance fields
.field private controller_:Ljava/lang/String;

.field private rewardDestination_:I

.field private value_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1956
    new-instance v0, Lwallet/core/jni/proto/Polkadot$Staking$Bond;

    invoke-direct {v0}, Lwallet/core/jni/proto/Polkadot$Staking$Bond;-><init>()V

    .line 1959
    sput-object v0, Lwallet/core/jni/proto/Polkadot$Staking$Bond;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Bond;

    .line 1960
    const-class v1, Lwallet/core/jni/proto/Polkadot$Staking$Bond;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1452
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 1453
    iput-object v0, p0, Lwallet/core/jni/proto/Polkadot$Staking$Bond;->controller_:Ljava/lang/String;

    .line 1454
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Polkadot$Staking$Bond;->value_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$1900()Lwallet/core/jni/proto/Polkadot$Staking$Bond;
    .locals 1

    .line 1447
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$Bond;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Bond;

    return-object v0
.end method

.method static synthetic access$2000(Lwallet/core/jni/proto/Polkadot$Staking$Bond;Ljava/lang/String;)V
    .locals 0

    .line 1447
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Polkadot$Staking$Bond;->setController(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lwallet/core/jni/proto/Polkadot$Staking$Bond;)V
    .locals 0

    .line 1447
    invoke-direct {p0}, Lwallet/core/jni/proto/Polkadot$Staking$Bond;->clearController()V

    return-void
.end method

.method static synthetic access$2200(Lwallet/core/jni/proto/Polkadot$Staking$Bond;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1447
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Polkadot$Staking$Bond;->setControllerBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2300(Lwallet/core/jni/proto/Polkadot$Staking$Bond;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1447
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Polkadot$Staking$Bond;->setValue(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2400(Lwallet/core/jni/proto/Polkadot$Staking$Bond;)V
    .locals 0

    .line 1447
    invoke-direct {p0}, Lwallet/core/jni/proto/Polkadot$Staking$Bond;->clearValue()V

    return-void
.end method

.method static synthetic access$2500(Lwallet/core/jni/proto/Polkadot$Staking$Bond;I)V
    .locals 0

    .line 1447
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Polkadot$Staking$Bond;->setRewardDestinationValue(I)V

    return-void
.end method

.method static synthetic access$2600(Lwallet/core/jni/proto/Polkadot$Staking$Bond;Lwallet/core/jni/proto/Polkadot$RewardDestination;)V
    .locals 0

    .line 1447
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Polkadot$Staking$Bond;->setRewardDestination(Lwallet/core/jni/proto/Polkadot$RewardDestination;)V

    return-void
.end method

.method static synthetic access$2700(Lwallet/core/jni/proto/Polkadot$Staking$Bond;)V
    .locals 0

    .line 1447
    invoke-direct {p0}, Lwallet/core/jni/proto/Polkadot$Staking$Bond;->clearRewardDestination()V

    return-void
.end method

.method private clearController()V
    .locals 1

    .line 1506
    invoke-static {}, Lwallet/core/jni/proto/Polkadot$Staking$Bond;->getDefaultInstance()Lwallet/core/jni/proto/Polkadot$Staking$Bond;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Polkadot$Staking$Bond;->getController()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Polkadot$Staking$Bond;->controller_:Ljava/lang/String;

    return-void
.end method

.method private clearRewardDestination()V
    .locals 1

    const/4 v0, 0x0

    .line 1621
    iput v0, p0, Lwallet/core/jni/proto/Polkadot$Staking$Bond;->rewardDestination_:I

    return-void
.end method

.method private clearValue()V
    .locals 1

    .line 1559
    invoke-static {}, Lwallet/core/jni/proto/Polkadot$Staking$Bond;->getDefaultInstance()Lwallet/core/jni/proto/Polkadot$Staking$Bond;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Polkadot$Staking$Bond;->getValue()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Polkadot$Staking$Bond;->value_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Polkadot$Staking$Bond;
    .locals 1

    .line 1965
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$Bond;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Bond;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Polkadot$Staking$Bond$Builder;
    .locals 1

    .line 1699
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$Bond;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Bond;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Polkadot$Staking$Bond$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Polkadot$Staking$Bond;)Lwallet/core/jni/proto/Polkadot$Staking$Bond$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 1702
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$Bond;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Bond;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$Bond$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Polkadot$Staking$Bond;
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

    .line 1676
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$Bond;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Bond;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$Bond;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Polkadot$Staking$Bond;
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

    .line 1682
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$Bond;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Bond;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$Bond;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Polkadot$Staking$Bond;
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

    .line 1640
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$Bond;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Bond;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$Bond;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Polkadot$Staking$Bond;
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

    .line 1647
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$Bond;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Bond;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$Bond;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Polkadot$Staking$Bond;
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

    .line 1687
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$Bond;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Bond;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$Bond;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Polkadot$Staking$Bond;
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

    .line 1694
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$Bond;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Bond;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$Bond;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Polkadot$Staking$Bond;
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

    .line 1664
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$Bond;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Bond;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$Bond;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Polkadot$Staking$Bond;
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

    .line 1671
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$Bond;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Bond;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$Bond;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Polkadot$Staking$Bond;
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

    .line 1627
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$Bond;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Bond;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$Bond;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Polkadot$Staking$Bond;
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

    .line 1634
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$Bond;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Bond;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$Bond;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Polkadot$Staking$Bond;
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

    .line 1652
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$Bond;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Bond;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$Bond;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Polkadot$Staking$Bond;
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

    .line 1659
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$Bond;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Bond;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Polkadot$Staking$Bond;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Polkadot$Staking$Bond;",
            ">;"
        }
    .end annotation

    .line 1971
    sget-object v0, Lwallet/core/jni/proto/Polkadot$Staking$Bond;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Bond;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setController(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1493
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1495
    iput-object p1, p0, Lwallet/core/jni/proto/Polkadot$Staking$Bond;->controller_:Ljava/lang/String;

    return-void
.end method

.method private setControllerBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1518
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1519
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Polkadot$Staking$Bond;->controller_:Ljava/lang/String;

    return-void
.end method

.method private setRewardDestination(Lwallet/core/jni/proto/Polkadot$RewardDestination;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1609
    invoke-virtual {p1}, Lwallet/core/jni/proto/Polkadot$RewardDestination;->getNumber()I

    move-result p1

    iput p1, p0, Lwallet/core/jni/proto/Polkadot$Staking$Bond;->rewardDestination_:I

    return-void
.end method

.method private setRewardDestinationValue(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1598
    iput p1, p0, Lwallet/core/jni/proto/Polkadot$Staking$Bond;->rewardDestination_:I

    return-void
.end method

.method private setValue(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1546
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1548
    iput-object p1, p0, Lwallet/core/jni/proto/Polkadot$Staking$Bond;->value_:Lcom/google/protobuf/ByteString;

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

    .line 1905
    sget-object p2, Lwallet/core/jni/proto/Polkadot$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1949
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 1943
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1928
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Polkadot$Staking$Bond;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 1930
    const-class p2, Lwallet/core/jni/proto/Polkadot$Staking$Bond;

    monitor-enter p2

    .line 1931
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Polkadot$Staking$Bond;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 1933
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Polkadot$Staking$Bond;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Bond;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1936
    sput-object p1, Lwallet/core/jni/proto/Polkadot$Staking$Bond;->PARSER:Lcom/google/protobuf/Parser;

    .line 1938
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

    .line 1925
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Polkadot$Staking$Bond;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Bond;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "controller_"

    aput-object v0, p1, p3

    const-string p3, "value_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "rewardDestination_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002\n\u0003\u000c"

    .line 1921
    sget-object p3, Lwallet/core/jni/proto/Polkadot$Staking$Bond;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Polkadot$Staking$Bond;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1910
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Polkadot$Staking$Bond$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Polkadot$Staking$Bond$Builder;-><init>(Lwallet/core/jni/proto/Polkadot$1;)V

    return-object p1

    .line 1907
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Polkadot$Staking$Bond;

    invoke-direct {p1}, Lwallet/core/jni/proto/Polkadot$Staking$Bond;-><init>()V

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

.method public getController()Ljava/lang/String;
    .locals 1

    .line 1468
    iget-object v0, p0, Lwallet/core/jni/proto/Polkadot$Staking$Bond;->controller_:Ljava/lang/String;

    return-object v0
.end method

.method public getControllerBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1481
    iget-object v0, p0, Lwallet/core/jni/proto/Polkadot$Staking$Bond;->controller_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRewardDestination()Lwallet/core/jni/proto/Polkadot$RewardDestination;
    .locals 1

    .line 1586
    iget v0, p0, Lwallet/core/jni/proto/Polkadot$Staking$Bond;->rewardDestination_:I

    invoke-static {v0}, Lwallet/core/jni/proto/Polkadot$RewardDestination;->forNumber(I)Lwallet/core/jni/proto/Polkadot$RewardDestination;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1587
    sget-object v0, Lwallet/core/jni/proto/Polkadot$RewardDestination;->UNRECOGNIZED:Lwallet/core/jni/proto/Polkadot$RewardDestination;

    :cond_0
    return-object v0
.end method

.method public getRewardDestinationValue()I
    .locals 1

    .line 1574
    iget v0, p0, Lwallet/core/jni/proto/Polkadot$Staking$Bond;->rewardDestination_:I

    return v0
.end method

.method public getValue()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1535
    iget-object v0, p0, Lwallet/core/jni/proto/Polkadot$Staking$Bond;->value_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method
