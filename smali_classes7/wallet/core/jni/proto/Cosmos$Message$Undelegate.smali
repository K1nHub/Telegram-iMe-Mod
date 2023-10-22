.class public final Lwallet/core/jni/proto/Cosmos$Message$Undelegate;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Cosmos.java"

# interfaces
.implements Lwallet/core/jni/proto/Cosmos$Message$UndelegateOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cosmos$Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Undelegate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Cosmos$Message$Undelegate$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Cosmos$Message$Undelegate;",
        "Lwallet/core/jni/proto/Cosmos$Message$Undelegate$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Cosmos$Message$UndelegateOrBuilder;"
    }
.end annotation


# static fields
.field public static final AMOUNT_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Undelegate;

.field public static final DELEGATOR_ADDRESS_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Cosmos$Message$Undelegate;",
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

    .line 5301
    new-instance v0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;

    invoke-direct {v0}, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;-><init>()V

    .line 5304
    sput-object v0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Undelegate;

    .line 5305
    const-class v1, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 4757
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 4758
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->delegatorAddress_:Ljava/lang/String;

    .line 4759
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->validatorAddress_:Ljava/lang/String;

    .line 4760
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->typePrefix_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$7700()Lwallet/core/jni/proto/Cosmos$Message$Undelegate;
    .locals 1

    .line 4752
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Undelegate;

    return-object v0
.end method

.method static synthetic access$7800(Lwallet/core/jni/proto/Cosmos$Message$Undelegate;Ljava/lang/String;)V
    .locals 0

    .line 4752
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->setDelegatorAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7900(Lwallet/core/jni/proto/Cosmos$Message$Undelegate;)V
    .locals 0

    .line 4752
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->clearDelegatorAddress()V

    return-void
.end method

