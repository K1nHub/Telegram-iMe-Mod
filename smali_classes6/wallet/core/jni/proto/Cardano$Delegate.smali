.class public final Lwallet/core/jni/proto/Cardano$Delegate;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Cardano.java"

# interfaces
.implements Lwallet/core/jni/proto/Cardano$DelegateOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cardano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Delegate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Cardano$Delegate$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Cardano$Delegate;",
        "Lwallet/core/jni/proto/Cardano$Delegate$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Cardano$DelegateOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$Delegate;

.field public static final DEPOSIT_AMOUNT_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Cardano$Delegate;",
            ">;"
        }
    .end annotation
.end field

.field public static final POOL_ID_FIELD_NUMBER:I = 0x2

.field public static final STAKING_ADDRESS_FIELD_NUMBER:I = 0x1


# instance fields
.field private depositAmount_:J

.field private poolId_:Lcom/google/protobuf/ByteString;

.field private stakingAddress_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5396
    new-instance v0, Lwallet/core/jni/proto/Cardano$Delegate;

    invoke-direct {v0}, Lwallet/core/jni/proto/Cardano$Delegate;-><init>()V

    .line 5399
    sput-object v0, Lwallet/core/jni/proto/Cardano$Delegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$Delegate;

    .line 5400
    const-class v1, Lwallet/core/jni/proto/Cardano$Delegate;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 4942
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 4943
    iput-object v0, p0, Lwallet/core/jni/proto/Cardano$Delegate;->stakingAddress_:Ljava/lang/String;

    .line 4944
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Cardano$Delegate;->poolId_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$8400()Lwallet/core/jni/proto/Cardano$Delegate;
    .locals 1

    .line 4937
    sget-object v0, Lwallet/core/jni/proto/Cardano$Delegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$Delegate;

    return-object v0
.end method

.method static synthetic access$8500(Lwallet/core/jni/proto/Cardano$Delegate;Ljava/lang/String;)V
    .locals 0

    .line 4937
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cardano$Delegate;->setStakingAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8600(Lwallet/core/jni/proto/Cardano$Delegate;)V
    .locals 0

    .line 4937
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$Delegate;->clearStakingAddress()V

    return-void
.end method

