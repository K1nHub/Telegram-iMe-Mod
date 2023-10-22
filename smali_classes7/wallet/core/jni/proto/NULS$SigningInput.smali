.class public final Lwallet/core/jni/proto/NULS$SigningInput;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "NULS.java"

# interfaces
.implements Lwallet/core/jni/proto/NULS$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/NULS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SigningInput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/NULS$SigningInput$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/NULS$SigningInput;",
        "Lwallet/core/jni/proto/NULS$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/NULS$SigningInputOrBuilder;"
    }
.end annotation


# static fields
.field public static final AMOUNT_FIELD_NUMBER:I = 0x4

.field public static final BALANCE_FIELD_NUMBER:I = 0x9

.field public static final CHAIN_ID_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$SigningInput;

.field public static final FROM_FIELD_NUMBER:I = 0x2

.field public static final IDASSETS_ID_FIELD_NUMBER:I = 0x6

.field public static final NONCE_FIELD_NUMBER:I = 0x7

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/NULS$SigningInput;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIVATE_KEY_FIELD_NUMBER:I = 0x1

.field public static final REMARK_FIELD_NUMBER:I = 0x8

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0xa

.field public static final TO_FIELD_NUMBER:I = 0x3


# instance fields
.field private amount_:Lcom/google/protobuf/ByteString;

.field private balance_:Lcom/google/protobuf/ByteString;

.field private chainId_:I

.field private from_:Ljava/lang/String;

.field private idassetsId_:I

.field private nonce_:Lcom/google/protobuf/ByteString;

.field private privateKey_:Lcom/google/protobuf/ByteString;

.field private remark_:Ljava/lang/String;

.field private timestamp_:I

.field private to_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 4522
    new-instance v0, Lwallet/core/jni/proto/NULS$SigningInput;

    invoke-direct {v0}, Lwallet/core/jni/proto/NULS$SigningInput;-><init>()V

    .line 4525
    sput-object v0, Lwallet/core/jni/proto/NULS$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$SigningInput;

    .line 4526
    const-class v1, Lwallet/core/jni/proto/NULS$SigningInput;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 3391
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 3392
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/NULS$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    const-string v1, ""

    .line 3393
    iput-object v1, p0, Lwallet/core/jni/proto/NULS$SigningInput;->from_:Ljava/lang/String;

    .line 3394
    iput-object v1, p0, Lwallet/core/jni/proto/NULS$SigningInput;->to_:Ljava/lang/String;

    .line 3395
    iput-object v0, p0, Lwallet/core/jni/proto/NULS$SigningInput;->amount_:Lcom/google/protobuf/ByteString;

    .line 3396
    iput-object v0, p0, Lwallet/core/jni/proto/NULS$SigningInput;->nonce_:Lcom/google/protobuf/ByteString;

    .line 3397
    iput-object v1, p0, Lwallet/core/jni/proto/NULS$SigningInput;->remark_:Ljava/lang/String;

    .line 3398
    iput-object v0, p0, Lwallet/core/jni/proto/NULS$SigningInput;->balance_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$6000()Lwallet/core/jni/proto/NULS$SigningInput;
    .locals 1

    .line 3386
    sget-object v0, Lwallet/core/jni/proto/NULS$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$SigningInput;

    return-object v0
.end method

