.class public Lcom/iMe/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingView$$State$RedirectAndShowResultCommand;
.super Lmoxy/viewstate/ViewCommand;
.source "SimplexWebViewProcessingView$$State.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iMe/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RedirectAndShowResultCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmoxy/viewstate/ViewCommand<",
        "Lcom/iMe/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingView;",
        ">;"
    }
.end annotation


# instance fields
.field public final result:Lcom/iMe/model/wallet/crypto/simplex/PaymentResult;


# direct methods
.method constructor <init>(Lcom/iMe/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingView$$State;Lcom/iMe/model/wallet/crypto/simplex/PaymentResult;)V
    .locals 1

    .line 117
    const-class p1, Lmoxy/viewstate/strategy/OneExecutionStateStrategy;

    const-string v0, "redirectAndShowResult"

    invoke-direct {p0, v0, p1}, Lmoxy/viewstate/ViewCommand;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 119
    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingView$$State$RedirectAndShowResultCommand;->result:Lcom/iMe/model/wallet/crypto/simplex/PaymentResult;

    return-void
.end method


# virtual methods
.method public apply(Lcom/iMe/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingView;)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingView$$State$RedirectAndShowResultCommand;->result:Lcom/iMe/model/wallet/crypto/simplex/PaymentResult;

    invoke-interface {p1, v0}, Lcom/iMe/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingView;->redirectAndShowResult(Lcom/iMe/model/wallet/crypto/simplex/PaymentResult;)V

    return-void
.end method

.method public bridge synthetic apply(Lmoxy/MvpView;)V
    .locals 0

    .line 113
    check-cast p1, Lcom/iMe/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingView;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingView$$State$RedirectAndShowResultCommand;->apply(Lcom/iMe/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingView;)V

    return-void
.end method