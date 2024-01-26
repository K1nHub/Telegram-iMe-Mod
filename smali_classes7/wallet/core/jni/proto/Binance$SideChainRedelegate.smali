.class public final Lwallet/core/jni/proto/Binance$SideChainRedelegate;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Binance.java"

# interfaces
.implements Lwallet/core/jni/proto/Binance$SideChainRedelegateOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Binance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SideChainRedelegate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Binance$SideChainRedelegate$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Binance$SideChainRedelegate;",
        "Lwallet/core/jni/proto/Binance$SideChainRedelegate$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Binance$SideChainRedelegateOrBuilder;"
    }
.end annotation


# static fields
.field public static final AMOUNT_FIELD_NUMBER:I = 0x4

.field public static final CHAIN_ID_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SideChainRedelegate;

.field public static final DELEGATOR_ADDR_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Binance$SideChainRedelegate;",
            ">;"
        }
    .end annotation
.end field

.field public static final VALIDATOR_DST_ADDR_FIELD_NUMBER:I = 0x3

.field public static final VALIDATOR_SRC_ADDR_FIELD_NUMBER:I = 0x2


# instance fields
.field private amount_:Lwallet/core/jni/proto/Binance$SendOrder$Token;

.field private chainId_:Ljava/lang/String;

.field private delegatorAddr_:Lcom/google/protobuf/ByteString;

.field private validatorDstAddr_:Lcom/google/protobuf/ByteString;

.field private validatorSrcAddr_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13300
    new-instance v0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;

    invoke-direct {v0}, Lwallet/core/jni/proto/Binance$SideChainRedelegate;-><init>()V

    .line 13303
    sput-object v0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SideChainRedelegate;

    .line 13304
    const-class v1, Lwallet/core/jni/proto/Binance$SideChainRedelegate;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 12785
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 12786
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->delegatorAddr_:Lcom/google/protobuf/ByteString;

    .line 12787
    iput-object v0, p0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->validatorSrcAddr_:Lcom/google/protobuf/ByteString;

    .line 12788
    iput-object v0, p0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->validatorDstAddr_:Lcom/google/protobuf/ByteString;

    const-string v0, ""

    .line 12789
    iput-object v0, p0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->chainId_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$22600()Lwallet/core/jni/proto/Binance$SideChainRedelegate;
    .locals 1

    .line 12780
    sget-object v0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SideChainRedelegate;

    return-object v0
.end method

