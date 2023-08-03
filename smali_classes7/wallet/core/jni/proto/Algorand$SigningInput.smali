.class public final Lwallet/core/jni/proto/Algorand$SigningInput;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Algorand.java"

# interfaces
.implements Lwallet/core/jni/proto/Algorand$SigningInputOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwallet/core/jni/proto/Algorand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SigningInput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwallet/core/jni/proto/Algorand$SigningInput$Builder;,
        Lwallet/core/jni/proto/Algorand$SigningInput$MessageOneofCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lwallet/core/jni/proto/Algorand$SigningInput;",
        "Lwallet/core/jni/proto/Algorand$SigningInput$Builder;",
        ">;",
        "Lwallet/core/jni/proto/Algorand$SigningInputOrBuilder;"
    }
.end annotation


# static fields
.field public static final ASSET_OPT_IN_FIELD_NUMBER:I = 0xc

.field public static final ASSET_TRANSFER_FIELD_NUMBER:I = 0xb

.field private static final DEFAULT_INSTANCE:Lwallet/core/jni/proto/Algorand$SigningInput;

.field public static final FEE_FIELD_NUMBER:I = 0x7

.field public static final FIRST_ROUND_FIELD_NUMBER:I = 0x5

.field public static final GENESIS_HASH_FIELD_NUMBER:I = 0x2

.field public static final GENESIS_ID_FIELD_NUMBER:I = 0x1

.field public static final LAST_ROUND_FIELD_NUMBER:I = 0x6

.field public static final NOTE_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Algorand$SigningInput;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIVATE_KEY_FIELD_NUMBER:I = 0x4

.field public static final TRANSFER_FIELD_NUMBER:I = 0xa


# instance fields
.field private fee_:J

.field private firstRound_:J

.field private genesisHash_:Lcom/google/protobuf/ByteString;

.field private genesisId_:Ljava/lang/String;

.field private lastRound_:J

.field private messageOneofCase_:I

.field private messageOneof_:Ljava/lang/Object;

.field private note_:Lcom/google/protobuf/ByteString;

.field private privateKey_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2516
    new-instance v0, Lwallet/core/jni/proto/Algorand$SigningInput;

    invoke-direct {v0}, Lwallet/core/jni/proto/Algorand$SigningInput;-><init>()V

    .line 2519
    sput-object v0, Lwallet/core/jni/proto/Algorand$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Algorand$SigningInput;

    .line 2520
    const-class v1, Lwallet/core/jni/proto/Algorand$SigningInput;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1386
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 1392
    iput v0, p0, Lwallet/core/jni/proto/Algorand$SigningInput;->messageOneofCase_:I

    const-string v0, ""

    .line 1387
    iput-object v0, p0, Lwallet/core/jni/proto/Algorand$SigningInput;->genesisId_:Ljava/lang/String;

    .line 1388
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lwallet/core/jni/proto/Algorand$SigningInput;->genesisHash_:Lcom/google/protobuf/ByteString;

    .line 1389
    iput-object v0, p0, Lwallet/core/jni/proto/Algorand$SigningInput;->note_:Lcom/google/protobuf/ByteString;

    .line 1390
    iput-object v0, p0, Lwallet/core/jni/proto/Algorand$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$2000()Lwallet/core/jni/proto/Algorand$SigningInput;
    .locals 1

    .line 1381
    sget-object v0, Lwallet/core/jni/proto/Algorand$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Algorand$SigningInput;

    return-object v0
.end method

.method static synthetic access$2100(Lwallet/core/jni/proto/Algorand$SigningInput;)V
    .locals 0

    .line 1381
    invoke-direct {p0}, Lwallet/core/jni/proto/Algorand$SigningInput;->clearMessageOneof()V

    return-void
.end method

.method static synthetic access$2200(Lwallet/core/jni/proto/Algorand$SigningInput;Ljava/lang/String;)V
    .locals 0

    .line 1381
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Algorand$SigningInput;->setGenesisId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lwallet/core/jni/proto/Algorand$SigningInput;)V
    .locals 0

    .line 1381
    invoke-direct {p0}, Lwallet/core/jni/proto/Algorand$SigningInput;->clearGenesisId()V

    return-void
.end method

