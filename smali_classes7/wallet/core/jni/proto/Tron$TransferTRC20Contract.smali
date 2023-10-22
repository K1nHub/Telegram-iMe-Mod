.class public final Lwallet/core/jni/proto/Tron$TransferTRC20Contract;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Tron.java"

# interfaces
.implements Lwallet/core/jni/proto/Tron$TransferTRC20ContractOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Tron;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TransferTRC20Contract"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Tron$TransferTRC20Contract$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Tron$TransferTRC20Contract;",
        "Lwallet/core/jni/proto/Tron$TransferTRC20Contract$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Tron$TransferTRC20ContractOrBuilder;"
    }
.end annotation


# static fields
.field public static final AMOUNT_FIELD_NUMBER:I = 0x4

.field public static final CONTRACT_ADDRESS_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$TransferTRC20Contract;

.field public static final OWNER_ADDRESS_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Tron$TransferTRC20Contract;",
            ">;"
        }
    .end annotation
.end field

.field public static final TO_ADDRESS_FIELD_NUMBER:I = 0x3


# instance fields
.field private amount_:Lcom/google/protobuf/ByteString;

.field private contractAddress_:Ljava/lang/String;

.field private ownerAddress_:Ljava/lang/String;

.field private toAddress_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2098
    new-instance v0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;

    invoke-direct {v0}, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;-><init>()V

    .line 2101
    sput-object v0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$TransferTRC20Contract;

    .line 2102
    const-class v1, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1447
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 1448
    iput-object v0, p0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->contractAddress_:Ljava/lang/String;

    .line 1449
    iput-object v0, p0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->ownerAddress_:Ljava/lang/String;

    .line 1450
    iput-object v0, p0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->toAddress_:Ljava/lang/String;

    .line 1451
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->amount_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$2300()Lwallet/core/jni/proto/Tron$TransferTRC20Contract;
    .locals 1

    .line 1442
    sget-object v0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$TransferTRC20Contract;

    return-object v0
.end method

.method static synthetic access$2400(Lwallet/core/jni/proto/Tron$TransferTRC20Contract;Ljava/lang/String;)V
    .locals 0

    .line 1442
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->setContractAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lwallet/core/jni/proto/Tron$TransferTRC20Contract;)V
    .locals 0

    .line 1442
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->clearContractAddress()V

    return-void
.end method

.method static synthetic access$2600(Lwallet/core/jni/proto/Tron$TransferTRC20Contract;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1442
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->setContractAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2700(Lwallet/core/jni/proto/Tron$TransferTRC20Contract;Ljava/lang/String;)V
    .locals 0

    .line 1442
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->setOwnerAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lwallet/core/jni/proto/Tron$TransferTRC20Contract;)V
    .locals 0

    .line 1442
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->clearOwnerAddress()V

    return-void
.end method

