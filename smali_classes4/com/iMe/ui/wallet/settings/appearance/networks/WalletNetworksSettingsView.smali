.class public interface abstract Lcom/iMe/ui/wallet/settings/appearance/networks/WalletNetworksSettingsView;
.super Ljava/lang/Object;
.source "WalletNetworksSettingsView.kt"

# interfaces
.implements Lcom/iMe/ui/base/mvp/base/BaseView;


# annotations
.annotation runtime Lmoxy/viewstate/strategy/alias/AddToEndSingle;
.end annotation


# virtual methods
.method public abstract renderEmptySearchResults()V
.end method

.method public abstract renderItems(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/settings/NetworkSettingsItem;",
            ">;)V"
        }
    .end annotation
.end method
