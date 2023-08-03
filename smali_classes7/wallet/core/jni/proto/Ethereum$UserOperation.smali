.class public final Lwallet/core/jni/proto/Ethereum$UserOperation;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Ethereum.java"

# interfaces
.implements Lwallet/core/jni/proto/Ethereum$UserOperationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Ethereum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UserOperation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Ethereum$UserOperation$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Ethereum$UserOperation;",
        "Lwallet/core/jni/proto/Ethereum$UserOperation$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Ethereum$UserOperationOrBuilder;"
    }
.end annotation


# static fields
.field public static final ACCOUNT_FACTORY_FIELD_NUMBER:I = 0x2

.field public static final ACCOUNT_LOGIC_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$UserOperation;

.field public static final ENTRY_POINT_FIELD_NUMBER:I = 0x1

.field public static final IS_ACCOUNT_DEPLOYED_FIELD_NUMBER:I = 0x5

.field public static final OWNER_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Ethereum$UserOperation;",
            ">;"
        }
    .end annotation
.end field

.field public static final PAYMASTER_AND_DATA_FIELD_NUMBER:I = 0x8

.field public static final PRE_VERIFICATION_GAS_FIELD_NUMBER:I = 0x6

.field public static final VERIFICATION_GAS_LIMIT_FIELD_NUMBER:I = 0x7


# instance fields
.field private accountFactory_:Ljava/lang/String;

.field private accountLogic_:Ljava/lang/String;

.field private entryPoint_:Ljava/lang/String;

.field private isAccountDeployed_:Z

.field private owner_:Ljava/lang/String;

.field private paymasterAndData_:Lcom/google/protobuf/ByteString;

.field private preVerificationGas_:Lcom/google/protobuf/ByteString;

.field private verificationGasLimit_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5195
    new-instance v0, Lwallet/core/jni/proto/Ethereum$UserOperation;

    invoke-direct {v0}, Lwallet/core/jni/proto/Ethereum$UserOperation;-><init>()V

    .line 5198
    sput-object v0, Lwallet/core/jni/proto/Ethereum$UserOperation;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$UserOperation;

    .line 5199
    const-class v1, Lwallet/core/jni/proto/Ethereum$UserOperation;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 4165
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 4166
    iput-object v0, p0, Lwallet/core/jni/proto/Ethereum$UserOperation;->entryPoint_:Ljava/lang/String;

    .line 4167
    iput-object v0, p0, Lwallet/core/jni/proto/Ethereum$UserOperation;->accountFactory_:Ljava/lang/String;

    .line 4168
    iput-object v0, p0, Lwallet/core/jni/proto/Ethereum$UserOperation;->accountLogic_:Ljava/lang/String;

    .line 4169
    iput-object v0, p0, Lwallet/core/jni/proto/Ethereum$UserOperation;->owner_:Ljava/lang/String;

    .line 4170
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Ethereum$UserOperation;->preVerificationGas_:Lcom/google/protobuf/ByteString;

    .line 4171
    iput-object v0, p0, Lwallet/core/jni/proto/Ethereum$UserOperation;->verificationGasLimit_:Lcom/google/protobuf/ByteString;

    .line 4172
    iput-object v0, p0, Lwallet/core/jni/proto/Ethereum$UserOperation;->paymasterAndData_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$7100()Lwallet/core/jni/proto/Ethereum$UserOperation;
    .locals 1

    .line 4160
    sget-object v0, Lwallet/core/jni/proto/Ethereum$UserOperation;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$UserOperation;

    return-object v0
.end method

