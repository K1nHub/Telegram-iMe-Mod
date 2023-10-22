.class public final Lwallet/core/jni/proto/Tron$TriggerSmartContract;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Tron.java"

# interfaces
.implements Lwallet/core/jni/proto/Tron$TriggerSmartContractOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Tron;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TriggerSmartContract"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Tron$TriggerSmartContract$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Tron$TriggerSmartContract;",
        "Lwallet/core/jni/proto/Tron$TriggerSmartContract$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Tron$TriggerSmartContractOrBuilder;"
    }
.end annotation


# static fields
.field public static final CALL_TOKEN_VALUE_FIELD_NUMBER:I = 0x5

.field public static final CALL_VALUE_FIELD_NUMBER:I = 0x3

.field public static final CONTRACT_ADDRESS_FIELD_NUMBER:I = 0x2

.field public static final DATA_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$TriggerSmartContract;

.field public static final OWNER_ADDRESS_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Tron$TriggerSmartContract;",
            ">;"
        }
    .end annotation
.end field

.field public static final TOKEN_ID_FIELD_NUMBER:I = 0x6


# instance fields
.field private callTokenValue_:J

.field private callValue_:J

.field private contractAddress_:Ljava/lang/String;

.field private data_:Lcom/google/protobuf/ByteString;

.field private ownerAddress_:Ljava/lang/String;

.field private tokenId_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10254
    new-instance v0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;

    invoke-direct {v0}, Lwallet/core/jni/proto/Tron$TriggerSmartContract;-><init>()V

    .line 10257
    sput-object v0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$TriggerSmartContract;

    .line 10258
    const-class v1, Lwallet/core/jni/proto/Tron$TriggerSmartContract;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 9504
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 9505
    iput-object v0, p0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->ownerAddress_:Ljava/lang/String;

    .line 9506
    iput-object v0, p0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->contractAddress_:Ljava/lang/String;

    .line 9507
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->data_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$15900()Lwallet/core/jni/proto/Tron$TriggerSmartContract;
    .locals 1

    .line 9499
    sget-object v0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$TriggerSmartContract;

    return-object v0
.end method

.method static synthetic access$16000(Lwallet/core/jni/proto/Tron$TriggerSmartContract;Ljava/lang/String;)V
    .locals 0

    .line 9499
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->setOwnerAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$16100(Lwallet/core/jni/proto/Tron$TriggerSmartContract;)V
    .locals 0

    .line 9499
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->clearOwnerAddress()V

    return-void
.end method

