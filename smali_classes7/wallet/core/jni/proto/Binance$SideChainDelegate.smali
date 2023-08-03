.class public final Lwallet/core/jni/proto/Binance$SideChainDelegate;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Binance.java"

# interfaces
.implements Lwallet/core/jni/proto/Binance$SideChainDelegateOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Binance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SideChainDelegate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Binance$SideChainDelegate$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Binance$SideChainDelegate;",
        "Lwallet/core/jni/proto/Binance$SideChainDelegate$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Binance$SideChainDelegateOrBuilder;"
    }
.end annotation


# static fields
.field public static final CHAIN_ID_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SideChainDelegate;

.field public static final DELEGATION_FIELD_NUMBER:I = 0x3

.field public static final DELEGATOR_ADDR_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Binance$SideChainDelegate;",
            ">;"
        }
    .end annotation
.end field

.field public static final VALIDATOR_ADDR_FIELD_NUMBER:I = 0x2


# instance fields
.field private chainId_:Ljava/lang/String;

.field private delegation_:Lwallet/core/jni/proto/Binance$SendOrder$Token;

.field private delegatorAddr_:Lcom/google/protobuf/ByteString;

.field private validatorAddr_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12713
    new-instance v0, Lwallet/core/jni/proto/Binance$SideChainDelegate;

    invoke-direct {v0}, Lwallet/core/jni/proto/Binance$SideChainDelegate;-><init>()V

    .line 12716
    sput-object v0, Lwallet/core/jni/proto/Binance$SideChainDelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SideChainDelegate;

    .line 12717
    const-class v1, Lwallet/core/jni/proto/Binance$SideChainDelegate;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 12255
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 12256
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$SideChainDelegate;->delegatorAddr_:Lcom/google/protobuf/ByteString;

    .line 12257
    iput-object v0, p0, Lwallet/core/jni/proto/Binance$SideChainDelegate;->validatorAddr_:Lcom/google/protobuf/ByteString;

    const-string v0, ""

    .line 12258
    iput-object v0, p0, Lwallet/core/jni/proto/Binance$SideChainDelegate;->chainId_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$21400()Lwallet/core/jni/proto/Binance$SideChainDelegate;
    .locals 1

    .line 12250
    sget-object v0, Lwallet/core/jni/proto/Binance$SideChainDelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SideChainDelegate;

    return-object v0
.end method

