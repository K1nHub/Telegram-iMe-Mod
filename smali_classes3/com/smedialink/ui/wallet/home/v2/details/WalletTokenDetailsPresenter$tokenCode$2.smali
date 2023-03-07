.class final Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$tokenCode$2;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletTokenDetailsPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;-><init>(Lcom/smedialink/model/wallet/details/TokenDetailsArgs;Lcom/smedialink/storage/domain/interactor/crypto/level/AccountLevelInteractor;Lcom/smedialink/storage/domain/manager/crypto/CryptoAccessManager;Lcom/smedialink/storage/domain/storage/CryptoPreferenceHelper;Lcom/smedialink/storage/domain/utils/system/ResourceManager;Lcom/smedialink/storage/domain/utils/rx/RxEventBus;Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/i_staking/StakingInteractor;Lcom/smedialink/manager/wallet/create/WalletCreateManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$tokenCode$2;->this$0:Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$tokenCode$2;->this$0:Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;

    invoke-static {v0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->access$getArgs$p(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;)Lcom/smedialink/model/wallet/details/TokenDetailsArgs;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;->access$resolveTokenCode(Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter;Lcom/smedialink/model/wallet/details/TokenDetailsArgs;)Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 65
    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/home/v2/details/WalletTokenDetailsPresenter$tokenCode$2;->invoke()Lcom/smedialink/storage/domain/model/wallet/token/TokenCode;

    move-result-object v0

    return-object v0
.end method
