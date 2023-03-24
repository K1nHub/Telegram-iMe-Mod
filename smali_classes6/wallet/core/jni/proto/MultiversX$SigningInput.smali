.class public final Lwallet/core/jni/proto/MultiversX$SigningInput;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "MultiversX.java"

# interfaces
.implements Lwallet/core/jni/proto/MultiversX$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/MultiversX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SigningInput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/MultiversX$SigningInput$Builder;,
        Lwallet/core/jni/proto/MultiversX$SigningInput$MessageOneofCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/MultiversX$SigningInput;",
        "Lwallet/core/jni/proto/MultiversX$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/MultiversX$SigningInputOrBuilder;"
    }
.end annotation


# static fields
.field public static final CHAIN_ID_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$SigningInput;

.field public static final EGLD_TRANSFER_FIELD_NUMBER:I = 0x6

.field public static final ESDTNFT_TRANSFER_FIELD_NUMBER:I = 0x8

.field public static final ESDT_TRANSFER_FIELD_NUMBER:I = 0x7

.field public static final GAS_LIMIT_FIELD_NUMBER:I = 0x4

.field public static final GAS_PRICE_FIELD_NUMBER:I = 0x3

.field public static final GENERIC_ACTION_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/MultiversX$SigningInput;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIVATE_KEY_FIELD_NUMBER:I = 0x1


# instance fields
.field private chainId_:Ljava/lang/String;

.field private gasLimit_:J

.field private gasPrice_:J

.field private messageOneofCase_:I

.field private messageOneof_:Ljava/lang/Object;

.field private privateKey_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 4756
    new-instance v0, Lwallet/core/jni/proto/MultiversX$SigningInput;

    invoke-direct {v0}, Lwallet/core/jni/proto/MultiversX$SigningInput;-><init>()V

    .line 4759
    sput-object v0, Lwallet/core/jni/proto/MultiversX$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$SigningInput;

    .line 4760
    const-class v1, Lwallet/core/jni/proto/MultiversX$SigningInput;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3766
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 3770
    iput v0, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->messageOneofCase_:I

    .line 3767
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    const-string v0, ""

    .line 3768
    iput-object v0, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->chainId_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6300()Lwallet/core/jni/proto/MultiversX$SigningInput;
    .locals 1

    .line 3761
    sget-object v0, Lwallet/core/jni/proto/MultiversX$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$SigningInput;

    return-object v0
.end method

.method static synthetic access$6400(Lwallet/core/jni/proto/MultiversX$SigningInput;)V
    .locals 0

    .line 3761
    invoke-direct {p0}, Lwallet/core/jni/proto/MultiversX$SigningInput;->clearMessageOneof()V

    return-void
.end method