.method static synthetic access$2900(Lwallet/core/jni/proto/Tron$TransferTRC20Contract;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1442
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->setOwnerAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3000(Lwallet/core/jni/proto/Tron$TransferTRC20Contract;Ljava/lang/String;)V
    .locals 0

    .line 1442
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->setToAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3100(Lwallet/core/jni/proto/Tron$TransferTRC20Contract;)V
    .locals 0

    .line 1442
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->clearToAddress()V

    return-void
.end method

.method static synthetic access$3200(Lwallet/core/jni/proto/Tron$TransferTRC20Contract;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1442
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->setToAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3300(Lwallet/core/jni/proto/Tron$TransferTRC20Contract;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1442
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->setAmount(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3400(Lwallet/core/jni/proto/Tron$TransferTRC20Contract;)V
    .locals 0

    .line 1442
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->clearAmount()V

    return-void
.end method

.method private clearAmount()V
    .locals 1

    .line 1690
    invoke-static {}, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->getDefaultInstance()Lwallet/core/jni/proto/Tron$TransferTRC20Contract;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->getAmount()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->amount_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearContractAddress()V
    .locals 1

    .line 1503
    invoke-static {}, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->getDefaultInstance()Lwallet/core/jni/proto/Tron$TransferTRC20Contract;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->getContractAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->contractAddress_:Ljava/lang/String;

    return-void
.end method

.method private clearOwnerAddress()V
    .locals 1

    .line 1570
    invoke-static {}, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->getDefaultInstance()Lwallet/core/jni/proto/Tron$TransferTRC20Contract;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->getOwnerAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->ownerAddress_:Ljava/lang/String;

    return-void
.end method

.method private clearToAddress()V
    .locals 1

    .line 1637
    invoke-static {}, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->getDefaultInstance()Lwallet/core/jni/proto/Tron$TransferTRC20Contract;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->getToAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->toAddress_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Tron$TransferTRC20Contract;
    .locals 1

    .line 2107
    sget-object v0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$TransferTRC20Contract;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Tron$TransferTRC20Contract$Builder;
    .locals 1

    .line 1768
    sget-object v0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$TransferTRC20Contract;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Tron$TransferTRC20Contract;)Lwallet/core/jni/proto/Tron$TransferTRC20Contract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 1771
    sget-object v0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$TransferTRC20Contract;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Tron$TransferTRC20Contract;
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

    .line 1745
    sget-object v0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$TransferTRC20Contract;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$TransferTRC20Contract;
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

    .line 1751
    sget-object v0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$TransferTRC20Contract;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tron$TransferTRC20Contract;
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

    .line 1709
    sget-object v0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$TransferTRC20Contract;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$TransferTRC20Contract;
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

    .line 1716
    sget-object v0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$TransferTRC20Contract;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Tron$TransferTRC20Contract;
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

    .line 1756
    sget-object v0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$TransferTRC20Contract;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$TransferTRC20Contract;
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

    .line 1763
    sget-object v0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$TransferTRC20Contract;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Tron$TransferTRC20Contract;
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

    .line 1733
    sget-object v0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$TransferTRC20Contract;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$TransferTRC20Contract;
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

    .line 1740
    sget-object v0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$TransferTRC20Contract;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Tron$TransferTRC20Contract;
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

    .line 1696
    sget-object v0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$TransferTRC20Contract;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$TransferTRC20Contract;
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

    .line 1703
    sget-object v0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$TransferTRC20Contract;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Tron$TransferTRC20Contract;
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

    .line 1721
    sget-object v0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$TransferTRC20Contract;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$TransferTRC20Contract;
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

    .line 1728
    sget-object v0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$TransferTRC20Contract;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Tron$TransferTRC20Contract;",
            ">;"
        }
    .end annotation

    .line 2113
    sget-object v0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$TransferTRC20Contract;

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

    .line 1677
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1679
    iput-object p1, p0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->amount_:Lcom/google/protobuf/ByteString;

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

    .line 1490
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1492
    iput-object p1, p0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->contractAddress_:Ljava/lang/String;

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

    .line 1515
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1516
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->contractAddress_:Ljava/lang/String;

    return-void
.end method

.method private setOwnerAddress(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1557
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1559
    iput-object p1, p0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->ownerAddress_:Ljava/lang/String;

    return-void
.end method

.method private setOwnerAddressBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1582
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1583
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->ownerAddress_:Ljava/lang/String;

    return-void
.end method

.method private setToAddress(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1624
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1626
    iput-object p1, p0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->toAddress_:Ljava/lang/String;

    return-void
.end method

.method private setToAddressBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1649
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1650
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->toAddress_:Ljava/lang/String;

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

    .line 2046
    sget-object p2, Lwallet/core/jni/proto/Tron$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2091
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 2085
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 2070
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 2072
    const-class p2, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;

    monitor-enter p2

    .line 2073
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 2075
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$TransferTRC20Contract;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2078
    sput-object p1, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->PARSER:Lcom/google/protobuf/Parser;

    .line 2080
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

    .line 2067
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$TransferTRC20Contract;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "contractAddress_"

    aput-object v0, p1, p3

    const-string p3, "ownerAddress_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "toAddress_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "amount_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u0208\u0004\n"

    .line 2063
    sget-object p3, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$TransferTRC20Contract;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2051
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Tron$TransferTRC20Contract$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Tron$TransferTRC20Contract$Builder;-><init>(Lwallet/core/jni/proto/Tron$1;)V

    return-object p1

    .line 2048
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;

    invoke-direct {p1}, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;-><init>()V

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

    .line 1666
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->amount_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getContractAddress()Ljava/lang/String;
    .locals 1

    .line 1465
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->contractAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getContractAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1478
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->contractAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerAddress()Ljava/lang/String;
    .locals 1

    .line 1532
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->ownerAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1545
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->ownerAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getToAddress()Ljava/lang/String;
    .locals 1

    .line 1599
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->toAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getToAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1612
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$TransferTRC20Contract;->toAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
