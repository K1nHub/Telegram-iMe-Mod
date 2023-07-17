.class final Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$startChooseNetworkDialog$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletSwapProcessPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->startChooseNetworkDialog(Lcom/iMe/model/wallet/swap/SwapSide;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$startChooseNetworkDialog$1$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/iMe/storage/domain/model/crypto/Network;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $side:Lcom/iMe/model/wallet/swap/SwapSide;

.field final synthetic this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;


# direct methods
.method constructor <init>(Lcom/iMe/model/wallet/swap/SwapSide;Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$startChooseNetworkDialog$1;->$side:Lcom/iMe/model/wallet/swap/SwapSide;

    iput-object p2, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$startChooseNetworkDialog$1;->this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 100
    check-cast p1, Lcom/iMe/storage/domain/model/crypto/Network;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$startChooseNetworkDialog$1;->invoke(Lcom/iMe/storage/domain/model/crypto/Network;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/iMe/storage/domain/model/crypto/Network;)V
    .locals 2

    const-string v0, "newNetwork"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$startChooseNetworkDialog$1;->$side:Lcom/iMe/model/wallet/swap/SwapSide;

    sget-object v1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$startChooseNetworkDialog$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$startChooseNetworkDialog$1;->this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/Network;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->access$setSelectedOutputNetworkId$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$startChooseNetworkDialog$1;->this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/Network;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->access$setSelectedInputNetworkId$p(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Ljava/lang/String;)V

    .line 105
    :goto_0
    iget-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$startChooseNetworkDialog$1;->this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;

    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$startChooseNetworkDialog$1;->this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$startChooseNetworkDialog$1;->$side:Lcom/iMe/model/wallet/swap/SwapSide;

    invoke-static {v0, v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->access$getSelectedNetworkIdBySwapSide(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/swap/SwapSide;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iMe/storage/data/utils/crypto/NetworksHelper;->getNetworkById(Ljava/lang/String;)Lcom/iMe/storage/domain/model/crypto/Network;

    move-result-object v0

    iget-object v1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$startChooseNetworkDialog$1;->$side:Lcom/iMe/model/wallet/swap/SwapSide;

    invoke-interface {p1, v0, v1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessView;->setupNetwork(Lcom/iMe/storage/domain/model/crypto/Network;Lcom/iMe/model/wallet/swap/SwapSide;)V

    .line 106
    iget-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$startChooseNetworkDialog$1;->this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    invoke-static {p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->access$resetLoadedInformation(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    .line 107
    iget-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$startChooseNetworkDialog$1;->this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    invoke-static {p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->access$resolveSwapProtocol(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    .line 108
    iget-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$startChooseNetworkDialog$1;->this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    invoke-static {p1}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->access$setupSwapInformation(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    .line 109
    iget-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$startChooseNetworkDialog$1;->this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    sget-object v0, Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Idle;->INSTANCE:Lcom/iMe/model/wallet/crypto/swap/SwapUiState$Idle;

    invoke-static {p1, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->access$resetStateTo(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/crypto/swap/SwapUiState;)V

    .line 110
    iget-object p1, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$startChooseNetworkDialog$1;->this$0:Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;

    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter$startChooseNetworkDialog$1;->$side:Lcom/iMe/model/wallet/swap/SwapSide;

    invoke-static {p1, v0}, Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;->access$loadAvailableSwapTokens(Lcom/iMe/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/iMe/model/wallet/swap/SwapSide;)V

    return-void
.end method
