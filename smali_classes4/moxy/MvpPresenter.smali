.class public abstract Lmoxy/MvpPresenter;
.super Ljava/lang/Object;
.source "MvpPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmoxy/MvpPresenter$Binder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<View::",
        "Lmoxy/MvpView;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation build Lmoxy/InjectViewState;
.end annotation


# instance fields
.field coroutineScope:Lmoxy/OnDestroyListener;

.field private isFirstLaunch:Z

.field private presenterClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lmoxy/MvpPresenter;",
            ">;"
        }
    .end annotation
.end field

.field private tag:Ljava/lang/String;

.field private viewState:Lmoxy/viewstate/MvpViewState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmoxy/viewstate/MvpViewState<",
            "TView;>;"
        }
    .end annotation
.end field

.field private viewStateAsView:Lmoxy/MvpView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TView;"
        }
    .end annotation
.end field

.field private views:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TView;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lmoxy/MvpPresenter;->isFirstLaunch:Z

    .line 27
    invoke-static {p0}, Lmoxy/MvpPresenter$Binder;->bind(Lmoxy/MvpPresenter;)V

    .line 29
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lmoxy/MvpPresenter;->views:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$002(Lmoxy/MvpPresenter;Lmoxy/MvpView;)Lmoxy/MvpView;
    .locals 0

    .line 10
    iput-object p1, p0, Lmoxy/MvpPresenter;->viewStateAsView:Lmoxy/MvpView;

    return-object p1
.end method

.method static synthetic access$102(Lmoxy/MvpPresenter;Lmoxy/viewstate/MvpViewState;)Lmoxy/viewstate/MvpViewState;
    .locals 0

    .line 10
    iput-object p1, p0, Lmoxy/MvpPresenter;->viewState:Lmoxy/viewstate/MvpViewState;

    return-object p1
.end method


# virtual methods
.method public attachView(Lmoxy/MvpView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TView;)V"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lmoxy/MvpPresenter;->viewState:Lmoxy/viewstate/MvpViewState;

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0, p1}, Lmoxy/viewstate/MvpViewState;->attachView(Lmoxy/MvpView;)V

    goto :goto_0

    .line 43
    :cond_0
    iget-object v0, p0, Lmoxy/MvpPresenter;->views:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    :goto_0
    iget-boolean p1, p0, Lmoxy/MvpPresenter;->isFirstLaunch:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 46
    iput-boolean p1, p0, Lmoxy/MvpPresenter;->isFirstLaunch:Z

    .line 48
    invoke-virtual {p0}, Lmoxy/MvpPresenter;->onFirstViewAttach()V

    :cond_1
    return-void
.end method

.method public destroyView(Lmoxy/MvpView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TView;)V"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lmoxy/MvpPresenter;->viewState:Lmoxy/viewstate/MvpViewState;

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0, p1}, Lmoxy/viewstate/MvpViewState;->destroyView(Lmoxy/MvpView;)V

    :cond_0
    return-void
.end method

.method public detachView(Lmoxy/MvpView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TView;)V"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lmoxy/MvpPresenter;->viewState:Lmoxy/viewstate/MvpViewState;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0, p1}, Lmoxy/viewstate/MvpViewState;->detachView(Lmoxy/MvpView;)V

    goto :goto_0

    .line 73
    :cond_0
    iget-object v0, p0, Lmoxy/MvpPresenter;->views:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public getAttachedViews()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TView;>;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lmoxy/MvpPresenter;->viewState:Lmoxy/viewstate/MvpViewState;

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Lmoxy/viewstate/MvpViewState;->getViews()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 92
    :cond_0
    iget-object v0, p0, Lmoxy/MvpPresenter;->views:Ljava/util/Set;

    return-object v0
.end method

.method getPresenterClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lmoxy/MvpPresenter;",
            ">;"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lmoxy/MvpPresenter;->presenterClass:Ljava/lang/Class;

    return-object v0
.end method

.method getTag()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lmoxy/MvpPresenter;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getViewState()Lmoxy/MvpView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TView;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lmoxy/MvpPresenter;->viewStateAsView:Lmoxy/MvpView;

    return-object v0
.end method

.method public isInRestoreState(Lmoxy/MvpView;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TView;)Z"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lmoxy/MvpPresenter;->viewState:Lmoxy/viewstate/MvpViewState;

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0, p1}, Lmoxy/viewstate/MvpViewState;->isInRestoreState(Lmoxy/MvpView;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method protected onFirstViewAttach()V
    .locals 0

    return-void
.end method

.method setPresenterClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lmoxy/MvpPresenter;",
            ">;)V"
        }
    .end annotation

    .line 142
    iput-object p1, p0, Lmoxy/MvpPresenter;->presenterClass:Ljava/lang/Class;

    return-void
.end method

.method setTag(Ljava/lang/String;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lmoxy/MvpPresenter;->tag:Ljava/lang/String;

    return-void
.end method

.method public setViewState(Lmoxy/viewstate/MvpViewState;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmoxy/viewstate/MvpViewState<",
            "TView;>;)V"
        }
    .end annotation

    .line 110
    move-object v0, p1

    check-cast v0, Lmoxy/MvpView;

    iput-object v0, p0, Lmoxy/MvpPresenter;->viewStateAsView:Lmoxy/MvpView;

    .line 111
    iput-object p1, p0, Lmoxy/MvpPresenter;->viewState:Lmoxy/viewstate/MvpViewState;

    return-void
.end method
