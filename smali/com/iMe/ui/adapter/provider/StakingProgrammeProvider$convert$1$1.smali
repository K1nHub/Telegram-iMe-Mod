.class final Lcom/iMe/ui/adapter/provider/StakingProgrammeProvider$convert$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "StakingProgrammeProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/adapter/provider/StakingProgrammeProvider;->convert(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/iMe/model/staking/StakingProgrammeItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/iMe/ui/custom/CoinTickerView;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $this_with:Lcom/iMe/model/staking/StakingProgrammeItem;

.field final synthetic this$0:Lcom/iMe/ui/adapter/provider/StakingProgrammeProvider;


# direct methods
.method constructor <init>(Lcom/iMe/model/staking/StakingProgrammeItem;Lcom/iMe/ui/adapter/provider/StakingProgrammeProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/adapter/provider/StakingProgrammeProvider$convert$1$1;->$this_with:Lcom/iMe/model/staking/StakingProgrammeItem;

    iput-object p2, p0, Lcom/iMe/ui/adapter/provider/StakingProgrammeProvider$convert$1$1;->this$0:Lcom/iMe/ui/adapter/provider/StakingProgrammeProvider;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 68
    check-cast p1, Lcom/iMe/ui/custom/CoinTickerView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/adapter/provider/StakingProgrammeProvider$convert$1$1;->invoke(Lcom/iMe/ui/custom/CoinTickerView;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/iMe/ui/custom/CoinTickerView;)V
    .locals 2

    const-string v0, "$this$applyForView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/iMe/ui/adapter/provider/StakingProgrammeProvider$convert$1$1;->$this_with:Lcom/iMe/model/staking/StakingProgrammeItem;

    invoke-virtual {v0}, Lcom/iMe/model/staking/StakingProgrammeItem;->getTokenBalance()Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/storage/domain/model/wallet/token/TokenBalance;->getInfo()Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/ui/adapter/provider/StakingProgrammeProvider$convert$1$1;->this$0:Lcom/iMe/ui/adapter/provider/StakingProgrammeProvider;

    invoke-static {v1}, Lcom/iMe/ui/adapter/provider/StakingProgrammeProvider;->access$getResourceManager$p(Lcom/iMe/ui/adapter/provider/StakingProgrammeProvider;)Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/iMe/ui/custom/CoinTickerView;->setTicker(Lcom/iMe/storage/domain/model/wallet/token/TokenInfo;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    return-void
.end method