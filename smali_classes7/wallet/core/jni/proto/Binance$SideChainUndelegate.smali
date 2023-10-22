.class public final Lwallet/core/jni/proto/Binance$SideChainUndelegate;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Binance.java"

# interfaces
.implements Lwallet/core/jni/proto/Binance$SideChainUndelegateOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Binance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SideChainUndelegate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Binance$SideChainUndelegate$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Binance$SideChainUndelegate;",
        "Lwallet/core/jni/proto/Binance$SideChainUndelegate$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Binance$SideChainUndelegateOrBuilder;"
    }
.end annotation


# static fields
.field public static final AMOUNT_FIELD_NUMBER:I = 0x3

.field public static final CHAIN_ID_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SideChainUndelegate;

.field public static final DELEGATOR_ADDR_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Binance$SideChainUndelegate;",
            ">;"
        }
    .end annotation
.end field

.field public static final VALIDATOR_ADDR_FIELD_NUMBER:I = 0x2


# instance fields
.field private amount_:Lwallet/core/jni/proto/Binance$SendOrder$Token;

.field private chainId_:Ljava/lang/String;

.field private delegatorAddr_:Lcom/google/protobuf/ByteString;

.field private validatorAddr_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13824
    new-instance v0, Lwallet/core/jni/proto/Binance$SideChainUndelegate;

    invoke-direct {v0}, Lwallet/core/jni/proto/Binance$SideChainUndelegate;-><init>()V

    .line 13827
    sput-object v0, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SideChainUndelegate;

    .line 13828
    const-class v1, Lwallet/core/jni/proto/Binance$SideChainUndelegate;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 13366
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 13367
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->delegatorAddr_:Lcom/google/protobuf/ByteString;

    .line 13368
    iput-object v0, p0, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->validatorAddr_:Lcom/google/protobuf/ByteString;

    const-string v0, ""

    .line 13369
    iput-object v0, p0, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->chainId_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$24000()Lwallet/core/jni/proto/Binance$SideChainUndelegate;
    .locals 1

    .line 13361
    sget-object v0, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SideChainUndelegate;

    return-object v0
.end method

