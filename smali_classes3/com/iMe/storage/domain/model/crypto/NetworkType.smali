.class public final Lcom/iMe/storage/domain/model/crypto/NetworkType;
.super Ljava/lang/Object;
.source "NetworkType.kt"


# static fields
.field public static final BSC:Ljava/lang/String; = "BINANCE_SMART_CHAIN"

.field public static final BTC:Ljava/lang/String; = "BITCOIN"

.field public static final ETH:Ljava/lang/String; = "ETHEREUM"

.field public static final FTM:Ljava/lang/String; = "FANTOM"

.field public static final INSTANCE:Lcom/iMe/storage/domain/model/crypto/NetworkType;

.field public static final POLY:Ljava/lang/String; = "POLYGON"

.field public static final TON:Ljava/lang/String; = "THE_OPEN_NETWORK"

.field public static final TRON:Ljava/lang/String; = "TRON"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/storage/domain/model/crypto/NetworkType;

    invoke-direct {v0}, Lcom/iMe/storage/domain/model/crypto/NetworkType;-><init>()V

    sput-object v0, Lcom/iMe/storage/domain/model/crypto/NetworkType;->INSTANCE:Lcom/iMe/storage/domain/model/crypto/NetworkType;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getValues()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "BINANCE_SMART_CHAIN"

    const-string v1, "BITCOIN"

    const-string v2, "ETHEREUM"

    const-string v3, "FANTOM"

    const-string v4, "POLYGON"

    const-string v5, "THE_OPEN_NETWORK"

    const-string v6, "TRON"

    .line 12
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
