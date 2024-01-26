.class public final Lwallet/core/jni/proto/Cardano$Withdraw;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Cardano.java"

# interfaces
.implements Lwallet/core/jni/proto/Cardano$WithdrawOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cardano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Withdraw"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Cardano$Withdraw$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Cardano$Withdraw;",
        "Lwallet/core/jni/proto/Cardano$Withdraw$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Cardano$WithdrawOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$Withdraw;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Cardano$Withdraw;",
            ">;"
        }
    .end annotation
.end field

.field public static final STAKING_ADDRESS_FIELD_NUMBER:I = 0x1

.field public static final WITHDRAW_AMOUNT_FIELD_NUMBER:I = 0x2


# instance fields
.field private stakingAddress_:Ljava/lang/String;

.field private withdrawAmount_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5834
    new-instance v0, Lwallet/core/jni/proto/Cardano$Withdraw;

    invoke-direct {v0}, Lwallet/core/jni/proto/Cardano$Withdraw;-><init>()V

    .line 5837
    sput-object v0, Lwallet/core/jni/proto/Cardano$Withdraw;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$Withdraw;

    .line 5838
    const-class v1, Lwallet/core/jni/proto/Cardano$Withdraw;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5461
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 5462
    iput-object v0, p0, Lwallet/core/jni/proto/Cardano$Withdraw;->stakingAddress_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$9300()Lwallet/core/jni/proto/Cardano$Withdraw;
    .locals 1

    .line 5456
    sget-object v0, Lwallet/core/jni/proto/Cardano$Withdraw;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$Withdraw;

    return-object v0
.end method

.method static synthetic access$9400(Lwallet/core/jni/proto/Cardano$Withdraw;Ljava/lang/String;)V
    .locals 0

    .line 5456
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cardano$Withdraw;->setStakingAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9500(Lwallet/core/jni/proto/Cardano$Withdraw;)V
    .locals 0

    .line 5456
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$Withdraw;->clearStakingAddress()V

    return-void
.end method