.method static synthetic access$6500(Lwallet/core/jni/proto/MultiversX$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 3761
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/MultiversX$SigningInput;->setPrivateKey(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$6600(Lwallet/core/jni/proto/MultiversX$SigningInput;)V
    .locals 0

    .line 3761
    invoke-direct {p0}, Lwallet/core/jni/proto/MultiversX$SigningInput;->clearPrivateKey()V

    return-void
.end method

.method static synthetic access$6700(Lwallet/core/jni/proto/MultiversX$SigningInput;Ljava/lang/String;)V
    .locals 0

    .line 3761
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/MultiversX$SigningInput;->setChainId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6800(Lwallet/core/jni/proto/MultiversX$SigningInput;)V
    .locals 0

    .line 3761
    invoke-direct {p0}, Lwallet/core/jni/proto/MultiversX$SigningInput;->clearChainId()V

    return-void
.end method

.method static synthetic access$6900(Lwallet/core/jni/proto/MultiversX$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 3761
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/MultiversX$SigningInput;->setChainIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$7000(Lwallet/core/jni/proto/MultiversX$SigningInput;J)V
    .locals 0

    .line 3761
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/MultiversX$SigningInput;->setGasPrice(J)V

    return-void
.end method

.method static synthetic access$7100(Lwallet/core/jni/proto/MultiversX$SigningInput;)V
    .locals 0

    .line 3761
    invoke-direct {p0}, Lwallet/core/jni/proto/MultiversX$SigningInput;->clearGasPrice()V

    return-void
.end method

.method static synthetic access$7200(Lwallet/core/jni/proto/MultiversX$SigningInput;J)V
    .locals 0

    .line 3761
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/MultiversX$SigningInput;->setGasLimit(J)V

    return-void
.end method

.method static synthetic access$7300(Lwallet/core/jni/proto/MultiversX$SigningInput;)V
    .locals 0

    .line 3761
    invoke-direct {p0}, Lwallet/core/jni/proto/MultiversX$SigningInput;->clearGasLimit()V

    return-void
.end method

.method static synthetic access$7400(Lwallet/core/jni/proto/MultiversX$SigningInput;Lwallet/core/jni/proto/MultiversX$GenericAction;)V
    .locals 0

    .line 3761
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/MultiversX$SigningInput;->setGenericAction(Lwallet/core/jni/proto/MultiversX$GenericAction;)V

    return-void
.end method

.method static synthetic access$7500(Lwallet/core/jni/proto/MultiversX$SigningInput;Lwallet/core/jni/proto/MultiversX$GenericAction;)V
    .locals 0

    .line 3761
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/MultiversX$SigningInput;->mergeGenericAction(Lwallet/core/jni/proto/MultiversX$GenericAction;)V

    return-void
.end method

.method static synthetic access$7600(Lwallet/core/jni/proto/MultiversX$SigningInput;)V
    .locals 0

    .line 3761
    invoke-direct {p0}, Lwallet/core/jni/proto/MultiversX$SigningInput;->clearGenericAction()V

    return-void
.end method

.method static synthetic access$7700(Lwallet/core/jni/proto/MultiversX$SigningInput;Lwallet/core/jni/proto/MultiversX$EGLDTransfer;)V
    .locals 0

    .line 3761
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/MultiversX$SigningInput;->setEgldTransfer(Lwallet/core/jni/proto/MultiversX$EGLDTransfer;)V

    return-void
.end method

.method static synthetic access$7800(Lwallet/core/jni/proto/MultiversX$SigningInput;Lwallet/core/jni/proto/MultiversX$EGLDTransfer;)V
    .locals 0

    .line 3761
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/MultiversX$SigningInput;->mergeEgldTransfer(Lwallet/core/jni/proto/MultiversX$EGLDTransfer;)V

    return-void
.end method

.method static synthetic access$7900(Lwallet/core/jni/proto/MultiversX$SigningInput;)V
    .locals 0

    .line 3761
    invoke-direct {p0}, Lwallet/core/jni/proto/MultiversX$SigningInput;->clearEgldTransfer()V

    return-void
.end method

.method static synthetic access$8000(Lwallet/core/jni/proto/MultiversX$SigningInput;Lwallet/core/jni/proto/MultiversX$ESDTTransfer;)V
    .locals 0

    .line 3761
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/MultiversX$SigningInput;->setEsdtTransfer(Lwallet/core/jni/proto/MultiversX$ESDTTransfer;)V

    return-void
.end method

.method static synthetic access$8100(Lwallet/core/jni/proto/MultiversX$SigningInput;Lwallet/core/jni/proto/MultiversX$ESDTTransfer;)V
    .locals 0

    .line 3761
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/MultiversX$SigningInput;->mergeEsdtTransfer(Lwallet/core/jni/proto/MultiversX$ESDTTransfer;)V

    return-void
.end method

.method static synthetic access$8200(Lwallet/core/jni/proto/MultiversX$SigningInput;)V
    .locals 0

    .line 3761
    invoke-direct {p0}, Lwallet/core/jni/proto/MultiversX$SigningInput;->clearEsdtTransfer()V

    return-void
.end method

.method static synthetic access$8300(Lwallet/core/jni/proto/MultiversX$SigningInput;Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;)V
    .locals 0

    .line 3761
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/MultiversX$SigningInput;->setEsdtnftTransfer(Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;)V

    return-void
.end method

.method static synthetic access$8400(Lwallet/core/jni/proto/MultiversX$SigningInput;Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;)V
    .locals 0

    .line 3761
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/MultiversX$SigningInput;->mergeEsdtnftTransfer(Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;)V

    return-void
.end method

.method static synthetic access$8500(Lwallet/core/jni/proto/MultiversX$SigningInput;)V
    .locals 0

    .line 3761
    invoke-direct {p0}, Lwallet/core/jni/proto/MultiversX$SigningInput;->clearEsdtnftTransfer()V

    return-void
.end method

.method private clearChainId()V
    .locals 1

    .line 3906
    invoke-static {}, Lwallet/core/jni/proto/MultiversX$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/MultiversX$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/MultiversX$SigningInput;->getChainId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->chainId_:Ljava/lang/String;

    return-void
.end method

.method private clearEgldTransfer()V
    .locals 2

    .line 4093
    iget v0, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->messageOneofCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 4094
    iput v0, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->messageOneofCase_:I

    const/4 v0, 0x0

    .line 4095
    iput-object v0, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->messageOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearEsdtTransfer()V
    .locals 2

    .line 4143
    iget v0, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->messageOneofCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 4144
    iput v0, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->messageOneofCase_:I

    const/4 v0, 0x0

    .line 4145
    iput-object v0, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->messageOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearEsdtnftTransfer()V
    .locals 2

    .line 4193
    iget v0, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->messageOneofCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 4194
    iput v0, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->messageOneofCase_:I

    const/4 v0, 0x0

    .line 4195
    iput-object v0, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->messageOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearGasLimit()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 3996
    iput-wide v0, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->gasLimit_:J

    return-void
.end method

.method private clearGasPrice()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 3958
    iput-wide v0, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->gasPrice_:J

    return-void
.end method

.method private clearGenericAction()V
    .locals 2

    .line 4043
    iget v0, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->messageOneofCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 4044
    iput v0, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->messageOneofCase_:I

    const/4 v0, 0x0

    .line 4045
    iput-object v0, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->messageOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearMessageOneof()V
    .locals 1

    const/4 v0, 0x0

    .line 3813
    iput v0, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->messageOneofCase_:I

    const/4 v0, 0x0

    .line 3814
    iput-object v0, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->messageOneof_:Ljava/lang/Object;

    return-void
.end method

.method private clearPrivateKey()V
    .locals 1

    .line 3853
    invoke-static {}, Lwallet/core/jni/proto/MultiversX$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/MultiversX$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/MultiversX$SigningInput;->getPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/MultiversX$SigningInput;
    .locals 1

    .line 4765
    sget-object v0, Lwallet/core/jni/proto/MultiversX$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$SigningInput;

    return-object v0
.end method

.method private mergeEgldTransfer(Lwallet/core/jni/proto/MultiversX$EGLDTransfer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4079
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4080
    iget v0, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->messageOneofCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->messageOneof_:Ljava/lang/Object;

    .line 4081
    invoke-static {}, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;->getDefaultInstance()Lwallet/core/jni/proto/MultiversX$EGLDTransfer;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4082
    iget-object v0, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;

    invoke-static {v0}, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;->newBuilder(Lwallet/core/jni/proto/MultiversX$EGLDTransfer;)Lwallet/core/jni/proto/MultiversX$EGLDTransfer$Builder;

    move-result-object v0

    .line 4083
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/MultiversX$EGLDTransfer$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->messageOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 4085
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->messageOneof_:Ljava/lang/Object;

    .line 4087
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->messageOneofCase_:I

    return-void
.end method

.method private mergeEsdtTransfer(Lwallet/core/jni/proto/MultiversX$ESDTTransfer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4129
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4130
    iget v0, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->messageOneofCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->messageOneof_:Ljava/lang/Object;

    .line 4131
    invoke-static {}, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->getDefaultInstance()Lwallet/core/jni/proto/MultiversX$ESDTTransfer;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4132
    iget-object v0, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;

    invoke-static {v0}, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->newBuilder(Lwallet/core/jni/proto/MultiversX$ESDTTransfer;)Lwallet/core/jni/proto/MultiversX$ESDTTransfer$Builder;

    move-result-object v0

    .line 4133
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/MultiversX$ESDTTransfer$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->messageOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 4135
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->messageOneof_:Ljava/lang/Object;

    .line 4137
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->messageOneofCase_:I

    return-void
.end method

.method private mergeEsdtnftTransfer(Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4179
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4180
    iget v0, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->messageOneofCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->messageOneof_:Ljava/lang/Object;

    .line 4181
    invoke-static {}, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->getDefaultInstance()Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4182
    iget-object v0, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;

    invoke-static {v0}, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->newBuilder(Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;)Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer$Builder;

    move-result-object v0

    .line 4183
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->messageOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 4185
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->messageOneof_:Ljava/lang/Object;

    .line 4187
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->messageOneofCase_:I

    return-void
.end method

.method private mergeGenericAction(Lwallet/core/jni/proto/MultiversX$GenericAction;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4029
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4030
    iget v0, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->messageOneofCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->messageOneof_:Ljava/lang/Object;

    .line 4031
    invoke-static {}, Lwallet/core/jni/proto/MultiversX$GenericAction;->getDefaultInstance()Lwallet/core/jni/proto/MultiversX$GenericAction;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4032
    iget-object v0, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$GenericAction;

    invoke-static {v0}, Lwallet/core/jni/proto/MultiversX$GenericAction;->newBuilder(Lwallet/core/jni/proto/MultiversX$GenericAction;)Lwallet/core/jni/proto/MultiversX$GenericAction$Builder;

    move-result-object v0

    .line 4033
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/MultiversX$GenericAction$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->messageOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 4035
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->messageOneof_:Ljava/lang/Object;

    .line 4037
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->messageOneofCase_:I

    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/MultiversX$SigningInput$Builder;
    .locals 1

    .line 4274
    sget-object v0, Lwallet/core/jni/proto/MultiversX$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$SigningInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/MultiversX$SigningInput$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/MultiversX$SigningInput;)Lwallet/core/jni/proto/MultiversX$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 4277
    sget-object v0, Lwallet/core/jni/proto/MultiversX$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$SigningInput;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$SigningInput$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/MultiversX$SigningInput;
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

    .line 4251
    sget-object v0, Lwallet/core/jni/proto/MultiversX$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$SigningInput;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/MultiversX$SigningInput;
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

    .line 4257
    sget-object v0, Lwallet/core/jni/proto/MultiversX$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/MultiversX$SigningInput;
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

    .line 4215
    sget-object v0, Lwallet/core/jni/proto/MultiversX$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/MultiversX$SigningInput;
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

    .line 4222
    sget-object v0, Lwallet/core/jni/proto/MultiversX$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/MultiversX$SigningInput;
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

    .line 4262
    sget-object v0, Lwallet/core/jni/proto/MultiversX$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/MultiversX$SigningInput;
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

    .line 4269
    sget-object v0, Lwallet/core/jni/proto/MultiversX$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/MultiversX$SigningInput;
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

    .line 4239
    sget-object v0, Lwallet/core/jni/proto/MultiversX$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/MultiversX$SigningInput;
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

    .line 4246
    sget-object v0, Lwallet/core/jni/proto/MultiversX$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/MultiversX$SigningInput;
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

    .line 4202
    sget-object v0, Lwallet/core/jni/proto/MultiversX$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/MultiversX$SigningInput;
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

    .line 4209
    sget-object v0, Lwallet/core/jni/proto/MultiversX$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$SigningInput;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/MultiversX$SigningInput;
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

    .line 4227
    sget-object v0, Lwallet/core/jni/proto/MultiversX$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$SigningInput;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/MultiversX$SigningInput;
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

    .line 4234
    sget-object v0, Lwallet/core/jni/proto/MultiversX$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/MultiversX$SigningInput;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/MultiversX$SigningInput;",
            ">;"
        }
    .end annotation

    .line 4771
    sget-object v0, Lwallet/core/jni/proto/MultiversX$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$SigningInput;

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

    .line 3893
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3895
    iput-object p1, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->chainId_:Ljava/lang/String;

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

    .line 3918
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3919
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->chainId_:Ljava/lang/String;

    return-void
.end method

.method private setEgldTransfer(Lwallet/core/jni/proto/MultiversX$EGLDTransfer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4071
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4072
    iput-object p1, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->messageOneof_:Ljava/lang/Object;

    const/4 p1, 0x6

    .line 4073
    iput p1, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->messageOneofCase_:I

    return-void
.end method

.method private setEsdtTransfer(Lwallet/core/jni/proto/MultiversX$ESDTTransfer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4121
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4122
    iput-object p1, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->messageOneof_:Ljava/lang/Object;

    const/4 p1, 0x7

    .line 4123
    iput p1, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->messageOneofCase_:I

    return-void
.end method

.method private setEsdtnftTransfer(Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4171
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4172
    iput-object p1, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->messageOneof_:Ljava/lang/Object;

    const/16 p1, 0x8

    .line 4173
    iput p1, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->messageOneofCase_:I

    return-void
.end method

.method private setGasLimit(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3985
    iput-wide p1, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->gasLimit_:J

    return-void
.end method

.method private setGasPrice(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3947
    iput-wide p1, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->gasPrice_:J

    return-void
.end method

.method private setGenericAction(Lwallet/core/jni/proto/MultiversX$GenericAction;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4021
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4022
    iput-object p1, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->messageOneof_:Ljava/lang/Object;

    const/4 p1, 0x5

    .line 4023
    iput p1, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->messageOneofCase_:I

    return-void
.end method

.method private setPrivateKey(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3840
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3842
    iput-object p1, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

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

    .line 4698
    sget-object p2, Lwallet/core/jni/proto/MultiversX$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 4749
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 4743
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 4728
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/MultiversX$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 4730
    const-class p2, Lwallet/core/jni/proto/MultiversX$SigningInput;

    monitor-enter p2

    .line 4731
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/MultiversX$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 4733
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/MultiversX$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$SigningInput;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 4736
    sput-object p1, Lwallet/core/jni/proto/MultiversX$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    .line 4738
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

    .line 4725
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/MultiversX$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$SigningInput;

    return-object p1

    :pswitch_4
    const/16 p1, 0xa

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "messageOneof_"

    aput-object v0, p1, p3

    const-string p3, "messageOneofCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "privateKey_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "chainId_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "gasPrice_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "gasLimit_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    .line 4706
    const-class p3, Lwallet/core/jni/proto/MultiversX$GenericAction;

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-class p3, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-class p3, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-class p3, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0008\u0001\u0000\u0001\u0008\u0008\u0000\u0000\u0000\u0001\n\u0002\u0208\u0003\u0003\u0004\u0003\u0005<\u0000\u0006<\u0000\u0007<\u0000\u0008<\u0000"

    .line 4721
    sget-object p3, Lwallet/core/jni/proto/MultiversX$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/MultiversX$SigningInput;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4703
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/MultiversX$SigningInput$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/MultiversX$SigningInput$Builder;-><init>(Lwallet/core/jni/proto/MultiversX$1;)V

    return-object p1

    .line 4700
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/MultiversX$SigningInput;

    invoke-direct {p1}, Lwallet/core/jni/proto/MultiversX$SigningInput;-><init>()V

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

.method public getChainId()Ljava/lang/String;
    .locals 1

    .line 3868
    iget-object v0, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->chainId_:Ljava/lang/String;

    return-object v0
.end method

.method public getChainIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3881
    iget-object v0, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->chainId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getEgldTransfer()Lwallet/core/jni/proto/MultiversX$EGLDTransfer;
    .locals 2

    .line 4062
    iget v0, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->messageOneofCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 4063
    iget-object v0, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;

    return-object v0

    .line 4065
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/MultiversX$EGLDTransfer;->getDefaultInstance()Lwallet/core/jni/proto/MultiversX$EGLDTransfer;

    move-result-object v0

    return-object v0
.end method

.method public getEsdtTransfer()Lwallet/core/jni/proto/MultiversX$ESDTTransfer;
    .locals 2

    .line 4112
    iget v0, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->messageOneofCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 4113
    iget-object v0, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;

    return-object v0

    .line 4115
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/MultiversX$ESDTTransfer;->getDefaultInstance()Lwallet/core/jni/proto/MultiversX$ESDTTransfer;

    move-result-object v0

    return-object v0
.end method

.method public getEsdtnftTransfer()Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;
    .locals 2

    .line 4162
    iget v0, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->messageOneofCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 4163
    iget-object v0, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;

    return-object v0

    .line 4165
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;->getDefaultInstance()Lwallet/core/jni/proto/MultiversX$ESDTNFTTransfer;

    move-result-object v0

    return-object v0
.end method

.method public getGasLimit()J
    .locals 2

    .line 3973
    iget-wide v0, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->gasLimit_:J

    return-wide v0
.end method

.method public getGasPrice()J
    .locals 2

    .line 3935
    iget-wide v0, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->gasPrice_:J

    return-wide v0
.end method

.method public getGenericAction()Lwallet/core/jni/proto/MultiversX$GenericAction;
    .locals 2

    .line 4012
    iget v0, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->messageOneofCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 4013
    iget-object v0, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/MultiversX$GenericAction;

    return-object v0

    .line 4015
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/MultiversX$GenericAction;->getDefaultInstance()Lwallet/core/jni/proto/MultiversX$GenericAction;

    move-result-object v0

    return-object v0
.end method

.method public getMessageOneofCase()Lwallet/core/jni/proto/MultiversX$SigningInput$MessageOneofCase;
    .locals 1

    .line 3808
    iget v0, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->messageOneofCase_:I

    invoke-static {v0}, Lwallet/core/jni/proto/MultiversX$SigningInput$MessageOneofCase;->forNumber(I)Lwallet/core/jni/proto/MultiversX$SigningInput$MessageOneofCase;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3829
    iget-object v0, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasEgldTransfer()Z
    .locals 2

    .line 4055
    iget v0, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->messageOneofCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasEsdtTransfer()Z
    .locals 2

    .line 4105
    iget v0, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->messageOneofCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasEsdtnftTransfer()Z
    .locals 2

    .line 4155
    iget v0, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->messageOneofCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasGenericAction()Z
    .locals 2

    .line 4005
    iget v0, p0, Lwallet/core/jni/proto/MultiversX$SigningInput;->messageOneofCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
