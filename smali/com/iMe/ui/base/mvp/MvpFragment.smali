.class public abstract Lcom/iMe/ui/base/mvp/MvpFragment;
.super Lorg/telegram/ui/ActionBar/BaseFragment;
.source "MvpFragment.kt"

# interfaces
.implements Lmoxy/MvpDelegateHolder;
.implements Lorg/koin/core/component/KoinComponent;
.implements Lcom/iMe/ui/base/mvp/base/BaseView;


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final hintUtils$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final mvpBaseDelegate$delegate:Lkotlin/Lazy;

.field private final subscriptions:Lio/reactivex/disposables/CompositeDisposable;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 34
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/iMe/ui/base/mvp/MvpFragment;

    const-string v3, "hintUtils"

    const-string v4, "getHintUtils()Lcom/iMe/utils/hints/HintUtils;"

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lcom/iMe/ui/base/mvp/MvpFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 23
    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;-><init>()V

    .line 26
    new-instance v0, Lcom/iMe/ui/base/mvp/MvpFragment$mvpBaseDelegate$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/base/mvp/MvpFragment$mvpBaseDelegate$2;-><init>(Lcom/iMe/ui/base/mvp/MvpFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/base/mvp/MvpFragment;->mvpBaseDelegate$delegate:Lkotlin/Lazy;

    .line 34
    sget-object v0, Lcom/iMe/ui/base/mvp/MvpFragment$hintUtils$2;->INSTANCE:Lcom/iMe/ui/base/mvp/MvpFragment$hintUtils$2;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/base/mvp/MvpFragment;->hintUtils$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 37
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/iMe/ui/base/mvp/MvpFragment;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method


# virtual methods
.method protected final autoDispose(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/iMe/ui/base/mvp/MvpFragment;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->getMvpBaseDelegate()Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;->getResettableLazyManager()Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;->reset()V

    .line 68
    invoke-virtual {p0, p1}, Lcom/iMe/ui/base/mvp/MvpFragment;->onCreateView(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    .line 69
    invoke-virtual {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->getMvpBaseDelegate()Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lmoxy/MvpDelegate;->onCreate()V

    .line 70
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->fragmentView:Landroid/view/View;

    const-string v0, "fragmentView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public finishScreen()V
    .locals 0

    .line 117
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    return-void
.end method

.method public final getHintUtils()Lcom/iMe/utils/hints/HintUtils;
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/iMe/ui/base/mvp/MvpFragment;->hintUtils$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/base/mvp/MvpFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/utils/hints/HintUtils;

    return-object v0
.end method

.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 23
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
            "Lcom/iMe/ui/base/mvp/MvpFragment;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/iMe/ui/base/mvp/MvpFragment;->mvpBaseDelegate$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;

    return-object v0
.end method

.method public getMvpDelegate()Lmoxy/MvpDelegate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmoxy/MvpDelegate<",
            "Lcom/iMe/ui/base/mvp/MvpFragment;",
            ">;"
        }
    .end annotation

    .line 63
    invoke-virtual {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->getMvpBaseDelegate()Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v0

    return-object v0
.end method

.method public onBecomeFullyHidden()V
    .locals 0

    .line 84
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBecomeFullyHidden()V

    return-void
.end method

.method public onBecomeFullyVisible()V
    .locals 0

    .line 79
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onBecomeFullyVisible()V

    return-void
.end method

.method public abstract onCreateView(Landroid/content/Context;)Landroid/view/View;
.end method

.method public onDestroyView()V
    .locals 1

    .line 98
    invoke-virtual {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->getMvpBaseDelegate()Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;->onDestroyView()V

    return-void
.end method

.method public onFragmentDestroy()V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/iMe/ui/base/mvp/MvpFragment;->subscriptions:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    .line 108
    invoke-virtual {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->getMvpBaseDelegate()Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;->onDetachedFromWindow()V

    .line 109
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onFragmentDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 88
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onPause()V

    .line 89
    invoke-virtual {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->getMvpBaseDelegate()Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 93
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->onResume()V

    .line 94
    invoke-virtual {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->getMvpBaseDelegate()Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;->onResume()V

    return-void
.end method

.method public onTransitionAnimationStart(ZZ)V
    .locals 1

    .line 102
    invoke-virtual {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->getHintUtils()Lcom/iMe/utils/hints/HintUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/utils/hints/HintUtils;->hideHint()V

    .line 103
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationStart(ZZ)V

    return-void
.end method

.method public onViewCreated()V
    .locals 0

    .line 74
    invoke-virtual {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onViewReady()V

    return-void
.end method

.method public abstract onViewReady()V
.end method

.method public final postViewActionDelayed(JLcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 2

    const-string v0, "action"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->getMvpBaseDelegate()Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;->getViewHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/iMe/ui/base/mvp/MvpFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p3}, Lcom/iMe/ui/base/mvp/MvpFragment$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/fork/utils/Callbacks$Callback;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public removeSelfFromStackImmediately()V
    .locals 1

    const/4 v0, 0x1

    .line 121
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack(Z)V

    return-void
.end method

.method public saveSelfArgs(Landroid/os/Bundle;)V
    .locals 1

    .line 125
    invoke-super {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->saveSelfArgs(Landroid/os/Bundle;)V

    .line 126
    invoke-virtual {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->getMvpBaseDelegate()Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lmoxy/MvpDelegate;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public showAlertDialog(Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;Z)V
    .locals 3

    const-string v0, "dialogModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "positiveAction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cancelAction"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->getMvpBaseDelegate()Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;

    move-result-object v0

    .line 131
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "parentActivity"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p1, p2, p3}, Lcom/iMe/utils/dialogs/DialogUtils;->createDialog(Landroid/content/Context;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 132
    invoke-virtual {p1, p4}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 133
    invoke-virtual {p1, p4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 130
    invoke-virtual {v0, p1}, Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public synthetic showErrorToast(Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/ui/base/mvp/base/BaseView$-CC;->$default$showErrorToast(Lcom/iMe/ui/base/mvp/base/BaseView;Lcom/iMe/storage/domain/model/Result$Error;Lcom/iMe/storage/domain/utils/system/ResourceManager;)V

    return-void
.end method

.method public showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 139
    invoke-virtual {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->getMvpBaseDelegate()Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/iMe/ui/base/mvp/base/MvpBaseDelegate;->showLoadingDialog(ZZLio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
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
