.class public final Lwallet/core/jni/proto/Tron$FreezeBalanceContract;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Tron.java"

# interfaces
.implements Lwallet/core/jni/proto/Tron$FreezeBalanceContractOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Tron;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FreezeBalanceContract"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Tron$FreezeBalanceContract$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Tron$FreezeBalanceContract;",
        "Lwallet/core/jni/proto/Tron$FreezeBalanceContract$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Tron$FreezeBalanceContractOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$FreezeBalanceContract;

.field public static final FROZEN_BALANCE_FIELD_NUMBER:I = 0x2

.field public static final FROZEN_DURATION_FIELD_NUMBER:I = 0x3

.field public static final OWNER_ADDRESS_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Tron$FreezeBalanceContract;",
            ">;"
        }
    .end annotation
.end field

.field public static final RECEIVER_ADDRESS_FIELD_NUMBER:I = 0xf

.field public static final RESOURCE_FIELD_NUMBER:I = 0xa


# instance fields
.field private frozenBalance_:J

.field private frozenDuration_:J

.field private ownerAddress_:Ljava/lang/String;

.field private receiverAddress_:Ljava/lang/String;

.field private resource_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2941
    new-instance v0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;

    invoke-direct {v0}, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;-><init>()V

    .line 2944
    sput-object v0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$FreezeBalanceContract;

    .line 2945
    const-class v1, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2213
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 2214
    iput-object v0, p0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->ownerAddress_:Ljava/lang/String;

    .line 2215
    iput-object v0, p0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->resource_:Ljava/lang/String;

    .line 2216
    iput-object v0, p0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->receiverAddress_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3600()Lwallet/core/jni/proto/Tron$FreezeBalanceContract;
    .locals 1

    .line 2208
    sget-object v0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$FreezeBalanceContract;

    return-object v0
.end method

.method static synthetic access$3700(Lwallet/core/jni/proto/Tron$FreezeBalanceContract;Ljava/lang/String;)V
    .locals 0

    .line 2208
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->setOwnerAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3800(Lwallet/core/jni/proto/Tron$FreezeBalanceContract;)V
    .locals 0

    .line 2208
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->clearOwnerAddress()V

    return-void
.end method

