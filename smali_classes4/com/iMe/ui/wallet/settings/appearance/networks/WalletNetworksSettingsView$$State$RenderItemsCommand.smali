.class public Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsView$$State$RenderItemsCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletNetworksSettingsView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RenderItemsCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/settings/NetworkSettingsItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsView$$State;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/settings/NetworkSettingsItem;",
            ">;)V"
        }
    .end annotation

    .line 151
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string/jumbo v0, "renderItems"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 153
    iput-object p2, p0, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsView$$State$RenderItemsCommand;->items:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsView;)V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsView$$State$RenderItemsCommand;->items:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsView;->renderItems(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 147
    check-cast p1, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsView$$State$RenderItemsCommand;->apply(Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsView;)V

    return-void
.end method