.method static synthetic access$22700(Lwallet/core/jni/proto/Binance$SideChainRedelegate;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 12780
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->setDelegatorAddr(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$22800(Lwallet/core/jni/proto/Binance$SideChainRedelegate;)V
    .locals 0

    .line 12780
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->clearDelegatorAddr()V

    return-void
.end method

.method static synthetic access$22900(Lwallet/core/jni/proto/Binance$SideChainRedelegate;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 12780
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->setValidatorSrcAddr(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$23000(Lwallet/core/jni/proto/Binance$SideChainRedelegate;)V
    .locals 0

    .line 12780
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->clearValidatorSrcAddr()V

    return-void
.end method

.method static synthetic access$23100(Lwallet/core/jni/proto/Binance$SideChainRedelegate;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 12780
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->setValidatorDstAddr(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$23200(Lwallet/core/jni/proto/Binance$SideChainRedelegate;)V
    .locals 0

    .line 12780
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->clearValidatorDstAddr()V

    return-void
.end method

.method static synthetic access$23300(Lwallet/core/jni/proto/Binance$SideChainRedelegate;Lwallet/core/jni/proto/Binance$SendOrder$Token;)V
    .locals 0

    .line 12780
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->setAmount(Lwallet/core/jni/proto/Binance$SendOrder$Token;)V

    return-void
.end method

.method static synthetic access$23400(Lwallet/core/jni/proto/Binance$SideChainRedelegate;Lwallet/core/jni/proto/Binance$SendOrder$Token;)V
    .locals 0

    .line 12780
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->mergeAmount(Lwallet/core/jni/proto/Binance$SendOrder$Token;)V

    return-void
.end method

.method static synthetic access$23500(Lwallet/core/jni/proto/Binance$SideChainRedelegate;)V
    .locals 0

    .line 12780
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->clearAmount()V

    return-void
.end method

.method static synthetic access$23600(Lwallet/core/jni/proto/Binance$SideChainRedelegate;Ljava/lang/String;)V
    .locals 0

    .line 12780
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->setChainId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$23700(Lwallet/core/jni/proto/Binance$SideChainRedelegate;)V
    .locals 0

    .line 12780
    invoke-direct {p0}, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->clearChainId()V

    return-void
.end method

.method static synthetic access$23800(Lwallet/core/jni/proto/Binance$SideChainRedelegate;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 12780
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->setChainIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearAmount()V
    .locals 1

    const/4 v0, 0x0

    .line 12914
    iput-object v0, p0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->amount_:Lwallet/core/jni/proto/Binance$SendOrder$Token;

    return-void
.end method

.method private clearChainId()V
    .locals 1

    .line 12952
    invoke-static {}, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->getDefaultInstance()Lwallet/core/jni/proto/Binance$SideChainRedelegate;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->getChainId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->chainId_:Ljava/lang/String;

    return-void
.end method

.method private clearDelegatorAddr()V
    .locals 1

    .line 12815
    invoke-static {}, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->getDefaultInstance()Lwallet/core/jni/proto/Binance$SideChainRedelegate;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->getDelegatorAddr()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->delegatorAddr_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearValidatorDstAddr()V
    .locals 1

    .line 12869
    invoke-static {}, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->getDefaultInstance()Lwallet/core/jni/proto/Binance$SideChainRedelegate;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->getValidatorDstAddr()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->validatorDstAddr_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearValidatorSrcAddr()V
    .locals 1

    .line 12842
    invoke-static {}, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->getDefaultInstance()Lwallet/core/jni/proto/Binance$SideChainRedelegate;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->getValidatorSrcAddr()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->validatorSrcAddr_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Binance$SideChainRedelegate;
    .locals 1

    .line 13309
    sget-object v0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SideChainRedelegate;

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

    .line 12901
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12902
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->amount_:Lwallet/core/jni/proto/Binance$SendOrder$Token;

    if-eqz v0, :cond_0

    .line 12903
    invoke-static {}, Lwallet/core/jni/proto/Binance$SendOrder$Token;->getDefaultInstance()Lwallet/core/jni/proto/Binance$SendOrder$Token;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 12904
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->amount_:Lwallet/core/jni/proto/Binance$SendOrder$Token;

    .line 12905
    invoke-static {v0}, Lwallet/core/jni/proto/Binance$SendOrder$Token;->newBuilder(Lwallet/core/jni/proto/Binance$SendOrder$Token;)Lwallet/core/jni/proto/Binance$SendOrder$Token$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Binance$SendOrder$Token$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Binance$SendOrder$Token;

    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->amount_:Lwallet/core/jni/proto/Binance$SendOrder$Token;

    goto :goto_0

    .line 12907
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->amount_:Lwallet/core/jni/proto/Binance$SendOrder$Token;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Binance$SideChainRedelegate$Builder;
    .locals 1

    .line 13040
    sget-object v0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SideChainRedelegate;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Binance$SideChainRedelegate$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Binance$SideChainRedelegate;)Lwallet/core/jni/proto/Binance$SideChainRedelegate$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 13043
    sget-object v0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SideChainRedelegate;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SideChainRedelegate$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Binance$SideChainRedelegate;
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

    .line 13017
    sget-object v0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SideChainRedelegate;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$SideChainRedelegate;
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

    .line 13023
    sget-object v0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SideChainRedelegate;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Binance$SideChainRedelegate;
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

    .line 12981
    sget-object v0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SideChainRedelegate;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$SideChainRedelegate;
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

    .line 12988
    sget-object v0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SideChainRedelegate;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Binance$SideChainRedelegate;
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

    .line 13028
    sget-object v0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SideChainRedelegate;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$SideChainRedelegate;
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

    .line 13035
    sget-object v0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SideChainRedelegate;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Binance$SideChainRedelegate;
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

    .line 13005
    sget-object v0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SideChainRedelegate;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$SideChainRedelegate;
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

    .line 13012
    sget-object v0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SideChainRedelegate;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Binance$SideChainRedelegate;
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

    .line 12968
    sget-object v0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SideChainRedelegate;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$SideChainRedelegate;
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

    .line 12975
    sget-object v0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SideChainRedelegate;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Binance$SideChainRedelegate;
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

    .line 12993
    sget-object v0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SideChainRedelegate;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Binance$SideChainRedelegate;
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

    .line 13000
    sget-object v0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SideChainRedelegate;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Binance$SideChainRedelegate;",
            ">;"
        }
    .end annotation

    .line 13315
    sget-object v0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SideChainRedelegate;

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

    .line 12892
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12893
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->amount_:Lwallet/core/jni/proto/Binance$SendOrder$Token;

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

    .line 12943
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12945
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->chainId_:Ljava/lang/String;

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

    .line 12960
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 12961
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->chainId_:Ljava/lang/String;

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

    .line 12806
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12808
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->delegatorAddr_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setValidatorDstAddr(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 12860
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12862
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->validatorDstAddr_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setValidatorSrcAddr(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 12833
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12835
    iput-object p1, p0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->validatorSrcAddr_:Lcom/google/protobuf/ByteString;

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

    .line 13247
    sget-object p2, Lwallet/core/jni/proto/Binance$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 13293
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 13287
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 13272
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 13274
    const-class p2, Lwallet/core/jni/proto/Binance$SideChainRedelegate;

    monitor-enter p2

    .line 13275
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 13277
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SideChainRedelegate;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 13280
    sput-object p1, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->PARSER:Lcom/google/protobuf/Parser;

    .line 13282
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

    .line 13269
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SideChainRedelegate;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "delegatorAddr_"

    aput-object v0, p1, p3

    const-string p3, "validatorSrcAddr_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "validatorDstAddr_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "amount_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "chainId_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001\n\u0002\n\u0003\n\u0004\t\u0005\u0208"

    .line 13265
    sget-object p3, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Binance$SideChainRedelegate;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13252
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Binance$SideChainRedelegate$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Binance$SideChainRedelegate$Builder;-><init>(Lwallet/core/jni/proto/Binance$1;)V

    return-object p1

    .line 13249
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Binance$SideChainRedelegate;

    invoke-direct {p1}, Lwallet/core/jni/proto/Binance$SideChainRedelegate;-><init>()V

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

.method public getAmount()Lwallet/core/jni/proto/Binance$SendOrder$Token;
    .locals 1

    .line 12886
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->amount_:Lwallet/core/jni/proto/Binance$SendOrder$Token;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/Binance$SendOrder$Token;->getDefaultInstance()Lwallet/core/jni/proto/Binance$SendOrder$Token;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getChainId()Ljava/lang/String;
    .locals 1

    .line 12926
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->chainId_:Ljava/lang/String;

    return-object v0
.end method

.method public getChainIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 12935
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->chainId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDelegatorAddr()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 12799
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->delegatorAddr_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getValidatorDstAddr()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 12853
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->validatorDstAddr_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getValidatorSrcAddr()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 12826
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->validatorSrcAddr_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasAmount()Z
    .locals 1

    .line 12879
    iget-object v0, p0, Lwallet/core/jni/proto/Binance$SideChainRedelegate;->amount_:Lwallet/core/jni/proto/Binance$SendOrder$Token;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
