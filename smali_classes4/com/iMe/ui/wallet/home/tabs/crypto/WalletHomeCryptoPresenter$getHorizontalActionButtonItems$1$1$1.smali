.class final Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$getHorizontalActionButtonItems$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletHomeCryptoPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->getHorizontalActionButtonItems()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $this_with:Lcom/iMe/model/wallet/crypto/create/WalletCreationType;

.field final synthetic this$0:Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;Lcom/iMe/model/wallet/crypto/create/WalletCreationType;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$getHorizontalActionButtonItems$1$1$1;->this$0:Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;

    iput-object p2, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$getHorizontalActionButtonItems$1$1$1;->$this_with:Lcom/iMe/model/wallet/crypto/create/WalletCreationType;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 755
    invoke-virtual {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$getHorizontalActionButtonItems$1$1$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 756
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$getHorizontalActionButtonItems$1$1$1;->this$0:Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;

    invoke-static {v0}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->access$isAllNetworksSelected(Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 757
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$getHorizontalActionButtonItems$1$1$1;->this$0:Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;

    new-instance v1, Lcom/iMe/model/wallet/home/NetworkChoosePurpose$NewWallet;

    iget-object v2, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$getHorizontalActionButtonItems$1$1$1;->$this_with:Lcom/iMe/model/wallet/crypto/create/WalletCreationType;

    invoke-direct {v1, v2}, Lcom/iMe/model/wallet/home/NetworkChoosePurpose$NewWallet;-><init>(Lcom/iMe/model/wallet/crypto/create/WalletCreationType;)V

    invoke-virtual {v0, v1}, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;->startChooseNetworkDialog(Lcom/iMe/model/wallet/home/NetworkChoosePurpose;)V

    goto :goto_0

    .line 759
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$getHorizontalActionButtonItems$1$1$1;->this$0:Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter;

    iget-object v1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/WalletHomeCryptoPresenter$getHorizontalActionButtonItems$1$1$1;->$this_with:Lcom/iMe/model/wallet/crypto/create/WalletCreationType;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lcom/iMe/manager/wallet/create/WalletCreateManagerDelegate$-CC;->startWalletCreationFlow$default(Lcom/iMe/manager/wallet/create/WalletCreateManagerDelegate;Lcom/iMe/model/wallet/crypto/create/WalletCreationType;Lcom/iMe/storage/domain/model/crypto/BlockchainType;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method
