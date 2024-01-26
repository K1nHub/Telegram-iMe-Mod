.class public Lcom/iMe/ui/wallet/send/WalletSendView$$State$UpdateFeeViewCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletSendView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/send/WalletSendView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdateFeeViewCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/send/WalletSendView;",
        ">;"
    }
.end annotation


# instance fields
.field public final feeType:Lcom/iMe/model/wallet/crypto/send/fee/FeeType;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/send/WalletSendView$$State;Lcom/iMe/model/wallet/crypto/send/fee/FeeType;)V
    .locals 1

    .line 746
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string/jumbo v0, "updateFeeView"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 748
    iput-object p2, p0, Lcom/iMe/ui/wallet/send/WalletSendView$$State$UpdateFeeViewCommand;->feeType:Lcom/iMe/model/wallet/crypto/send/fee/FeeType;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/send/WalletSendView;)V
    .locals 1

    .line 753
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendView$$State$UpdateFeeViewCommand;->feeType:Lcom/iMe/model/wallet/crypto/send/fee/FeeType;

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/send/WalletSendView;->updateFeeView(Lcom/iMe/model/wallet/crypto/send/fee/FeeType;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 742
    check-cast p1, Lcom/iMe/ui/wallet/send/WalletSendView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/send/WalletSendView$$State$UpdateFeeViewCommand;->apply(Lcom/iMe/ui/wallet/send/WalletSendView;)V

    return-void
.end method
