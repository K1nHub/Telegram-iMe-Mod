.class public interface abstract Lcom/smedialink/ui/wallet/staking/programmes/StakingProgrammesView;
.super Ljava/lang/Object;
.source "StakingProgrammesView.kt"

# interfaces
.implements Lcom/smedialink/ui/base/mvp/base/BaseView;
.implements Lcom/smedialink/ui/base/mvp/LoadMoreView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/smedialink/ui/base/mvp/base/BaseView;",
        "Lcom/smedialink/ui/base/mvp/LoadMoreView<",
        "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
        ">;"
    }
.end annotation

.annotation runtime Lmoxy/viewstate/strategy/alias/OneExecution;
.end annotation


# virtual methods
.method public abstract openDepositScreen(Lcom/smedialink/model/staking/StakingDetailsItem;)V
.end method

.method public abstract openStakingDetailsScreen(Lcom/smedialink/model/staking/StakingDetailsItem;)V
.end method

.method public abstract renderItems(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
    .end annotation
.end method

.method public abstract showLevelRequiredDialog(Lcom/smedialink/storage/domain/model/crypto/level/AccountLevel;)V
.end method

.method public abstract showSelectStakingOrderTypeDialog(Lcom/smedialink/storage/domain/model/wallet/staking/StakingOrderType;)V
.end method
