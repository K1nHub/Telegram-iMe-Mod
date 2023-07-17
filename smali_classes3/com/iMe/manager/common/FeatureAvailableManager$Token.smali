.class public final Lcom/iMe/manager/common/FeatureAvailableManager$Token;
.super Ljava/lang/Object;
.source "FeatureAvailableManager.kt"


# static fields
.field public static final INSTANCE:Lcom/iMe/manager/common/FeatureAvailableManager$Token;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/iMe/manager/common/FeatureAvailableManager$Token;

    invoke-direct {v0}, Lcom/iMe/manager/common/FeatureAvailableManager$Token;-><init>()V

    sput-object v0, Lcom/iMe/manager/common/FeatureAvailableManager$Token;->INSTANCE:Lcom/iMe/manager/common/FeatureAvailableManager$Token;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final isPurchaseViaSwapAvailable(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "BINANCE_SMART_CHAIN"

    const-string v1, "ETHEREUM"

    const-string v2, "POLYGON"

    .line 13
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public final isPurchaseAvailable(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "networkId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0, p1}, Lcom/iMe/manager/common/FeatureAvailableManager$Token;->isPurchaseViaSwapAvailable(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