.method static synthetic access$3900(Lwallet/core/jni/proto/Tron$FreezeBalanceContract;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 2208
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->setOwnerAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4000(Lwallet/core/jni/proto/Tron$FreezeBalanceContract;J)V
    .locals 0

    .line 2208
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->setFrozenBalance(J)V

    return-void
.end method

.method static synthetic access$4100(Lwallet/core/jni/proto/Tron$FreezeBalanceContract;)V
    .locals 0

    .line 2208
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->clearFrozenBalance()V

    return-void
.end method

.method static synthetic access$4200(Lwallet/core/jni/proto/Tron$FreezeBalanceContract;J)V
    .locals 0

    .line 2208
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->setFrozenDuration(J)V

    return-void
.end method

.method static synthetic access$4300(Lwallet/core/jni/proto/Tron$FreezeBalanceContract;)V
    .locals 0

    .line 2208
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->clearFrozenDuration()V

    return-void
.end method

.method static synthetic access$4400(Lwallet/core/jni/proto/Tron$FreezeBalanceContract;Ljava/lang/String;)V
    .locals 0

    .line 2208
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->setResource(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4500(Lwallet/core/jni/proto/Tron$FreezeBalanceContract;)V
    .locals 0

    .line 2208
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->clearResource()V

    return-void
.end method

.method static synthetic access$4600(Lwallet/core/jni/proto/Tron$FreezeBalanceContract;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 2208
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->setResourceBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4700(Lwallet/core/jni/proto/Tron$FreezeBalanceContract;Ljava/lang/String;)V
    .locals 0

    .line 2208
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->setReceiverAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4800(Lwallet/core/jni/proto/Tron$FreezeBalanceContract;)V
    .locals 0

    .line 2208
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->clearReceiverAddress()V

    return-void
.end method

.method static synthetic access$4900(Lwallet/core/jni/proto/Tron$FreezeBalanceContract;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 2208
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->setReceiverAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearFrozenBalance()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 2320
    iput-wide v0, p0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->frozenBalance_:J

    return-void
.end method

.method private clearFrozenDuration()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 2358
    iput-wide v0, p0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->frozenDuration_:J

    return-void
.end method

.method private clearOwnerAddress()V
    .locals 1

    .line 2268
    invoke-static {}, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->getDefaultInstance()Lwallet/core/jni/proto/Tron$FreezeBalanceContract;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->getOwnerAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->ownerAddress_:Ljava/lang/String;

    return-void
.end method

.method private clearReceiverAddress()V
    .locals 1

    .line 2478
    invoke-static {}, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->getDefaultInstance()Lwallet/core/jni/proto/Tron$FreezeBalanceContract;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->getReceiverAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->receiverAddress_:Ljava/lang/String;

    return-void
.end method

.method private clearResource()V
    .locals 1

    .line 2411
    invoke-static {}, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->getDefaultInstance()Lwallet/core/jni/proto/Tron$FreezeBalanceContract;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->getResource()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->resource_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Tron$FreezeBalanceContract;
    .locals 1

    .line 2950
    sget-object v0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$FreezeBalanceContract;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Tron$FreezeBalanceContract$Builder;
    .locals 1

    .line 2570
    sget-object v0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$FreezeBalanceContract;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Tron$FreezeBalanceContract;)Lwallet/core/jni/proto/Tron$FreezeBalanceContract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 2573
    sget-object v0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$FreezeBalanceContract;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Tron$FreezeBalanceContract;
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

    .line 2547
    sget-object v0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$FreezeBalanceContract;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$FreezeBalanceContract;
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

    .line 2553
    sget-object v0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$FreezeBalanceContract;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tron$FreezeBalanceContract;
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

    .line 2511
    sget-object v0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$FreezeBalanceContract;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$FreezeBalanceContract;
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

    .line 2518
    sget-object v0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$FreezeBalanceContract;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Tron$FreezeBalanceContract;
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

    .line 2558
    sget-object v0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$FreezeBalanceContract;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$FreezeBalanceContract;
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

    .line 2565
    sget-object v0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$FreezeBalanceContract;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Tron$FreezeBalanceContract;
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

    .line 2535
    sget-object v0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$FreezeBalanceContract;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$FreezeBalanceContract;
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

    .line 2542
    sget-object v0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$FreezeBalanceContract;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Tron$FreezeBalanceContract;
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

    .line 2498
    sget-object v0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$FreezeBalanceContract;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$FreezeBalanceContract;
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

    .line 2505
    sget-object v0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$FreezeBalanceContract;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Tron$FreezeBalanceContract;
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

    .line 2523
    sget-object v0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$FreezeBalanceContract;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$FreezeBalanceContract;
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

    .line 2530
    sget-object v0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$FreezeBalanceContract;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Tron$FreezeBalanceContract;",
            ">;"
        }
    .end annotation

    .line 2956
    sget-object v0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$FreezeBalanceContract;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setFrozenBalance(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2309
    iput-wide p1, p0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->frozenBalance_:J

    return-void
.end method

.method private setFrozenDuration(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2347
    iput-wide p1, p0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->frozenDuration_:J

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

    .line 2255
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2257
    iput-object p1, p0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->ownerAddress_:Ljava/lang/String;

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

    .line 2280
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2281
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->ownerAddress_:Ljava/lang/String;

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

    .line 2465
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2467
    iput-object p1, p0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->receiverAddress_:Ljava/lang/String;

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

    .line 2490
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2491
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->receiverAddress_:Ljava/lang/String;

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

    .line 2398
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2400
    iput-object p1, p0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->resource_:Ljava/lang/String;

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

    .line 2423
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2424
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->resource_:Ljava/lang/String;

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

    .line 2888
    sget-object p2, Lwallet/core/jni/proto/Tron$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2934
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 2928
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 2913
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 2915
    const-class p2, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;

    monitor-enter p2

    .line 2916
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 2918
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$FreezeBalanceContract;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2921
    sput-object p1, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->PARSER:Lcom/google/protobuf/Parser;

    .line 2923
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

    .line 2910
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$FreezeBalanceContract;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "ownerAddress_"

    aput-object v0, p1, p3

    const-string p3, "frozenBalance_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "frozenDuration_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "resource_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "receiverAddress_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0005\u0000\u0000\u0001\u000f\u0005\u0000\u0000\u0000\u0001\u0208\u0002\u0002\u0003\u0002\n\u0208\u000f\u0208"

    .line 2906
    sget-object p3, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$FreezeBalanceContract;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2893
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Tron$FreezeBalanceContract$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Tron$FreezeBalanceContract$Builder;-><init>(Lwallet/core/jni/proto/Tron$1;)V

    return-object p1

    .line 2890
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;

    invoke-direct {p1}, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;-><init>()V

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

.method public getFrozenBalance()J
    .locals 2

    .line 2297
    iget-wide v0, p0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->frozenBalance_:J

    return-wide v0
.end method

.method public getFrozenDuration()J
    .locals 2

    .line 2335
    iget-wide v0, p0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->frozenDuration_:J

    return-wide v0
.end method

.method public getOwnerAddress()Ljava/lang/String;
    .locals 1

    .line 2230
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->ownerAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2243
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->ownerAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getReceiverAddress()Ljava/lang/String;
    .locals 1

    .line 2440
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->receiverAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getReceiverAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2453
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->receiverAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getResource()Ljava/lang/String;
    .locals 1

    .line 2373
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->resource_:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2386
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$FreezeBalanceContract;->resource_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
