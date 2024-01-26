.class public Lcom/iMe/ui/wallet/send/WalletSendView$$State$RenderInsertedAmountInFiatCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletSendView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/send/WalletSendView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RenderInsertedAmountInFiatCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/send/WalletSendView;",
        ">;"
    }
.end annotation


# instance fields
.field public final insertedAmountInFiat:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/send/WalletSendView$$State;Ljava/lang/String;)V
    .locals 1

    .line 702
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string/jumbo v0, "renderInsertedAmountInFiat"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 704
    iput-object p2, p0, Lcom/iMe/ui/wallet/send/WalletSendView$$State$RenderInsertedAmountInFiatCommand;->insertedAmountInFiat:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/send/WalletSendView;)V
    .locals 1

    .line 709
    iget-object v0, p0, Lcom/iMe/ui/wallet/send/WalletSendView$$State$RenderInsertedAmountInFiatCommand;->insertedAmountInFiat:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/send/WalletSendView;->renderInsertedAmountInFiat(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 698
    check-cast p1, Lcom/iMe/ui/wallet/send/WalletSendView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/send/WalletSendView$$State$RenderInsertedAmountInFiatCommand;->apply(Lcom/iMe/ui/wallet/send/WalletSendView;)V

    return-void
.end method
