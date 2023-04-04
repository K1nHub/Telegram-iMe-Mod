.class final Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$horizontalActionButtonItems$2;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletTokenDetailsPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;-><init>(Lcom/iMe/model/wallet/details/TokenDetailsArgs;Lcom/iMe/storage/domain/interactor/crypto/level/AccountLevelInteractor;Lcom/iMe/storage/domain/manager/crypto/CryptoAccessManager;Lcom/iMe/storage/domain/storage/CryptoPreferenceHelper;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/utils/rx/RxEventBus;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/i_staking/StakingInteractor;Lcom/iMe/manager/wallet/create/WalletCreateManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/List<",
        "+",
        "Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$horizontalActionButtonItems$2;->this$0:Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$horizontalActionButtonItems$2;->invoke()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/home/HorizontalActionButtonItem;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$horizontalActionButtonItems$2;->this$0:Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->access$getArgs$p(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;)Lcom/iMe/model/wallet/details/TokenDetailsArgs;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->access$resolveAvailableTokenActions(Lcom/iMe/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;Lcom/iMe/model/wallet/details/TokenDetailsArgs;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