.method static synthetic access$16200(Lwallet/core/jni/proto/Tron$TriggerSmartContract;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 9499
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->setOwnerAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$16300(Lwallet/core/jni/proto/Tron$TriggerSmartContract;Ljava/lang/String;)V
    .locals 0

    .line 9499
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->setContractAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$16400(Lwallet/core/jni/proto/Tron$TriggerSmartContract;)V
    .locals 0

    .line 9499
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->clearContractAddress()V

    return-void
.end method

.method static synthetic access$16500(Lwallet/core/jni/proto/Tron$TriggerSmartContract;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 9499
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->setContractAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$16600(Lwallet/core/jni/proto/Tron$TriggerSmartContract;J)V
    .locals 0

    .line 9499
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->setCallValue(J)V

    return-void
.end method

.method static synthetic access$16700(Lwallet/core/jni/proto/Tron$TriggerSmartContract;)V
    .locals 0

    .line 9499
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->clearCallValue()V

    return-void
.end method

.method static synthetic access$16800(Lwallet/core/jni/proto/Tron$TriggerSmartContract;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 9499
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->setData(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$16900(Lwallet/core/jni/proto/Tron$TriggerSmartContract;)V
    .locals 0

    .line 9499
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->clearData()V

    return-void
.end method

.method static synthetic access$17000(Lwallet/core/jni/proto/Tron$TriggerSmartContract;J)V
    .locals 0

    .line 9499
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->setCallTokenValue(J)V

    return-void
.end method

.method static synthetic access$17100(Lwallet/core/jni/proto/Tron$TriggerSmartContract;)V
    .locals 0

    .line 9499
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->clearCallTokenValue()V

    return-void
.end method

.method static synthetic access$17200(Lwallet/core/jni/proto/Tron$TriggerSmartContract;J)V
    .locals 0

    .line 9499
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->setTokenId(J)V

    return-void
.end method

.method static synthetic access$17300(Lwallet/core/jni/proto/Tron$TriggerSmartContract;)V
    .locals 0

    .line 9499
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->clearTokenId()V

    return-void
.end method

.method private clearCallTokenValue()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 9755
    iput-wide v0, p0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->callTokenValue_:J

    return-void
.end method

.method private clearCallValue()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 9678
    iput-wide v0, p0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->callValue_:J

    return-void
.end method

.method private clearContractAddress()V
    .locals 1

    .line 9626
    invoke-static {}, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->getDefaultInstance()Lwallet/core/jni/proto/Tron$TriggerSmartContract;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->getContractAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->contractAddress_:Ljava/lang/String;

    return-void
.end method

.method private clearData()V
    .locals 1

    .line 9717
    invoke-static {}, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->getDefaultInstance()Lwallet/core/jni/proto/Tron$TriggerSmartContract;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->data_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearOwnerAddress()V
    .locals 1

    .line 9559
    invoke-static {}, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->getDefaultInstance()Lwallet/core/jni/proto/Tron$TriggerSmartContract;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->getOwnerAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->ownerAddress_:Ljava/lang/String;

    return-void
.end method

.method private clearTokenId()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 9793
    iput-wide v0, p0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->tokenId_:J

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Tron$TriggerSmartContract;
    .locals 1

    .line 10263
    sget-object v0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$TriggerSmartContract;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Tron$TriggerSmartContract$Builder;
    .locals 1

    .line 9871
    sget-object v0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$TriggerSmartContract;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Tron$TriggerSmartContract$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Tron$TriggerSmartContract;)Lwallet/core/jni/proto/Tron$TriggerSmartContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 9874
    sget-object v0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$TriggerSmartContract;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$TriggerSmartContract$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Tron$TriggerSmartContract;
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

    .line 9848
    sget-object v0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$TriggerSmartContract;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$TriggerSmartContract;
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

    .line 9854
    sget-object v0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$TriggerSmartContract;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tron$TriggerSmartContract;
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

    .line 9812
    sget-object v0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$TriggerSmartContract;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$TriggerSmartContract;
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

    .line 9819
    sget-object v0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$TriggerSmartContract;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Tron$TriggerSmartContract;
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

    .line 9859
    sget-object v0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$TriggerSmartContract;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$TriggerSmartContract;
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

    .line 9866
    sget-object v0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$TriggerSmartContract;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Tron$TriggerSmartContract;
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

    .line 9836
    sget-object v0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$TriggerSmartContract;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$TriggerSmartContract;
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

    .line 9843
    sget-object v0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$TriggerSmartContract;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Tron$TriggerSmartContract;
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

    .line 9799
    sget-object v0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$TriggerSmartContract;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$TriggerSmartContract;
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

    .line 9806
    sget-object v0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$TriggerSmartContract;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Tron$TriggerSmartContract;
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

    .line 9824
    sget-object v0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$TriggerSmartContract;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$TriggerSmartContract;
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

    .line 9831
    sget-object v0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$TriggerSmartContract;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Tron$TriggerSmartContract;",
            ">;"
        }
    .end annotation

    .line 10269
    sget-object v0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$TriggerSmartContract;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCallTokenValue(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9744
    iput-wide p1, p0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->callTokenValue_:J

    return-void
.end method

.method private setCallValue(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9667
    iput-wide p1, p0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->callValue_:J

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

    .line 9613
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9615
    iput-object p1, p0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->contractAddress_:Ljava/lang/String;

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

    .line 9638
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 9639
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->contractAddress_:Ljava/lang/String;

    return-void
.end method

.method private setData(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9704
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9706
    iput-object p1, p0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->data_:Lcom/google/protobuf/ByteString;

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

    .line 9546
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9548
    iput-object p1, p0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->ownerAddress_:Ljava/lang/String;

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

    .line 9571
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 9572
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->ownerAddress_:Ljava/lang/String;

    return-void
.end method

.method private setTokenId(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 9782
    iput-wide p1, p0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->tokenId_:J

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

    .line 10200
    sget-object p2, Lwallet/core/jni/proto/Tron$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 10247
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 10241
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 10226
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 10228
    const-class p2, Lwallet/core/jni/proto/Tron$TriggerSmartContract;

    monitor-enter p2

    .line 10229
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 10231
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$TriggerSmartContract;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 10234
    sput-object p1, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->PARSER:Lcom/google/protobuf/Parser;

    .line 10236
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

    .line 10223
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$TriggerSmartContract;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "ownerAddress_"

    aput-object v0, p1, p3

    const-string p3, "contractAddress_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "callValue_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "data_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "callTokenValue_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "tokenId_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0006\u0000\u0000\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u0002\u0004\n\u0005\u0002\u0006\u0002"

    .line 10219
    sget-object p3, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$TriggerSmartContract;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 10205
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Tron$TriggerSmartContract$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Tron$TriggerSmartContract$Builder;-><init>(Lwallet/core/jni/proto/Tron$1;)V

    return-object p1

    .line 10202
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Tron$TriggerSmartContract;

    invoke-direct {p1}, Lwallet/core/jni/proto/Tron$TriggerSmartContract;-><init>()V

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

.method public getCallTokenValue()J
    .locals 2

    .line 9732
    iget-wide v0, p0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->callTokenValue_:J

    return-wide v0
.end method

.method public getCallValue()J
    .locals 2

    .line 9655
    iget-wide v0, p0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->callValue_:J

    return-wide v0
.end method

.method public getContractAddress()Ljava/lang/String;
    .locals 1

    .line 9588
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->contractAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getContractAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 9601
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->contractAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getData()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 9693
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->data_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getOwnerAddress()Ljava/lang/String;
    .locals 1

    .line 9521
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->ownerAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 9534
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->ownerAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTokenId()J
    .locals 2

    .line 9770
    iget-wide v0, p0, Lwallet/core/jni/proto/Tron$TriggerSmartContract;->tokenId_:J

    return-wide v0
.end method
