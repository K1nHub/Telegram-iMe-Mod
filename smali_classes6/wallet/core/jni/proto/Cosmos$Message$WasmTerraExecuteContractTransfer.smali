.class public final Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Cosmos.java"

# interfaces
.implements Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransferOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cosmos$Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WasmTerraExecuteContractTransfer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;",
        "Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransferOrBuilder;"
    }
.end annotation


# static fields
.field public static final AMOUNT_FIELD_NUMBER:I = 0x3

.field public static final CONTRACT_ADDRESS_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;",
            ">;"
        }
    .end annotation
.end field

.field public static final RECIPIENT_ADDRESS_FIELD_NUMBER:I = 0x4

.field public static final SENDER_ADDRESS_FIELD_NUMBER:I = 0x1


# instance fields
.field private amount_:Lcom/google/protobuf/ByteString;

.field private contractAddress_:Ljava/lang/String;

.field private recipientAddress_:Ljava/lang/String;

.field private senderAddress_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 7266
    new-instance v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;

    invoke-direct {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;-><init>()V

    .line 7269
    sput-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;

    .line 7270
    const-class v1, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 6655
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 6656
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->senderAddress_:Ljava/lang/String;

    .line 6657
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->contractAddress_:Ljava/lang/String;

    .line 6658
    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v1, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->amount_:Lcom/google/protobuf/ByteString;

    .line 6659
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->recipientAddress_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$11900()Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;
    .locals 1

    .line 6650
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;

    return-object v0
.end method

.method static synthetic access$12000(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;Ljava/lang/String;)V
    .locals 0

    .line 6650
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->setSenderAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12100(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;)V
    .locals 0

    .line 6650
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->clearSenderAddress()V

    return-void
.end method

.method static synthetic access$12200(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 6650
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->setSenderAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$12300(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;Ljava/lang/String;)V
    .locals 0

    .line 6650
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->setContractAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12400(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;)V
    .locals 0

    .line 6650
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->clearContractAddress()V

    return-void
.end method

.method static synthetic access$12500(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 6650
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->setContractAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$12600(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 6650
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->setAmount(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$12700(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;)V
    .locals 0

    .line 6650
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->clearAmount()V

    return-void
.end method

.method static synthetic access$12800(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;Ljava/lang/String;)V
    .locals 0

    .line 6650
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->setRecipientAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12900(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;)V
    .locals 0

    .line 6650
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->clearRecipientAddress()V

    return-void
.end method

.method static synthetic access$13000(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 6650
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->setRecipientAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearAmount()V
    .locals 1

    .line 6831
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->getAmount()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->amount_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearContractAddress()V
    .locals 1

    .line 6778
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->getContractAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->contractAddress_:Ljava/lang/String;

    return-void
.end method

.method private clearRecipientAddress()V
    .locals 1

    .line 6868
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->getRecipientAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->recipientAddress_:Ljava/lang/String;

    return-void
.end method

.method private clearSenderAddress()V
    .locals 1

    .line 6711
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->getSenderAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->senderAddress_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;
    .locals 1

    .line 7275
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer$Builder;
    .locals 1

    .line 6956
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 6959
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;
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

    .line 6933
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;
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

    .line 6939
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;
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

    .line 6897
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;
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

    .line 6904
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;
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

    .line 6944
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;
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

    .line 6951
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;
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

    .line 6921
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;
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

    .line 6928
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;
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

    .line 6884
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;
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

    .line 6891
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;
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

    .line 6909
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;
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

    .line 6916
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;",
            ">;"
        }
    .end annotation

    .line 7281
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAmount(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6818
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6820
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->amount_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setContractAddress(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6765
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6767
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->contractAddress_:Ljava/lang/String;

    return-void
.end method

.method private setContractAddressBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6790
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 6791
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->contractAddress_:Ljava/lang/String;

    return-void
.end method

.method private setRecipientAddress(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6859
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6861
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->recipientAddress_:Ljava/lang/String;

    return-void
.end method

.method private setRecipientAddressBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6876
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 6877
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->recipientAddress_:Ljava/lang/String;

    return-void
.end method

.method private setSenderAddress(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6698
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6700
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->senderAddress_:Ljava/lang/String;

    return-void
.end method

.method private setSenderAddressBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 6723
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 6724
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->senderAddress_:Ljava/lang/String;

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

    .line 7214
    sget-object p2, Lwallet/core/jni/proto/Cosmos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 7259
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 7253
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 7238
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 7240
    const-class p2, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;

    monitor-enter p2

    .line 7241
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7243
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 7246
    sput-object p1, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->PARSER:Lcom/google/protobuf/Parser;

    .line 7248
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

    .line 7235
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "senderAddress_"

    aput-object v0, p1, p3

    const-string p3, "contractAddress_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "amount_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "recipientAddress_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\n\u0004\u0208"

    .line 7231
    sget-object p3, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7219
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer$Builder;-><init>(Lwallet/core/jni/proto/Cosmos$1;)V

    return-object p1

    .line 7216
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;

    invoke-direct {p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;-><init>()V

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

.method public getAmount()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6807
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->amount_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getContractAddress()Ljava/lang/String;
    .locals 1

    .line 6740
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->contractAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getContractAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6753
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->contractAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRecipientAddress()Ljava/lang/String;
    .locals 1

    .line 6842
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->recipientAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getRecipientAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6851
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->recipientAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSenderAddress()Ljava/lang/String;
    .locals 1

    .line 6673
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->senderAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6686
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmTerraExecuteContractTransfer;->senderAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