.method static synthetic access$24100(Lwallet/core/jni/proto/Binance$SideChainUndelegate;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 13361
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->setDelegatorAddr(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$24200(Lwallet/core/jni/proto/Binance$SideChainUndelegate;)V
    .locals 0

    .line 13361
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->clearDelegatorAddr()V

    return-void
.end method

.method static synthetic access$24300(Lwallet/core/jni/proto/Binance$SideChainUndelegate;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 13361
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->setValidatorAddr(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$24400(Lwallet/core/jni/proto/Binance$SideChainUndelegate;)V
    .locals 0

    .line 13361
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->clearValidatorAddr()V

    return-void
.end method

.method static synthetic access$24500(Lwallet/core/jni/proto/Binance$SideChainUndelegate;Lwallet/core/jni/proto/Binance$SendOrder$Token;)V
    .locals 0

    .line 13361
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->setAmount(Lwallet/core/jni/proto/Binance$SendOrder$Token;)V

    return-void
.end method

.method static synthetic access$24600(Lwallet/core/jni/proto/Binance$SideChainUndelegate;Lwallet/core/jni/proto/Binance$SendOrder$Token;)V
    .locals 0

    .line 13361
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->mergeAmount(Lwallet/core/jni/proto/Binance$SendOrder$Token;)V

    return-void
.end method

.method static synthetic access$24700(Lwallet/core/jni/proto/Binance$SideChainUndelegate;)V
    .locals 0

    .line 13361
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->clearAmount()V

    return-void
.end method

.method static synthetic access$24800(Lwallet/core/jni/proto/Binance$SideChainUndelegate;Ljava/lang/String;)V
    .locals 0

    .line 13361
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->setChainId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$24900(Lwallet/core/jni/proto/Binance$SideChainUndelegate;)V
    .locals 0

    .line 13361
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->clearChainId()V

    return-void
.end method

.method static synthetic access$25000(Lwallet/core/jni/proto/Binance$SideChainUndelegate;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 13361
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->setChainIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearAmount()V
    .locals 1

    const/4 v0, 0x0

    .line 13467
    iput-object v0, p0, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->amount_:Lwallet/core/jni/proto/Binance$SendOrder$Token;

    return-void
.end method

.method private clearChainId()V
    .locals 1

    .line 13505
    invoke-static {}, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->getDefaultInstance()Lwallet/core/jni/proto/Binance$SideChainUndelegate;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->getChainId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->chainId_:Ljava/lang/String;

    return-void
.end method

.method private clearDelegatorAddr()V
    .locals 1

    .line 13395
    invoke-static {}, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->getDefaultInstance()Lwallet/core/jni/proto/Binance$SideChainUndelegate;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->getDelegatorAddr()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->delegatorAddr_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearValidatorAddr()V
    .locals 1

    .line 13422
    invoke-static {}, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->getDefaultInstance()Lwallet/core/jni/proto/Binance$SideChainUndelegate;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->getValidatorAddr()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->validatorAddr_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Binance$SideChainUndelegate;
    .locals 1

    .line 13833
    sget-object v0, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SideChainUndelegate;

    return-object v0
.end method

.method private mergeAmount(Lwallet/core/jni/proto/Binance$SendOrder$Token;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 13454
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13455
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->amount_:Lwallet/core/jni/proto/Binance$SendOrder$Token;

    if-eqz v0, :cond_0

    .line 13456
    invoke-static {}, Lwallet/core/jni/proto/Binance$SendOrder$Token;->getDefaultInstance()Lwallet/core/jni/proto/Binance$SendOrder$Token;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 13457
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->amount_:Lwallet/core/jni/proto/Binance$SendOrder$Token;

    .line 13458
    invoke-static {v0}, Lwallet/core/jni/proto/Binance$SendOrder$Token;->newBuilder(Lwallet/core/jni/proto/Binance$SendOrder$Token;)Lwallet/core/jni/proto/Binance$SendOrder$Token$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Binance$SendOrder$Token$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Binance$SendOrder$Token;

    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->amount_:Lwallet/core/jni/proto/Binance$SendOrder$Token;

    goto :goto_0

    .line 13460
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->amount_:Lwallet/core/jni/proto/Binance$SendOrder$Token;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Binance$SideChainUndelegate$Builder;
    .locals 1

    .line 13593
    sget-object v0, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SideChainUndelegate;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Binance$SideChainUndelegate$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Binance$SideChainUndelegate;)Lwallet/core/jni/proto/Binance$SideChainUndelegate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 13596
    sget-object v0, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SideChainUndelegate;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SideChainUndelegate$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Binance$SideChainUndelegate;
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

    .line 13570
    sget-object v0, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SideChainUndelegate;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SideChainUndelegate;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$SideChainUndelegate;
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

    .line 13576
    sget-object v0, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SideChainUndelegate;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SideChainUndelegate;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$SideChainUndelegate;
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

    .line 13534
    sget-object v0, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SideChainUndelegate;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SideChainUndelegate;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$SideChainUndelegate;
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

    .line 13541
    sget-object v0, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SideChainUndelegate;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SideChainUndelegate;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Binance$SideChainUndelegate;
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

    .line 13581
    sget-object v0, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SideChainUndelegate;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SideChainUndelegate;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$SideChainUndelegate;
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

    .line 13588
    sget-object v0, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SideChainUndelegate;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SideChainUndelegate;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Binance$SideChainUndelegate;
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

    .line 13558
    sget-object v0, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SideChainUndelegate;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SideChainUndelegate;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$SideChainUndelegate;
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

    .line 13565
    sget-object v0, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SideChainUndelegate;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SideChainUndelegate;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Binance$SideChainUndelegate;
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

    .line 13521
    sget-object v0, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SideChainUndelegate;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SideChainUndelegate;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$SideChainUndelegate;
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

    .line 13528
    sget-object v0, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SideChainUndelegate;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SideChainUndelegate;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Binance$SideChainUndelegate;
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

    .line 13546
    sget-object v0, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SideChainUndelegate;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SideChainUndelegate;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$SideChainUndelegate;
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

    .line 13553
    sget-object v0, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SideChainUndelegate;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SideChainUndelegate;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Binance$SideChainUndelegate;",
            ">;"
        }
    .end annotation

    .line 13839
    sget-object v0, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SideChainUndelegate;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAmount(Lwallet/core/jni/proto/Binance$SendOrder$Token;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 13445
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13446
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->amount_:Lwallet/core/jni/proto/Binance$SendOrder$Token;

    return-void
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

    .line 13496
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13498
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->chainId_:Ljava/lang/String;

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

    .line 13513
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 13514
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->chainId_:Ljava/lang/String;

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

    .line 13386
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13388
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->delegatorAddr_:Lcom/google/protobuf/ByteString;

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

    .line 13413
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13415
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->validatorAddr_:Lcom/google/protobuf/ByteString;

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

    .line 13772
    sget-object p2, Lwallet/core/jni/proto/Binance$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 13817
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 13811
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 13796
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 13798
    const-class p2, Lwallet/core/jni/proto/Binance$SideChainUndelegate;

    monitor-enter p2

    .line 13799
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 13801
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SideChainUndelegate;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 13804
    sput-object p1, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->PARSER:Lcom/google/protobuf/Parser;

    .line 13806
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

    .line 13793
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SideChainUndelegate;

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

    const-string p3, "amount_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "chainId_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\n\u0002\n\u0003\t\u0004\u0208"

    .line 13789
    sget-object p3, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SideChainUndelegate;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13777
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Binance$SideChainUndelegate$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Binance$SideChainUndelegate$Builder;-><init>(Lwallet/core/jni/proto/Binance$1;)V

    return-object p1

    .line 13774
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Binance$SideChainUndelegate;

    invoke-direct {p1}, Lwallet/core/jni/proto/Binance$SideChainUndelegate;-><init>()V

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

.method public getAmount()Lwallet/core/jni/proto/Binance$SendOrder$Token;
    .locals 1

    .line 13439
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->amount_:Lwallet/core/jni/proto/Binance$SendOrder$Token;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/Binance$SendOrder$Token;->getDefaultInstance()Lwallet/core/jni/proto/Binance$SendOrder$Token;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getChainId()Ljava/lang/String;
    .locals 1

    .line 13479
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->chainId_:Ljava/lang/String;

    return-object v0
.end method

.method public getChainIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 13488
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->chainId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDelegatorAddr()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 13379
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->delegatorAddr_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getValidatorAddr()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 13406
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->validatorAddr_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasAmount()Z
    .locals 1

    .line 13432
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SideChainUndelegate;->amount_:Lwallet/core/jni/proto/Binance$SendOrder$Token;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