.method static synthetic access$8700(Lwallet/core/jni/proto/Cardano$Delegate;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 4937
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cardano$Delegate;->setStakingAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$8800(Lwallet/core/jni/proto/Cardano$Delegate;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 4937
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cardano$Delegate;->setPoolId(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$8900(Lwallet/core/jni/proto/Cardano$Delegate;)V
    .locals 0

    .line 4937
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$Delegate;->clearPoolId()V

    return-void
.end method

.method static synthetic access$9000(Lwallet/core/jni/proto/Cardano$Delegate;J)V
    .locals 0

    .line 4937
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Cardano$Delegate;->setDepositAmount(J)V

    return-void
.end method

.method static synthetic access$9100(Lwallet/core/jni/proto/Cardano$Delegate;)V
    .locals 0

    .line 4937
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$Delegate;->clearDepositAmount()V

    return-void
.end method

.method private clearDepositAmount()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 5087
    iput-wide v0, p0, Lwallet/core/jni/proto/Cardano$Delegate;->depositAmount_:J

    return-void
.end method

.method private clearPoolId()V
    .locals 1

    .line 5049
    invoke-static {}, Lwallet/core/jni/proto/Cardano$Delegate;->getDefaultInstance()Lwallet/core/jni/proto/Cardano$Delegate;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$Delegate;->getPoolId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cardano$Delegate;->poolId_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearStakingAddress()V
    .locals 1

    .line 4996
    invoke-static {}, Lwallet/core/jni/proto/Cardano$Delegate;->getDefaultInstance()Lwallet/core/jni/proto/Cardano$Delegate;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$Delegate;->getStakingAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cardano$Delegate;->stakingAddress_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Cardano$Delegate;
    .locals 1

    .line 5405
    sget-object v0, Lwallet/core/jni/proto/Cardano$Delegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$Delegate;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Cardano$Delegate$Builder;
    .locals 1

    .line 5165
    sget-object v0, Lwallet/core/jni/proto/Cardano$Delegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$Delegate;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Cardano$Delegate$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Cardano$Delegate;)Lwallet/core/jni/proto/Cardano$Delegate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 5168
    sget-object v0, Lwallet/core/jni/proto/Cardano$Delegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$Delegate;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$Delegate$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Cardano$Delegate;
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

    .line 5142
    sget-object v0, Lwallet/core/jni/proto/Cardano$Delegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$Delegate;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$Delegate;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cardano$Delegate;
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

    .line 5148
    sget-object v0, Lwallet/core/jni/proto/Cardano$Delegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$Delegate;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$Delegate;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cardano$Delegate;
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

    .line 5106
    sget-object v0, Lwallet/core/jni/proto/Cardano$Delegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$Delegate;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$Delegate;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cardano$Delegate;
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

    .line 5113
    sget-object v0, Lwallet/core/jni/proto/Cardano$Delegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$Delegate;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$Delegate;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Cardano$Delegate;
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

    .line 5153
    sget-object v0, Lwallet/core/jni/proto/Cardano$Delegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$Delegate;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$Delegate;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cardano$Delegate;
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

    .line 5160
    sget-object v0, Lwallet/core/jni/proto/Cardano$Delegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$Delegate;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$Delegate;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Cardano$Delegate;
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

    .line 5130
    sget-object v0, Lwallet/core/jni/proto/Cardano$Delegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$Delegate;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$Delegate;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cardano$Delegate;
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

    .line 5137
    sget-object v0, Lwallet/core/jni/proto/Cardano$Delegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$Delegate;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$Delegate;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Cardano$Delegate;
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

    .line 5093
    sget-object v0, Lwallet/core/jni/proto/Cardano$Delegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$Delegate;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$Delegate;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cardano$Delegate;
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

    .line 5100
    sget-object v0, Lwallet/core/jni/proto/Cardano$Delegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$Delegate;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$Delegate;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Cardano$Delegate;
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

    .line 5118
    sget-object v0, Lwallet/core/jni/proto/Cardano$Delegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$Delegate;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$Delegate;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cardano$Delegate;
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

    .line 5125
    sget-object v0, Lwallet/core/jni/proto/Cardano$Delegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$Delegate;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$Delegate;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Cardano$Delegate;",
            ">;"
        }
    .end annotation

    .line 5411
    sget-object v0, Lwallet/core/jni/proto/Cardano$Delegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$Delegate;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setDepositAmount(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5076
    iput-wide p1, p0, Lwallet/core/jni/proto/Cardano$Delegate;->depositAmount_:J

    return-void
.end method

.method private setPoolId(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5036
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5038
    iput-object p1, p0, Lwallet/core/jni/proto/Cardano$Delegate;->poolId_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setStakingAddress(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4983
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4985
    iput-object p1, p0, Lwallet/core/jni/proto/Cardano$Delegate;->stakingAddress_:Ljava/lang/String;

    return-void
.end method

.method private setStakingAddressBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5008
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 5009
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cardano$Delegate;->stakingAddress_:Ljava/lang/String;

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

    .line 5345
    sget-object p2, Lwallet/core/jni/proto/Cardano$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 5389
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 5383
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 5368
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Cardano$Delegate;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5370
    const-class p2, Lwallet/core/jni/proto/Cardano$Delegate;

    monitor-enter p2

    .line 5371
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Cardano$Delegate;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 5373
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Cardano$Delegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$Delegate;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 5376
    sput-object p1, Lwallet/core/jni/proto/Cardano$Delegate;->PARSER:Lcom/google/protobuf/Parser;

    .line 5378
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

    .line 5365
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Cardano$Delegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$Delegate;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "stakingAddress_"

    aput-object v0, p1, p3

    const-string p3, "poolId_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "depositAmount_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002\n\u0003\u0003"

    .line 5361
    sget-object p3, Lwallet/core/jni/proto/Cardano$Delegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$Delegate;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5350
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Cardano$Delegate$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Cardano$Delegate$Builder;-><init>(Lwallet/core/jni/proto/Cardano$1;)V

    return-object p1

    .line 5347
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Cardano$Delegate;

    invoke-direct {p1}, Lwallet/core/jni/proto/Cardano$Delegate;-><init>()V

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

.method public getDepositAmount()J
    .locals 2

    .line 5064
    iget-wide v0, p0, Lwallet/core/jni/proto/Cardano$Delegate;->depositAmount_:J

    return-wide v0
.end method

.method public getPoolId()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5025
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$Delegate;->poolId_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getStakingAddress()Ljava/lang/String;
    .locals 1

    .line 4958
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$Delegate;->stakingAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getStakingAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4971
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$Delegate;->stakingAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
