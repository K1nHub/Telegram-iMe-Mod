.class public final Lwallet/core/jni/proto/Tron$DelegateResourceContract;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Tron.java"

# interfaces
.implements Lwallet/core/jni/proto/Tron$DelegateResourceContractOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Tron;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DelegateResourceContract"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Tron$DelegateResourceContract$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Tron$DelegateResourceContract;",
        "Lwallet/core/jni/proto/Tron$DelegateResourceContract$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Tron$DelegateResourceContractOrBuilder;"
    }
.end annotation


# static fields
.field public static final BALANCE_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$DelegateResourceContract;

.field public static final LOCK_FIELD_NUMBER:I = 0x5

.field public static final OWNER_ADDRESS_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Tron$DelegateResourceContract;",
            ">;"
        }
    .end annotation
.end field

.field public static final RECEIVER_ADDRESS_FIELD_NUMBER:I = 0x4

.field public static final RESOURCE_FIELD_NUMBER:I = 0x2


# instance fields
.field private balance_:J

.field private lock_:Z

.field private ownerAddress_:Ljava/lang/String;

.field private receiverAddress_:Ljava/lang/String;

.field private resource_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5338
    new-instance v0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;

    invoke-direct {v0}, Lwallet/core/jni/proto/Tron$DelegateResourceContract;-><init>()V

    .line 5341
    sput-object v0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$DelegateResourceContract;

    .line 5342
    const-class v1, Lwallet/core/jni/proto/Tron$DelegateResourceContract;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 4598
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 4599
    iput-object v0, p0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->ownerAddress_:Ljava/lang/String;

    .line 4600
    iput-object v0, p0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->resource_:Ljava/lang/String;

    .line 4601
    iput-object v0, p0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->receiverAddress_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$7600()Lwallet/core/jni/proto/Tron$DelegateResourceContract;
    .locals 1

    .line 4593
    sget-object v0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$DelegateResourceContract;

    return-object v0
.end method

.method static synthetic access$7700(Lwallet/core/jni/proto/Tron$DelegateResourceContract;Ljava/lang/String;)V
    .locals 0

    .line 4593
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->setOwnerAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7800(Lwallet/core/jni/proto/Tron$DelegateResourceContract;)V
    .locals 0

    .line 4593
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->clearOwnerAddress()V

    return-void
.end method

