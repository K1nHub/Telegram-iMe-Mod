.class public abstract Lcom/iMe/ui/base/mvp/MvpAlertDialog;
.super Lorg/telegram/ui/ActionBar/AlertDialog;
.source "MvpAlertDialog.kt"

# interfaces
.implements Lmoxy/MvpDelegateHolder;
.implements Lorg/koin/core/component/KoinComponent;
.implements Lcom/iMe/ui/base/mvp/base/BaseView;


# instance fields
.field private final mvpBaseDelegate:Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate<",
            "Lcom/iMe/ui/base/mvp/MvpAlertDialog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 20
    new-instance p1, Lcom/iMe/ui/base/mvp/MvpAlertDialog$mvpBaseDelegate$1;

    invoke-direct {p1, p0}, Lcom/iMe/ui/base/mvp/MvpAlertDialog$mvpBaseDelegate$1;-><init>(Lcom/iMe/ui/base/mvp/MvpAlertDialog;)V

    iput-object p1, p0, Lcom/iMe/ui/base/mvp/MvpAlertDialog;->mvpBaseDelegate:Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;

    return-void
.end method


# virtual methods
.method public finishScreen()V
    .locals 0

    .line 59
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/AlertDialog;->dismiss()V

    return-void
.end method

.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 15
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public final getMvpBaseDelegate()Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate<",
            "Lcom/iMe/ui/base/mvp/MvpAlertDialog;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/iMe/ui/base/mvp/MvpAlertDialog;->mvpBaseDelegate:Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;

    return-object v0
.end method

.method public getMvpDelegate()Lmoxy/MvpDelegate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmoxy/MvpDelegate<",
            "Lcom/iMe/ui/base/mvp/MvpAlertDialog;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/iMe/ui/base/mvp/MvpAlertDialog;->mvpBaseDelegate:Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;

    invoke-virtual {v0}, Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 40
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0, p1}, Lcom/iMe/ui/base/mvp/MvpAlertDialog;->onCreateView(Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCustomView(Landroid/view/View;)V

    .line 42
    iget-object v0, p0, Lcom/iMe/ui/base/mvp/MvpAlertDialog;->mvpBaseDelegate:Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;

    invoke-virtual {v0, p1}, Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public abstract onCreateView(Landroid/os/Bundle;)Landroid/view/View;
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 46
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    .line 47
    iget-object v0, p0, Lcom/iMe/ui/base/mvp/MvpAlertDialog;->mvpBaseDelegate:Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;

    invoke-virtual {v0}, Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;->onDetachedFromWindow()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 37
    iget-object v0, p0, Lcom/iMe/ui/base/mvp/MvpAlertDialog;->mvpBaseDelegate:Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;

    invoke-super {p0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "super.onSaveInstanceState()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;->onSaveInstanceState(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public synthetic removeSelfFromStackImmediately()V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/base/mvp/base/BaseView$-CC;->$default$removeSelfFromStackImmediately(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    return-void
.end method

.method public synthetic showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/ui/base/mvp/base/BaseView$-CC;->$default$showErrorToast(Lcom/iMe/ui/base/mvp/base/BaseView;Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    return-void
.end method

.method public showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/iMe/ui/base/mvp/MvpAlertDialog;->mvpBaseDelegate:Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;->showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/iMe/ui/base/mvp/MvpAlertDialog;->mvpBaseDelegate:Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;

    invoke-virtual {v0, p1}, Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;->showToast(Ljava/lang/String;)V

    return-void
.end method
