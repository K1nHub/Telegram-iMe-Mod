.class public abstract Lcom/iMe/ui/base/mvp/MvpBottomSheet;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "MvpBottomSheet.kt"

# interfaces
.implements Lmoxy/MvpDelegateHolder;
.implements Lorg/koin/core/component/KoinComponent;
.implements Lcom/iMe/ui/base/mvp/base/BaseView;


# instance fields
.field private final mvpBaseDelegate:Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate<",
            "Lcom/iMe/ui/base/mvp/MvpBottomSheet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;Z)V

    .line 22
    new-instance p1, Lcom/iMe/ui/base/mvp/MvpBottomSheet$mvpBaseDelegate$1;

    invoke-direct {p1, p0}, Lcom/iMe/ui/base/mvp/MvpBottomSheet$mvpBaseDelegate$1;-><init>(Lcom/iMe/ui/base/mvp/MvpBottomSheet;)V

    iput-object p1, p0, Lcom/iMe/ui/base/mvp/MvpBottomSheet;->mvpBaseDelegate:Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;

    return-void
.end method


# virtual methods
.method public finishScreen()V
    .locals 0

    .line 69
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 16
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
            "Lcom/iMe/ui/base/mvp/MvpBottomSheet;",
            ">;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/iMe/ui/base/mvp/MvpBottomSheet;->mvpBaseDelegate:Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;

    return-object v0
.end method

.method public getMvpDelegate()Lmoxy/MvpDelegate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmoxy/MvpDelegate<",
            "Lcom/iMe/ui/base/mvp/MvpBottomSheet;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/iMe/ui/base/mvp/MvpBottomSheet;->mvpBaseDelegate:Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;

    invoke-virtual {v0}, Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 50
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->onCreate(Landroid/os/Bundle;)V

    .line 51
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/base/mvp/MvpBottomSheet;->onCreateView(Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 52
    iget-object v0, p0, Lcom/iMe/ui/base/mvp/MvpBottomSheet;->mvpBaseDelegate:Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;

    invoke-virtual {v0, p1}, Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public abstract onCreateView(Landroid/os/Bundle;)Landroid/view/View;
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 56
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    .line 57
    iget-object v0, p0, Lcom/iMe/ui/base/mvp/MvpBottomSheet;->mvpBaseDelegate:Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;

    invoke-virtual {v0}, Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;->onDetachedFromWindow()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/iMe/ui/base/mvp/MvpBottomSheet;->mvpBaseDelegate:Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;

    invoke-super {p0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "super.onSaveInstanceState()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;->onSaveInstanceState(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 1

    const-string v0, "dialog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/iMe/ui/base/mvp/MvpBottomSheet;->mvpBaseDelegate:Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;

    invoke-virtual {v0, p1}, Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/iMe/ui/base/mvp/MvpBottomSheet;->mvpBaseDelegate:Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;->showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/iMe/ui/base/mvp/MvpBottomSheet;->mvpBaseDelegate:Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;

    invoke-virtual {v0, p1}, Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;->showToast(Ljava/lang/String;)V

    return-void
.end method
