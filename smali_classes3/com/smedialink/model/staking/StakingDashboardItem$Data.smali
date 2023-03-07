.class public final Lcom/smedialink/model/staking/StakingDashboardItem$Data;
.super Lcom/smedialink/model/staking/StakingDashboardItem;
.source "StakingDashboardItem.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/model/staking/StakingDashboardItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Data"
.end annotation


# instance fields
.field private final profit:F

.field private final staked:F


# direct methods
.method public constructor <init>(FF)V
    .locals 1

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, v0}, Lcom/smedialink/model/staking/StakingDashboardItem;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 8
    iput p1, p0, Lcom/smedialink/model/staking/StakingDashboardItem$Data;->staked:F

    .line 9
    iput p2, p0, Lcom/smedialink/model/staking/StakingDashboardItem$Data;->profit:F

    return-void
.end method


# virtual methods
.method public final getProfit()F
    .locals 1

    .line 9
    iget v0, p0, Lcom/smedialink/model/staking/StakingDashboardItem$Data;->profit:F

    return v0
.end method

.method public final getStaked()F
    .locals 1

    .line 8
    iget v0, p0, Lcom/smedialink/model/staking/StakingDashboardItem$Data;->staked:F

    return v0
.end method