.method static synthetic access$7900(Lwallet/core/jni/proto/Tron$DelegateResourceContract;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 4593
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->setOwnerAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$8000(Lwallet/core/jni/proto/Tron$DelegateResourceContract;Ljava/lang/String;)V
    .locals 0

    .line 4593
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->setResource(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8100(Lwallet/core/jni/proto/Tron$DelegateResourceContract;)V
    .locals 0

    .line 4593
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->clearResource()V

    return-void
.end method

.method static synthetic access$8200(Lwallet/core/jni/proto/Tron$DelegateResourceContract;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 4593
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->setResourceBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$8300(Lwallet/core/jni/proto/Tron$DelegateResourceContract;J)V
    .locals 0

    .line 4593
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->setBalance(J)V

    return-void
.end method

.method static synthetic access$8400(Lwallet/core/jni/proto/Tron$DelegateResourceContract;)V
    .locals 0

    .line 4593
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->clearBalance()V

    return-void
.end method

.method static synthetic access$8500(Lwallet/core/jni/proto/Tron$DelegateResourceContract;Ljava/lang/String;)V
    .locals 0

    .line 4593
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->setReceiverAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8600(Lwallet/core/jni/proto/Tron$DelegateResourceContract;)V
    .locals 0

    .line 4593
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->clearReceiverAddress()V

    return-void
.end method

.method static synthetic access$8700(Lwallet/core/jni/proto/Tron$DelegateResourceContract;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 4593
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->setReceiverAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$8800(Lwallet/core/jni/proto/Tron$DelegateResourceContract;Z)V
    .locals 0

    .line 4593
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->setLock(Z)V

    return-void
.end method

.method static synthetic access$8900(Lwallet/core/jni/proto/Tron$DelegateResourceContract;)V
    .locals 0

    .line 4593
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->clearLock()V

    return-void
.end method

.method private clearBalance()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 4772
    iput-wide v0, p0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->balance_:J

    return-void
.end method

.method private clearLock()V
    .locals 1

    const/4 v0, 0x0

    .line 4883
    iput-boolean v0, p0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->lock_:Z

    return-void
.end method

.method private clearOwnerAddress()V
    .locals 1

    .line 4653
    invoke-static {}, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->getDefaultInstance()Lwallet/core/jni/proto/Tron$DelegateResourceContract;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->getOwnerAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->ownerAddress_:Ljava/lang/String;

    return-void
.end method

.method private clearReceiverAddress()V
    .locals 1

    .line 4825
    invoke-static {}, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->getDefaultInstance()Lwallet/core/jni/proto/Tron$DelegateResourceContract;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->getReceiverAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->receiverAddress_:Ljava/lang/String;

    return-void
.end method

.method private clearResource()V
    .locals 1

    .line 4720
    invoke-static {}, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->getDefaultInstance()Lwallet/core/jni/proto/Tron$DelegateResourceContract;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->getResource()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->resource_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Tron$DelegateResourceContract;
    .locals 1

    .line 5347
    sget-object v0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$DelegateResourceContract;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Tron$DelegateResourceContract$Builder;
    .locals 1

    .line 4961
    sget-object v0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$DelegateResourceContract;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Tron$DelegateResourceContract$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Tron$DelegateResourceContract;)Lwallet/core/jni/proto/Tron$DelegateResourceContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 4964
    sget-object v0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$DelegateResourceContract;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$DelegateResourceContract$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Tron$DelegateResourceContract;
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

    .line 4938
    sget-object v0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$DelegateResourceContract;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$DelegateResourceContract;
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

    .line 4944
    sget-object v0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$DelegateResourceContract;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tron$DelegateResourceContract;
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

    .line 4902
    sget-object v0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$DelegateResourceContract;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$DelegateResourceContract;
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

    .line 4909
    sget-object v0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$DelegateResourceContract;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Tron$DelegateResourceContract;
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

    .line 4949
    sget-object v0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$DelegateResourceContract;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$DelegateResourceContract;
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

    .line 4956
    sget-object v0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$DelegateResourceContract;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Tron$DelegateResourceContract;
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

    .line 4926
    sget-object v0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$DelegateResourceContract;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$DelegateResourceContract;
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

    .line 4933
    sget-object v0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$DelegateResourceContract;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Tron$DelegateResourceContract;
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

    .line 4889
    sget-object v0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$DelegateResourceContract;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$DelegateResourceContract;
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

    .line 4896
    sget-object v0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$DelegateResourceContract;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Tron$DelegateResourceContract;
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

    .line 4914
    sget-object v0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$DelegateResourceContract;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$DelegateResourceContract;
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

    .line 4921
    sget-object v0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$DelegateResourceContract;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Tron$DelegateResourceContract;",
            ">;"
        }
    .end annotation

    .line 5353
    sget-object v0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$DelegateResourceContract;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setBalance(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4761
    iput-wide p1, p0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->balance_:J

    return-void
.end method

.method private setLock(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4870
    iput-boolean p1, p0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->lock_:Z

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

    .line 4640
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4642
    iput-object p1, p0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->ownerAddress_:Ljava/lang/String;

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

    .line 4665
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 4666
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->ownerAddress_:Ljava/lang/String;

    return-void
.end method

.method private setReceiverAddress(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4812
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4814
    iput-object p1, p0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->receiverAddress_:Ljava/lang/String;

    return-void
.end method

.method private setReceiverAddressBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4837
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 4838
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->receiverAddress_:Ljava/lang/String;

    return-void
.end method

.method private setResource(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4707
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4709
    iput-object p1, p0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->resource_:Ljava/lang/String;

    return-void
.end method

.method private setResourceBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4732
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 4733
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->resource_:Ljava/lang/String;

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

    .line 5285
    sget-object p2, Lwallet/core/jni/proto/Tron$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 5331
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 5325
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 5310
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5312
    const-class p2, Lwallet/core/jni/proto/Tron$DelegateResourceContract;

    monitor-enter p2

    .line 5313
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 5315
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$DelegateResourceContract;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 5318
    sput-object p1, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->PARSER:Lcom/google/protobuf/Parser;

    .line 5320
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

    .line 5307
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$DelegateResourceContract;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "ownerAddress_"

    aput-object v0, p1, p3

    const-string p3, "resource_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "balance_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "receiverAddress_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "lock_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u0002\u0004\u0208\u0005\u0007"

    .line 5303
    sget-object p3, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$DelegateResourceContract;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5290
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Tron$DelegateResourceContract$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Tron$DelegateResourceContract$Builder;-><init>(Lwallet/core/jni/proto/Tron$1;)V

    return-object p1

    .line 5287
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Tron$DelegateResourceContract;

    invoke-direct {p1}, Lwallet/core/jni/proto/Tron$DelegateResourceContract;-><init>()V

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

.method public getBalance()J
    .locals 2

    .line 4749
    iget-wide v0, p0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->balance_:J

    return-wide v0
.end method

.method public getLock()Z
    .locals 1

    .line 4856
    iget-boolean v0, p0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->lock_:Z

    return v0
.end method

.method public getOwnerAddress()Ljava/lang/String;
    .locals 1

    .line 4615
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->ownerAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4628
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->ownerAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getReceiverAddress()Ljava/lang/String;
    .locals 1

    .line 4787
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->receiverAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiverAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4800
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->receiverAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getResource()Ljava/lang/String;
    .locals 1

    .line 4682
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->resource_:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4695
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$DelegateResourceContract;->resource_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
