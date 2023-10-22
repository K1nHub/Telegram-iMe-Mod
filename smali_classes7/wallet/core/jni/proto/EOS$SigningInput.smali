.class public final Lwallet/core/jni/proto/EOS$SigningInput;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "EOS.java"

# interfaces
.implements Lwallet/core/jni/proto/EOS$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/EOS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SigningInput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/EOS$SigningInput$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/EOS$SigningInput;",
        "Lwallet/core/jni/proto/EOS$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/EOS$SigningInputOrBuilder;"
    }
.end annotation


# static fields
.field public static final ASSET_FIELD_NUMBER:I = 0x8

.field public static final CHAIN_ID_FIELD_NUMBER:I = 0x1

.field public static final CURRENCY_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/EOS$SigningInput;

.field public static final MEMO_FIELD_NUMBER:I = 0x7

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/EOS$SigningInput;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIVATE_KEY_FIELD_NUMBER:I = 0x9

.field public static final PRIVATE_KEY_TYPE_FIELD_NUMBER:I = 0xa

.field public static final RECIPIENT_FIELD_NUMBER:I = 0x6

.field public static final REFERENCE_BLOCK_ID_FIELD_NUMBER:I = 0x2

.field public static final REFERENCE_BLOCK_TIME_FIELD_NUMBER:I = 0x3

.field public static final SENDER_FIELD_NUMBER:I = 0x5


# instance fields
.field private asset_:Lwallet/core/jni/proto/EOS$Asset;

.field private chainId_:Lcom/google/protobuf/ByteString;

.field private currency_:Ljava/lang/String;

.field private memo_:Ljava/lang/String;

.field private privateKeyType_:I

.field private privateKey_:Lcom/google/protobuf/ByteString;

.field private recipient_:Ljava/lang/String;

.field private referenceBlockId_:Lcom/google/protobuf/ByteString;

.field private referenceBlockTime_:I