.method static synthetic access$8000(Lwallet/core/jni/proto/Cosmos$Message$Undelegate;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 4752
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->setDelegatorAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$8100(Lwallet/core/jni/proto/Cosmos$Message$Undelegate;Ljava/lang/String;)V
    .locals 0

    .line 4752
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->setValidatorAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8200(Lwallet/core/jni/proto/Cosmos$Message$Undelegate;)V
    .locals 0

    .line 4752
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->clearValidatorAddress()V

    return-void
.end method

.method static synthetic access$8300(Lwallet/core/jni/proto/Cosmos$Message$Undelegate;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 4752
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->setValidatorAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$8400(Lwallet/core/jni/proto/Cosmos$Message$Undelegate;Lwallet/core/jni/proto/Cosmos$Amount;)V
    .locals 0

    .line 4752
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->setAmount(Lwallet/core/jni/proto/Cosmos$Amount;)V

    return-void
.end method

.method static synthetic access$8500(Lwallet/core/jni/proto/Cosmos$Message$Undelegate;Lwallet/core/jni/proto/Cosmos$Amount;)V
    .locals 0

    .line 4752
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->mergeAmount(Lwallet/core/jni/proto/Cosmos$Amount;)V

    return-void
.end method

.method static synthetic access$8600(Lwallet/core/jni/proto/Cosmos$Message$Undelegate;)V
    .locals 0

    .line 4752
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->clearAmount()V

    return-void
.end method

.method static synthetic access$8700(Lwallet/core/jni/proto/Cosmos$Message$Undelegate;Ljava/lang/String;)V
    .locals 0

    .line 4752
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->setTypePrefix(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8800(Lwallet/core/jni/proto/Cosmos$Message$Undelegate;)V
    .locals 0

    .line 4752
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->clearTypePrefix()V

    return-void
.end method

.method static synthetic access$8900(Lwallet/core/jni/proto/Cosmos$Message$Undelegate;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 4752
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->setTypePrefixBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearAmount()V
    .locals 1

    const/4 v0, 0x0

    .line 4898
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->amount_:Lwallet/core/jni/proto/Cosmos$Amount;

    return-void
.end method

.method private clearDelegatorAddress()V
    .locals 1

    .line 4796
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$Undelegate;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->getDelegatorAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->delegatorAddress_:Ljava/lang/String;

    return-void
.end method

.method private clearTypePrefix()V
    .locals 1

    .line 4936
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$Undelegate;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->getTypePrefix()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->typePrefix_:Ljava/lang/String;

    return-void
.end method

.method private clearValidatorAddress()V
    .locals 1

    .line 4843
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$Undelegate;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->getValidatorAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->validatorAddress_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$Undelegate;
    .locals 1

    .line 5310
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Undelegate;

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

    .line 4885
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4886
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->amount_:Lwallet/core/jni/proto/Cosmos$Amount;

    if-eqz v0, :cond_0

    .line 4887
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Amount;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Amount;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4888
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->amount_:Lwallet/core/jni/proto/Cosmos$Amount;

    .line 4889
    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Amount;->newBuilder(Lwallet/core/jni/proto/Cosmos$Amount;)Lwallet/core/jni/proto/Cosmos$Amount$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Amount$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Amount;

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->amount_:Lwallet/core/jni/proto/Cosmos$Amount;

    goto :goto_0

    .line 4891
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->amount_:Lwallet/core/jni/proto/Cosmos$Amount;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Cosmos$Message$Undelegate$Builder;
    .locals 1

    .line 5024
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Undelegate;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Cosmos$Message$Undelegate;)Lwallet/core/jni/proto/Cosmos$Message$Undelegate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 5027
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Undelegate;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Cosmos$Message$Undelegate;
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

    .line 5001
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Undelegate;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$Undelegate;
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

    .line 5007
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Undelegate;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$Undelegate;
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

    .line 4965
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Undelegate;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$Undelegate;
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

    .line 4972
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Undelegate;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Cosmos$Message$Undelegate;
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

    .line 5012
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Undelegate;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$Undelegate;
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

    .line 5019
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Undelegate;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Cosmos$Message$Undelegate;
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

    .line 4989
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Undelegate;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$Undelegate;
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

    .line 4996
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Undelegate;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Cosmos$Message$Undelegate;
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

    .line 4952
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Undelegate;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$Undelegate;
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

    .line 4959
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Undelegate;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Cosmos$Message$Undelegate;
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

    .line 4977
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Undelegate;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$Undelegate;
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

    .line 4984
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Undelegate;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Cosmos$Message$Undelegate;",
            ">;"
        }
    .end annotation

    .line 5316
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Undelegate;

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

    .line 4876
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4877
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->amount_:Lwallet/core/jni/proto/Cosmos$Amount;

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

    .line 4787
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4789
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->delegatorAddress_:Ljava/lang/String;

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

    .line 4804
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 4805
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->delegatorAddress_:Ljava/lang/String;

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

    .line 4927
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4929
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->typePrefix_:Ljava/lang/String;

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

    .line 4944
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 4945
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->typePrefix_:Ljava/lang/String;

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

    .line 4834
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4836
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->validatorAddress_:Ljava/lang/String;

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

    .line 4851
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 4852
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->validatorAddress_:Ljava/lang/String;

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

    .line 5249
    sget-object p2, Lwallet/core/jni/proto/Cosmos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 5294
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 5288
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 5273
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5275
    const-class p2, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;

    monitor-enter p2

    .line 5276
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 5278
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Undelegate;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 5281
    sput-object p1, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->PARSER:Lcom/google/protobuf/Parser;

    .line 5283
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

    .line 5270
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Undelegate;

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

    .line 5266
    sget-object p3, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$Undelegate;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5254
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Cosmos$Message$Undelegate$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Cosmos$Message$Undelegate$Builder;-><init>(Lwallet/core/jni/proto/Cosmos$1;)V

    return-object p1

    .line 5251
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;

    invoke-direct {p1}, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;-><init>()V

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

    .line 4870
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->amount_:Lwallet/core/jni/proto/Cosmos$Amount;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Amount;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Amount;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDelegatorAddress()Ljava/lang/String;
    .locals 1

    .line 4770
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->delegatorAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getDelegatorAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4779
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->delegatorAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTypePrefix()Ljava/lang/String;
    .locals 1

    .line 4910
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->typePrefix_:Ljava/lang/String;

    return-object v0
.end method

.method public getTypePrefixBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4919
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->typePrefix_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getValidatorAddress()Ljava/lang/String;
    .locals 1

    .line 4817
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->validatorAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getValidatorAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4826
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->validatorAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasAmount()Z
    .locals 1

    .line 4863
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$Undelegate;->amount_:Lwallet/core/jni/proto/Cosmos$Amount;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
