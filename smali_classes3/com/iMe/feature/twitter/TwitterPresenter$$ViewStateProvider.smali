.class public Lcom/iMe/feature/twitter/TwitterPresenter$$ViewStateProvider;
.super Lmoxy/ViewStateProvider;
.source "TwitterPresenter$$ViewStateProvider.java"


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
    new-instance v0, Lcom/iMe/feature/twitter/TwitterView$$State;

    invoke-direct {v0}, Lcom/iMe/feature/twitter/TwitterView$$State;-><init>()V

    return-object v0
.end method
