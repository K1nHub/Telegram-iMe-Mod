.class public final Lcom/smedialink/ui/base/mvp/view/ICustomMvpView$DefaultImpls;
.super Ljava/lang/Object;
.source "ICustomMvpView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smedialink/ui/base/mvp/view/ICustomMvpView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static getKoin(Lcom/smedialink/ui/base/mvp/view/ICustomMvpView;)Lorg/koin/core/Koin;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/smedialink/ui/base/mvp/view/ICustomMvpView<",
            "TT;>;)",
            "Lorg/koin/core/Koin;"
        }
    .end annotation

    const-string v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-static {}, Lorg/koin/java/KoinJavaComponent;->getKoin()Lorg/koin/core/Koin;

    move-result-object p0

    return-object p0
.end method

.method public static getMvpDelegate(Lcom/smedialink/ui/base/mvp/view/ICustomMvpView;)Lmoxy/MvpDelegate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/smedialink/ui/base/mvp/view/ICustomMvpView<",
            "TT;>;)",
            "Lmoxy/MvpDelegate<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-interface {p0}, Lcom/smedialink/ui/base/mvp/view/ICustomMvpView;->getMMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object p0

    return-object p0
.end method

.method public static onCreateMvpView(Lcom/smedialink/ui/base/mvp/view/ICustomMvpView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/smedialink/ui/base/mvp/view/ICustomMvpView<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-interface {p0}, Lcom/smedialink/ui/base/mvp/view/ICustomMvpView;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lmoxy/MvpDelegate;->onCreate()V

    .line 18
    :goto_0
    invoke-interface {p0}, Lcom/smedialink/ui/base/mvp/view/ICustomMvpView;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lmoxy/MvpDelegate;->onAttach()V

    :goto_1
    return-void
.end method

.method public static onDestroyMvpView(Lcom/smedialink/ui/base/mvp/view/ICustomMvpView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/smedialink/ui/base/mvp/view/ICustomMvpView<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-interface {p0}, Lcom/smedialink/ui/base/mvp/view/ICustomMvpView;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lmoxy/MvpDelegate;->onDetach()V

    .line 23
    :goto_0
    invoke-interface {p0}, Lcom/smedialink/ui/base/mvp/view/ICustomMvpView;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lmoxy/MvpDelegate;->onDestroyView()V

    .line 24
    :goto_1
    invoke-interface {p0}, Lcom/smedialink/ui/base/mvp/view/ICustomMvpView;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lmoxy/MvpDelegate;->onDestroy()V

    :goto_2
    return-void
.end method