.field private sender_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2107
    new-instance v0, Lwallet/core/jni/proto/EOS$SigningInput;

    invoke-direct {v0}, Lwallet/core/jni/proto/EOS$SigningInput;-><init>()V

    .line 2110
    sput-object v0, Lwallet/core/jni/proto/EOS$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/EOS$SigningInput;

    .line 2111
    const-class v1, Lwallet/core/jni/proto/EOS$SigningInput;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 810
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 811
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/EOS$SigningInput;->chainId_:Lcom/google/protobuf/ByteString;

    .line 812
    iput-object v0, p0, Lwallet/core/jni/proto/EOS$SigningInput;->referenceBlockId_:Lcom/google/protobuf/ByteString;

    const-string v1, ""

    .line 813
    iput-object v1, p0, Lwallet/core/jni/proto/EOS$SigningInput;->currency_:Ljava/lang/String;

    .line 814
    iput-object v1, p0, Lwallet/core/jni/proto/EOS$SigningInput;->sender_:Ljava/lang/String;

    .line 815
    iput-object v1, p0, Lwallet/core/jni/proto/EOS$SigningInput;->recipient_:Ljava/lang/String;

    .line 816
    iput-object v1, p0, Lwallet/core/jni/proto/EOS$SigningInput;->memo_:Ljava/lang/String;

    .line 817
    iput-object v0, p0, Lwallet/core/jni/proto/EOS$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$1000(Lwallet/core/jni/proto/EOS$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 805
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/EOS$SigningInput;->setChainId(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1100(Lwallet/core/jni/proto/EOS$SigningInput;)V
    .locals 0

    .line 805
    invoke-direct {p0}, Lwallet/core/jni/proto/EOS$SigningInput;->clearChainId()V

    return-void
.end method

.method static synthetic access$1200(Lwallet/core/jni/proto/EOS$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 805
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/EOS$SigningInput;->setReferenceBlockId(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1300(Lwallet/core/jni/proto/EOS$SigningInput;)V
    .locals 0

    .line 805
    invoke-direct {p0}, Lwallet/core/jni/proto/EOS$SigningInput;->clearReferenceBlockId()V

    return-void
.end method

.method static synthetic access$1400(Lwallet/core/jni/proto/EOS$SigningInput;I)V
    .locals 0

    .line 805
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/EOS$SigningInput;->setReferenceBlockTime(I)V

    return-void
.end method

.method static synthetic access$1500(Lwallet/core/jni/proto/EOS$SigningInput;)V
    .locals 0

    .line 805
    invoke-direct {p0}, Lwallet/core/jni/proto/EOS$SigningInput;->clearReferenceBlockTime()V

    return-void
.end method

.method static synthetic access$1600(Lwallet/core/jni/proto/EOS$SigningInput;Ljava/lang/String;)V
    .locals 0

    .line 805
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/EOS$SigningInput;->setCurrency(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lwallet/core/jni/proto/EOS$SigningInput;)V
    .locals 0

    .line 805
    invoke-direct {p0}, Lwallet/core/jni/proto/EOS$SigningInput;->clearCurrency()V

    return-void
.end method

.method static synthetic access$1800(Lwallet/core/jni/proto/EOS$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 805
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/EOS$SigningInput;->setCurrencyBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1900(Lwallet/core/jni/proto/EOS$SigningInput;Ljava/lang/String;)V
    .locals 0

    .line 805
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/EOS$SigningInput;->setSender(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lwallet/core/jni/proto/EOS$SigningInput;)V
    .locals 0

    .line 805
    invoke-direct {p0}, Lwallet/core/jni/proto/EOS$SigningInput;->clearSender()V

    return-void
.end method

.method static synthetic access$2100(Lwallet/core/jni/proto/EOS$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 805
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/EOS$SigningInput;->setSenderBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2200(Lwallet/core/jni/proto/EOS$SigningInput;Ljava/lang/String;)V
    .locals 0

    .line 805
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/EOS$SigningInput;->setRecipient(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lwallet/core/jni/proto/EOS$SigningInput;)V
    .locals 0

    .line 805
    invoke-direct {p0}, Lwallet/core/jni/proto/EOS$SigningInput;->clearRecipient()V

    return-void
.end method

.method static synthetic access$2400(Lwallet/core/jni/proto/EOS$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 805
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/EOS$SigningInput;->setRecipientBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2500(Lwallet/core/jni/proto/EOS$SigningInput;Ljava/lang/String;)V
    .locals 0

    .line 805
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/EOS$SigningInput;->setMemo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Lwallet/core/jni/proto/EOS$SigningInput;)V
    .locals 0

    .line 805
    invoke-direct {p0}, Lwallet/core/jni/proto/EOS$SigningInput;->clearMemo()V

    return-void
.end method

.method static synthetic access$2700(Lwallet/core/jni/proto/EOS$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 805
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/EOS$SigningInput;->setMemoBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2800(Lwallet/core/jni/proto/EOS$SigningInput;Lwallet/core/jni/proto/EOS$Asset;)V
    .locals 0

    .line 805
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/EOS$SigningInput;->setAsset(Lwallet/core/jni/proto/EOS$Asset;)V

    return-void
.end method

.method static synthetic access$2900(Lwallet/core/jni/proto/EOS$SigningInput;Lwallet/core/jni/proto/EOS$Asset;)V
    .locals 0

    .line 805
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/EOS$SigningInput;->mergeAsset(Lwallet/core/jni/proto/EOS$Asset;)V

    return-void
.end method

.method static synthetic access$3000(Lwallet/core/jni/proto/EOS$SigningInput;)V
    .locals 0

    .line 805
    invoke-direct {p0}, Lwallet/core/jni/proto/EOS$SigningInput;->clearAsset()V

    return-void
.end method

.method static synthetic access$3100(Lwallet/core/jni/proto/EOS$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 805
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/EOS$SigningInput;->setPrivateKey(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3200(Lwallet/core/jni/proto/EOS$SigningInput;)V
    .locals 0

    .line 805
    invoke-direct {p0}, Lwallet/core/jni/proto/EOS$SigningInput;->clearPrivateKey()V

    return-void
.end method

.method static synthetic access$3300(Lwallet/core/jni/proto/EOS$SigningInput;I)V
    .locals 0

    .line 805
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/EOS$SigningInput;->setPrivateKeyTypeValue(I)V

    return-void
.end method

.method static synthetic access$3400(Lwallet/core/jni/proto/EOS$SigningInput;Lwallet/core/jni/proto/EOS$KeyType;)V
    .locals 0

    .line 805
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/EOS$SigningInput;->setPrivateKeyType(Lwallet/core/jni/proto/EOS$KeyType;)V

    return-void
.end method

.method static synthetic access$3500(Lwallet/core/jni/proto/EOS$SigningInput;)V
    .locals 0

    .line 805
    invoke-direct {p0}, Lwallet/core/jni/proto/EOS$SigningInput;->clearPrivateKeyType()V

    return-void
.end method

.method static synthetic access$900()Lwallet/core/jni/proto/EOS$SigningInput;
    .locals 1

    .line 805
    sget-object v0, Lwallet/core/jni/proto/EOS$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/EOS$SigningInput;

    return-object v0
.end method

.method private clearAsset()V
    .locals 1

    const/4 v0, 0x0

    .line 1265
    iput-object v0, p0, Lwallet/core/jni/proto/EOS$SigningInput;->asset_:Lwallet/core/jni/proto/EOS$Asset;

    return-void
.end method

.method private clearChainId()V
    .locals 1

    .line 855
    invoke-static {}, Lwallet/core/jni/proto/EOS$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/EOS$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/EOS$SigningInput;->getChainId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/EOS$SigningInput;->chainId_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearCurrency()V
    .locals 1

    .line 985
    invoke-static {}, Lwallet/core/jni/proto/EOS$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/EOS$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/EOS$SigningInput;->getCurrency()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/EOS$SigningInput;->currency_:Ljava/lang/String;

    return-void
.end method

.method private clearMemo()V
    .locals 1

    .line 1186
    invoke-static {}, Lwallet/core/jni/proto/EOS$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/EOS$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/EOS$SigningInput;->getMemo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/EOS$SigningInput;->memo_:Ljava/lang/String;

    return-void
.end method

.method private clearPrivateKey()V
    .locals 1

    .line 1305
    invoke-static {}, Lwallet/core/jni/proto/EOS$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/EOS$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/EOS$SigningInput;->getPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/EOS$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearPrivateKeyType()V
    .locals 1

    const/4 v0, 0x0

    .line 1367
    iput v0, p0, Lwallet/core/jni/proto/EOS$SigningInput;->privateKeyType_:I

    return-void
.end method

.method private clearRecipient()V
    .locals 1

    .line 1119
    invoke-static {}, Lwallet/core/jni/proto/EOS$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/EOS$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/EOS$SigningInput;->getRecipient()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/EOS$SigningInput;->recipient_:Ljava/lang/String;

    return-void
.end method

.method private clearReferenceBlockId()V
    .locals 1

    .line 894
    invoke-static {}, Lwallet/core/jni/proto/EOS$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/EOS$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/EOS$SigningInput;->getReferenceBlockId()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/EOS$SigningInput;->referenceBlockId_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearReferenceBlockTime()V
    .locals 1

    const/4 v0, 0x0

    .line 932
    iput v0, p0, Lwallet/core/jni/proto/EOS$SigningInput;->referenceBlockTime_:I

    return-void
.end method

.method private clearSender()V
    .locals 1

    .line 1052
    invoke-static {}, Lwallet/core/jni/proto/EOS$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/EOS$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/EOS$SigningInput;->getSender()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/EOS$SigningInput;->sender_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/EOS$SigningInput;
    .locals 1

    .line 2116
    sget-object v0, Lwallet/core/jni/proto/EOS$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/EOS$SigningInput;

    return-object v0
.end method

.method private mergeAsset(Lwallet/core/jni/proto/EOS$Asset;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1248
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1249
    iget-object v0, p0, Lwallet/core/jni/proto/EOS$SigningInput;->asset_:Lwallet/core/jni/proto/EOS$Asset;

    if-eqz v0, :cond_0

    .line 1250
    invoke-static {}, Lwallet/core/jni/proto/EOS$Asset;->getDefaultInstance()Lwallet/core/jni/proto/EOS$Asset;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1251
    iget-object v0, p0, Lwallet/core/jni/proto/EOS$SigningInput;->asset_:Lwallet/core/jni/proto/EOS$Asset;

    .line 1252
    invoke-static {v0}, Lwallet/core/jni/proto/EOS$Asset;->newBuilder(Lwallet/core/jni/proto/EOS$Asset;)Lwallet/core/jni/proto/EOS$Asset$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/EOS$Asset$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/EOS$Asset;

    iput-object p1, p0, Lwallet/core/jni/proto/EOS$SigningInput;->asset_:Lwallet/core/jni/proto/EOS$Asset;

    goto :goto_0

    .line 1254
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/EOS$SigningInput;->asset_:Lwallet/core/jni/proto/EOS$Asset;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/EOS$SigningInput$Builder;
    .locals 1

    .line 1445
    sget-object v0, Lwallet/core/jni/proto/EOS$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/EOS$SigningInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/EOS$SigningInput$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/EOS$SigningInput;)Lwallet/core/jni/proto/EOS$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 1448
    sget-object v0, Lwallet/core/jni/proto/EOS$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/EOS$SigningInput;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/EOS$SigningInput$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/EOS$SigningInput;
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

    .line 1422
    sget-object v0, Lwallet/core/jni/proto/EOS$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/EOS$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/EOS$SigningInput;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/EOS$SigningInput;
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

    .line 1428
    sget-object v0, Lwallet/core/jni/proto/EOS$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/EOS$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/EOS$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/EOS$SigningInput;
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

    .line 1386
    sget-object v0, Lwallet/core/jni/proto/EOS$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/EOS$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/EOS$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/EOS$SigningInput;
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

    .line 1393
    sget-object v0, Lwallet/core/jni/proto/EOS$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/EOS$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/EOS$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/EOS$SigningInput;
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

    .line 1433
    sget-object v0, Lwallet/core/jni/proto/EOS$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/EOS$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/EOS$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/EOS$SigningInput;
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

    .line 1440
    sget-object v0, Lwallet/core/jni/proto/EOS$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/EOS$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/EOS$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/EOS$SigningInput;
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

    .line 1410
    sget-object v0, Lwallet/core/jni/proto/EOS$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/EOS$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/EOS$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/EOS$SigningInput;
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

    .line 1417
    sget-object v0, Lwallet/core/jni/proto/EOS$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/EOS$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/EOS$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/EOS$SigningInput;
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

    .line 1373
    sget-object v0, Lwallet/core/jni/proto/EOS$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/EOS$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/EOS$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/EOS$SigningInput;
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

    .line 1380
    sget-object v0, Lwallet/core/jni/proto/EOS$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/EOS$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/EOS$SigningInput;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/EOS$SigningInput;
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

    .line 1398
    sget-object v0, Lwallet/core/jni/proto/EOS$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/EOS$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/EOS$SigningInput;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/EOS$SigningInput;
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

    .line 1405
    sget-object v0, Lwallet/core/jni/proto/EOS$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/EOS$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/EOS$SigningInput;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/EOS$SigningInput;",
            ">;"
        }
    .end annotation

    .line 2122
    sget-object v0, Lwallet/core/jni/proto/EOS$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/EOS$SigningInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAsset(Lwallet/core/jni/proto/EOS$Asset;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1235
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1236
    iput-object p1, p0, Lwallet/core/jni/proto/EOS$SigningInput;->asset_:Lwallet/core/jni/proto/EOS$Asset;

    return-void
.end method

.method private setChainId(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 842
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 844
    iput-object p1, p0, Lwallet/core/jni/proto/EOS$SigningInput;->chainId_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setCurrency(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 972
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 974
    iput-object p1, p0, Lwallet/core/jni/proto/EOS$SigningInput;->currency_:Ljava/lang/String;

    return-void
.end method

.method private setCurrencyBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 997
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 998
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/EOS$SigningInput;->currency_:Ljava/lang/String;

    return-void
.end method

.method private setMemo(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1173
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1175
    iput-object p1, p0, Lwallet/core/jni/proto/EOS$SigningInput;->memo_:Ljava/lang/String;

    return-void
.end method

.method private setMemoBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1198
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1199
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/EOS$SigningInput;->memo_:Ljava/lang/String;

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

    .line 1292
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1294
    iput-object p1, p0, Lwallet/core/jni/proto/EOS$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setPrivateKeyType(Lwallet/core/jni/proto/EOS$KeyType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1355
    invoke-virtual {p1}, Lwallet/core/jni/proto/EOS$KeyType;->getNumber()I

    move-result p1

    iput p1, p0, Lwallet/core/jni/proto/EOS$SigningInput;->privateKeyType_:I

    return-void
.end method

.method private setPrivateKeyTypeValue(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1344
    iput p1, p0, Lwallet/core/jni/proto/EOS$SigningInput;->privateKeyType_:I

    return-void
.end method

.method private setRecipient(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1106
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1108
    iput-object p1, p0, Lwallet/core/jni/proto/EOS$SigningInput;->recipient_:Ljava/lang/String;

    return-void
.end method

.method private setRecipientBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1131
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1132
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/EOS$SigningInput;->recipient_:Ljava/lang/String;

    return-void
.end method

.method private setReferenceBlockId(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 881
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 883
    iput-object p1, p0, Lwallet/core/jni/proto/EOS$SigningInput;->referenceBlockId_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setReferenceBlockTime(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 921
    iput p1, p0, Lwallet/core/jni/proto/EOS$SigningInput;->referenceBlockTime_:I

    return-void
.end method

.method private setSender(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1039
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1041
    iput-object p1, p0, Lwallet/core/jni/proto/EOS$SigningInput;->sender_:Ljava/lang/String;

    return-void
.end method

.method private setSenderBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1064
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1065
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/EOS$SigningInput;->sender_:Ljava/lang/String;

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

    .line 2049
    sget-object p2, Lwallet/core/jni/proto/EOS$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2100
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 2094
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 2079
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/EOS$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 2081
    const-class p2, Lwallet/core/jni/proto/EOS$SigningInput;

    monitor-enter p2

    .line 2082
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/EOS$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 2084
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/EOS$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/EOS$SigningInput;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2087
    sput-object p1, Lwallet/core/jni/proto/EOS$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    .line 2089
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

    .line 2076
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/EOS$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/EOS$SigningInput;

    return-object p1

    :pswitch_4
    const/16 p1, 0xa

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "chainId_"

    aput-object v0, p1, p3

    const-string p3, "referenceBlockId_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "referenceBlockTime_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "currency_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "sender_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "recipient_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "memo_"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "asset_"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "privateKey_"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "privateKeyType_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\n\u0000\u0000\u0001\n\n\u0000\u0000\u0000\u0001\n\u0002\n\u0003\r\u0004\u0208\u0005\u0208\u0006\u0208\u0007\u0208\u0008\t\t\n\n\u000c"

    .line 2072
    sget-object p3, Lwallet/core/jni/proto/EOS$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/EOS$SigningInput;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2054
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/EOS$SigningInput$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/EOS$SigningInput$Builder;-><init>(Lwallet/core/jni/proto/EOS$1;)V

    return-object p1

    .line 2051
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/EOS$SigningInput;

    invoke-direct {p1}, Lwallet/core/jni/proto/EOS$SigningInput;-><init>()V

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

.method public getAsset()Lwallet/core/jni/proto/EOS$Asset;
    .locals 1

    .line 1225
    iget-object v0, p0, Lwallet/core/jni/proto/EOS$SigningInput;->asset_:Lwallet/core/jni/proto/EOS$Asset;

    if-nez v0, :cond_0

    invoke-static {}, Lwallet/core/jni/proto/EOS$Asset;->getDefaultInstance()Lwallet/core/jni/proto/EOS$Asset;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getChainId()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 831
    iget-object v0, p0, Lwallet/core/jni/proto/EOS$SigningInput;->chainId_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 1

    .line 947
    iget-object v0, p0, Lwallet/core/jni/proto/EOS$SigningInput;->currency_:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrencyBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 960
    iget-object v0, p0, Lwallet/core/jni/proto/EOS$SigningInput;->currency_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getMemo()Ljava/lang/String;
    .locals 1

    .line 1148
    iget-object v0, p0, Lwallet/core/jni/proto/EOS$SigningInput;->memo_:Ljava/lang/String;

    return-object v0
.end method

.method public getMemoBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1161
    iget-object v0, p0, Lwallet/core/jni/proto/EOS$SigningInput;->memo_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1281
    iget-object v0, p0, Lwallet/core/jni/proto/EOS$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPrivateKeyType()Lwallet/core/jni/proto/EOS$KeyType;
    .locals 1

    .line 1332
    iget v0, p0, Lwallet/core/jni/proto/EOS$SigningInput;->privateKeyType_:I

    invoke-static {v0}, Lwallet/core/jni/proto/EOS$KeyType;->forNumber(I)Lwallet/core/jni/proto/EOS$KeyType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1333
    sget-object v0, Lwallet/core/jni/proto/EOS$KeyType;->UNRECOGNIZED:Lwallet/core/jni/proto/EOS$KeyType;

    :cond_0
    return-object v0
.end method

.method public getPrivateKeyTypeValue()I
    .locals 1

    .line 1320
    iget v0, p0, Lwallet/core/jni/proto/EOS$SigningInput;->privateKeyType_:I

    return v0
.end method

.method public getRecipient()Ljava/lang/String;
    .locals 1

    .line 1081
    iget-object v0, p0, Lwallet/core/jni/proto/EOS$SigningInput;->recipient_:Ljava/lang/String;

    return-object v0
.end method

.method public getRecipientBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1094
    iget-object v0, p0, Lwallet/core/jni/proto/EOS$SigningInput;->recipient_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getReferenceBlockId()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 870
    iget-object v0, p0, Lwallet/core/jni/proto/EOS$SigningInput;->referenceBlockId_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getReferenceBlockTime()I
    .locals 1

    .line 909
    iget v0, p0, Lwallet/core/jni/proto/EOS$SigningInput;->referenceBlockTime_:I

    return v0
.end method

.method public getSender()Ljava/lang/String;
    .locals 1

    .line 1014
    iget-object v0, p0, Lwallet/core/jni/proto/EOS$SigningInput;->sender_:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1027
    iget-object v0, p0, Lwallet/core/jni/proto/EOS$SigningInput;->sender_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasAsset()Z
    .locals 1

    .line 1214
    iget-object v0, p0, Lwallet/core/jni/proto/EOS$SigningInput;->asset_:Lwallet/core/jni/proto/EOS$Asset;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
