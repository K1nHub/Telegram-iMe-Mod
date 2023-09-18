.class public final Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Harmony.java"

# interfaces
.implements Lwallet/core/jni/proto/Harmony$DirectiveCollectRewardsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Harmony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DirectiveCollectRewards"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;",
        "Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Harmony$DirectiveCollectRewardsOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;

.field public static final DELEGATOR_ADDRESS_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private delegatorAddress_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 8636
    new-instance v0, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;

    invoke-direct {v0}, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;-><init>()V

    .line 8639
    sput-object v0, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;

    .line 8640
    const-class v1, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 8343
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 8344
    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;->delegatorAddress_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$16800()Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;
    .locals 1

    .line 8338
    sget-object v0, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;

    return-object v0
.end method

.method static synthetic access$16900(Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;Ljava/lang/String;)V
    .locals 0

    .line 8338
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;->setDelegatorAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$17000(Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;)V
    .locals 0

    .line 8338
    invoke-direct {p0}, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;->clearDelegatorAddress()V

    return-void
.end method

.method static synthetic access$17100(Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 8338
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;->setDelegatorAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearDelegatorAddress()V
    .locals 1

    .line 8396
    invoke-static {}, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;->getDefaultInstance()Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;->getDelegatorAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;->delegatorAddress_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;
    .locals 1

    .line 8645
    sget-object v0, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards$Builder;
    .locals 1

    .line 8488
    sget-object v0, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;)Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 8491
    sget-object v0, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;
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

    .line 8465
    sget-object v0, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;
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

    .line 8471
    sget-object v0, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;
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

    .line 8429
    sget-object v0, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;
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

    .line 8436
    sget-object v0, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;
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

    .line 8476
    sget-object v0, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;
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

    .line 8483
    sget-object v0, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;
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

    .line 8453
    sget-object v0, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;
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

    .line 8460
    sget-object v0, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;
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

    .line 8416
    sget-object v0, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;
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

    .line 8423
    sget-object v0, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;
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

    .line 8441
    sget-object v0, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;
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

    .line 8448
    sget-object v0, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;",
            ">;"
        }
    .end annotation

    .line 8651
    sget-object v0, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setDelegatorAddress(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8383
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8385
    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;->delegatorAddress_:Ljava/lang/String;

    return-void
.end method

.method private setDelegatorAddressBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 8408
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 8409
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;->delegatorAddress_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
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

    .line 8588
    sget-object p2, Lwallet/core/jni/proto/Harmony$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 8629
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 8623
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 8608
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 8610
    const-class p2, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;

    monitor-enter p2

    .line 8611
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 8613
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8616
    sput-object p1, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;->PARSER:Lcom/google/protobuf/Parser;

    .line 8618
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

    .line 8605
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;

    return-object p1

    :pswitch_4
    new-array p1, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "delegatorAddress_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0208"

    .line 8601
    sget-object p3, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 8593
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards$Builder;-><init>(Lwallet/core/jni/proto/Harmony$1;)V

    return-object p1

    .line 8590
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;

    invoke-direct {p1}, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;-><init>()V

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

.method public getDelegatorAddress()Ljava/lang/String;
    .locals 1

    .line 8358
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;->delegatorAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getDelegatorAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 8371
    iget-object v0, p0, Lwallet/core/jni/proto/Harmony$DirectiveCollectRewards;->delegatorAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
