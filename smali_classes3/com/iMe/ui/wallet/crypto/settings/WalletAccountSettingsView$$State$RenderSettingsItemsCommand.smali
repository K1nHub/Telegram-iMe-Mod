.class public Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsView$$State$RenderSettingsItemsCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletAccountSettingsView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RenderSettingsItemsCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsView$$State;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem;",
            ">;)V"
        }
    .end annotation

    .line 215
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "renderSettingsItems"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 217
    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsView$$State$RenderSettingsItemsCommand;->items:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsView;)V
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsView$$State$RenderSettingsItemsCommand;->items:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsView;->renderSettingsItems(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 211
    check-cast p1, Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsView$$State$RenderSettingsItemsCommand;->apply(Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsView;)V

    return-void
.end method
