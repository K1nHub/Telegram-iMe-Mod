.class public Lcom/iMe/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingPresenter$$ViewStateProvider;
.super Lmoxy/ViewStateProvider;
.source "SimplexWebViewProcessingPresenter$$ViewStateProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lmoxy/ViewStateProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getViewState()Lmoxy/viewstate/MvpViewState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmoxy/viewstate/MvpViewState<",
            "+",
            "Lmoxy/MvpView;",
            ">;"
        }
    .end annotation

    .line 11
    new-instance v0, Lcom/iMe/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingView$$State;

    invoke-direct {v0}, Lcom/iMe/ui/wallet/crypto/buy/processing/SimplexWebViewProcessingView$$State;-><init>()V

    return-object v0
.end method