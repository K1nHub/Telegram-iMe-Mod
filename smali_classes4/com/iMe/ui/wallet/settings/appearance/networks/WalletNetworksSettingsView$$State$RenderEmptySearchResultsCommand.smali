.class public Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsView$$State$RenderEmptySearchResultsCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletNetworksSettingsView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RenderEmptySearchResultsCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsView$$State;)V
    .locals 1

    .line 164
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string/jumbo v0, "renderEmptySearchResults"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsView;)V
    .locals 0

    .line 169
    invoke-interface {p1}, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsView;->renderEmptySearchResults()V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 162
    check-cast p1, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsView$$State$RenderEmptySearchResultsCommand;->apply(Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsView;)V

    return-void
.end method