.method static synthetic access$2400(Lwallet/core/jni/proto/Algorand$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1381
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Algorand$SigningInput;->setGenesisIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2500(Lwallet/core/jni/proto/Algorand$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1381
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Algorand$SigningInput;->setGenesisHash(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2600(Lwallet/core/jni/proto/Algorand$SigningInput;)V
    .locals 0

    .line 1381
    invoke-direct {p0}, Lwallet/core/jni/proto/Algorand$SigningInput;->clearGenesisHash()V

    return-void
.end method

.method static synthetic access$2700(Lwallet/core/jni/proto/Algorand$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1381
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Algorand$SigningInput;->setNote(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2800(Lwallet/core/jni/proto/Algorand$SigningInput;)V
    .locals 0

    .line 1381
    invoke-direct {p0}, Lwallet/core/jni/proto/Algorand$SigningInput;->clearNote()V

    return-void
.end method

.method static synthetic access$2900(Lwallet/core/jni/proto/Algorand$SigningInput;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1381
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Algorand$SigningInput;->setPrivateKey(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3000(Lwallet/core/jni/proto/Algorand$SigningInput;)V
    .locals 0

    .line 1381
    invoke-direct {p0}, Lwallet/core/jni/proto/Algorand$SigningInput;->clearPrivateKey()V

    return-void
.end method

.method static synthetic access$3100(Lwallet/core/jni/proto/Algorand$SigningInput;J)V
    .locals 0

    .line 1381
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Algorand$SigningInput;->setFirstRound(J)V

    return-void
.end method

.method static synthetic access$3200(Lwallet/core/jni/proto/Algorand$SigningInput;)V
    .locals 0

    .line 1381
    invoke-direct {p0}, Lwallet/core/jni/proto/Algorand$SigningInput;->clearFirstRound()V

    return-void
.end method

.method static synthetic access$3300(Lwallet/core/jni/proto/Algorand$SigningInput;J)V
    .locals 0

    .line 1381
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Algorand$SigningInput;->setLastRound(J)V

    return-void
.end method

.method static synthetic access$3400(Lwallet/core/jni/proto/Algorand$SigningInput;)V
    .locals 0

    .line 1381
    invoke-direct {p0}, Lwallet/core/jni/proto/Algorand$SigningInput;->clearLastRound()V

    return-void
.end method

.method static synthetic access$3500(Lwallet/core/jni/proto/Algorand$SigningInput;J)V
    .locals 0

    .line 1381
    invoke-direct {p0, p1, p2}, Lwallet/core/jni/proto/Algorand$SigningInput;->setFee(J)V

    return-void
.end method

.method static synthetic access$3600(Lwallet/core/jni/proto/Algorand$SigningInput;)V
    .locals 0

    .line 1381
    invoke-direct {p0}, Lwallet/core/jni/proto/Algorand$SigningInput;->clearFee()V

    return-void
.end method

.method static synthetic access$3700(Lwallet/core/jni/proto/Algorand$SigningInput;Lwallet/core/jni/proto/Algorand$Transfer;)V
    .locals 0

    .line 1381
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Algorand$SigningInput;->setTransfer(Lwallet/core/jni/proto/Algorand$Transfer;)V

    return-void
.end method

.method static synthetic access$3800(Lwallet/core/jni/proto/Algorand$SigningInput;Lwallet/core/jni/proto/Algorand$Transfer;)V
    .locals 0

    .line 1381
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Algorand$SigningInput;->mergeTransfer(Lwallet/core/jni/proto/Algorand$Transfer;)V

    return-void
.end method

.method static synthetic access$3900(Lwallet/core/jni/proto/Algorand$SigningInput;)V
    .locals 0

    .line 1381
    invoke-direct {p0}, Lwallet/core/jni/proto/Algorand$SigningInput;->clearTransfer()V

    return-void
.end method

.method static synthetic access$4000(Lwallet/core/jni/proto/Algorand$SigningInput;Lwallet/core/jni/proto/Algorand$AssetTransfer;)V
    .locals 0

    .line 1381
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Algorand$SigningInput;->setAssetTransfer(Lwallet/core/jni/proto/Algorand$AssetTransfer;)V

    return-void
.end method

.method static synthetic access$4100(Lwallet/core/jni/proto/Algorand$SigningInput;Lwallet/core/jni/proto/Algorand$AssetTransfer;)V
    .locals 0

    .line 1381
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Algorand$SigningInput;->mergeAssetTransfer(Lwallet/core/jni/proto/Algorand$AssetTransfer;)V

    return-void
.end method

.method static synthetic access$4200(Lwallet/core/jni/proto/Algorand$SigningInput;)V
    .locals 0

    .line 1381
    invoke-direct {p0}, Lwallet/core/jni/proto/Algorand$SigningInput;->clearAssetTransfer()V

    return-void
.end method

.method static synthetic access$4300(Lwallet/core/jni/proto/Algorand$SigningInput;Lwallet/core/jni/proto/Algorand$AssetOptIn;)V
    .locals 0

    .line 1381
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Algorand$SigningInput;->setAssetOptIn(Lwallet/core/jni/proto/Algorand$AssetOptIn;)V

    return-void
.end method

.method static synthetic access$4400(Lwallet/core/jni/proto/Algorand$SigningInput;Lwallet/core/jni/proto/Algorand$AssetOptIn;)V
    .locals 0

    .line 1381
    invoke-direct {p0, p1}, Lwallet/core/jni/proto/Algorand$SigningInput;->mergeAssetOptIn(Lwallet/core/jni/proto/Algorand$AssetOptIn;)V

    return-void
.end method

.method static synthetic access$4500(Lwallet/core/jni/proto/Algorand$SigningInput;)V
    .locals 0

    .line 1381
    invoke-direct {p0}, Lwallet/core/jni/proto/Algorand$SigningInput;->clearAssetOptIn()V

    return-void
.end method

.method private clearAssetOptIn()V
    .locals 2

    .line 1879
    iget v0, p0, Lwallet/core/jni/proto/Algorand$SigningInput;->messageOneofCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 1880
    iput v0, p0, Lwallet/core/jni/proto/Algorand$SigningInput;->messageOneofCase_:I

    const/4 v0, 0x0

    .line 1881
    iput-object v0, p0, Lwallet/core/jni/proto/Algorand$SigningInput;->messageOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearAssetTransfer()V
    .locals 2

    .line 1829
    iget v0, p0, Lwallet/core/jni/proto/Algorand$SigningInput;->messageOneofCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 1830
    iput v0, p0, Lwallet/core/jni/proto/Algorand$SigningInput;->messageOneofCase_:I

    const/4 v0, 0x0

    .line 1831
    iput-object v0, p0, Lwallet/core/jni/proto/Algorand$SigningInput;->messageOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearFee()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1732
    iput-wide v0, p0, Lwallet/core/jni/proto/Algorand$SigningInput;->fee_:J

    return-void
.end method

.method private clearFirstRound()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1656
    iput-wide v0, p0, Lwallet/core/jni/proto/Algorand$SigningInput;->firstRound_:J

    return-void
.end method

.method private clearGenesisHash()V
    .locals 1

    .line 1540
    invoke-static {}, Lwallet/core/jni/proto/Algorand$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Algorand$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Algorand$SigningInput;->getGenesisHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Algorand$SigningInput;->genesisHash_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearGenesisId()V
    .locals 1

    .line 1487
    invoke-static {}, Lwallet/core/jni/proto/Algorand$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Algorand$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Algorand$SigningInput;->getGenesisId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Algorand$SigningInput;->genesisId_:Ljava/lang/String;

    return-void
.end method

.method private clearLastRound()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1694
    iput-wide v0, p0, Lwallet/core/jni/proto/Algorand$SigningInput;->lastRound_:J

    return-void
.end method

.method private clearMessageOneof()V
    .locals 1

    const/4 v0, 0x0

    .line 1433
    iput v0, p0, Lwallet/core/jni/proto/Algorand$SigningInput;->messageOneofCase_:I

    const/4 v0, 0x0

    .line 1434
    iput-object v0, p0, Lwallet/core/jni/proto/Algorand$SigningInput;->messageOneof_:Ljava/lang/Object;

    return-void
.end method

.method private clearNote()V
    .locals 1

    .line 1579
    invoke-static {}, Lwallet/core/jni/proto/Algorand$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Algorand$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Algorand$SigningInput;->getNote()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Algorand$SigningInput;->note_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearPrivateKey()V
    .locals 1

    .line 1618
    invoke-static {}, Lwallet/core/jni/proto/Algorand$SigningInput;->getDefaultInstance()Lwallet/core/jni/proto/Algorand$SigningInput;

    move-result-object v0

    invoke-virtual {v0}, Lwallet/core/jni/proto/Algorand$SigningInput;->getPrivateKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lwallet/core/jni/proto/Algorand$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private clearTransfer()V
    .locals 2

    .line 1779
    iget v0, p0, Lwallet/core/jni/proto/Algorand$SigningInput;->messageOneofCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 1780
    iput v0, p0, Lwallet/core/jni/proto/Algorand$SigningInput;->messageOneofCase_:I

    const/4 v0, 0x0

    .line 1781
    iput-object v0, p0, Lwallet/core/jni/proto/Algorand$SigningInput;->messageOneof_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lwallet/core/jni/proto/Algorand$SigningInput;
    .locals 1

    .line 2525
    sget-object v0, Lwallet/core/jni/proto/Algorand$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Algorand$SigningInput;

    return-object v0
.end method

.method private mergeAssetOptIn(Lwallet/core/jni/proto/Algorand$AssetOptIn;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1865
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1866
    iget v0, p0, Lwallet/core/jni/proto/Algorand$SigningInput;->messageOneofCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Algorand$SigningInput;->messageOneof_:Ljava/lang/Object;

    .line 1867
    invoke-static {}, Lwallet/core/jni/proto/Algorand$AssetOptIn;->getDefaultInstance()Lwallet/core/jni/proto/Algorand$AssetOptIn;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 1868
    iget-object v0, p0, Lwallet/core/jni/proto/Algorand$SigningInput;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Algorand$AssetOptIn;

    invoke-static {v0}, Lwallet/core/jni/proto/Algorand$AssetOptIn;->newBuilder(Lwallet/core/jni/proto/Algorand$AssetOptIn;)Lwallet/core/jni/proto/Algorand$AssetOptIn$Builder;

    move-result-object v0

    .line 1869
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Algorand$AssetOptIn$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Algorand$SigningInput;->messageOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 1871
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Algorand$SigningInput;->messageOneof_:Ljava/lang/Object;

    .line 1873
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Algorand$SigningInput;->messageOneofCase_:I

    return-void
.end method

.method private mergeAssetTransfer(Lwallet/core/jni/proto/Algorand$AssetTransfer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1815
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1816
    iget v0, p0, Lwallet/core/jni/proto/Algorand$SigningInput;->messageOneofCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Algorand$SigningInput;->messageOneof_:Ljava/lang/Object;

    .line 1817
    invoke-static {}, Lwallet/core/jni/proto/Algorand$AssetTransfer;->getDefaultInstance()Lwallet/core/jni/proto/Algorand$AssetTransfer;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 1818
    iget-object v0, p0, Lwallet/core/jni/proto/Algorand$SigningInput;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Algorand$AssetTransfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Algorand$AssetTransfer;->newBuilder(Lwallet/core/jni/proto/Algorand$AssetTransfer;)Lwallet/core/jni/proto/Algorand$AssetTransfer$Builder;

    move-result-object v0

    .line 1819
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Algorand$AssetTransfer$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Algorand$SigningInput;->messageOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 1821
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Algorand$SigningInput;->messageOneof_:Ljava/lang/Object;

    .line 1823
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Algorand$SigningInput;->messageOneofCase_:I

    return-void
.end method

.method private mergeTransfer(Lwallet/core/jni/proto/Algorand$Transfer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1765
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1766
    iget v0, p0, Lwallet/core/jni/proto/Algorand$SigningInput;->messageOneofCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lwallet/core/jni/proto/Algorand$SigningInput;->messageOneof_:Ljava/lang/Object;

    .line 1767
    invoke-static {}, Lwallet/core/jni/proto/Algorand$Transfer;->getDefaultInstance()Lwallet/core/jni/proto/Algorand$Transfer;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 1768
    iget-object v0, p0, Lwallet/core/jni/proto/Algorand$SigningInput;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Algorand$Transfer;

    invoke-static {v0}, Lwallet/core/jni/proto/Algorand$Transfer;->newBuilder(Lwallet/core/jni/proto/Algorand$Transfer;)Lwallet/core/jni/proto/Algorand$Transfer$Builder;

    move-result-object v0

    .line 1769
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lwallet/core/jni/proto/Algorand$Transfer$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Algorand$SigningInput;->messageOneof_:Ljava/lang/Object;

    goto :goto_0

    .line 1771
    :cond_0
    iput-object p1, p0, Lwallet/core/jni/proto/Algorand$SigningInput;->messageOneof_:Ljava/lang/Object;

    .line 1773
    :goto_0
    iput v1, p0, Lwallet/core/jni/proto/Algorand$SigningInput;->messageOneofCase_:I

    return-void
.end method

.method public static newBuilder()Lwallet/core/jni/proto/Algorand$SigningInput$Builder;
    .locals 1

    .line 1960
    sget-object v0, Lwallet/core/jni/proto/Algorand$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Algorand$SigningInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lwallet/core/jni/proto/Algorand$SigningInput$Builder;

    return-object v0
.end method

.method public static newBuilder(Lwallet/core/jni/proto/Algorand$SigningInput;)Lwallet/core/jni/proto/Algorand$SigningInput$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prototype"
        }
    .end annotation

    .line 1963
    sget-object v0, Lwallet/core/jni/proto/Algorand$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Algorand$SigningInput;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Algorand$SigningInput$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Algorand$SigningInput;
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

    .line 1937
    sget-object v0, Lwallet/core/jni/proto/Algorand$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Algorand$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Algorand$SigningInput;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Algorand$SigningInput;
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

    .line 1943
    sget-object v0, Lwallet/core/jni/proto/Algorand$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Algorand$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Algorand$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lwallet/core/jni/proto/Algorand$SigningInput;
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

    .line 1901
    sget-object v0, Lwallet/core/jni/proto/Algorand$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Algorand$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Algorand$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Algorand$SigningInput;
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

    .line 1908
    sget-object v0, Lwallet/core/jni/proto/Algorand$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Algorand$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Algorand$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lwallet/core/jni/proto/Algorand$SigningInput;
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

    .line 1948
    sget-object v0, Lwallet/core/jni/proto/Algorand$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Algorand$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Algorand$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Algorand$SigningInput;
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

    .line 1955
    sget-object v0, Lwallet/core/jni/proto/Algorand$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Algorand$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Algorand$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lwallet/core/jni/proto/Algorand$SigningInput;
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

    .line 1925
    sget-object v0, Lwallet/core/jni/proto/Algorand$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Algorand$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Algorand$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Algorand$SigningInput;
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

    .line 1932
    sget-object v0, Lwallet/core/jni/proto/Algorand$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Algorand$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Algorand$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lwallet/core/jni/proto/Algorand$SigningInput;
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

    .line 1888
    sget-object v0, Lwallet/core/jni/proto/Algorand$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Algorand$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Algorand$SigningInput;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Algorand$SigningInput;
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

    .line 1895
    sget-object v0, Lwallet/core/jni/proto/Algorand$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Algorand$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Algorand$SigningInput;

    return-object p0
.end method

.method public static parseFrom([B)Lwallet/core/jni/proto/Algorand$SigningInput;
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

    .line 1913
    sget-object v0, Lwallet/core/jni/proto/Algorand$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Algorand$SigningInput;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Algorand$SigningInput;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lwallet/core/jni/proto/Algorand$SigningInput;
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

    .line 1920
    sget-object v0, Lwallet/core/jni/proto/Algorand$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Algorand$SigningInput;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lwallet/core/jni/proto/Algorand$SigningInput;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lwallet/core/jni/proto/Algorand$SigningInput;",
            ">;"
        }
    .end annotation

    .line 2531
    sget-object v0, Lwallet/core/jni/proto/Algorand$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Algorand$SigningInput;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAssetOptIn(Lwallet/core/jni/proto/Algorand$AssetOptIn;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1857
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1858
    iput-object p1, p0, Lwallet/core/jni/proto/Algorand$SigningInput;->messageOneof_:Ljava/lang/Object;

    const/16 p1, 0xc

    .line 1859
    iput p1, p0, Lwallet/core/jni/proto/Algorand$SigningInput;->messageOneofCase_:I

    return-void
.end method

.method private setAssetTransfer(Lwallet/core/jni/proto/Algorand$AssetTransfer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1807
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1808
    iput-object p1, p0, Lwallet/core/jni/proto/Algorand$SigningInput;->messageOneof_:Ljava/lang/Object;

    const/16 p1, 0xb

    .line 1809
    iput p1, p0, Lwallet/core/jni/proto/Algorand$SigningInput;->messageOneofCase_:I

    return-void
.end method

.method private setFee(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1721
    iput-wide p1, p0, Lwallet/core/jni/proto/Algorand$SigningInput;->fee_:J

    return-void
.end method

.method private setFirstRound(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1645
    iput-wide p1, p0, Lwallet/core/jni/proto/Algorand$SigningInput;->firstRound_:J

    return-void
.end method

.method private setGenesisHash(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1527
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1529
    iput-object p1, p0, Lwallet/core/jni/proto/Algorand$SigningInput;->genesisHash_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setGenesisId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1474
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1476
    iput-object p1, p0, Lwallet/core/jni/proto/Algorand$SigningInput;->genesisId_:Ljava/lang/String;

    return-void
.end method

.method private setGenesisIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1499
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1500
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwallet/core/jni/proto/Algorand$SigningInput;->genesisId_:Ljava/lang/String;

    return-void
.end method

.method private setLastRound(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1683
    iput-wide p1, p0, Lwallet/core/jni/proto/Algorand$SigningInput;->lastRound_:J

    return-void
.end method

.method private setNote(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1566
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1568
    iput-object p1, p0, Lwallet/core/jni/proto/Algorand$SigningInput;->note_:Lcom/google/protobuf/ByteString;

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

    .line 1605
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1607
    iput-object p1, p0, Lwallet/core/jni/proto/Algorand$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private setTransfer(Lwallet/core/jni/proto/Algorand$Transfer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1757
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1758
    iput-object p1, p0, Lwallet/core/jni/proto/Algorand$SigningInput;->messageOneof_:Ljava/lang/Object;

    const/16 p1, 0xa

    .line 1759
    iput p1, p0, Lwallet/core/jni/proto/Algorand$SigningInput;->messageOneofCase_:I

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

    .line 2456
    sget-object p2, Lwallet/core/jni/proto/Algorand$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2509
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 2503
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 2488
    :pswitch_2
    sget-object p1, Lwallet/core/jni/proto/Algorand$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 2490
    const-class p2, Lwallet/core/jni/proto/Algorand$SigningInput;

    monitor-enter p2

    .line 2491
    :try_start_0
    sget-object p1, Lwallet/core/jni/proto/Algorand$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 2493
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lwallet/core/jni/proto/Algorand$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Algorand$SigningInput;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2496
    sput-object p1, Lwallet/core/jni/proto/Algorand$SigningInput;->PARSER:Lcom/google/protobuf/Parser;

    .line 2498
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

    .line 2485
    :pswitch_3
    sget-object p1, Lwallet/core/jni/proto/Algorand$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Algorand$SigningInput;

    return-object p1

    :pswitch_4
    const/16 p1, 0xc

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "messageOneof_"

    aput-object v0, p1, p3

    const-string p3, "messageOneofCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "genesisId_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "genesisHash_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "note_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "privateKey_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "firstRound_"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "lastRound_"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "fee_"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    .line 2464
    const-class p3, Lwallet/core/jni/proto/Algorand$Transfer;

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-class p3, Lwallet/core/jni/proto/Algorand$AssetTransfer;

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-class p3, Lwallet/core/jni/proto/Algorand$AssetOptIn;

    aput-object p3, p1, p2

    const-string p2, "\u0000\n\u0001\u0000\u0001\u000c\n\u0000\u0000\u0000\u0001\u0208\u0002\n\u0003\n\u0004\n\u0005\u0003\u0006\u0003\u0007\u0003\n<\u0000\u000b<\u0000\u000c<\u0000"

    .line 2481
    sget-object p3, Lwallet/core/jni/proto/Algorand$SigningInput;->DEFAULT_INSTANCE:Lwallet/core/jni/proto/Algorand$SigningInput;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2461
    :pswitch_5
    new-instance p1, Lwallet/core/jni/proto/Algorand$SigningInput$Builder;

    invoke-direct {p1, p3}, Lwallet/core/jni/proto/Algorand$SigningInput$Builder;-><init>(Lwallet/core/jni/proto/Algorand$1;)V

    return-object p1

    .line 2458
    :pswitch_6
    new-instance p1, Lwallet/core/jni/proto/Algorand$SigningInput;

    invoke-direct {p1}, Lwallet/core/jni/proto/Algorand$SigningInput;-><init>()V

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

.method public getAssetOptIn()Lwallet/core/jni/proto/Algorand$AssetOptIn;
    .locals 2

    .line 1848
    iget v0, p0, Lwallet/core/jni/proto/Algorand$SigningInput;->messageOneofCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 1849
    iget-object v0, p0, Lwallet/core/jni/proto/Algorand$SigningInput;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Algorand$AssetOptIn;

    return-object v0

    .line 1851
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Algorand$AssetOptIn;->getDefaultInstance()Lwallet/core/jni/proto/Algorand$AssetOptIn;

    move-result-object v0

    return-object v0
.end method

.method public getAssetTransfer()Lwallet/core/jni/proto/Algorand$AssetTransfer;
    .locals 2

    .line 1798
    iget v0, p0, Lwallet/core/jni/proto/Algorand$SigningInput;->messageOneofCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 1799
    iget-object v0, p0, Lwallet/core/jni/proto/Algorand$SigningInput;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Algorand$AssetTransfer;

    return-object v0

    .line 1801
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Algorand$AssetTransfer;->getDefaultInstance()Lwallet/core/jni/proto/Algorand$AssetTransfer;

    move-result-object v0

    return-object v0
.end method

.method public getFee()J
    .locals 2

    .line 1709
    iget-wide v0, p0, Lwallet/core/jni/proto/Algorand$SigningInput;->fee_:J

    return-wide v0
.end method

.method public getFirstRound()J
    .locals 2

    .line 1633
    iget-wide v0, p0, Lwallet/core/jni/proto/Algorand$SigningInput;->firstRound_:J

    return-wide v0
.end method

.method public getGenesisHash()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1516
    iget-object v0, p0, Lwallet/core/jni/proto/Algorand$SigningInput;->genesisHash_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getGenesisId()Ljava/lang/String;
    .locals 1

    .line 1449
    iget-object v0, p0, Lwallet/core/jni/proto/Algorand$SigningInput;->genesisId_:Ljava/lang/String;

    return-object v0
.end method

.method public getGenesisIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1462
    iget-object v0, p0, Lwallet/core/jni/proto/Algorand$SigningInput;->genesisId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getLastRound()J
    .locals 2

    .line 1671
    iget-wide v0, p0, Lwallet/core/jni/proto/Algorand$SigningInput;->lastRound_:J

    return-wide v0
.end method

.method public getMessageOneofCase()Lwallet/core/jni/proto/Algorand$SigningInput$MessageOneofCase;
    .locals 1

    .line 1428
    iget v0, p0, Lwallet/core/jni/proto/Algorand$SigningInput;->messageOneofCase_:I

    invoke-static {v0}, Lwallet/core/jni/proto/Algorand$SigningInput$MessageOneofCase;->forNumber(I)Lwallet/core/jni/proto/Algorand$SigningInput$MessageOneofCase;

    move-result-object v0

    return-object v0
.end method

.method public getNote()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1555
    iget-object v0, p0, Lwallet/core/jni/proto/Algorand$SigningInput;->note_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPrivateKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1594
    iget-object v0, p0, Lwallet/core/jni/proto/Algorand$SigningInput;->privateKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getTransfer()Lwallet/core/jni/proto/Algorand$Transfer;
    .locals 2

    .line 1748
    iget v0, p0, Lwallet/core/jni/proto/Algorand$SigningInput;->messageOneofCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 1749
    iget-object v0, p0, Lwallet/core/jni/proto/Algorand$SigningInput;->messageOneof_:Ljava/lang/Object;

    check-cast v0, Lwallet/core/jni/proto/Algorand$Transfer;

    return-object v0

    .line 1751
    :cond_0
    invoke-static {}, Lwallet/core/jni/proto/Algorand$Transfer;->getDefaultInstance()Lwallet/core/jni/proto/Algorand$Transfer;

    move-result-object v0

    return-object v0
.end method

.method public hasAssetOptIn()Z
    .locals 2

    .line 1841
    iget v0, p0, Lwallet/core/jni/proto/Algorand$SigningInput;->messageOneofCase_:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasAssetTransfer()Z
    .locals 2

    .line 1791
    iget v0, p0, Lwallet/core/jni/proto/Algorand$SigningInput;->messageOneofCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTransfer()Z
    .locals 2

    .line 1741
    iget v0, p0, Lwallet/core/jni/proto/Algorand$SigningInput;->messageOneofCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
