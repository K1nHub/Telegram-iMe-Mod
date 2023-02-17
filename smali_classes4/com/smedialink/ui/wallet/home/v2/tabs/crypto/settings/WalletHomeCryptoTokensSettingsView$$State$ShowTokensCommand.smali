.class public Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsView$$State$ShowTokensCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletHomeCryptoTokensSettingsView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowTokensCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final tokens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/smedialink/model/wallet/select/SelectableToken;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsView$$State;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/smedialink/model/wallet/select/SelectableToken;",
            ">;)V"
        }
    .end annotation

    .line 101
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string v0, "showTokens"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 103
    iput-object p2, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsView$$State$ShowTokensCommand;->tokens:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public apply(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsView;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsView$$State$ShowTokensCommand;->tokens:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsView;->showTokens(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 97
    check-cast p1, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsView;

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsView$$State$ShowTokensCommand;->apply(Lcom/smedialink/ui/wallet/home/v2/tabs/crypto/settings/WalletHomeCryptoTokensSettingsView;)V

    return-void
.end method
