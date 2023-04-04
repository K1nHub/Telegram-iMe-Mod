.class public final synthetic Lcom/iMe/ui/base/mvp/view/ICustomMvpView$-CC;
.super Ljava/lang/Object;
.source "ICustomMvpView.kt"


# direct methods
.method public static $default$getKoin(Lcom/iMe/ui/base/mvp/view/ICustomMvpView;)Lorg/koin/core/Koin;
    .locals 1
    .param p0, "_this"    # Lcom/iMe/ui/base/mvp/view/ICustomMvpView;

    .line 27
    invoke-static {}, Lorg/koin/java/KoinJavaComponent;->getKoin()Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public static $default$getMvpDelegate(Lcom/iMe/ui/base/mvp/view/ICustomMvpView;)Lmoxy/MvpDelegate;
    .locals 1
    .param p0, "_this"    # Lcom/iMe/ui/base/mvp/view/ICustomMvpView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmoxy/MvpDelegate<",
            "TT;>;"
        }
    .end annotation

    .line 14
    invoke-interface {p0}, Lcom/iMe/ui/base/mvp/view/ICustomMvpView;->getMMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v0

    return-object v0
.end method

.method public static $default$onCreateMvpView(Lcom/iMe/ui/base/mvp/view/ICustomMvpView;)V
    .locals 1
    .param p0, "_this"    # Lcom/iMe/ui/base/mvp/view/ICustomMvpView;

    .line 17
    invoke-interface {p0}, Lcom/iMe/ui/base/mvp/view/ICustomMvpView;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmoxy/MvpDelegate;->onCreate()V

    .line 18
    :cond_0
    invoke-interface {p0}, Lcom/iMe/ui/base/mvp/view/ICustomMvpView;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lmoxy/MvpDelegate;->onAttach()V

    :cond_1
    return-void
.end method

.method public static $default$onDestroyMvpView(Lcom/iMe/ui/base/mvp/view/ICustomMvpView;)V
    .locals 1
    .param p0, "_this"    # Lcom/iMe/ui/base/mvp/view/ICustomMvpView;

    .line 22
    invoke-interface {p0}, Lcom/iMe/ui/base/mvp/view/ICustomMvpView;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmoxy/MvpDelegate;->onDetach()V

    .line 23
    :cond_0
    invoke-interface {p0}, Lcom/iMe/ui/base/mvp/view/ICustomMvpView;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lmoxy/MvpDelegate;->onDestroyView()V

    .line 24
    :cond_1
    invoke-interface {p0}, Lcom/iMe/ui/base/mvp/view/ICustomMvpView;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lmoxy/MvpDelegate;->onDestroy()V

    :cond_2
    return-void
.end method
