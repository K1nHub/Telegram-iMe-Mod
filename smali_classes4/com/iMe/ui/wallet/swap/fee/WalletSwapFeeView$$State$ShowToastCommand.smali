.class public Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeView$$State$ShowToastCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletSwapFeeView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowToastCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeView;",
        ">;"
    }
.end annotation


# instance fields
.field public final text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeView$$State;Ljava/lang/String;)V
    .locals 1

    .line 143
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string/jumbo v0, "showToast"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 145
    iput-object p2, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeView$$State$ShowToastCommand;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeView;)V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeView$$State$ShowToastCommand;->text:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/iMe/ui/base/mvp/base/BaseView;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 139
    check-cast p1, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeView$$State$ShowToastCommand;->apply(Lcom/iMe/ui/wallet/swap/fee/WalletSwapFeeView;)V

    return-void
.end method
