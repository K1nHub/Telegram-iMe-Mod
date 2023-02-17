.class public final Lcom/iMe/i_staking/request/StakingOrderStrategyRequest$Companion;
.super Ljava/lang/Object;
.source "StakingOrderStrategyRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/i_staking/request/StakingOrderStrategyRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/i_staking/request/StakingOrderStrategyRequest$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromOrderType(Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;)Lcom/iMe/i_staking/request/StakingOrderStrategyRequest;
    .locals 2

    const-string v0, "orderType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    sget-object v0, Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;->DEFAULT:Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Lcom/iMe/i_staking/request/StakingOrderStrategyRequest;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lcom/iMe/i_staking/request/StakingOrderStrategyRequest;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
