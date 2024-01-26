.class public final Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Cosmos.java"

# interfaces
.implements Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationRewardOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cosmos$Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WithdrawDelegationReward"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;",
        "Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationRewardOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;

.field public static final DELEGATOR_ADDRESS_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_PREFIX_FIELD_NUMBER:I = 0x3

.field public static final VALIDATOR_ADDRESS_FIELD_NUMBER:I = 0x2


# instance fields
.field private delegatorAddress_:Ljava/lang/String;

.field private typePrefix_:Ljava/lang/String;

.field private validatorAddress_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 6558
    new-instance v0, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;

    invoke-direct {v0}, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;-><init>()V

    .line 6561
    sput-object v0, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;

    .line 6562
    const-class v1, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 6108
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 6109
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->delegatorAddress_:Ljava/lang/String;

    .line 6110
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->validatorAddress_:Ljava/lang/String;

    .line 6111
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->typePrefix_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$10800()Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;
    .locals 1

    .line 6103
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;

    return-object v0
.end method

.method static synthetic access$10900(Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;Ljava/lang/String;)V
    .locals 0

    .line 6103
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->setDelegatorAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11000(Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;)V
    .locals 0

    .line 6103
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->clearDelegatorAddress()V

    return-void
.end method

.method static synthetic access$11100(Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 6103
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->setDelegatorAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$11200(Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;Ljava/lang/String;)V
    .locals 0

    .line 6103
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->setValidatorAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11300(Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;)V
    .locals 0

    .line 6103
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->clearValidatorAddress()V

    return-void
.end method

.method static synthetic access$11400(Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 6103
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->setValidatorAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$11500(Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;Ljava/lang/String;)V
    .locals 0

    .line 6103
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->setTypePrefix(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11600(Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;)V
    .locals 0

    .line 6103
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->clearTypePrefix()V

    return-void
.end method

.method static synthetic access$11700(Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 6103
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->setTypePrefixBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearDelegatorAddress()V
    .locals 1

    .line 6147
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->getDelegatorAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->delegatorAddress_:Ljava/lang/String;

    return-void
.end method

.method private clearTypePrefix()V
    .locals 1

    .line 6241
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->getTypePrefix()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->typePrefix_:Ljava/lang/String;

    return-void
.end method

.method private clearValidatorAddress()V
    .locals 1

    .line 6194
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->getValidatorAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->validatorAddress_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;
    .locals 1

    .line 6567
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward$Builder;
    .locals 1

    .line 6329
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;)Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 6332
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;
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

    .line 6306
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;
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

    .line 6312
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;
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

    .line 6270
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;
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

    .line 6277
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;
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

    .line 6317
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;
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

    .line 6324
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;
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

    .line 6294
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;
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

    .line 6301
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;
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

    .line 6257
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;
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

    .line 6264
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;
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

    .line 6282
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;
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

    .line 6289
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;",
            ">;"
        }
    .end annotation

    .line 6573
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;

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

    .line 6138
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6140
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->delegatorAddress_:Ljava/lang/String;

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

    .line 6155
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 6156
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->delegatorAddress_:Ljava/lang/String;

    return-void
.end method

.method private setTypePrefix(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6232
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6234
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->typePrefix_:Ljava/lang/String;

    return-void
.end method

.method private setTypePrefixBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6249
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 6250
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->typePrefix_:Ljava/lang/String;

    return-void
.end method

.method private setValidatorAddress(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6185
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6187
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->validatorAddress_:Ljava/lang/String;

    return-void
.end method

.method private setValidatorAddressBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6202
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 6203
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->validatorAddress_:Ljava/lang/String;

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

    .line 6507
    sget-object p2, Lwallet/core/jni/proto/Cosmos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 6551
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 6545
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 6530
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 6532
    const-class p2, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;

    monitor-enter p2

    .line 6533
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 6535
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 6538
    sput-object p1, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->PARSER:Lcom/google/protobuf/Parser;

    .line 6540
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

    .line 6527
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "delegatorAddress_"

    aput-object v0, p1, p3

    const-string p3, "validatorAddress_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "typePrefix_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u0208"

    .line 6523
    sget-object p3, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6512
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward$Builder;-><init>(Lwallet/core/jni/proto/Cosmos$1;)V

    return-object p1

    .line 6509
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;

    invoke-direct {p1}, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;-><init>()V

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

    .line 6121
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->delegatorAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getDelegatorAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6130
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->delegatorAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTypePrefix()Ljava/lang/String;
    .locals 1

    .line 6215
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->typePrefix_:Ljava/lang/String;

    return-object v0
.end method

.method public getTypePrefixBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6224
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->typePrefix_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getValidatorAddress()Ljava/lang/String;
    .locals 1

    .line 6168
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->validatorAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getValidatorAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6177
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WithdrawDelegationReward;->validatorAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
