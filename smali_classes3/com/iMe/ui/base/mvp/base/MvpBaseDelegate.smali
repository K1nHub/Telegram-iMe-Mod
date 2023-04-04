.class public abstract Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;
.super Ljava/lang/Object;
.source "MvpBaseDelegate.kt"

# interfaces
.implements Lcom/iMe/ui/base/mvp/base/BaseDelegate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/iMe/ui/base/mvp/base/BaseDelegate<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mMvpDelegate:Lmoxy/MvpDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmoxy/MvpDelegate<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final progressDialog$delegate:Lkotlin/Lazy;

.field private final resettableLazyManager:Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;

.field private final viewHandler:Landroid/os/Handler;

.field private visibleDialog:Landroid/app/Dialog;


# direct methods
.method public static synthetic $r8$lambda$8mGAkL6RCUVkUiNuyf2WsoW_7as(Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;ZZLio/reactivex/disposables/Disposable;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;->showLoadingDialog$lambda$2(Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;ZZLio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rQ74wxxcEbk0bJpx1vCaUrtelVY(Lio/reactivex/disposables/Disposable;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;->showLoadingDialog$lambda$2$lambda$1$lambda$0(Lio/reactivex/disposables/Disposable;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;

    invoke-direct {v0}, Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;-><init>()V

    iput-object v0, p0, Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;->resettableLazyManager:Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;

    .line 21
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;->viewHandler:Landroid/os/Handler;

    .line 26
    new-instance v0, Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate$progressDialog$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate$progressDialog$2;-><init>(Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;->progressDialog$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getProgressDialog()Lorg/telegram/ui/ActionBar/AlertDialog;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;->progressDialog$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/AlertDialog;

    return-object v0
.end method

.method private static final showLoadingDialog$lambda$2(Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;ZZLio/reactivex/disposables/Disposable;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-interface {p0}, Lcom/iMe/ui/base/mvp/base/BaseDelegate;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_3

    .line 101
    :try_start_0
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;->getProgressDialog()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p0

    if-eqz p1, :cond_2

    .line 103
    invoke-virtual {p0, p2}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanCancel(Z)V

    .line 104
    new-instance p1, Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate$$ExternalSyntheticLambda0;

    invoke-direct {p1, p3}, Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate$$ExternalSyntheticLambda0;-><init>(Lio/reactivex/disposables/Disposable;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 105
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    goto :goto_1

    .line 107
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 111
    invoke-static {p0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private static final showLoadingDialog$lambda$2$lambda$1$lambda$0(Lio/reactivex/disposables/Disposable;Landroid/content/DialogInterface;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 104
    invoke-interface {p0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getMvpDelegate()Lmoxy/MvpDelegate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmoxy/MvpDelegate<",
            "TT;>;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;->mMvpDelegate:Lmoxy/MvpDelegate;

    if-eqz v0, :cond_0

    return-object v0

    .line 89
    :cond_0
    invoke-interface {p0}, Lcom/iMe/ui/base/mvp/base/BaseDelegate;->createDelegate()Lmoxy/MvpDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;->mMvpDelegate:Lmoxy/MvpDelegate;

    return-object v0
.end method

.method public getResettableLazyManager()Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;->resettableLazyManager:Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;

    return-object v0
.end method

.method public getViewHandler()Landroid/os/Handler;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;->viewHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 48
    invoke-virtual {p0}, Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmoxy/MvpDelegate;->onCreate()V

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lmoxy/MvpDelegate;->onAttach()V

    .line 50
    :cond_1
    invoke-virtual {p0, p1}, Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;->onViewReady(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmoxy/MvpDelegate;->onDestroyView()V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;->visibleDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 68
    :cond_0
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;->getProgressDialog()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 69
    invoke-virtual {p0}, Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;->getViewHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 70
    invoke-virtual {p0}, Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;->getResettableLazyManager()Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;->destroy()V

    .line 72
    :try_start_0
    invoke-virtual {p0}, Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lmoxy/MvpDelegate;->onDetach()V

    .line 73
    :cond_1
    invoke-virtual {p0}, Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lmoxy/MvpDelegate;->onDestroyView()V

    .line 74
    :cond_2
    invoke-virtual {p0}, Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lmoxy/MvpDelegate;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 76
    invoke-static {v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;->getProgressDialog()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    .line 55
    invoke-virtual {p0}, Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmoxy/MvpDelegate;->onDetach()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 59
    invoke-virtual {p0}, Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmoxy/MvpDelegate;->onAttach()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lmoxy/MvpDelegate;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lmoxy/MvpDelegate;->onDetach()V

    :cond_1
    return-object p1
.end method

.method public onViewReady(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 1

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;->visibleDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 36
    :cond_0
    iput-object p1, p0, Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;->visibleDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_1

    .line 37
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 38
    :cond_1
    iget-object p1, p0, Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;->visibleDialog:Landroid/app/Dialog;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1
.end method

.method public showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 98
    new-instance v0, Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;ZZLio/reactivex/disposables/Disposable;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/iMe/utils/extentions/common/ContextExtKt;->longToast(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
