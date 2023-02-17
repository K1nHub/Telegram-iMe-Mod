.class public final Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$StakingTabRefreshStateChanged;
.super Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents;
.source "DomainRxEvents.kt"

# interfaces
.implements Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$CryptoEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StakingTabRefreshStateChanged"
.end annotation


# instance fields
.field private final isShowRefresh:Z

.field private final stakingTabType:Lcom/smedialink/storage/domain/model/staking/StakingTabType;


# direct methods
.method public constructor <init>(Lcom/smedialink/storage/domain/model/staking/StakingTabType;Z)V
    .locals 1

    const-string v0, "stakingTabType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, v0}, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$StakingTabRefreshStateChanged;->stakingTabType:Lcom/smedialink/storage/domain/model/staking/StakingTabType;

    iput-boolean p2, p0, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$StakingTabRefreshStateChanged;->isShowRefresh:Z

    return-void
.end method


# virtual methods
.method public final getStakingTabType()Lcom/smedialink/storage/domain/model/staking/StakingTabType;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$StakingTabRefreshStateChanged;->stakingTabType:Lcom/smedialink/storage/domain/model/staking/StakingTabType;

    return-object v0
.end method

.method public final isShowRefresh()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$StakingTabRefreshStateChanged;->isShowRefresh:Z

    return v0
.end method
