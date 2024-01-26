.class public Lcom/iMe/ui/wallet/send/WalletSendView$$State$RenderSelectedTokenCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "WalletSendView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/send/WalletSendView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RenderSelectedTokenCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/send/WalletSendView;",
        ">;"
    }
.end annotation


# instance fields
.field public final decimals:I

.field public final insertedAmountInDollarsText:Ljava/lang/String;

.field public final tokenBalanceText:Ljava/lang/String;

.field public final tokenLogoUrl:Ljava/lang/String;

.field public final tokenText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/send/WalletSendView$$State;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 683
    const-class p1, Lmoxy/viewstate/strategy/AddToEndSingleStrategy;

    const-string/jumbo v0, "renderSelectedToken"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 685
    iput-object p2, p0, Lcom/iMe/ui/wallet/send/WalletSendView$$State$RenderSelectedTokenCommand;->tokenText:Ljava/lang/String;

    .line 686
    iput-object p3, p0, Lcom/iMe/ui/wallet/send/WalletSendView$$State$RenderSelectedTokenCommand;->tokenLogoUrl:Ljava/lang/String;

    .line 687
    iput p4, p0, Lcom/iMe/ui/wallet/send/WalletSendView$$State$RenderSelectedTokenCommand;->decimals:I

    .line 688
    iput-object p5, p0, Lcom/iMe/ui/wallet/send/WalletSendView$$State$RenderSelectedTokenCommand;->tokenBalanceText:Ljava/lang/String;

    .line 689
    iput-object p6, p0, Lcom/iMe/ui/wallet/send/WalletSendView$$State$RenderSelectedTokenCommand;->insertedAmountInDollarsText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/send/WalletSendView;)V
    .locals 6

    .line 694
    iget-object v1, p0, Lcom/iMe/ui/wallet/send/WalletSendView$$State$RenderSelectedTokenCommand;->tokenText:Ljava/lang/String;

    iget-object v2, p0, Lcom/iMe/ui/wallet/send/WalletSendView$$State$RenderSelectedTokenCommand;->tokenLogoUrl:Ljava/lang/String;

    iget v3, p0, Lcom/iMe/ui/wallet/send/WalletSendView$$State$RenderSelectedTokenCommand;->decimals:I

    iget-object v4, p0, Lcom/iMe/ui/wallet/send/WalletSendView$$State$RenderSelectedTokenCommand;->tokenBalanceText:Ljava/lang/String;

    iget-object v5, p0, Lcom/iMe/ui/wallet/send/WalletSendView$$State$RenderSelectedTokenCommand;->insertedAmountInDollarsText:Ljava/lang/String;

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/iMe/ui/wallet/send/WalletSendView;->renderSelectedToken(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 670
    check-cast p1, Lcom/iMe/ui/wallet/send/WalletSendView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/send/WalletSendView$$State$RenderSelectedTokenCommand;->apply(Lcom/iMe/ui/wallet/send/WalletSendView;)V

    return-void
.end method
