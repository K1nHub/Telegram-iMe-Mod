.class public final enum Lcom/smedialink/storage/domain/model/wallet/GatePair;
.super Ljava/lang/Enum;
.source "GatePair.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/storage/domain/model/wallet/GatePair$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/smedialink/storage/domain/model/wallet/GatePair;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/smedialink/storage/domain/model/wallet/GatePair;

.field public static final Companion:Lcom/smedialink/storage/domain/model/wallet/GatePair$Companion;

.field public static final enum LIME_BTC:Lcom/smedialink/storage/domain/model/wallet/GatePair;

.field public static final enum LIME_ETH:Lcom/smedialink/storage/domain/model/wallet/GatePair;

.field public static final enum LIME_USDT:Lcom/smedialink/storage/domain/model/wallet/GatePair;


# instance fields
.field private title:I

.field private url:I


# direct methods
.method private static final synthetic $values()[Lcom/smedialink/storage/domain/model/wallet/GatePair;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/smedialink/storage/domain/model/wallet/GatePair;

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/GatePair;->LIME_ETH:Lcom/smedialink/storage/domain/model/wallet/GatePair;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/GatePair;->LIME_USDT:Lcom/smedialink/storage/domain/model/wallet/GatePair;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/smedialink/storage/domain/model/wallet/GatePair;->LIME_BTC:Lcom/smedialink/storage/domain/model/wallet/GatePair;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 11
    new-instance v0, Lcom/smedialink/storage/domain/model/wallet/GatePair;

    sget v1, Lcom/smedialink/storage/R$string;->wallet_gate_pair_lime_eth:I

    sget v2, Lcom/smedialink/storage/R$string;->wallet_gate_pair_lime_eth_url:I

    const-string v3, "LIME_ETH"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/smedialink/storage/domain/model/wallet/GatePair;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/smedialink/storage/domain/model/wallet/GatePair;->LIME_ETH:Lcom/smedialink/storage/domain/model/wallet/GatePair;

    .line 12
    new-instance v0, Lcom/smedialink/storage/domain/model/wallet/GatePair;

    sget v1, Lcom/smedialink/storage/R$string;->wallet_gate_pair_lime_usdt:I

    sget v2, Lcom/smedialink/storage/R$string;->wallet_gate_pair_lime_usdt_url:I

    const-string v3, "LIME_USDT"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/smedialink/storage/domain/model/wallet/GatePair;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/smedialink/storage/domain/model/wallet/GatePair;->LIME_USDT:Lcom/smedialink/storage/domain/model/wallet/GatePair;

    .line 13
    new-instance v0, Lcom/smedialink/storage/domain/model/wallet/GatePair;

    sget v1, Lcom/smedialink/storage/R$string;->wallet_gate_pair_lime_btc:I

    sget v2, Lcom/smedialink/storage/R$string;->wallet_gate_pair_lime_btc_url:I

    const-string v3, "LIME_BTC"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/smedialink/storage/domain/model/wallet/GatePair;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/smedialink/storage/domain/model/wallet/GatePair;->LIME_BTC:Lcom/smedialink/storage/domain/model/wallet/GatePair;

    invoke-static {}, Lcom/smedialink/storage/domain/model/wallet/GatePair;->$values()[Lcom/smedialink/storage/domain/model/wallet/GatePair;

    move-result-object v0

    sput-object v0, Lcom/smedialink/storage/domain/model/wallet/GatePair;->$VALUES:[Lcom/smedialink/storage/domain/model/wallet/GatePair;

    new-instance v0, Lcom/smedialink/storage/domain/model/wallet/GatePair$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/storage/domain/model/wallet/GatePair$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/smedialink/storage/domain/model/wallet/GatePair;->Companion:Lcom/smedialink/storage/domain/model/wallet/GatePair$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 8
    iput p3, p0, Lcom/smedialink/storage/domain/model/wallet/GatePair;->title:I

    .line 9
    iput p4, p0, Lcom/smedialink/storage/domain/model/wallet/GatePair;->url:I

    return-void
.end method

.method public static final getTitlesAsArray(Lcom/smedialink/storage/domain/utils/system/ResourceManager;)[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/smedialink/storage/domain/model/wallet/GatePair;->Companion:Lcom/smedialink/storage/domain/model/wallet/GatePair$Companion;

    invoke-virtual {v0, p0}, Lcom/smedialink/storage/domain/model/wallet/GatePair$Companion;->getTitlesAsArray(Lcom/smedialink/storage/domain/utils/system/ResourceManager;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/smedialink/storage/domain/model/wallet/GatePair;
    .locals 1

    const-class v0, Lcom/smedialink/storage/domain/model/wallet/GatePair;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/smedialink/storage/domain/model/wallet/GatePair;

    return-object p0
.end method

.method public static values()[Lcom/smedialink/storage/domain/model/wallet/GatePair;
    .locals 1

    sget-object v0, Lcom/smedialink/storage/domain/model/wallet/GatePair;->$VALUES:[Lcom/smedialink/storage/domain/model/wallet/GatePair;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/smedialink/storage/domain/model/wallet/GatePair;

    return-object v0
.end method


# virtual methods
.method public final getTitle()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/smedialink/storage/domain/model/wallet/GatePair;->title:I

    return v0
.end method

.method public final getUrl()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/smedialink/storage/domain/model/wallet/GatePair;->url:I

    return v0
.end method

.method public final setTitle(I)V
    .locals 0

    .line 8
    iput p1, p0, Lcom/smedialink/storage/domain/model/wallet/GatePair;->title:I

    return-void
.end method

.method public final setUrl(I)V
    .locals 0

    .line 9
    iput p1, p0, Lcom/smedialink/storage/domain/model/wallet/GatePair;->url:I

    return-void
.end method