.method static synthetic access$7200(Lwallet/core/jni/proto/Ethereum$UserOperation;Ljava/lang/String;)V
    .locals 0

    .line 4160
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ethereum$UserOperation;->setEntryPoint(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7300(Lwallet/core/jni/proto/Ethereum$UserOperation;)V
    .locals 0

    .line 4160
    invoke-direct {p0}, Lwallet/core/jni/proto/Ethereum$UserOperation;->clearEntryPoint()V

    return-void
.end method

.method static synthetic access$7400(Lwallet/core/jni/proto/Ethereum$UserOperation;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 4160
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ethereum$UserOperation;->setEntryPointBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$7500(Lwallet/core/jni/proto/Ethereum$UserOperation;Ljava/lang/String;)V
    .locals 0

    .line 4160
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ethereum$UserOperation;->setAccountFactory(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7600(Lwallet/core/jni/proto/Ethereum$UserOperation;)V
    .locals 0

    .line 4160
    invoke-direct {p0}, Lwallet/core/jni/proto/Ethereum$UserOperation;->clearAccountFactory()V

    return-void
.end method

.method static synthetic access$7700(Lwallet/core/jni/proto/Ethereum$UserOperation;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 4160
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ethereum$UserOperation;->setAccountFactoryBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$7800(Lwallet/core/jni/proto/Ethereum$UserOperation;Ljava/lang/String;)V
    .locals 0

    .line 4160
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ethereum$UserOperation;->setAccountLogic(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7900(Lwallet/core/jni/proto/Ethereum$UserOperation;)V
    .locals 0

    .line 4160
    invoke-direct {p0}, Lwallet/core/jni/proto/Ethereum$UserOperation;->clearAccountLogic()V

    return-void
.end method

.method static synthetic access$8000(Lwallet/core/jni/proto/Ethereum$UserOperation;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 4160
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ethereum$UserOperation;->setAccountLogicBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$8100(Lwallet/core/jni/proto/Ethereum$UserOperation;Ljava/lang/String;)V
    .locals 0

    .line 4160
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ethereum$UserOperation;->setOwner(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8200(Lwallet/core/jni/proto/Ethereum$UserOperation;)V
    .locals 0

    .line 4160
    invoke-direct {p0}, Lwallet/core/jni/proto/Ethereum$UserOperation;->clearOwner()V

    return-void
.end method

.method static synthetic access$8300(Lwallet/core/jni/proto/Ethereum$UserOperation;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 4160
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ethereum$UserOperation;->setOwnerBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$8400(Lwallet/core/jni/proto/Ethereum$UserOperation;Z)V
    .locals 0

    .line 4160
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ethereum$UserOperation;->setIsAccountDeployed(Z)V

    return-void
.end method

.method static synthetic access$8500(Lwallet/core/jni/proto/Ethereum$UserOperation;)V
    .locals 0

    .line 4160
    invoke-direct {p0}, Lwallet/core/jni/proto/Ethereum$UserOperation;->clearIsAccountDeployed()V

    return-void
.end method

.method static synthetic access$8600(Lwallet/core/jni/proto/Ethereum$UserOperation;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 4160
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ethereum$UserOperation;->setPreVerificationGas(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$8700(Lwallet/core/jni/proto/Ethereum$UserOperation;)V
    .locals 0

    .line 4160
    invoke-direct {p0}, Lwallet/core/jni/proto/Ethereum$UserOperation;->clearPreVerificationGas()V

    return-void
.end method

.method static synthetic access$8800(Lwallet/core/jni/proto/Ethereum$UserOperation;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 4160
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ethereum$UserOperation;->setVerificationGasLimit(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$8900(Lwallet/core/jni/proto/Ethereum$UserOperation;)V
    .locals 0

    .line 4160
    invoke-direct {p0}, Lwallet/core/jni/proto/Ethereum$UserOperation;->clearVerificationGasLimit()V

    return-void
.end method

.method static synthetic access$9000(Lwallet/core/jni/proto/Ethereum$UserOperation;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 4160
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Ethereum$UserOperation;->setPaymasterAndData(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$9100(Lwallet/core/jni/proto/Ethereum$UserOperation;)V
    .locals 0

    .line 4160
    invoke-direct {p0}, Lwallet/core/jni/proto/Ethereum$UserOperation;->clearPaymasterAndData()V

    return-void
.end method

.method private clearAccountFactory()V
    .locals 1

    .line 4291
    invoke-static {}, Lwallet/core/jni/proto/Ethereum$UserOperation;->getDefaultInstance()Lwallet/core/jni/proto/Ethereum$UserOperation;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$UserOperation;->getAccountFactory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Ethereum$UserOperation;->accountFactory_:Ljava/lang/String;

    return-void
.end method

.method private clearAccountLogic()V
    .locals 1

    .line 4358
    invoke-static {}, Lwallet/core/jni/proto/Ethereum$UserOperation;->getDefaultInstance()Lwallet/core/jni/proto/Ethereum$UserOperation;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$UserOperation;->getAccountLogic()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Ethereum$UserOperation;->accountLogic_:Ljava/lang/String;

    return-void
.end method

.method private clearEntryPoint()V
    .locals 1

    .line 4224
    invoke-static {}, Lwallet/core/jni/proto/Ethereum$UserOperation;->getDefaultInstance()Lwallet/core/jni/proto/Ethereum$UserOperation;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$UserOperation;->getEntryPoint()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Ethereum$UserOperation;->entryPoint_:Ljava/lang/String;

    return-void
.end method

.method private clearIsAccountDeployed()V
    .locals 1

    const/4 v0, 0x0

    .line 4477
    iput-boolean v0, p0, Lwallet/core/jni/proto/Ethereum$UserOperation;->isAccountDeployed_:Z

    return-void
.end method

.method private clearOwner()V
    .locals 1

    .line 4425
    invoke-static {}, Lwallet/core/jni/proto/Ethereum$UserOperation;->getDefaultInstance()Lwallet/core/jni/proto/Ethereum$UserOperation;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$UserOperation;->getOwner()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Ethereum$UserOperation;->owner_:Ljava/lang/String;

    return-void
.end method

.method private clearPaymasterAndData()V
    .locals 1

    .line 4594
    invoke-static {}, Lwallet/core/jni/proto/Ethereum$UserOperation;->getDefaultInstance()Lwallet/core/jni/proto/Ethereum$UserOperation;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$UserOperation;->getPaymasterAndData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Ethereum$UserOperation;->paymasterAndData_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearPreVerificationGas()V
    .locals 1

    .line 4516
    invoke-static {}, Lwallet/core/jni/proto/Ethereum$UserOperation;->getDefaultInstance()Lwallet/core/jni/proto/Ethereum$UserOperation;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$UserOperation;->getPreVerificationGas()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Ethereum$UserOperation;->preVerificationGas_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearVerificationGasLimit()V
    .locals 1

    .line 4555
    invoke-static {}, Lwallet/core/jni/proto/Ethereum$UserOperation;->getDefaultInstance()Lwallet/core/jni/proto/Ethereum$UserOperation;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Ethereum$UserOperation;->getVerificationGasLimit()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Ethereum$UserOperation;->verificationGasLimit_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Ethereum$UserOperation;
    .locals 1

    .line 5204
    sget-object v0, Lwallet/core/jni/proto/Ethereum$UserOperation;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$UserOperation;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Ethereum$UserOperation$Builder;
    .locals 1

    .line 4672
    sget-object v0, Lwallet/core/jni/proto/Ethereum$UserOperation;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$UserOperation;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Ethereum$UserOperation$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Ethereum$UserOperation;)Lwallet/core/jni/proto/Ethereum$UserOperation$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 4675
    sget-object v0, Lwallet/core/jni/proto/Ethereum$UserOperation;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$UserOperation;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$UserOperation$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Ethereum$UserOperation;
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

    .line 4649
    sget-object v0, Lwallet/core/jni/proto/Ethereum$UserOperation;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$UserOperation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$UserOperation;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ethereum$UserOperation;
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

    .line 4655
    sget-object v0, Lwallet/core/jni/proto/Ethereum$UserOperation;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$UserOperation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$UserOperation;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Ethereum$UserOperation;
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

    .line 4613
    sget-object v0, Lwallet/core/jni/proto/Ethereum$UserOperation;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$UserOperation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$UserOperation;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ethereum$UserOperation;
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

    .line 4620
    sget-object v0, Lwallet/core/jni/proto/Ethereum$UserOperation;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$UserOperation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$UserOperation;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Ethereum$UserOperation;
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

    .line 4660
    sget-object v0, Lwallet/core/jni/proto/Ethereum$UserOperation;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$UserOperation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$UserOperation;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ethereum$UserOperation;
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

    .line 4667
    sget-object v0, Lwallet/core/jni/proto/Ethereum$UserOperation;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$UserOperation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$UserOperation;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Ethereum$UserOperation;
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

    .line 4637
    sget-object v0, Lwallet/core/jni/proto/Ethereum$UserOperation;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$UserOperation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$UserOperation;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ethereum$UserOperation;
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

    .line 4644
    sget-object v0, Lwallet/core/jni/proto/Ethereum$UserOperation;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$UserOperation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$UserOperation;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Ethereum$UserOperation;
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

    .line 4600
    sget-object v0, Lwallet/core/jni/proto/Ethereum$UserOperation;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$UserOperation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$UserOperation;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ethereum$UserOperation;
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

    .line 4607
    sget-object v0, Lwallet/core/jni/proto/Ethereum$UserOperation;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$UserOperation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$UserOperation;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Ethereum$UserOperation;
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

    .line 4625
    sget-object v0, Lwallet/core/jni/proto/Ethereum$UserOperation;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$UserOperation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$UserOperation;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Ethereum$UserOperation;
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

    .line 4632
    sget-object v0, Lwallet/core/jni/proto/Ethereum$UserOperation;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$UserOperation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Ethereum$UserOperation;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Ethereum$UserOperation;",
            ">;"
        }
    .end annotation

    .line 5210
    sget-object v0, Lwallet/core/jni/proto/Ethereum$UserOperation;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$UserOperation;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAccountFactory(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4278
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4280
    iput-object p1, p0, Lwallet/core/jni/proto/Ethereum$UserOperation;->accountFactory_:Ljava/lang/String;

    return-void
.end method

.method private setAccountFactoryBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4303
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 4304
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Ethereum$UserOperation;->accountFactory_:Ljava/lang/String;

    return-void
.end method

.method private setAccountLogic(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4345
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4347
    iput-object p1, p0, Lwallet/core/jni/proto/Ethereum$UserOperation;->accountLogic_:Ljava/lang/String;

    return-void
.end method

.method private setAccountLogicBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4370
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 4371
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Ethereum$UserOperation;->accountLogic_:Ljava/lang/String;

    return-void
.end method

.method private setEntryPoint(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4211
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4213
    iput-object p1, p0, Lwallet/core/jni/proto/Ethereum$UserOperation;->entryPoint_:Ljava/lang/String;

    return-void
.end method

.method private setEntryPointBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4236
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 4237
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Ethereum$UserOperation;->entryPoint_:Ljava/lang/String;

    return-void
.end method

.method private setIsAccountDeployed(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4466
    iput-boolean p1, p0, Lwallet/core/jni/proto/Ethereum$UserOperation;->isAccountDeployed_:Z

    return-void
.end method

.method private setOwner(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4412
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4414
    iput-object p1, p0, Lwallet/core/jni/proto/Ethereum$UserOperation;->owner_:Ljava/lang/String;

    return-void
.end method

.method private setOwnerBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4437
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 4438
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Ethereum$UserOperation;->owner_:Ljava/lang/String;

    return-void
.end method

.method private setPaymasterAndData(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4581
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4583
    iput-object p1, p0, Lwallet/core/jni/proto/Ethereum$UserOperation;->paymasterAndData_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setPreVerificationGas(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4503
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4505
    iput-object p1, p0, Lwallet/core/jni/proto/Ethereum$UserOperation;->preVerificationGas_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setVerificationGasLimit(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4542
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4544
    iput-object p1, p0, Lwallet/core/jni/proto/Ethereum$UserOperation;->verificationGasLimit_:Lcom/google/protobuf/ByteString;

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

    .line 5139
    sget-object p2, Lwallet/core/jni/proto/Ethereum$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 5188
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 5182
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 5167
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Ethereum$UserOperation;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5169
    const-class p2, Lwallet/core/jni/proto/Ethereum$UserOperation;

    monitor-enter p2

    .line 5170
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Ethereum$UserOperation;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 5172
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Ethereum$UserOperation;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$UserOperation;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 5175
    sput-object p1, Lwallet/core/jni/proto/Ethereum$UserOperation;->PARSER:Lcom/google/protobuf/Parser;

    .line 5177
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

    .line 5164
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Ethereum$UserOperation;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$UserOperation;

    return-object p1

    :pswitch_4
    const/16 p1, 0x8

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "entryPoint_"

    aput-object v0, p1, p3

    const-string p3, "accountFactory_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "accountLogic_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "owner_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "isAccountDeployed_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "preVerificationGas_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "verificationGasLimit_"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "paymasterAndData_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0008\u0000\u0000\u0001\u0008\u0008\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u0208\u0004\u0208\u0005\u0007\u0006\n\u0007\n\u0008\n"

    .line 5160
    sget-object p3, Lwallet/core/jni/proto/Ethereum$UserOperation;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Ethereum$UserOperation;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5144
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Ethereum$UserOperation$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Ethereum$UserOperation$Builder;-><init>(Lwallet/core/jni/proto/Ethereum$1;)V

    return-object p1

    .line 5141
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Ethereum$UserOperation;

    invoke-direct {p1}, Lwallet/core/jni/proto/Ethereum$UserOperation;-><init>()V

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

.method public getAccountFactory()Ljava/lang/String;
    .locals 1

    .line 4253
    iget-object v0, p0, Lwallet/core/jni/proto/Ethereum$UserOperation;->accountFactory_:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountFactoryBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4266
    iget-object v0, p0, Lwallet/core/jni/proto/Ethereum$UserOperation;->accountFactory_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getAccountLogic()Ljava/lang/String;
    .locals 1

    .line 4320
    iget-object v0, p0, Lwallet/core/jni/proto/Ethereum$UserOperation;->accountLogic_:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountLogicBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4333
    iget-object v0, p0, Lwallet/core/jni/proto/Ethereum$UserOperation;->accountLogic_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getEntryPoint()Ljava/lang/String;
    .locals 1

    .line 4186
    iget-object v0, p0, Lwallet/core/jni/proto/Ethereum$UserOperation;->entryPoint_:Ljava/lang/String;

    return-object v0
.end method

.method public getEntryPointBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4199
    iget-object v0, p0, Lwallet/core/jni/proto/Ethereum$UserOperation;->entryPoint_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getIsAccountDeployed()Z
    .locals 1

    .line 4454
    iget-boolean v0, p0, Lwallet/core/jni/proto/Ethereum$UserOperation;->isAccountDeployed_:Z

    return v0
.end method

.method public getOwner()Ljava/lang/String;
    .locals 1

    .line 4387
    iget-object v0, p0, Lwallet/core/jni/proto/Ethereum$UserOperation;->owner_:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4400
    iget-object v0, p0, Lwallet/core/jni/proto/Ethereum$UserOperation;->owner_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPaymasterAndData()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4570
    iget-object v0, p0, Lwallet/core/jni/proto/Ethereum$UserOperation;->paymasterAndData_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPreVerificationGas()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4492
    iget-object v0, p0, Lwallet/core/jni/proto/Ethereum$UserOperation;->preVerificationGas_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getVerificationGasLimit()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4531
    iget-object v0, p0, Lwallet/core/jni/proto/Ethereum$UserOperation;->verificationGasLimit_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method
