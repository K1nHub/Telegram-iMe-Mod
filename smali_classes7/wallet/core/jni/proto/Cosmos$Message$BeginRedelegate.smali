.class public final Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Cosmos.java"

# interfaces
.implements Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegateOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cosmos$Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BeginRedelegate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;",
        "Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegateOrBuilder;"
    }
.end annotation


# static fields
.field public static final AMOUNT_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

.field public static final DELEGATOR_ADDRESS_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_PREFIX_FIELD_NUMBER:I = 0x5

.field public static final VALIDATOR_DST_ADDRESS_FIELD_NUMBER:I = 0x3

.field public static final VALIDATOR_SRC_ADDRESS_FIELD_NUMBER:I = 0x2


# instance fields
.field private amount_:Lwallet/core/jni/proto/Cosmos$Amount;

.field private delegatorAddress_:Ljava/lang/String;

.field private typePrefix_:Ljava/lang/String;

.field private validatorDstAddress_:Ljava/lang/String;

.field private validatorSrcAddress_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 6037
    new-instance v0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

    invoke-direct {v0}, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;-><init>()V

    .line 6040
    sput-object v0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

    .line 6041
    const-class v1, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5395
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 5396
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->delegatorAddress_:Ljava/lang/String;

    .line 5397
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->validatorSrcAddress_:Ljava/lang/String;

    .line 5398
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->validatorDstAddress_:Ljava/lang/String;

    .line 5399
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->typePrefix_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$10000(Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 5390
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->setValidatorDstAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$10100(Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;Lwallet/core/jni/proto/Cosmos$Amount;)V
    .locals 0

    .line 5390
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->setAmount(Lwallet/core/jni/proto/Cosmos$Amount;)V

    return-void
.end method

.method static synthetic access$10200(Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;Lwallet/core/jni/proto/Cosmos$Amount;)V
    .locals 0

    .line 5390
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->mergeAmount(Lwallet/core/jni/proto/Cosmos$Amount;)V

    return-void
.end method

.method static synthetic access$10300(Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;)V
    .locals 0

    .line 5390
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->clearAmount()V

    return-void
.end method

.method static synthetic access$10400(Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;Ljava/lang/String;)V
    .locals 0

    .line 5390
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->setTypePrefix(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10500(Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;)V
    .locals 0

    .line 5390
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->clearTypePrefix()V

    return-void
.end method

.method static synthetic access$10600(Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 5390
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->setTypePrefixBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$9100()Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;
    .locals 1

    .line 5390
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

    return-object v0
.end method

.method static synthetic access$9200(Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;Ljava/lang/String;)V
    .locals 0

    .line 5390
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->setDelegatorAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9300(Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;)V
    .locals 0

    .line 5390
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->clearDelegatorAddress()V

    return-void
.end method

.method static synthetic access$9400(Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 5390
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->setDelegatorAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$9500(Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;Ljava/lang/String;)V
    .locals 0

    .line 5390
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->setValidatorSrcAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9600(Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;)V
    .locals 0

    .line 5390
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->clearValidatorSrcAddress()V

    return-void
.end method

.method static synthetic access$9700(Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 5390
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->setValidatorSrcAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$9800(Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;Ljava/lang/String;)V
    .locals 0

    .line 5390
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->setValidatorDstAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9900(Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;)V
    .locals 0

    .line 5390
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->clearValidatorDstAddress()V

    return-void
.end method

.method private clearAmount()V
    .locals 1

    const/4 v0, 0x0

    .line 5584
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->amount_:Lwallet/core/jni/proto/Cosmos$Amount;

    return-void
.end method

.method private clearDelegatorAddress()V
    .locals 1

    .line 5435
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->getDelegatorAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->delegatorAddress_:Ljava/lang/String;

    return-void
.end method

.method private clearTypePrefix()V
    .locals 1

    .line 5622
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->getTypePrefix()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->typePrefix_:Ljava/lang/String;

    return-void
.end method

.method private clearValidatorDstAddress()V
    .locals 1

    .line 5529
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->getValidatorDstAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->validatorDstAddress_:Ljava/lang/String;

    return-void
.end method

.method private clearValidatorSrcAddress()V
    .locals 1

    .line 5482
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->getValidatorSrcAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->validatorSrcAddress_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;
    .locals 1

    .line 6046
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

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

    .line 5571
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5572
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->amount_:Lwallet/core/jni/proto/Cosmos$Amount;

    if-eqz v0, :cond_0

    .line 5573
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Amount;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Amount;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5574
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->amount_:Lwallet/core/jni/proto/Cosmos$Amount;

    .line 5575
    invoke-static {v0}, Lwallet/core/jni/proto/Cosmos$Amount;->newBuilder(Lwallet/core/jni/proto/Cosmos$Amount;)Lwallet/core/jni/proto/Cosmos$Amount$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Amount$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Cosmos$Amount;

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->amount_:Lwallet/core/jni/proto/Cosmos$Amount;

    goto :goto_0

    .line 5577
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->amount_:Lwallet/core/jni/proto/Cosmos$Amount;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate$Builder;
    .locals 1

    .line 5710
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;)Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 5713
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;
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

    .line 5687
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;
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

    .line 5693
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;
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

    .line 5651
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;
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

    .line 5658
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;
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

    .line 5698
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;
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

    .line 5705
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;
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

    .line 5675
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;
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

    .line 5682
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;
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

    .line 5638
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;
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

    .line 5645
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;
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

    .line 5663
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;
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

    .line 5670
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;",
            ">;"
        }
    .end annotation

    .line 6052
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

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

    .line 5562
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5563
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->amount_:Lwallet/core/jni/proto/Cosmos$Amount;

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

    .line 5426
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5428
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->delegatorAddress_:Ljava/lang/String;

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

    .line 5443
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 5444
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->delegatorAddress_:Ljava/lang/String;

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

    .line 5613
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5615
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->typePrefix_:Ljava/lang/String;

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

    .line 5630
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 5631
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->typePrefix_:Ljava/lang/String;

    return-void
.end method

.method private setValidatorDstAddress(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5520
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5522
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->validatorDstAddress_:Ljava/lang/String;

    return-void
.end method

.method private setValidatorDstAddressBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5537
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 5538
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->validatorDstAddress_:Ljava/lang/String;

    return-void
.end method

.method private setValidatorSrcAddress(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5473
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5475
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->validatorSrcAddress_:Ljava/lang/String;

    return-void
.end method

.method private setValidatorSrcAddressBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 5490
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 5491
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->validatorSrcAddress_:Ljava/lang/String;

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

    .line 5984
    sget-object p2, Lwallet/core/jni/proto/Cosmos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 6030
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 6024
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 6009
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 6011
    const-class p2, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

    monitor-enter p2

    .line 6012
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 6014
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 6017
    sput-object p1, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->PARSER:Lcom/google/protobuf/Parser;

    .line 6019
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

    .line 6006
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "delegatorAddress_"

    aput-object v0, p1, p3

    const-string p3, "validatorSrcAddress_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "validatorDstAddress_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "amount_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "typePrefix_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u0208\u0004\t\u0005\u0208"

    .line 6002
    sget-object p3, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5989
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate$Builder;-><init>(Lwallet/core/jni/proto/Cosmos$1;)V

    return-object p1

    .line 5986
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;

    invoke-direct {p1}, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;-><init>()V

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

.method public getAmount()Lwallet/core/jni/proto/Cosmos$Amount;
    .locals 1

    .line 5556
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->amount_:Lwallet/core/jni/proto/Cosmos$Amount;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Amount;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Amount;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDelegatorAddress()Ljava/lang/String;
    .locals 1

    .line 5409
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->delegatorAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getDelegatorAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5418
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->delegatorAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTypePrefix()Ljava/lang/String;
    .locals 1

    .line 5596
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->typePrefix_:Ljava/lang/String;

    return-object v0
.end method

.method public getTypePrefixBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5605
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->typePrefix_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getValidatorDstAddress()Ljava/lang/String;
    .locals 1

    .line 5503
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->validatorDstAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getValidatorDstAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5512
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->validatorDstAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getValidatorSrcAddress()Ljava/lang/String;
    .locals 1

    .line 5456
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->validatorSrcAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getValidatorSrcAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5465
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->validatorSrcAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasAmount()Z
    .locals 1

    .line 5549
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$BeginRedelegate;->amount_:Lwallet/core/jni/proto/Cosmos$Amount;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
