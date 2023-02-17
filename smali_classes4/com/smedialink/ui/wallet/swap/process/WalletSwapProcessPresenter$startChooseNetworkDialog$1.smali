.class final Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$startChooseNetworkDialog$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WalletSwapProcessPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->startChooseNetworkDialog(Lcom/smedialink/model/wallet/swap/SwapSide;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$startChooseNetworkDialog$1$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/smedialink/storage/domain/model/crypto/NetworkType;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $side:Lcom/smedialink/model/wallet/swap/SwapSide;

.field final synthetic this$0:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;


# direct methods
.method constructor <init>(Lcom/smedialink/model/wallet/swap/SwapSide;Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$startChooseNetworkDialog$1;->$side:Lcom/smedialink/model/wallet/swap/SwapSide;

    iput-object p2, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$startChooseNetworkDialog$1;->this$0:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 94
    check-cast p1, Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$startChooseNetworkDialog$1;->invoke(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V
    .locals 2

    const-string v0, "newNetworkType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$startChooseNetworkDialog$1;->$side:Lcom/smedialink/model/wallet/swap/SwapSide;

    sget-object v1, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$startChooseNetworkDialog$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$startChooseNetworkDialog$1;->this$0:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;

    invoke-static {v0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->access$setSelectedOutputNetworkType$p(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    goto :goto_0

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$startChooseNetworkDialog$1;->this$0:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;

    invoke-static {v0, p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->access$setSelectedInputNetworkType$p(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/storage/domain/model/crypto/NetworkType;)V

    .line 99
    :goto_0
    iget-object p1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$startChooseNetworkDialog$1;->this$0:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;

    invoke-virtual {p1}, Lmoxy/MvpPresenter;->getViewState()Lmoxy/MvpView;

    move-result-object p1

    check-cast p1, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;

    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$startChooseNetworkDialog$1;->this$0:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;

    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$startChooseNetworkDialog$1;->$side:Lcom/smedialink/model/wallet/swap/SwapSide;

    invoke-static {v0, v1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->access$getSelectedNetworkTypeBySwapSide(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/model/wallet/swap/SwapSide;)Lcom/smedialink/storage/domain/model/crypto/NetworkType;

    move-result-object v0

    iget-object v1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$startChooseNetworkDialog$1;->$side:Lcom/smedialink/model/wallet/swap/SwapSide;

    invoke-interface {p1, v0, v1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessView;->setupNetworkType(Lcom/smedialink/storage/domain/model/crypto/NetworkType;Lcom/smedialink/model/wallet/swap/SwapSide;)V

    .line 100
    iget-object p1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$startChooseNetworkDialog$1;->this$0:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;

    invoke-static {p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->access$resetLoadedInformation(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    .line 101
    iget-object p1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$startChooseNetworkDialog$1;->this$0:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;

    invoke-static {p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->access$resolveSwapProtocol(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    .line 102
    iget-object p1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$startChooseNetworkDialog$1;->this$0:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;

    invoke-static {p1}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->access$setupSwapInformation(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;)V

    .line 103
    iget-object p1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$startChooseNetworkDialog$1;->this$0:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;

    sget-object v0, Lcom/smedialink/model/wallet/crypto/swap/SwapUiState$Idle;->INSTANCE:Lcom/smedialink/model/wallet/crypto/swap/SwapUiState$Idle;

    invoke-static {p1, v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->access$resetStateTo(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/model/wallet/crypto/swap/SwapUiState;)V

    .line 104
    iget-object p1, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$startChooseNetworkDialog$1;->this$0:Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;

    iget-object v0, p0, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter$startChooseNetworkDialog$1;->$side:Lcom/smedialink/model/wallet/swap/SwapSide;

    invoke-static {p1, v0}, Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;->access$loadAvailableSwapTokens(Lcom/smedialink/ui/wallet/swap/process/WalletSwapProcessPresenter;Lcom/smedialink/model/wallet/swap/SwapSide;)V

    return-void
.end method
