.class public final Lcom/iMe/feature/devTools/DevSettingsScreen;
.super Landroidx/fragment/app/Fragment;
.source "DevSettingsScreen.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDevSettingsScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DevSettingsScreen.kt\ncom/iMe/feature/devTools/DevSettingsScreen\n+ 2 FragmentViewBindingDelegate.kt\ncom/iMe/common/viewBinding/FragmentViewBindingDelegateKt\n+ 3 FragmentVM.kt\norg/koin/androidx/viewmodel/ext/android/FragmentVMKt\n*L\n1#1,41:1\n43#2:42\n43#3,7:43\n*S KotlinDebug\n*F\n+ 1 DevSettingsScreen.kt\ncom/iMe/feature/devTools/DevSettingsScreen\n*L\n15#1:42\n16#1:43,7\n*E\n"
.end annotation


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
.field private final binding$delegate:Lcom/iMe/common/viewBinding/FragmentViewBindingDelegate;

.field private final viewModel$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 15
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/iMe/feature/devTools/DevSettingsScreen;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkDevSettingsScreenBinding;"

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lcom/iMe/feature/devTools/DevSettingsScreen;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 13
    sget v0, Lorg/telegram/messenger/R$layout;->fork_dev_settings_screen:I

    invoke-direct {p0, v0}, Landroidx/fragment/app/Fragment;-><init>(I)V

    .line 43
    new-instance v0, Lcom/iMe/common/viewBinding/FragmentViewBindingDelegate;

    const-class v1, Lorg/telegram/messenger/databinding/ForkDevSettingsScreenBinding;

    invoke-direct {v0, v1, p0}, Lcom/iMe/common/viewBinding/FragmentViewBindingDelegate;-><init>(Ljava/lang/Class;Landroidx/fragment/app/Fragment;)V

    .line 15
    iput-object v0, p0, Lcom/iMe/feature/devTools/DevSettingsScreen;->binding$delegate:Lcom/iMe/common/viewBinding/FragmentViewBindingDelegate;

    .line 45
    new-instance v5, Lcom/iMe/feature/devTools/DevSettingsScreen$special$$inlined$viewModel$default$1;

    invoke-direct {v5, p0}, Lcom/iMe/feature/devTools/DevSettingsScreen$special$$inlined$viewModel$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 49
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/iMe/feature/devTools/DevSettingsScreen$special$$inlined$viewModel$default$2;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/iMe/feature/devTools/DevSettingsScreen$special$$inlined$viewModel$default$2;-><init>(Landroidx/fragment/app/Fragment;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/iMe/feature/devTools/DevSettingsScreen;->viewModel$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$onCreate$render(Lcom/iMe/feature/devTools/DevSettingsScreen;Lcom/iMe/feature/devTools/DevState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-static {p0, p1, p2}, Lcom/iMe/feature/devTools/DevSettingsScreen;->onCreate$render(Lcom/iMe/feature/devTools/DevSettingsScreen;Lcom/iMe/feature/devTools/DevState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$onCreate$sideEffects(Lcom/iMe/feature/devTools/DevSettingsScreen;Lcom/iMe/feature/devTools/DevSideEffects;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-static {p0, p1, p2}, Lcom/iMe/feature/devTools/DevSettingsScreen;->onCreate$sideEffects(Lcom/iMe/feature/devTools/DevSettingsScreen;Lcom/iMe/feature/devTools/DevSideEffects;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkDevSettingsScreenBinding;
    .locals 3

    .line 15
    iget-object v0, p0, Lcom/iMe/feature/devTools/DevSettingsScreen;->binding$delegate:Lcom/iMe/common/viewBinding/FragmentViewBindingDelegate;

    sget-object v1, Lcom/iMe/feature/devTools/DevSettingsScreen;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/common/viewBinding/FragmentViewBindingDelegate;->getValue(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KProperty;)Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkDevSettingsScreenBinding;

    return-object v0
.end method

.method private final getViewModel()Lcom/iMe/feature/devTools/DevViewModel;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/iMe/feature/devTools/DevSettingsScreen;->viewModel$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/feature/devTools/DevViewModel;

    return-object v0
.end method

.method private static final synthetic onCreate$render(Lcom/iMe/feature/devTools/DevSettingsScreen;Lcom/iMe/feature/devTools/DevState;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/iMe/feature/devTools/DevSettingsScreen;->render(Lcom/iMe/feature/devTools/DevState;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final synthetic onCreate$sideEffects(Lcom/iMe/feature/devTools/DevSettingsScreen;Lcom/iMe/feature/devTools/DevSideEffects;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/iMe/feature/devTools/DevSettingsScreen;->sideEffects(Lcom/iMe/feature/devTools/DevSideEffects;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final render(Lcom/iMe/feature/devTools/DevState;)V
    .locals 2

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DevState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    invoke-direct {p0}, Lcom/iMe/feature/devTools/DevSettingsScreen;->getBinding()Lorg/telegram/messenger/databinding/ForkDevSettingsScreenBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkDevSettingsScreenBinding;->textDevScreen:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/iMe/feature/devTools/DevState;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    invoke-direct {p0}, Lcom/iMe/feature/devTools/DevSettingsScreen;->getBinding()Lorg/telegram/messenger/databinding/ForkDevSettingsScreenBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkDevSettingsScreenBinding;->progressBar:Landroid/widget/ProgressBar;

    const-string v1, "binding.progressBar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/iMe/feature/devTools/DevState;->isLoading()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible(Landroid/view/View;Z)V

    return-void
.end method

.method private final sideEffects(Lcom/iMe/feature/devTools/DevSideEffects;)V
    .locals 3

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DevSideEffects: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    sget-object v0, Lcom/iMe/feature/devTools/DevSideEffects$NavigateToChat;->INSTANCE:Lcom/iMe/feature/devTools/DevSideEffects$NavigateToChat;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 38
    :cond_0
    sget-object v0, Lcom/iMe/feature/devTools/DevSideEffects$ShowError;->INSTANCE:Lcom/iMe/feature/devTools/DevSideEffects$ShowError;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "Show Dialog with Error"

    invoke-static {v0, p1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 19
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 21
    invoke-direct {p0}, Lcom/iMe/feature/devTools/DevSettingsScreen;->getViewModel()Lcom/iMe/feature/devTools/DevViewModel;

    move-result-object p1

    .line 23
    new-instance v0, Lcom/iMe/feature/devTools/DevSettingsScreen$onCreate$1;

    invoke-direct {v0, p0}, Lcom/iMe/feature/devTools/DevSettingsScreen$onCreate$1;-><init>(Ljava/lang/Object;)V

    .line 24
    new-instance v1, Lcom/iMe/feature/devTools/DevSettingsScreen$onCreate$2;

    invoke-direct {v1, p0}, Lcom/iMe/feature/devTools/DevSettingsScreen$onCreate$2;-><init>(Ljava/lang/Object;)V

    .line 21
    invoke-static {p1, p0, v0, v1}, Lorg/orbitmvi/orbit/viewmodel/ContainerHostExtensionsKt;->observe(Lorg/orbitmvi/orbit/ContainerHost;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method
