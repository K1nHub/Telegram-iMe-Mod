.class public final Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter$loadAccountLevelAndOpenStaking$$inlined$subscribeWithErrorHandle$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->loadAccountLevelAndOpenStaking(Lcom/iMe/model/staking/StakingDetailsItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/iMe/storage/domain/model/Result<",
        "+",
        "Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRxExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt$subscribeWithErrorHandle$2\n+ 2 StakingCalculatorPresenter.kt\ncom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter\n*L\n1#1,111:1\n155#2,6:112\n*E\n"
.end annotation


# instance fields
.field final synthetic $stakingDetails$inlined:Lcom/iMe/model/staking/StakingDetailsItem;

.field final synthetic this$0:Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;


# direct methods
.method public constructor <init>(Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;Lcom/iMe/model/staking/StakingDetailsItem;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter$loadAccountLevelAndOpenStaking$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;

    iput-object p2, p0, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter$loadAccountLevelAndOpenStaking$$inlined$subscribeWithErrorHandle$default$1;->$stakingDetails$inlined:Lcom/iMe/model/staking/StakingDetailsItem;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter$loadAccountLevelAndOpenStaking$$inlined$subscribeWithErrorHandle$default$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/storage/domain/model/Result<",
            "+",
            "Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    .line 45
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/iMe/storage/domain/model/Result;

    .line 113
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Success;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter$loadAccountLevelAndOpenStaking$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;

    iget-object v1, p0, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter$loadAccountLevelAndOpenStaking$$inlined$subscribeWithErrorHandle$default$1;->$stakingDetails$inlined:Lcom/iMe/model/staking/StakingDetailsItem;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Success;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;

    invoke-static {v0, v1, p1}, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->access$openStakingCheckingAccountLevel(Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;Lcom/iMe/model/staking/StakingDetailsItem;Lcom/iMe/storage/domain/model/crypto/level/AccountLevel;)V

    goto :goto_0

    .line 114
    :cond_0
    instance-of v0, p1, Lcom/iMe/storage/domain/model/Result$Error;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter$loadAccountLevelAndOpenStaking$$inlined$subscribeWithErrorHandle$default$1;->this$0:Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;

    check-cast p1, Lcom/iMe/storage/domain/model/Result$Error;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/Result$Error;->getError()Lcom/iMe/storage/data/network/model/error/ErrorModel;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;->access$showCommonErrorToast(Lcom/iMe/ui/wallet/staking/calculator/StakingCalculatorPresenter;Lcom/iMe/storage/data/network/model/error/ErrorModel;)V

    :cond_1
    :goto_0
    return-void
.end method
