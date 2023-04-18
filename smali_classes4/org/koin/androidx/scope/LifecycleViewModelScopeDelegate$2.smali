.class public final Lorg/koin/androidx/scope/LifecycleViewModelScopeDelegate$2;
.super Ljava/lang/Object;
.source "LifecycleViewModelScopeDelegate.kt"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# instance fields
.field final synthetic $scopeViewModel:Lorg/koin/androidx/scope/ScopeHandlerViewModel;

.field final synthetic this$0:Lorg/koin/androidx/scope/LifecycleViewModelScopeDelegate;


# virtual methods
.method public onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object p1, p0, Lorg/koin/androidx/scope/LifecycleViewModelScopeDelegate$2;->$scopeViewModel:Lorg/koin/androidx/scope/ScopeHandlerViewModel;

    invoke-virtual {p1}, Lorg/koin/androidx/scope/ScopeHandlerViewModel;->getScope()Lorg/koin/core/scope/Scope;

    move-result-object p1

    if-nez p1, :cond_0

    .line 29
    iget-object p1, p0, Lorg/koin/androidx/scope/LifecycleViewModelScopeDelegate$2;->$scopeViewModel:Lorg/koin/androidx/scope/ScopeHandlerViewModel;

    iget-object v0, p0, Lorg/koin/androidx/scope/LifecycleViewModelScopeDelegate$2;->this$0:Lorg/koin/androidx/scope/LifecycleViewModelScopeDelegate;

    invoke-static {v0}, Lorg/koin/androidx/scope/LifecycleViewModelScopeDelegate;->access$getCreateScope$p(Lorg/koin/androidx/scope/LifecycleViewModelScopeDelegate;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    iget-object v1, p0, Lorg/koin/androidx/scope/LifecycleViewModelScopeDelegate$2;->this$0:Lorg/koin/androidx/scope/LifecycleViewModelScopeDelegate;

    invoke-static {v1}, Lorg/koin/androidx/scope/LifecycleViewModelScopeDelegate;->access$getKoin$p(Lorg/koin/androidx/scope/LifecycleViewModelScopeDelegate;)Lorg/koin/core/Koin;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/koin/core/scope/Scope;

    invoke-virtual {p1, v0}, Lorg/koin/androidx/scope/ScopeHandlerViewModel;->setScope(Lorg/koin/core/scope/Scope;)V

    .line 31
    :cond_0
    iget-object p1, p0, Lorg/koin/androidx/scope/LifecycleViewModelScopeDelegate$2;->this$0:Lorg/koin/androidx/scope/LifecycleViewModelScopeDelegate;

    iget-object v0, p0, Lorg/koin/androidx/scope/LifecycleViewModelScopeDelegate$2;->$scopeViewModel:Lorg/koin/androidx/scope/ScopeHandlerViewModel;

    invoke-virtual {v0}, Lorg/koin/androidx/scope/ScopeHandlerViewModel;->getScope()Lorg/koin/core/scope/Scope;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/koin/androidx/scope/LifecycleViewModelScopeDelegate;->access$set_scope$p(Lorg/koin/androidx/scope/LifecycleViewModelScopeDelegate;Lorg/koin/core/scope/Scope;)V

    return-void
.end method

.method public synthetic onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onDestroy(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public synthetic onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onPause(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public synthetic onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onResume(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public synthetic onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onStart(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public synthetic onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onStop(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method
