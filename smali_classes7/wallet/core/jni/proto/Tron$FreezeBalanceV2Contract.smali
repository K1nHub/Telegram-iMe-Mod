.class public final Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Tron.java"

# interfaces
.implements Lwallet/core/jni/proto/Tron$FreezeBalanceV2ContractOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Tron;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FreezeBalanceV2Contract"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;",
        "Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Tron$FreezeBalanceV2ContractOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;

.field public static final FROZEN_BALANCE_FIELD_NUMBER:I = 0x2

.field public static final OWNER_ADDRESS_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESOURCE_FIELD_NUMBER:I = 0x3


# instance fields
.field private frozenBalance_:J

.field private ownerAddress_:Ljava/lang/String;

.field private resource_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 3537
    new-instance v0, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;

    invoke-direct {v0}, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;-><init>()V

    .line 3540
    sput-object v0, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;

    .line 3541
    const-class v1, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3026
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 3027
    iput-object v0, p0, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;->ownerAddress_:Ljava/lang/String;

    .line 3028
    iput-object v0, p0, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;->resource_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5100()Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;
    .locals 1

    .line 3021
    sget-object v0, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;

    return-object v0
.end method

.method static synthetic access$5200(Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;Ljava/lang/String;)V
    .locals 0

    .line 3021
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;->setOwnerAddress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5300(Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;)V
    .locals 0

    .line 3021
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;->clearOwnerAddress()V

    return-void
.end method

.method static synthetic access$5400(Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 3021
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;->setOwnerAddressBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$5500(Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;J)V
    .locals 0

    .line 3021
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;->setFrozenBalance(J)V

    return-void
.end method

.method static synthetic access$5600(Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;)V
    .locals 0

    .line 3021
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;->clearFrozenBalance()V

    return-void
.end method

.method static synthetic access$5700(Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;Ljava/lang/String;)V
    .locals 0

    .line 3021
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;->setResource(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5800(Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;)V
    .locals 0

    .line 3021
    invoke-direct {p0}, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;->clearResource()V

    return-void
.end method

.method static synthetic access$5900(Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 3021
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;->setResourceBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearFrozenBalance()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 3132
    iput-wide v0, p0, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;->frozenBalance_:J

    return-void
.end method

.method private clearOwnerAddress()V
    .locals 1

    .line 3080
    invoke-static {}, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;->getDefaultInstance()Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;->getOwnerAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;->ownerAddress_:Ljava/lang/String;

    return-void
.end method

.method private clearResource()V
    .locals 1

    .line 3185
    invoke-static {}, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;->getDefaultInstance()Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;->getResource()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;->resource_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;
    .locals 1

    .line 3546
    sget-object v0, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract$Builder;
    .locals 1

    .line 3277
    sget-object v0, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;)Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 3280
    sget-object v0, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;
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

    .line 3254
    sget-object v0, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;
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

    .line 3260
    sget-object v0, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;
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

    .line 3218
    sget-object v0, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;
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

    .line 3225
    sget-object v0, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;
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

    .line 3265
    sget-object v0, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;
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

    .line 3272
    sget-object v0, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;
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

    .line 3242
    sget-object v0, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;
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

    .line 3249
    sget-object v0, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;
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

    .line 3205
    sget-object v0, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;
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

    .line 3212
    sget-object v0, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;
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

    .line 3230
    sget-object v0, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;
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

    .line 3237
    sget-object v0, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;",
            ">;"
        }
    .end annotation

    .line 3552
    sget-object v0, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;

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

    .line 3121
    iput-wide p1, p0, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;->frozenBalance_:J

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

    .line 3067
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3069
    iput-object p1, p0, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;->ownerAddress_:Ljava/lang/String;

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

    .line 3092
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3093
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;->ownerAddress_:Ljava/lang/String;

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

    .line 3172
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3174
    iput-object p1, p0, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;->resource_:Ljava/lang/String;

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

    .line 3197
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3198
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;->resource_:Ljava/lang/String;

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

    .line 3486
    sget-object p2, Lwallet/core/jni/proto/Tron$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 3530
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 3524
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 3509
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 3511
    const-class p2, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;

    monitor-enter p2

    .line 3512
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 3514
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3517
    sput-object p1, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;->PARSER:Lcom/google/protobuf/Parser;

    .line 3519
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

    .line 3506
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "ownerAddress_"

    aput-object v0, p1, p3

    const-string p3, "frozenBalance_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "resource_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0208\u0002\u0002\u0003\u0208"

    .line 3502
    sget-object p3, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3491
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract$Builder;-><init>(Lwallet/core/jni/proto/Tron$1;)V

    return-object p1

    .line 3488
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;

    invoke-direct {p1}, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;-><init>()V

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

    .line 3109
    iget-wide v0, p0, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;->frozenBalance_:J

    return-wide v0
.end method

.method public getOwnerAddress()Ljava/lang/String;
    .locals 1

    .line 3042
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;->ownerAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getOwnerAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3055
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;->ownerAddress_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getResource()Ljava/lang/String;
    .locals 1

    .line 3147
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;->resource_:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3160
    iget-object v0, p0, Lwallet/core/jni/proto/Tron$FreezeBalanceV2Contract;->resource_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
