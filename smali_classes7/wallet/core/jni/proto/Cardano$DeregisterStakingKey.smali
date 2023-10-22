.class public final Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Cardano.java"

# interfaces
.implements Lwallet/core/jni/proto/Cardano$DeregisterStakingKeyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cardano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeregisterStakingKey"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Cardano$DeregisterStakingKey$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;",
        "Lwallet/core/jni/proto/Cardano$DeregisterStakingKey$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Cardano$DeregisterStakingKeyOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;",
            ">;"
        }
    .end annotation
.end field

.field public static final STAKING_ADDRESS_FIELD_NUMBER:I = 0x1

.field public static final UNDEPOSIT_AMOUNT_FIELD_NUMBER:I = 0x2


# instance fields
.field private stakingAddress_:Ljava/lang/String;

.field private undepositAmount_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 4867
    new-instance v0, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;

    invoke-direct {v0}, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;-><init>()V

    .line 4870
    sput-object v0, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;

    .line 4871
    const-class v1, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 4494
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 4495
    iput-object v0, p0, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;->stakingAddress_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$7700()Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;
    .locals 1

    .line 4489
    sget-object v0, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;

    return-object v0
.end method

.method static synthetic access$7800(Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;Ljava/lang/String;)V
    .locals 0

    .line 4489
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;->setStakingAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7900(Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;)V
    .locals 0

    .line 4489
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;->clearStakingAddress()V

    return-void
.end method

.method static synthetic access$8000(Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 4489
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;->setStakingAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$8100(Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;J)V
    .locals 0

    .line 4489
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;->setUndepositAmount(J)V

    return-void
.end method

.method static synthetic access$8200(Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;)V
    .locals 0

    .line 4489
    invoke-direct {p0}, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;->clearUndepositAmount()V

    return-void
.end method

.method private clearStakingAddress()V
    .locals 1

    .line 4547
    invoke-static {}, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;->getDefaultInstance()Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;->getStakingAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;->stakingAddress_:Ljava/lang/String;

    return-void
.end method

.method private clearUndepositAmount()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 4599
    iput-wide v0, p0, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;->undepositAmount_:J

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;
    .locals 1

    .line 4876
    sget-object v0, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Cardano$DeregisterStakingKey$Builder;
    .locals 1

    .line 4677
    sget-object v0, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;)Lwallet/core/jni/proto/Cardano$DeregisterStakingKey$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 4680
    sget-object v0, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;
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

    .line 4654
    sget-object v0, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;
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

    .line 4660
    sget-object v0, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;
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

    .line 4618
    sget-object v0, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;
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

    .line 4625
    sget-object v0, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;
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

    .line 4665
    sget-object v0, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;
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

    .line 4672
    sget-object v0, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;
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

    .line 4642
    sget-object v0, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;
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

    .line 4649
    sget-object v0, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;
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

    .line 4605
    sget-object v0, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;
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

    .line 4612
    sget-object v0, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;
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

    .line 4630
    sget-object v0, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;
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

    .line 4637
    sget-object v0, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;",
            ">;"
        }
    .end annotation

    .line 4882
    sget-object v0, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;

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

    .line 4534
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4536
    iput-object p1, p0, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;->stakingAddress_:Ljava/lang/String;

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

    .line 4559
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 4560
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;->stakingAddress_:Ljava/lang/String;

    return-void
.end method

.method private setUndepositAmount(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4588
    iput-wide p1, p0, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;->undepositAmount_:J

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

    .line 4817
    sget-object p2, Lwallet/core/jni/proto/Cardano$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 4860
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 4854
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 4839
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 4841
    const-class p2, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;

    monitor-enter p2

    .line 4842
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 4844
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 4847
    sput-object p1, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;->PARSER:Lcom/google/protobuf/Parser;

    .line 4849
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

    .line 4836
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "stakingAddress_"

    aput-object v0, p1, p3

    const-string p3, "undepositAmount_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0208\u0002\u0003"

    .line 4832
    sget-object p3, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4822
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey$Builder;-><init>(Lwallet/core/jni/proto/Cardano$1;)V

    return-object p1

    .line 4819
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;

    invoke-direct {p1}, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;-><init>()V

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

    .line 4509
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;->stakingAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getStakingAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4522
    iget-object v0, p0, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;->stakingAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getUndepositAmount()J
    .locals 2

    .line 4576
    iget-wide v0, p0, Lwallet/core/jni/proto/Cardano$DeregisterStakingKey;->undepositAmount_:J

    return-wide v0
.end method
