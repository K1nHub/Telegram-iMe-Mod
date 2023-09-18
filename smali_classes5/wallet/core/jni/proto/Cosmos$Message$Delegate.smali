.class public final Lwallet/core/jni/proto/Cosmos$Message$Delegate;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Cosmos.java"

# interfaces
.implements Lwallet/core/jni/proto/Cosmos$Message$DelegateOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cosmos$Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Delegate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Cosmos$Message$Delegate$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Cosmos$Message$Delegate;",
        "Lwallet/core/jni/proto/Cosmos$Message$Delegate$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Cosmos$Message$DelegateOrBuilder;"
    }
.end annotation


# static fields
.field public static final AMOUNT_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Delegate;

.field public static final DELEGATOR_ADDRESS_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Cosmos$Message$Delegate;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_PREFIX_FIELD_NUMBER:I = 0x4

.field public static final VALIDATOR_ADDRESS_FIELD_NUMBER:I = 0x2


# instance fields
.field private amount_:Lwallet/core/jni/proto/Cosmos$Amount;

.field private delegatorAddress_:Ljava/lang/String;

.field private typePrefix_:Ljava/lang/String;

.field private validatorAddress_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 4675
    new-instance v0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;

    invoke-direct {v0}, Lwallet/core/jni/proto/Cosmos$Message$Delegate;-><init>()V

    .line 4678
    sput-object v0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Delegate;

    .line 4679
    const-class v1, Lwallet/core/jni/proto/Cosmos$Message$Delegate;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 4131
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 4132
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->delegatorAddress_:Ljava/lang/String;

    .line 4133
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->validatorAddress_:Ljava/lang/String;

    .line 4134
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->typePrefix_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6300()Lwallet/core/jni/proto/Cosmos$Message$Delegate;
    .locals 1

    .line 4126
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Delegate;

    return-object v0
.end method

.method static synthetic access$6400(Lwallet/core/jni/proto/Cosmos$Message$Delegate;Ljava/lang/String;)V
    .locals 0

    .line 4126
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->setDelegatorAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6500(Lwallet/core/jni/proto/Cosmos$Message$Delegate;)V
    .locals 0

    .line 4126
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->clearDelegatorAddress()V

    return-void
.end method