.method static synthetic access$9600(Lwallet/core/jni/proto/Cardano$Withdraw;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 5456
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cardano$Withdraw;->setStakingAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$9700(Lwallet/core/jni/proto/Cardano$Withdraw;J)V
    .locals 0

    .line 5456
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Cardano$Withdraw;->setWithdrawAmount(J)V

    return-void
.end method

.method static synthetic access$9800(Lwallet/core/jni/proto/Cardano$Withdraw;)V
    .locals 0

    .line 5456
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$Withdraw;->clearWithdrawAmount()V

    return-void
.end method

.method private clearStakingAddress()V
    .locals 1

    .line 5514
    invoke-static {}, Lwallet/core/jni/proto/Cardano$Withdraw;->getDefaultInstance()Lwallet/core/jni/proto/Cardano$Withdraw;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$Withdraw;->getStakingAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cardano$Withdraw;->stakingAddress_:Ljava/lang/String;

    return-void
.end method

.method private clearWithdrawAmount()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 5566
    iput-wide v0, p0, Lwallet/core/jni/proto/Cardano$Withdraw;->withdrawAmount_:J

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Cardano$Withdraw;
    .locals 1

    .line 5843
    sget-object v0, Lwallet/core/jni/proto/Cardano$Withdraw;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$Withdraw;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Cardano$Withdraw$Builder;
    .locals 1

    .line 5644
    sget-object v0, Lwallet/core/jni/proto/Cardano$Withdraw;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$Withdraw;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Cardano$Withdraw$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Cardano$Withdraw;)Lwallet/core/jni/proto/Cardano$Withdraw$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 5647
    sget-object v0, Lwallet/core/jni/proto/Cardano$Withdraw;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$Withdraw;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$Withdraw$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Cardano$Withdraw;
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

    .line 5621
    sget-object v0, Lwallet/core/jni/proto/Cardano$Withdraw;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$Withdraw;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$Withdraw;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cardano$Withdraw;
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

    .line 5627
    sget-object v0, Lwallet/core/jni/proto/Cardano$Withdraw;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$Withdraw;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$Withdraw;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cardano$Withdraw;
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

    .line 5585
    sget-object v0, Lwallet/core/jni/proto/Cardano$Withdraw;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$Withdraw;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$Withdraw;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cardano$Withdraw;
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

    .line 5592
    sget-object v0, Lwallet/core/jni/proto/Cardano$Withdraw;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$Withdraw;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$Withdraw;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Cardano$Withdraw;
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

    .line 5632
    sget-object v0, Lwallet/core/jni/proto/Cardano$Withdraw;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$Withdraw;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$Withdraw;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cardano$Withdraw;
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

    .line 5639
    sget-object v0, Lwallet/core/jni/proto/Cardano$Withdraw;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$Withdraw;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$Withdraw;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Cardano$Withdraw;
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

    .line 5609
    sget-object v0, Lwallet/core/jni/proto/Cardano$Withdraw;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$Withdraw;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$Withdraw;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cardano$Withdraw;
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

    .line 5616
    sget-object v0, Lwallet/core/jni/proto/Cardano$Withdraw;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$Withdraw;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$Withdraw;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Cardano$Withdraw;
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

    .line 5572
    sget-object v0, Lwallet/core/jni/proto/Cardano$Withdraw;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$Withdraw;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$Withdraw;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cardano$Withdraw;
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

    .line 5579
    sget-object v0, Lwallet/core/jni/proto/Cardano$Withdraw;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$Withdraw;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$Withdraw;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Cardano$Withdraw;
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

    .line 5597
    sget-object v0, Lwallet/core/jni/proto/Cardano$Withdraw;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$Withdraw;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$Withdraw;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cardano$Withdraw;
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

    .line 5604
    sget-object v0, Lwallet/core/jni/proto/Cardano$Withdraw;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$Withdraw;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$Withdraw;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Cardano$Withdraw;",
            ">;"
        }
    .end annotation

    .line 5849
    sget-object v0, Lwallet/core/jni/proto/Cardano$Withdraw;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$Withdraw;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
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

    .line 5501
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5503
    iput-object p1, p0, Lwallet/core/jni/proto/Cardano$Withdraw;->stakingAddress_:Ljava/lang/String;

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

    .line 5526
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 5527
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cardano$Withdraw;->stakingAddress_:Ljava/lang/String;

    return-void
.end method

.method private setWithdrawAmount(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5555
    iput-wide p1, p0, Lwallet/core/jni/proto/Cardano$Withdraw;->withdrawAmount_:J

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

    .line 5784
    sget-object p2, Lwallet/core/jni/proto/Cardano$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 5827
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 5821
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 5806
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Cardano$Withdraw;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5808
    const-class p2, Lwallet/core/jni/proto/Cardano$Withdraw;

    monitor-enter p2

    .line 5809
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Cardano$Withdraw;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 5811
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Cardano$Withdraw;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$Withdraw;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 5814
    sput-object p1, Lwallet/core/jni/proto/Cardano$Withdraw;->PARSER:Lcom/google/protobuf/Parser;

    .line 5816
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

    .line 5803
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Cardano$Withdraw;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$Withdraw;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "stakingAddress_"

    aput-object v0, p1, p3

    const-string p3, "withdrawAmount_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0208\u0002\u0003"

    .line 5799
    sget-object p3, Lwallet/core/jni/proto/Cardano$Withdraw;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$Withdraw;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5789
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Cardano$Withdraw$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Cardano$Withdraw$Builder;-><init>(Lwallet/core/jni/proto/Cardano$1;)V

    return-object p1

    .line 5786
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Cardano$Withdraw;

    invoke-direct {p1}, Lwallet/core/jni/proto/Cardano$Withdraw;-><init>()V

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

.method public getStakingAddress()Ljava/lang/String;
    .locals 1

    .line 5476
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$Withdraw;->stakingAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getStakingAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5489
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$Withdraw;->stakingAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getWithdrawAmount()J
    .locals 2

    .line 5543
    iget-wide v0, p0, Lwallet/core/jni/proto/Cardano$Withdraw;->withdrawAmount_:J

    return-wide v0
.end method
