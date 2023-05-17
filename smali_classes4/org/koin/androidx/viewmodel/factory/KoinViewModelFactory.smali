.class public final Lorg/koin/androidx/viewmodel/factory/KoinViewModelFactory;
.super Ljava/lang/Object;
.source "KoinViewModelFactory.kt"

# interfaces
.implements Landroidx/lifecycle/ViewModelProvider$Factory;


# instance fields
.field private final kClass:Lkotlin/reflect/KClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/KClass<",
            "+",
            "Landroidx/lifecycle/ViewModel;",
            ">;"
        }
    .end annotation
.end field

.field private final params:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lorg/koin/core/parameter/ParametersHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final qualifier:Lorg/koin/core/qualifier/Qualifier;

.field private final scope:Lorg/koin/core/scope/Scope;


# direct methods
.method public constructor <init>(Lkotlin/reflect/KClass;Lorg/koin/core/scope/Scope;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KClass<",
            "+",
            "Landroidx/lifecycle/ViewModel;",
            ">;",
            "Lorg/koin/core/scope/Scope;",
            "Lorg/koin/core/qualifier/Qualifier;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lorg/koin/core/parameter/ParametersHolder;",
            ">;)V"
        }
    .end annotation

    const-string v0, "kClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/koin/androidx/viewmodel/factory/KoinViewModelFactory;->kClass:Lkotlin/reflect/KClass;

    .line 18
    iput-object p2, p0, Lorg/koin/androidx/viewmodel/factory/KoinViewModelFactory;->scope:Lorg/koin/core/scope/Scope;

    .line 19
    iput-object p3, p0, Lorg/koin/androidx/viewmodel/factory/KoinViewModelFactory;->qualifier:Lorg/koin/core/qualifier/Qualifier;

    .line 20
    iput-object p4, p0, Lorg/koin/androidx/viewmodel/factory/KoinViewModelFactory;->params:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public synthetic create(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;
    .locals 0

    invoke-static {p0, p1}, Landroidx/lifecycle/ViewModelProvider$Factory$-CC;->$default$create(Landroidx/lifecycle/ViewModelProvider$Factory;Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    return-object p1
.end method

.method public create(Ljava/lang/Class;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/ViewModel;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroidx/lifecycle/viewmodel/CreationExtras;",
            ")TT;"
        }
    .end annotation

    const-string v0, "modelClass"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "extras"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance p1, Lorg/koin/androidx/viewmodel/parameter/AndroidParametersHolder;

    iget-object v0, p0, Lorg/koin/androidx/viewmodel/factory/KoinViewModelFactory;->params:Lkotlin/jvm/functions/Function0;

    invoke-direct {p1, v0, p2}, Lorg/koin/androidx/viewmodel/parameter/AndroidParametersHolder;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/lifecycle/viewmodel/CreationExtras;)V

    .line 25
    iget-object p2, p0, Lorg/koin/androidx/viewmodel/factory/KoinViewModelFactory;->scope:Lorg/koin/core/scope/Scope;

    iget-object v0, p0, Lorg/koin/androidx/viewmodel/factory/KoinViewModelFactory;->kClass:Lkotlin/reflect/KClass;

    iget-object v1, p0, Lorg/koin/androidx/viewmodel/factory/KoinViewModelFactory;->qualifier:Lorg/koin/core/qualifier/Qualifier;

    new-instance v2, Lorg/koin/androidx/viewmodel/factory/KoinViewModelFactory$create$1;

    invoke-direct {v2, p1}, Lorg/koin/androidx/viewmodel/factory/KoinViewModelFactory$create$1;-><init>(Lorg/koin/androidx/viewmodel/parameter/AndroidParametersHolder;)V

    invoke-virtual {p2, v0, v1, v2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/ViewModel;

    return-object p1
.end method
