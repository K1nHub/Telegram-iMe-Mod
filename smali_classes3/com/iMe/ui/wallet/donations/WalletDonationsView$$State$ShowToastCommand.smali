.class public Lcom/iMe/ui/wallet/donations/WalletDonationsView$$State$ShowToastCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletDonationsView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/donations/WalletDonationsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowToastCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/donations/WalletDonationsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/donations/WalletDonationsView$$State;Ljava/lang/String;)V
    .locals 1

    .line 226
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "showToast"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 228
    iput-object p2, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsView$$State$ShowToastCommand;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/donations/WalletDonationsView;)V
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/iMe/ui/wallet/donations/WalletDonationsView$$State$ShowToastCommand;->text:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 222
    check-cast p1, Lcom/iMe/ui/wallet/donations/WalletDonationsView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/donations/WalletDonationsView$$State$ShowToastCommand;->apply(Lcom/iMe/ui/wallet/donations/WalletDonationsView;)V

    return-void
.end method
