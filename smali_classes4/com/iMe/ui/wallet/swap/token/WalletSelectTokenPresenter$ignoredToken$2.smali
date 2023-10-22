.class final Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter$ignoredToken$2;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletSelectTokenPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;-><init>(Lcom/iMe/model/wallet/select/SelectTokenScreenType;Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;Ljava/lang/String;ZLcom/iMe/storage/domain/interactor/binancepay/BinanceInternalInteractor;Lcom/iMe/storage/domain/utils/system/ResourceManager;Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;Lcom/iMe/storage/domain/interactor/crypto/swap/SwapInteractor;Lcom/iMe/storage/domain/interactor/wallet/WalletInteractor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter$ignoredToken$2;->this$0:Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter$ignoredToken$2;->this$0:Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;->access$getScreenType$p(Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter;)Lcom/iMe/model/wallet/select/SelectTokenScreenType;

    move-result-object v0

    instance-of v1, v0, Lcom/iMe/model/wallet/select/SelectTokenScreenType$Swap;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/iMe/model/wallet/select/SelectTokenScreenType$Swap;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/iMe/model/wallet/select/SelectTokenScreenType$Swap;->getIgnoredToken()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v2

    :cond_1
    return-object v2
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/swap/token/WalletSelectTokenPresenter$ignoredToken$2;->invoke()Lcom/iMe/storage/domain/model/wallet/token/TokenDetailed;

    move-result-object v0

    return-object v0
.end method
