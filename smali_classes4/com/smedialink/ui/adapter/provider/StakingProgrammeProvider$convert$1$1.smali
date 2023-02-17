.class final Lcom/smedialink/ui/adapter/provider/StakingProgrammeProvider$convert$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "StakingProgrammeProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/adapter/provider/StakingProgrammeProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/smedialink/model/staking/StakingProgrammeItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/smedialink/ui/custom/CoinTickerView;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $this_with:Lcom/smedialink/model/staking/StakingProgrammeItem;

.field final synthetic this$0:Lcom/smedialink/ui/adapter/provider/StakingProgrammeProvider;


# direct methods
.method constructor <init>(Lcom/smedialink/model/staking/StakingProgrammeItem;Lcom/smedialink/ui/adapter/provider/StakingProgrammeProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/adapter/provider/StakingProgrammeProvider$convert$1$1;->$this_with:Lcom/smedialink/model/staking/StakingProgrammeItem;

    iput-object p2, p0, Lcom/smedialink/ui/adapter/provider/StakingProgrammeProvider$convert$1$1;->this$0:Lcom/smedialink/ui/adapter/provider/StakingProgrammeProvider;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 65
    check-cast p1, Lcom/smedialink/ui/custom/CoinTickerView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/adapter/provider/StakingProgrammeProvider$convert$1$1;->invoke(Lcom/smedialink/ui/custom/CoinTickerView;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/smedialink/ui/custom/CoinTickerView;)V
    .locals 2

    const-string v0, "$this$applyForView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/smedialink/ui/adapter/provider/StakingProgrammeProvider$convert$1$1;->$this_with:Lcom/smedialink/model/staking/StakingProgrammeItem;

    invoke-virtual {v0}, Lcom/smedialink/model/staking/StakingProgrammeItem;->getTokenBalance()Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smedialink/storage/domain/model/wallet/token/TokenBalance;->getInfo()Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/smedialink/ui/adapter/provider/StakingProgrammeProvider$convert$1$1;->this$0:Lcom/smedialink/ui/adapter/provider/StakingProgrammeProvider;

    invoke-static {v1}, Lcom/smedialink/ui/adapter/provider/StakingProgrammeProvider;->access$getResourceManager$p(Lcom/smedialink/ui/adapter/provider/StakingProgrammeProvider;)Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/smedialink/ui/custom/CoinTickerView;->setTicker(Lcom/smedialink/storage/domain/model/wallet/token/TokenInfo;Lcom/smedialink/storage/domain/utils/system/ResourceManager;)V

    return-void
.end method
