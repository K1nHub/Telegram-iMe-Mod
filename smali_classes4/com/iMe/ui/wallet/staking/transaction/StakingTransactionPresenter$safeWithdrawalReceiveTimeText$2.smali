.class final Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$safeWithdrawalReceiveTimeText$2;
.super Lkotlin/jvm/internal/Lambda;
.source "StakingTransactionPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;-><init>(Ljava/lang/Double;ILcom/iMe/model/staking/StakingDetailsItem;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/utils/rx/RxEventBus;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/i_staking/StakingInteractor;Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$safeWithdrawalReceiveTimeText$2;->this$0:Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 83
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$safeWithdrawalReceiveTimeText$2;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter$safeWithdrawalReceiveTimeText$2;->this$0:Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;->access$getSafeWithdrawalDurationText(Lcom/iMe/ui/wallet/staking/transaction/StakingTransactionPresenter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
