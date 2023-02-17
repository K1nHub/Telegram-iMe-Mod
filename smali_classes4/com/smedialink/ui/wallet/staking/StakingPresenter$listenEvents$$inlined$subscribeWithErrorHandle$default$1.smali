.class public final Lcom/smedialink/ui/wallet/staking/StakingPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;
.super Ljava/lang/Object;
.source "RxExt.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/staking/StakingPresenter;->listenEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 StakingPresenter.kt\ncom/smedialink/ui/wallet/staking/StakingPresenter\n*L\n1#1,111:1\n102#2,6:112\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/wallet/staking/StakingPresenter;


# direct methods
.method public constructor <init>(Lcom/smedialink/ui/wallet/staking/StakingPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/staking/StakingPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/staking/StakingPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 45
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$StakingTabRefreshStateChanged;

    .line 112
    invoke-virtual {p1}, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$StakingTabRefreshStateChanged;->getStakingTabType()Lcom/smedialink/storage/domain/model/staking/StakingTabType;

    move-result-object v0

    sget-object v1, Lcom/smedialink/ui/wallet/staking/StakingPresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/StakingPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/staking/StakingPresenter;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$StakingTabRefreshStateChanged;->isShowRefresh()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/smedialink/ui/wallet/staking/StakingPresenter;->access$setParticipatedTabRefreshing$p(Lcom/smedialink/ui/wallet/staking/StakingPresenter;Z)V

    goto :goto_0

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/smedialink/ui/wallet/staking/StakingPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/staking/StakingPresenter;

    invoke-virtual {p1}, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$StakingTabRefreshStateChanged;->isShowRefresh()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/smedialink/ui/wallet/staking/StakingPresenter;->access$setAllTabRefreshing$p(Lcom/smedialink/ui/wallet/staking/StakingPresenter;Z)V

    .line 116
    :goto_0
    iget-object p1, p0, Lcom/smedialink/ui/wallet/staking/StakingPresenter$listenEvents$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/smedialink/ui/wallet/staking/StakingPresenter;

    invoke-static {p1}, Lcom/smedialink/ui/wallet/staking/StakingPresenter;->access$updateRefreshState(Lcom/smedialink/ui/wallet/staking/StakingPresenter;)V

    return-void
.end method