.method static synthetic access$6100(Lwallet/core/jni/proto/NULS$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 3386
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NULS$SigningInput;->setPrivateKey(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$6200(Lwallet/core/jni/proto/NULS$SigningInput;)V
    .locals 0

    .line 3386
    invoke-direct {p0}, Lwallet/core/jni/proto/NULS$SigningInput;->clearPrivateKey()V

    return-void
.end method

.method static synthetic access$6300(Lwallet/core/jni/proto/NULS$SigningInput;Ljava/lang/String;)V
    .locals 0

    .line 3386
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NULS$SigningInput;->setFrom(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6400(Lwallet/core/jni/proto/NULS$SigningInput;)V
    .locals 0

    .line 3386
    invoke-direct {p0}, Lwallet/core/jni/proto/NULS$SigningInput;->clearFrom()V

    return-void
.end method

.method static synthetic access$6500(Lwallet/core/jni/proto/NULS$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 3386
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NULS$SigningInput;->setFromBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$6600(Lwallet/core/jni/proto/NULS$SigningInput;Ljava/lang/String;)V
    .locals 0

    .line 3386
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NULS$SigningInput;->setTo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6700(Lwallet/core/jni/proto/NULS$SigningInput;)V
    .locals 0

    .line 3386
    invoke-direct {p0}, Lwallet/core/jni/proto/NULS$SigningInput;->clearTo()V

    return-void
.end method

.method static synthetic access$6800(Lwallet/core/jni/proto/NULS$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 3386
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NULS$SigningInput;->setToBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$6900(Lwallet/core/jni/proto/NULS$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 3386
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NULS$SigningInput;->setAmount(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$7000(Lwallet/core/jni/proto/NULS$SigningInput;)V
    .locals 0

    .line 3386
    invoke-direct {p0}, Lwallet/core/jni/proto/NULS$SigningInput;->clearAmount()V

    return-void
.end method

.method static synthetic access$7100(Lwallet/core/jni/proto/NULS$SigningInput;I)V
    .locals 0

    .line 3386
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NULS$SigningInput;->setChainId(I)V

    return-void
.end method

.method static synthetic access$7200(Lwallet/core/jni/proto/NULS$SigningInput;)V
    .locals 0

    .line 3386
    invoke-direct {p0}, Lwallet/core/jni/proto/NULS$SigningInput;->clearChainId()V

    return-void
.end method

.method static synthetic access$7300(Lwallet/core/jni/proto/NULS$SigningInput;I)V
    .locals 0

    .line 3386
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NULS$SigningInput;->setIdassetsId(I)V

    return-void
.end method

.method static synthetic access$7400(Lwallet/core/jni/proto/NULS$SigningInput;)V
    .locals 0

    .line 3386
    invoke-direct {p0}, Lwallet/core/jni/proto/NULS$SigningInput;->clearIdassetsId()V

    return-void
.end method

.method static synthetic access$7500(Lwallet/core/jni/proto/NULS$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 3386
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NULS$SigningInput;->setNonce(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$7600(Lwallet/core/jni/proto/NULS$SigningInput;)V
    .locals 0

    .line 3386
    invoke-direct {p0}, Lwallet/core/jni/proto/NULS$SigningInput;->clearNonce()V

    return-void
.end method

.method static synthetic access$7700(Lwallet/core/jni/proto/NULS$SigningInput;Ljava/lang/String;)V
    .locals 0

    .line 3386
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NULS$SigningInput;->setRemark(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7800(Lwallet/core/jni/proto/NULS$SigningInput;)V
    .locals 0

    .line 3386
    invoke-direct {p0}, Lwallet/core/jni/proto/NULS$SigningInput;->clearRemark()V

    return-void
.end method

.method static synthetic access$7900(Lwallet/core/jni/proto/NULS$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 3386
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NULS$SigningInput;->setRemarkBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$8000(Lwallet/core/jni/proto/NULS$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 3386
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NULS$SigningInput;->setBalance(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$8100(Lwallet/core/jni/proto/NULS$SigningInput;)V
    .locals 0

    .line 3386
    invoke-direct {p0}, Lwallet/core/jni/proto/NULS$SigningInput;->clearBalance()V

    return-void
.end method

.method static synthetic access$8200(Lwallet/core/jni/proto/NULS$SigningInput;I)V
    .locals 0

    .line 3386
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/NULS$SigningInput;->setTimestamp(I)V

    return-void
.end method

.method static synthetic access$8300(Lwallet/core/jni/proto/NULS$SigningInput;)V
    .locals 0

    .line 3386
    invoke-direct {p0}, Lwallet/core/jni/proto/NULS$SigningInput;->clearTimestamp()V

    return-void
.end method

.method private clearAmount()V
    .locals 1

    .line 3609
    invoke-static {}, Lwallet/core/jni/proto/NULS$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/NULS$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/NULS$SigningInput;->getAmount()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/NULS$SigningInput;->amount_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearBalance()V
    .locals 1

    .line 3830
    invoke-static {}, Lwallet/core/jni/proto/NULS$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/NULS$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/NULS$SigningInput;->getBalance()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/NULS$SigningInput;->balance_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearChainId()V
    .locals 1

    const/4 v0, 0x0

    .line 3647
    iput v0, p0, Lwallet/core/jni/proto/NULS$SigningInput;->chainId_:I

    return-void
.end method

.method private clearFrom()V
    .locals 1

    .line 3489
    invoke-static {}, Lwallet/core/jni/proto/NULS$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/NULS$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/NULS$SigningInput;->getFrom()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/NULS$SigningInput;->from_:Ljava/lang/String;

    return-void
.end method

.method private clearIdassetsId()V
    .locals 1

    const/4 v0, 0x0

    .line 3685
    iput v0, p0, Lwallet/core/jni/proto/NULS$SigningInput;->idassetsId_:I

    return-void
.end method

.method private clearNonce()V
    .locals 1

    .line 3724
    invoke-static {}, Lwallet/core/jni/proto/NULS$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/NULS$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/NULS$SigningInput;->getNonce()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/NULS$SigningInput;->nonce_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearPrivateKey()V
    .locals 1

    .line 3436
    invoke-static {}, Lwallet/core/jni/proto/NULS$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/NULS$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/NULS$SigningInput;->getPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/NULS$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearRemark()V
    .locals 1

    .line 3777
    invoke-static {}, Lwallet/core/jni/proto/NULS$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/NULS$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/NULS$SigningInput;->getRemark()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/NULS$SigningInput;->remark_:Ljava/lang/String;

    return-void
.end method

.method private clearTimestamp()V
    .locals 1

    const/4 v0, 0x0

    .line 3868
    iput v0, p0, Lwallet/core/jni/proto/NULS$SigningInput;->timestamp_:I

    return-void
.end method

.method private clearTo()V
    .locals 1

    .line 3556
    invoke-static {}, Lwallet/core/jni/proto/NULS$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/NULS$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/NULS$SigningInput;->getTo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/NULS$SigningInput;->to_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/NULS$SigningInput;
    .locals 1

    .line 4531
    sget-object v0, Lwallet/core/jni/proto/NULS$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$SigningInput;

    return-object v0
.end method

.method public static newBuilder()Lwallet/core/jni/proto/NULS$SigningInput$Builder;
    .locals 1

    .line 3946
    sget-object v0, Lwallet/core/jni/proto/NULS$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$SigningInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/NULS$SigningInput$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/NULS$SigningInput;)Lwallet/core/jni/proto/NULS$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 3949
    sget-object v0, Lwallet/core/jni/proto/NULS$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$SigningInput;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NULS$SigningInput$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/NULS$SigningInput;
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

    .line 3923
    sget-object v0, Lwallet/core/jni/proto/NULS$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NULS$SigningInput;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NULS$SigningInput;
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

    .line 3929
    sget-object v0, Lwallet/core/jni/proto/NULS$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NULS$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/NULS$SigningInput;
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

    .line 3887
    sget-object v0, Lwallet/core/jni/proto/NULS$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NULS$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NULS$SigningInput;
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

    .line 3894
    sget-object v0, Lwallet/core/jni/proto/NULS$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NULS$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/NULS$SigningInput;
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

    .line 3934
    sget-object v0, Lwallet/core/jni/proto/NULS$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NULS$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NULS$SigningInput;
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

    .line 3941
    sget-object v0, Lwallet/core/jni/proto/NULS$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NULS$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/NULS$SigningInput;
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

    .line 3911
    sget-object v0, Lwallet/core/jni/proto/NULS$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NULS$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NULS$SigningInput;
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

    .line 3918
    sget-object v0, Lwallet/core/jni/proto/NULS$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NULS$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/NULS$SigningInput;
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

    .line 3874
    sget-object v0, Lwallet/core/jni/proto/NULS$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NULS$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NULS$SigningInput;
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

    .line 3881
    sget-object v0, Lwallet/core/jni/proto/NULS$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NULS$SigningInput;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/NULS$SigningInput;
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

    .line 3899
    sget-object v0, Lwallet/core/jni/proto/NULS$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NULS$SigningInput;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/NULS$SigningInput;
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

    .line 3906
    sget-object v0, Lwallet/core/jni/proto/NULS$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/NULS$SigningInput;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/NULS$SigningInput;",
            ">;"
        }
    .end annotation

    .line 4537
    sget-object v0, Lwallet/core/jni/proto/NULS$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$SigningInput;

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

    .line 3596
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3598
    iput-object p1, p0, Lwallet/core/jni/proto/NULS$SigningInput;->amount_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setBalance(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3817
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3819
    iput-object p1, p0, Lwallet/core/jni/proto/NULS$SigningInput;->balance_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setChainId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3636
    iput p1, p0, Lwallet/core/jni/proto/NULS$SigningInput;->chainId_:I

    return-void
.end method

.method private setFrom(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3476
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3478
    iput-object p1, p0, Lwallet/core/jni/proto/NULS$SigningInput;->from_:Ljava/lang/String;

    return-void
.end method

.method private setFromBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3501
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3502
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/NULS$SigningInput;->from_:Ljava/lang/String;

    return-void
.end method

.method private setIdassetsId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3674
    iput p1, p0, Lwallet/core/jni/proto/NULS$SigningInput;->idassetsId_:I

    return-void
.end method

.method private setNonce(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3711
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3713
    iput-object p1, p0, Lwallet/core/jni/proto/NULS$SigningInput;->nonce_:Lcom/google/protobuf/ByteString;

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

    .line 3423
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3425
    iput-object p1, p0, Lwallet/core/jni/proto/NULS$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setRemark(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3764
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3766
    iput-object p1, p0, Lwallet/core/jni/proto/NULS$SigningInput;->remark_:Ljava/lang/String;

    return-void
.end method

.method private setRemarkBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3789
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3790
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/NULS$SigningInput;->remark_:Ljava/lang/String;

    return-void
.end method

.method private setTimestamp(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3857
    iput p1, p0, Lwallet/core/jni/proto/NULS$SigningInput;->timestamp_:I

    return-void
.end method

.method private setTo(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3543
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3545
    iput-object p1, p0, Lwallet/core/jni/proto/NULS$SigningInput;->to_:Ljava/lang/String;

    return-void
.end method

.method private setToBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3568
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 3569
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/NULS$SigningInput;->to_:Ljava/lang/String;

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

    .line 4464
    sget-object p2, Lwallet/core/jni/proto/NULS$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 4515
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 4509
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 4494
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/NULS$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 4496
    const-class p2, Lwallet/core/jni/proto/NULS$SigningInput;

    monitor-enter p2

    .line 4497
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/NULS$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 4499
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/NULS$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$SigningInput;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 4502
    sput-object p1, Lwallet/core/jni/proto/NULS$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    .line 4504
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

    .line 4491
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/NULS$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$SigningInput;

    return-object p1

    :pswitch_4
    const/16 p1, 0xa

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "privateKey_"

    aput-object v0, p1, p3

    const-string p3, "from_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "to_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "amount_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "chainId_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "idassetsId_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "nonce_"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "remark_"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "balance_"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "timestamp_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\n\u0000\u0000\u0001\n\n\u0000\u0000\u0000\u0001\n\u0002\u0208\u0003\u0208\u0004\n\u0005\u000b\u0006\u000b\u0007\n\u0008\u0208\t\n\n\u000b"

    .line 4487
    sget-object p3, Lwallet/core/jni/proto/NULS$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/NULS$SigningInput;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4469
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/NULS$SigningInput$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/NULS$SigningInput$Builder;-><init>(Lwallet/core/jni/proto/NULS$1;)V

    return-object p1

    .line 4466
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/NULS$SigningInput;

    invoke-direct {p1}, Lwallet/core/jni/proto/NULS$SigningInput;-><init>()V

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

.method public getAmount()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3585
    iget-object v0, p0, Lwallet/core/jni/proto/NULS$SigningInput;->amount_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getBalance()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3806
    iget-object v0, p0, Lwallet/core/jni/proto/NULS$SigningInput;->balance_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getChainId()I
    .locals 1

    .line 3624
    iget v0, p0, Lwallet/core/jni/proto/NULS$SigningInput;->chainId_:I

    return v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .line 3451
    iget-object v0, p0, Lwallet/core/jni/proto/NULS$SigningInput;->from_:Ljava/lang/String;

    return-object v0
.end method

.method public getFromBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3464
    iget-object v0, p0, Lwallet/core/jni/proto/NULS$SigningInput;->from_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getIdassetsId()I
    .locals 1

    .line 3662
    iget v0, p0, Lwallet/core/jni/proto/NULS$SigningInput;->idassetsId_:I

    return v0
.end method

.method public getNonce()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3700
    iget-object v0, p0, Lwallet/core/jni/proto/NULS$SigningInput;->nonce_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3412
    iget-object v0, p0, Lwallet/core/jni/proto/NULS$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getRemark()Ljava/lang/String;
    .locals 1

    .line 3739
    iget-object v0, p0, Lwallet/core/jni/proto/NULS$SigningInput;->remark_:Ljava/lang/String;

    return-object v0
.end method

.method public getRemarkBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3752
    iget-object v0, p0, Lwallet/core/jni/proto/NULS$SigningInput;->remark_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()I
    .locals 1

    .line 3845
    iget v0, p0, Lwallet/core/jni/proto/NULS$SigningInput;->timestamp_:I

    return v0
.end method

.method public getTo()Ljava/lang/String;
    .locals 1

    .line 3518
    iget-object v0, p0, Lwallet/core/jni/proto/NULS$SigningInput;->to_:Ljava/lang/String;

    return-object v0
.end method

.method public getToBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3531
    iget-object v0, p0, Lwallet/core/jni/proto/NULS$SigningInput;->to_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