.method static synthetic access$21500(Lwallet/core/jni/proto/Binance$SideChainDelegate;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 12250
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SideChainDelegate;->setDelegatorAddr(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$21600(Lwallet/core/jni/proto/Binance$SideChainDelegate;)V
    .locals 0

    .line 12250
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$SideChainDelegate;->clearDelegatorAddr()V

    return-void
.end method

.method static synthetic access$21700(Lwallet/core/jni/proto/Binance$SideChainDelegate;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 12250
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SideChainDelegate;->setValidatorAddr(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$21800(Lwallet/core/jni/proto/Binance$SideChainDelegate;)V
    .locals 0

    .line 12250
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$SideChainDelegate;->clearValidatorAddr()V

    return-void
.end method

.method static synthetic access$21900(Lwallet/core/jni/proto/Binance$SideChainDelegate;Lwallet/core/jni/proto/Binance$SendOrder$Token;)V
    .locals 0

    .line 12250
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SideChainDelegate;->setDelegation(Lwallet/core/jni/proto/Binance$SendOrder$Token;)V

    return-void
.end method

.method static synthetic access$22000(Lwallet/core/jni/proto/Binance$SideChainDelegate;Lwallet/core/jni/proto/Binance$SendOrder$Token;)V
    .locals 0

    .line 12250
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SideChainDelegate;->mergeDelegation(Lwallet/core/jni/proto/Binance$SendOrder$Token;)V

    return-void
.end method

.method static synthetic access$22100(Lwallet/core/jni/proto/Binance$SideChainDelegate;)V
    .locals 0

    .line 12250
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$SideChainDelegate;->clearDelegation()V

    return-void
.end method

.method static synthetic access$22200(Lwallet/core/jni/proto/Binance$SideChainDelegate;Ljava/lang/String;)V
    .locals 0

    .line 12250
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SideChainDelegate;->setChainId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$22300(Lwallet/core/jni/proto/Binance$SideChainDelegate;)V
    .locals 0

    .line 12250
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$SideChainDelegate;->clearChainId()V

    return-void
.end method

.method static synthetic access$22400(Lwallet/core/jni/proto/Binance$SideChainDelegate;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 12250
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SideChainDelegate;->setChainIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearChainId()V
    .locals 1

    .line 12394
    invoke-static {}, Lwallet/core/jni/proto/Binance$SideChainDelegate;->getDefaultInstance()Lwallet/core/jni/proto/Binance$SideChainDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SideChainDelegate;->getChainId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$SideChainDelegate;->chainId_:Ljava/lang/String;

    return-void
.end method

.method private clearDelegation()V
    .locals 1

    const/4 v0, 0x0

    .line 12356
    iput-object v0, p0, Lwallet/core/jni/proto/Binance$SideChainDelegate;->delegation_:Lwallet/core/jni/proto/Binance$SendOrder$Token;

    return-void
.end method

.method private clearDelegatorAddr()V
    .locals 1

    .line 12284
    invoke-static {}, Lwallet/core/jni/proto/Binance$SideChainDelegate;->getDefaultInstance()Lwallet/core/jni/proto/Binance$SideChainDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SideChainDelegate;->getDelegatorAddr()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$SideChainDelegate;->delegatorAddr_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearValidatorAddr()V
    .locals 1

    .line 12311
    invoke-static {}, Lwallet/core/jni/proto/Binance$SideChainDelegate;->getDefaultInstance()Lwallet/core/jni/proto/Binance$SideChainDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SideChainDelegate;->getValidatorAddr()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$SideChainDelegate;->validatorAddr_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Binance$SideChainDelegate;
    .locals 1

    .line 12722
    sget-object v0, Lwallet/core/jni/proto/Binance$SideChainDelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SideChainDelegate;

    return-object v0
.end method

.method private mergeDelegation(Lwallet/core/jni/proto/Binance$SendOrder$Token;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 12343
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12344
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SideChainDelegate;->delegation_:Lwallet/core/jni/proto/Binance$SendOrder$Token;

    if-eqz v0, :cond_0

    .line 12345
    invoke-static {}, Lwallet/core/jni/proto/Binance$SendOrder$Token;->getDefaultInstance()Lwallet/core/jni/proto/Binance$SendOrder$Token;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 12346
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SideChainDelegate;->delegation_:Lwallet/core/jni/proto/Binance$SendOrder$Token;

    .line 12347
    invoke-static {v0}, Lwallet/core/jni/proto/Binance$SendOrder$Token;->newBuilder(Lwallet/core/jni/proto/Binance$SendOrder$Token;)Lwallet/core/jni/proto/Binance$SendOrder$Token$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Binance$SendOrder$Token$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Binance$SendOrder$Token;

    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SideChainDelegate;->delegation_:Lwallet/core/jni/proto/Binance$SendOrder$Token;

    goto :goto_0

    .line 12349
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SideChainDelegate;->delegation_:Lwallet/core/jni/proto/Binance$SendOrder$Token;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Binance$SideChainDelegate$Builder;
    .locals 1

    .line 12482
    sget-object v0, Lwallet/core/jni/proto/Binance$SideChainDelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SideChainDelegate;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Binance$SideChainDelegate$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Binance$SideChainDelegate;)Lwallet/core/jni/proto/Binance$SideChainDelegate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 12485
    sget-object v0, Lwallet/core/jni/proto/Binance$SideChainDelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SideChainDelegate;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SideChainDelegate$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Binance$SideChainDelegate;
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

    .line 12459
    sget-object v0, Lwallet/core/jni/proto/Binance$SideChainDelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SideChainDelegate;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SideChainDelegate;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$SideChainDelegate;
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

    .line 12465
    sget-object v0, Lwallet/core/jni/proto/Binance$SideChainDelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SideChainDelegate;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SideChainDelegate;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$SideChainDelegate;
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

    .line 12423
    sget-object v0, Lwallet/core/jni/proto/Binance$SideChainDelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SideChainDelegate;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SideChainDelegate;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$SideChainDelegate;
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

    .line 12430
    sget-object v0, Lwallet/core/jni/proto/Binance$SideChainDelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SideChainDelegate;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SideChainDelegate;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Binance$SideChainDelegate;
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

    .line 12470
    sget-object v0, Lwallet/core/jni/proto/Binance$SideChainDelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SideChainDelegate;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SideChainDelegate;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$SideChainDelegate;
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

    .line 12477
    sget-object v0, Lwallet/core/jni/proto/Binance$SideChainDelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SideChainDelegate;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SideChainDelegate;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Binance$SideChainDelegate;
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

    .line 12447
    sget-object v0, Lwallet/core/jni/proto/Binance$SideChainDelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SideChainDelegate;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SideChainDelegate;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$SideChainDelegate;
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

    .line 12454
    sget-object v0, Lwallet/core/jni/proto/Binance$SideChainDelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SideChainDelegate;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SideChainDelegate;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Binance$SideChainDelegate;
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

    .line 12410
    sget-object v0, Lwallet/core/jni/proto/Binance$SideChainDelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SideChainDelegate;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SideChainDelegate;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$SideChainDelegate;
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

    .line 12417
    sget-object v0, Lwallet/core/jni/proto/Binance$SideChainDelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SideChainDelegate;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SideChainDelegate;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Binance$SideChainDelegate;
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

    .line 12435
    sget-object v0, Lwallet/core/jni/proto/Binance$SideChainDelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SideChainDelegate;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SideChainDelegate;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$SideChainDelegate;
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

    .line 12442
    sget-object v0, Lwallet/core/jni/proto/Binance$SideChainDelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SideChainDelegate;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SideChainDelegate;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Binance$SideChainDelegate;",
            ">;"
        }
    .end annotation

    .line 12728
    sget-object v0, Lwallet/core/jni/proto/Binance$SideChainDelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SideChainDelegate;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setChainId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 12385
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12387
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SideChainDelegate;->chainId_:Ljava/lang/String;

    return-void
.end method

.method private setChainIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 12402
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 12403
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SideChainDelegate;->chainId_:Ljava/lang/String;

    return-void
.end method

.method private setDelegation(Lwallet/core/jni/proto/Binance$SendOrder$Token;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 12334
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12335
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SideChainDelegate;->delegation_:Lwallet/core/jni/proto/Binance$SendOrder$Token;

    return-void
.end method

.method private setDelegatorAddr(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 12275
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12277
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SideChainDelegate;->delegatorAddr_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setValidatorAddr(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 12302
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12304
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SideChainDelegate;->validatorAddr_:Lcom/google/protobuf/ByteString;

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

    .line 12661
    sget-object p2, Lwallet/core/jni/proto/Binance$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 12706
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 12700
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 12685
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Binance$SideChainDelegate;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 12687
    const-class p2, Lwallet/core/jni/proto/Binance$SideChainDelegate;

    monitor-enter p2

    .line 12688
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Binance$SideChainDelegate;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 12690
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Binance$SideChainDelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SideChainDelegate;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 12693
    sput-object p1, Lwallet/core/jni/proto/Binance$SideChainDelegate;->PARSER:Lcom/google/protobuf/Parser;

    .line 12695
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

    .line 12682
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Binance$SideChainDelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SideChainDelegate;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "delegatorAddr_"

    aput-object v0, p1, p3

    const-string p3, "validatorAddr_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "delegation_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "chainId_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\n\u0002\n\u0003\t\u0004\u0208"

    .line 12678
    sget-object p3, Lwallet/core/jni/proto/Binance$SideChainDelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SideChainDelegate;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12666
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Binance$SideChainDelegate$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Binance$SideChainDelegate$Builder;-><init>(Lwallet/core/jni/proto/Binance$1;)V

    return-object p1

    .line 12663
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Binance$SideChainDelegate;

    invoke-direct {p1}, Lwallet/core/jni/proto/Binance$SideChainDelegate;-><init>()V

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

.method public getChainId()Ljava/lang/String;
    .locals 1

    .line 12368
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SideChainDelegate;->chainId_:Ljava/lang/String;

    return-object v0
.end method

.method public getChainIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 12377
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SideChainDelegate;->chainId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDelegation()Lwallet/core/jni/proto/Binance$SendOrder$Token;
    .locals 1

    .line 12328
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SideChainDelegate;->delegation_:Lwallet/core/jni/proto/Binance$SendOrder$Token;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/Binance$SendOrder$Token;->getDefaultInstance()Lwallet/core/jni/proto/Binance$SendOrder$Token;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getDelegatorAddr()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 12268
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SideChainDelegate;->delegatorAddr_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getValidatorAddr()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 12295
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SideChainDelegate;->validatorAddr_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasDelegation()Z
    .locals 1

    .line 12321
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SideChainDelegate;->delegation_:Lwallet/core/jni/proto/Binance$SendOrder$Token;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
