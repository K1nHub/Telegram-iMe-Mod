.class public interface abstract Lcom/iMe/ui/base/mvp/base/BaseView;
.super Ljava/lang/Object;
.source "BaseView.kt"

# interfaces
.implements Lmoxy/MvpView;


# annotations
.annotation runtime Lmoxy/viewstate/strategy/alias/OneExecution;
.end annotation


# virtual methods
.method public abstract finishScreen()V
.end method

.method public abstract showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/iMe/storage/domain/model/Result$Error<",
            "+TT;>;",
            "Lcom/iMe/storage/domain/utils/system/ResourceManager;",
            ")V"
        }
    .end annotation
.end method

.method public abstract showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V
.end method

.method public abstract showToast(Ljava/lang/String;)V
.end method
