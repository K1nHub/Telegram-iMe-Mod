.class public Lcom/iMe/ui/base/mvp/base/BasePresenter$$ViewStateProvider;
.super Lmoxy/ViewStateProvider;
.source "BasePresenter$$ViewStateProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
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

    .line 12
    new-instance v0, Lmoxy/MvpView$$State;

    invoke-direct {v0}, Lmoxy/MvpView$$State;-><init>()V

    return-object v0
.end method
