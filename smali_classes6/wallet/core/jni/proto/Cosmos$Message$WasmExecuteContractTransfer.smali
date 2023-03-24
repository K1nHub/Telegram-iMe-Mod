.class public final Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Cosmos.java"

# interfaces
.implements Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransferOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Cosmos$Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WasmExecuteContractTransfer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;",
        "Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransferOrBuilder;"
    }
.end annotation


# static fields
.field public static final AMOUNT_FIELD_NUMBER:I = 0x3

.field public static final CONTRACT_ADDRESS_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;",
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

    .line 10678
    new-instance v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;

    invoke-direct {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;-><init>()V

    .line 10681
    sput-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;

    .line 10682
    const-class v1, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 10067
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 10068
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->senderAddress_:Ljava/lang/String;

    .line 10069
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->contractAddress_:Ljava/lang/String;

    .line 10070
    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v1, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->amount_:Lcom/google/protobuf/ByteString;

    .line 10071
    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->recipientAddress_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$18200()Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;
    .locals 1

    .line 10062
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;

    return-object v0
.end method

.method static synthetic access$18300(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;Ljava/lang/String;)V
    .locals 0

    .line 10062
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->setSenderAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$18400(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;)V
    .locals 0

    .line 10062
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->clearSenderAddress()V

    return-void
.end method

.method static synthetic access$18500(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 10062
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->setSenderAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$18600(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;Ljava/lang/String;)V
    .locals 0

    .line 10062
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->setContractAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$18700(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;)V
    .locals 0

    .line 10062
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->clearContractAddress()V

    return-void
.end method

.method static synthetic access$18800(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 10062
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->setContractAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$18900(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 10062
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->setAmount(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$19000(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;)V
    .locals 0

    .line 10062
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->clearAmount()V

    return-void
.end method

.method static synthetic access$19100(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;Ljava/lang/String;)V
    .locals 0

    .line 10062
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->setRecipientAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$19200(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;)V
    .locals 0

    .line 10062
    invoke-direct {p0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->clearRecipientAddress()V

    return-void
.end method

.method static synthetic access$19300(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 10062
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->setRecipientAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearAmount()V
    .locals 1

    .line 10243
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->getAmount()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->amount_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearContractAddress()V
    .locals 1

    .line 10190
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->getContractAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->contractAddress_:Ljava/lang/String;

    return-void
.end method

.method private clearRecipientAddress()V
    .locals 1

    .line 10280
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->getRecipientAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->recipientAddress_:Ljava/lang/String;

    return-void
.end method

.method private clearSenderAddress()V
    .locals 1

    .line 10123
    invoke-static {}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->getSenderAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->senderAddress_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;
    .locals 1

    .line 10687
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer$Builder;
    .locals 1

    .line 10368
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 10371
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;
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

    .line 10345
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;
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

    .line 10351
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;
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

    .line 10309
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;
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

    .line 10316
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;
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

    .line 10356
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;
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

    .line 10363
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;
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

    .line 10333
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;
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

    .line 10340
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;
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

    .line 10296
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;
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

    .line 10303
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;
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

    .line 10321
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;
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

    .line 10328
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;",
            ">;"
        }
    .end annotation

    .line 10693
    sget-object v0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;

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

    .line 10230
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10232
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->amount_:Lcom/google/protobuf/ByteString;

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

    .line 10177
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10179
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->contractAddress_:Ljava/lang/String;

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

    .line 10202
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 10203
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->contractAddress_:Ljava/lang/String;

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

    .line 10271
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10273
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->recipientAddress_:Ljava/lang/String;

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

    .line 10288
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 10289
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->recipientAddress_:Ljava/lang/String;

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

    .line 10110
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10112
    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->senderAddress_:Ljava/lang/String;

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

    .line 10135
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 10136
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->senderAddress_:Ljava/lang/String;

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

    .line 10626
    sget-object p2, Lwallet/core/jni/proto/Cosmos$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 10671
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 10665
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 10650
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 10652
    const-class p2, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;

    monitor-enter p2

    .line 10653
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 10655
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 10658
    sput-object p1, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->PARSER:Lcom/google/protobuf/Parser;

    .line 10660
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

    .line 10647
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;

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

    .line 10643
    sget-object p3, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 10631
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer$Builder;-><init>(Lwallet/core/jni/proto/Cosmos$1;)V

    return-object p1

    .line 10628
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;

    invoke-direct {p1}, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;-><init>()V

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

    .line 10219
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->amount_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getContractAddress()Ljava/lang/String;
    .locals 1

    .line 10152
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->contractAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getContractAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 10165
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->contractAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRecipientAddress()Ljava/lang/String;
    .locals 1

    .line 10254
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->recipientAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getRecipientAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 10263
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->recipientAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSenderAddress()Ljava/lang/String;
    .locals 1

    .line 10085
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->senderAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 10098
    iget-object v0, p0, Lwallet/core/jni/proto/Cosmos$Message$WasmExecuteContractTransfer;->senderAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