.method static synthetic access$6600(Lwallet/core/jni/proto/Cosmos$Message$Delegate;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 4126
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->setDelegatorAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$6700(Lwallet/core/jni/proto/Cosmos$Message$Delegate;Ljava/lang/String;)V
    .locals 0

    .line 4126
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->setValidatorAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6800(Lwallet/core/jni/proto/Cosmos$Message$Delegate;)V
    .locals 0

    .line 4126
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->clearValidatorAddress()V

    return-void
.end method

.method static synthetic access$6900(Lwallet/core/jni/proto/Cosmos$Message$Delegate;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 4126
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->setValidatorAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$7000(Lwallet/core/jni/proto/Cosmos$Message$Delegate;Lwallet/core/jni/proto/Cosmos$Amount;)V
    .locals 0

    .line 4126
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->setAmount(Lwallet/core/jni/proto/Cosmos$Amount;)V

    return-void
.end method

.method static synthetic access$7100(Lwallet/core/jni/proto/Cosmos$Message$Delegate;Lwallet/core/jni/proto/Cosmos$Amount;)V
    .locals 0

    .line 4126
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->mergeAmount(Lwallet/core/jni/proto/Cosmos$Amount;)V

    return-void
.end method

.method static synthetic access$7200(Lwallet/core/jni/proto/Cosmos$Message$Delegate;)V
    .locals 0

    .line 4126
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->clearAmount()V

    return-void
.end method

.method static synthetic access$7300(Lwallet/core/jni/proto/Cosmos$Message$Delegate;Ljava/lang/String;)V
    .locals 0

    .line 4126
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->setTypePrefix(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7400(Lwallet/core/jni/proto/Cosmos$Message$Delegate;)V
    .locals 0

    .line 4126
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->clearTypePrefix()V

    return-void
.end method

.method static synthetic access$7500(Lwallet/core/jni/proto/Cosmos$Message$Delegate;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 4126
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->setTypePrefixBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearAmount()V
    .locals 1

    const/4 v0, 0x0

    .line 4272
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->amount_:Lwallet/core/jni/proto/Cosmos$Amount;

    return-void
.end method

.method private clearDelegatorAddress()V
    .locals 1

    .line 4170
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$Delegate;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->getDelegatorAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->delegatorAddress_:Ljava/lang/String;

    return-void
.end method

.method private clearTypePrefix()V
    .locals 1

    .line 4310
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$Delegate;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->getTypePrefix()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->typePrefix_:Ljava/lang/String;

    return-void
.end method

.method private clearValidatorAddress()V
    .locals 1

    .line 4217
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$Delegate;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->getValidatorAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->validatorAddress_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$Delegate;
    .locals 1

    .line 4684
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Delegate;

    return-object v0
.end method

.method private mergeAmount(Lwallet/core/jni/proto/Cosmos$Amount;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4259
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4260
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->amount_:Lwallet/core/jni/proto/Cosmos$Amount;

    if-eqz v0, :cond_0

    .line 4261
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Amount;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Amount;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4262
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->amount_:Lwallet/core/jni/proto/Cosmos$Amount;

    .line 4263
    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Amount;->newBuilder(Lwallet/core/jni/proto/Cosmos$Amount;)Lwallet/core/jni/proto/Cosmos$Amount$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Amount$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Amount;

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->amount_:Lwallet/core/jni/proto/Cosmos$Amount;

    goto :goto_0

    .line 4265
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->amount_:Lwallet/core/jni/proto/Cosmos$Amount;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Cosmos$Message$Delegate$Builder;
    .locals 1

    .line 4398
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Delegate;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Delegate$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Cosmos$Message$Delegate;)Lwallet/core/jni/proto/Cosmos$Message$Delegate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 4401
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Delegate;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$Delegate$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Cosmos$Message$Delegate;
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

    .line 4375
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Delegate;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$Delegate;
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

    .line 4381
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Delegate;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$Delegate;
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

    .line 4339
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Delegate;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$Delegate;
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

    .line 4346
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Delegate;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Cosmos$Message$Delegate;
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

    .line 4386
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Delegate;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$Delegate;
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

    .line 4393
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Delegate;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Cosmos$Message$Delegate;
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

    .line 4363
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Delegate;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$Delegate;
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

    .line 4370
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Delegate;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Cosmos$Message$Delegate;
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

    .line 4326
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Delegate;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$Delegate;
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

    .line 4333
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Delegate;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Cosmos$Message$Delegate;
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

    .line 4351
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Delegate;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$Delegate;
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

    .line 4358
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Delegate;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Cosmos$Message$Delegate;",
            ">;"
        }
    .end annotation

    .line 4690
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Delegate;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAmount(Lwallet/core/jni/proto/Cosmos$Amount;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4250
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4251
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->amount_:Lwallet/core/jni/proto/Cosmos$Amount;

    return-void
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

    .line 4161
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4163
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->delegatorAddress_:Ljava/lang/String;

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

    .line 4178
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 4179
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->delegatorAddress_:Ljava/lang/String;

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

    .line 4301
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4303
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->typePrefix_:Ljava/lang/String;

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

    .line 4318
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 4319
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->typePrefix_:Ljava/lang/String;

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

    .line 4208
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4210
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->validatorAddress_:Ljava/lang/String;

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

    .line 4225
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 4226
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->validatorAddress_:Ljava/lang/String;

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

    .line 4623
    sget-object p2, Lwallet/core/jni/proto/Cosmos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 4668
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 4662
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 4647
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 4649
    const-class p2, Lwallet/core/jni/proto/Cosmos$Message$Delegate;

    monitor-enter p2

    .line 4650
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 4652
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Delegate;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 4655
    sput-object p1, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->PARSER:Lcom/google/protobuf/Parser;

    .line 4657
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

    .line 4644
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Delegate;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "delegatorAddress_"

    aput-object v0, p1, p3

    const-string p3, "validatorAddress_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "amount_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "typePrefix_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\t\u0004\u0208"

    .line 4640
    sget-object p3, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Delegate;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4628
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Cosmos$Message$Delegate$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Cosmos$Message$Delegate$Builder;-><init>(Lwallet/core/jni/proto/Cosmos$1;)V

    return-object p1

    .line 4625
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Cosmos$Message$Delegate;

    invoke-direct {p1}, Lwallet/core/jni/proto/Cosmos$Message$Delegate;-><init>()V

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

.method public getAmount()Lwallet/core/jni/proto/Cosmos$Amount;
    .locals 1

    .line 4244
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->amount_:Lwallet/core/jni/proto/Cosmos$Amount;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Amount;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Amount;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDelegatorAddress()Ljava/lang/String;
    .locals 1

    .line 4144
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->delegatorAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getDelegatorAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4153
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->delegatorAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTypePrefix()Ljava/lang/String;
    .locals 1

    .line 4284
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->typePrefix_:Ljava/lang/String;

    return-object v0
.end method

.method public getTypePrefixBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4293
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->typePrefix_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getValidatorAddress()Ljava/lang/String;
    .locals 1

    .line 4191
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->validatorAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getValidatorAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4200
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->validatorAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasAmount()Z
    .locals 1

    .line 4237
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Delegate;->amount_:Lwallet/core/jni/proto/Cosmos$Amount;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
