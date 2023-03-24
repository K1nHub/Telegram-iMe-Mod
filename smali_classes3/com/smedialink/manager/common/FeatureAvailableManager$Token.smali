.class public final Lcom/smedialink/manager/common/FeatureAvailableManager$Token;
.super Ljava/lang/Object;
.source "FeatureAvailableManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/manager/common/FeatureAvailableManager$Token$WhenMappings;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/smedialink/manager/common/FeatureAvailableManager$Token;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/smedialink/manager/common/FeatureAvailableManager$Token;

    invoke-direct {v0}, Lcom/smedialink/manager/common/FeatureAvailableManager$Token;-><init>()V

    sput-object v0, Lcom/smedialink/manager/common/FeatureAvailableManager$Token;->INSTANCE:Lcom/smedialink/manager/common/FeatureAvailableManager$Token;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isPurchaseAvailable(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Z
    .locals 1

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0, p1, p2}, Lcom/smedialink/manager/common/FeatureAvailableManager$Token;->isPurchaseViaSwapAvailable(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/smedialink/manager/common/FeatureAvailableManager$Token;->isPurchaseViaSimplexAvailable(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final isPurchaseViaSimplexAvailable(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Z
    .locals 5

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sget-object v0, Lcom/smedialink/manager/common/FeatureAvailableManager$Token$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p2, v3, :cond_2

    if-eq p2, v2, :cond_1

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    sget-object p2, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->MATIC:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 26
    :cond_1
    sget-object p2, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->BNB:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 p2, 0x4

    new-array p2, p2, [Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    .line 21
    sget-object v4, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->ETHER:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    aput-object v4, p2, v0

    .line 22
    sget-object v0, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->USDT:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    aput-object v0, p2, v3

    .line 23
    sget-object v0, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->BUSD:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    aput-object v0, p2, v2

    .line 24
    sget-object v0, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->MATIC:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    aput-object v0, p2, v1

    .line 20
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 25
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public final isPurchaseViaSwapAvailable(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Z
    .locals 1

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/smedialink/manager/common/FeatureAvailableManager$Token;->isSwapAvailable(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Z

    move-result p1

    return p1
.end method

.method public final isSwapAvailable(Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)Z
    .locals 4

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    sget-object v0, Lcom/smedialink/manager/common/FeatureAvailableManager$Token$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p2, v3, :cond_2

    if-eq p2, v1, :cond_1

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    sget-object p2, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;

    invoke-virtual {p2}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;->getPolygonCodes()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 13
    :cond_1
    sget-object p2, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->Companion:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;

    invoke-virtual {p2}, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode$Companion;->getBSCCodes()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    :cond_2
    new-array p2, v0, [Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    .line 12
    sget-object v0, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->FIL:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    aput-object v0, p2, v2

    sget-object v0, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->LANC:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    aput-object v0, p2, v3

    sget-object v0, Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;->UNKNOWN:Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    aput-object v0, p2, v1

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    move v2, v3

    :cond_3
    :goto_0
    return v2
.end method
