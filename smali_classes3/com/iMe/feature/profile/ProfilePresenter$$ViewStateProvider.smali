.class public Lcom/iMe/feature/profile/ProfilePresenter$$ViewStateProvider;
.super Lmoxy/ViewStateProvider;
.source "ProfilePresenter$$ViewStateProvider.java"


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
    new-instance v0, Lcom/iMe/feature/profile/ProfileView$$State;

    invoke-direct {v0}, Lcom/iMe/feature/profile/ProfileView$$State;-><init>()V

    return-object v0
.end method
