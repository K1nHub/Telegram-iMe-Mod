.class public Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsView$$State$SetupSettingsItemsCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletAppearanceSettingsView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetupSettingsItemsCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/settings/InterfaceSettingItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsView$$State;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/settings/InterfaceSettingItem;",
            ">;)V"
        }
    .end annotation

    .line 119
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string/jumbo v0, "setupSettingsItems"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 121
    iput-object p2, p0, Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsView$$State$SetupSettingsItemsCommand;->items:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsView;)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsView$$State$SetupSettingsItemsCommand;->items:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsView;->setupSettingsItems(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 115
    check-cast p1, Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsView$$State$SetupSettingsItemsCommand;->apply(Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsView;)V

    return-void
.end method
