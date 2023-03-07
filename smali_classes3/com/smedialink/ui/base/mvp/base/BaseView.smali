.class public interface abstract Lcom/smedialink/ui/base/mvp/base/BaseView;
.super Ljava/lang/Object;
.source "BaseView.kt"

# interfaces
.implements Lmoxy/MvpView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/base/mvp/base/BaseView$DefaultImpls;
    }
.end annotation

.annotation runtime Lmoxy/viewstate/strategy/alias/OneExecution;
.end annotation


# virtual methods
.method public abstract finishScreen()V
.end method

.method public abstract showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V
.end method

.method public abstract showToast(Ljava/lang/String;)V
.end method
