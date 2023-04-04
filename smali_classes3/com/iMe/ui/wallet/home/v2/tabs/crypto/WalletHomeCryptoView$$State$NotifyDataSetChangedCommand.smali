.class public Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView$$State$NotifyDataSetChangedCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletHomeCryptoView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NotifyDataSetChangedCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView$$State;)V
    .locals 1

    .line 693
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "notifyDataSetChanged"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView;)V
    .locals 0

    .line 698
    invoke-interface {p1}, Lcom/iMe/ui/base/mvp/AdapterNotifyView;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 691
    check-cast p1, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView$$State$NotifyDataSetChangedCommand;->apply(Lcom/iMe/ui/wallet/home/v2/tabs/crypto/WalletHomeCryptoView;)V

    return-void
.end method
