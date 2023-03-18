.class public final Lcom/smedialink/ui/wallet/settings/WalletSettingsFragment;
.super Lcom/smedialink/ui/wallet/common/WalletTabFragment;
.source "WalletSettingsFragment.kt"

# interfaces
.implements Lcom/smedialink/ui/wallet/settings/WalletSettingsView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/wallet/settings/WalletSettingsFragment$Companion;,
        Lcom/smedialink/ui/wallet/settings/WalletSettingsFragment$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletSettingsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletSettingsFragment.kt\ncom/smedialink/ui/wallet/settings/WalletSettingsFragment\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 4 RxEventBus.kt\ncom/smedialink/storage/domain/utils/rx/RxEventBus\n+ 5 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt\n*L\n1#1,117:1\n13#2,4:118\n56#3,6:122\n16#4,3:128\n39#5,8:131\n*S KotlinDebug\n*F\n+ 1 WalletSettingsFragment.kt\ncom/smedialink/ui/wallet/settings/WalletSettingsFragment\n*L\n27#1:118,4\n28#1:122,6\n87#1:128,3\n88#1:131,8\n*E\n"
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

.field public static final Companion:Lcom/smedialink/ui/wallet/settings/WalletSettingsFragment$Companion;


# instance fields
.field private final binding$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

.field private final settingsRecycleAdapter$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$FZUMk3WytiDMPryTB-9aTgtPb4o(Lcom/smedialink/ui/wallet/settings/WalletSettingsFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/ui/wallet/settings/WalletSettingsFragment;->getThemeDescriptions$lambda$1(Lcom/smedialink/ui/wallet/settings/WalletSettingsFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$q2UTHb_spLXRedl8126wFFmZJb8(Lcom/smedialink/ui/wallet/settings/WalletSettingsFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/smedialink/ui/wallet/settings/WalletSettingsFragment;->setupListeners$lambda$4(Lcom/smedialink/ui/wallet/settings/WalletSettingsFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/smedialink/ui/wallet/settings/WalletSettingsFragment;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 27
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "presenter"

    const-string v4, "getPresenter()Lcom/smedialink/ui/wallet/settings/WalletSettingsPresenter;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 31
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSettingsBinding;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/smedialink/ui/wallet/settings/WalletSettingsFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/smedialink/ui/wallet/settings/WalletSettingsFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/ui/wallet/settings/WalletSettingsFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/smedialink/ui/wallet/settings/WalletSettingsFragment;->Companion:Lcom/smedialink/ui/wallet/settings/WalletSettingsFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 24
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/common/WalletTabFragment;-><init>()V

    .line 27
    new-instance v0, Lcom/smedialink/ui/wallet/settings/WalletSettingsFragment$presenter$2;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/wallet/settings/WalletSettingsFragment$presenter$2;-><init>(Lcom/smedialink/ui/wallet/settings/WalletSettingsFragment;)V

    .line 16
    new-instance v1, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v2

    const-string v3, "mvpDelegate"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Lcom/smedialink/ui/wallet/settings/WalletSettingsPresenter;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "presenter"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lmoxy/ktx/MoxyKtxDelegate;-><init>(Lmoxy/MvpDelegate;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 27
    iput-object v1, p0, Lcom/smedialink/ui/wallet/settings/WalletSettingsFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 58
    sget-object v0, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v0}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v0

    .line 61
    new-instance v1, Lcom/smedialink/ui/wallet/settings/WalletSettingsFragment$special$$inlined$inject$default$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Lcom/smedialink/ui/wallet/settings/WalletSettingsFragment$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 28
    iput-object v0, p0, Lcom/smedialink/ui/wallet/settings/WalletSettingsFragment;->settingsRecycleAdapter$delegate:Lkotlin/Lazy;

    .line 31
    new-instance v0, Lcom/smedialink/ui/wallet/settings/WalletSettingsFragment$binding$2;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/wallet/settings/WalletSettingsFragment$binding$2;-><init>(Lcom/smedialink/ui/wallet/settings/WalletSettingsFragment;)V

    const/4 v1, 0x1

    invoke-static {p0, v2, v0, v1, v2}, Lcom/smedialink/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/smedialink/ui/base/mvp/MvpFragment;Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lcom/smedialink/ui/wallet/settings/WalletSettingsFragment;->binding$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    return-void
.end method

.method public static final synthetic access$getPresenter(Lcom/smedialink/ui/wallet/settings/WalletSettingsFragment;)Lcom/smedialink/ui/wallet/settings/WalletSettingsPresenter;
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/settings/WalletSettingsFragment;->getPresenter()Lcom/smedialink/ui/wallet/settings/WalletSettingsPresenter;

    move-result-object p0

    return-object p0
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSettingsBinding;
    .locals 3

    .line 31
    iget-object v0, p0, Lcom/smedialink/ui/wallet/settings/WalletSettingsFragment;->binding$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/smedialink/ui/wallet/settings/WalletSettingsFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/smedialink/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSettingsBinding;

    return-object v0
.end method

.method private final getPresenter()Lcom/smedialink/ui/wallet/settings/WalletSettingsPresenter;
    .locals 3

    .line 27
    iget-object v0, p0, Lcom/smedialink/ui/wallet/settings/WalletSettingsFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/smedialink/ui/wallet/settings/WalletSettingsFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/settings/WalletSettingsPresenter;

    return-object v0
.end method

.method private final getSettingsRecycleAdapter()Lcom/smedialink/ui/wallet/settings/adapter/WalletSettingsRecycleAdapter;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/smedialink/ui/wallet/settings/WalletSettingsFragment;->settingsRecycleAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/settings/adapter/WalletSettingsRecycleAdapter;

    return-object v0
.end method

.method private static final getThemeDescriptions$lambda$1(Lcom/smedialink/ui/wallet/settings/WalletSettingsFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/settings/WalletSettingsFragment;->getSettingsRecycleAdapter()Lcom/smedialink/ui/wallet/settings/adapter/WalletSettingsRecycleAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private final openFAQ()V
    .locals 2

    .line 107
    new-instance v0, Lorg/fork/ui/dialog/SettingsHelpBottomSheet;

    sget-object v1, Lorg/fork/ui/dialog/SettingsHelpBottomSheet$ScreenType;->WALLET_SETTINGS:Lorg/fork/ui/dialog/SettingsHelpBottomSheet$ScreenType;

    invoke-direct {v0, v1, p0}, Lorg/fork/ui/dialog/SettingsHelpBottomSheet;-><init>(Lorg/fork/ui/dialog/SettingsHelpBottomSheet$ScreenType;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private final openInterfaceSettings()V
    .locals 1

    .line 103
    sget-object v0, Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;->Companion:Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment$Companion;

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment$Companion;->newInstance()Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private final openWalletAccountSettings()V
    .locals 1

    .line 99
    sget-object v0, Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsFragment;->Companion:Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsFragment$Companion;

    invoke-virtual {v0}, Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsFragment$Companion;->newInstance()Lcom/smedialink/ui/wallet/crypto/settings/WalletAccountSettingsFragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private final setupColors()V
    .locals 2

    .line 71
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/settings/WalletSettingsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSettingsBinding;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletSettingsBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    const-string v1, "windowBackgroundGray"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-void
.end method

.method private final setupListeners()V
    .locals 4

    .line 77
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/settings/WalletSettingsFragment;->getSettingsRecycleAdapter()Lcom/smedialink/ui/wallet/settings/adapter/WalletSettingsRecycleAdapter;

    move-result-object v0

    new-instance v1, Lcom/smedialink/ui/wallet/settings/WalletSettingsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/wallet/settings/WalletSettingsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/smedialink/ui/wallet/settings/WalletSettingsFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/listener/OnItemClickListener;)V

    .line 86
    invoke-virtual {p0}, Lcom/smedialink/ui/base/WalletAuthFragment;->getRxEventBus()Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/smedialink/storage/domain/utils/rx/RxEventBus;->getPublisher()Lio/reactivex/subjects/PublishSubject;

    move-result-object v1

    const-class v2, Lcom/smedialink/storage/domain/utils/rx/event/DomainRxEvents$CryptoEvent;

    .line 17
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->ofType(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v1

    .line 18
    invoke-virtual {v0}, Lcom/smedialink/storage/domain/utils/rx/RxEventBus;->getSchedulersProvider()Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/smedialink/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string v1, "publisher\n              \u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v1, Lcom/smedialink/ui/wallet/settings/WalletSettingsFragment$setupListeners$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/wallet/settings/WalletSettingsFragment$setupListeners$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/wallet/settings/WalletSettingsFragment;)V

    new-instance v2, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/smedialink/ui/wallet/settings/WalletSettingsFragment$setupListeners$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/smedialink/ui/wallet/settings/WalletSettingsFragment$setupListeners$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    .line 46
    new-instance v3, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v1}, Lcom/smedialink/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 44
    invoke-virtual {v0, v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    .line 46
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0, v0}, Lcom/smedialink/ui/base/mvp/MvpFragment;->autoDispose(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method private static final setupListeners$lambda$4(Lcom/smedialink/ui/wallet/settings/WalletSettingsFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 1>"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/settings/WalletSettingsFragment;->getSettingsRecycleAdapter()Lcom/smedialink/ui/wallet/settings/adapter/WalletSettingsRecycleAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/smedialink/model/wallet/settings/SettingUiItem;

    .line 79
    invoke-virtual {p1}, Lcom/smedialink/model/wallet/settings/SettingUiItem;->getItem()Lcom/smedialink/model/wallet/settings/SettingMenuItem;

    move-result-object p1

    sget-object p2, Lcom/smedialink/ui/wallet/settings/WalletSettingsFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/settings/WalletSettingsFragment;->openInterfaceSettings()V

    goto :goto_0

    .line 81
    :cond_1
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/settings/WalletSettingsFragment;->openWalletAccountSettings()V

    goto :goto_0

    .line 80
    :cond_2
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/settings/WalletSettingsFragment;->openFAQ()V

    :goto_0
    return-void
.end method

.method private final setupRecycleView()V
    .locals 3

    .line 64
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/settings/WalletSettingsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSettingsBinding;->recycleSettings:Landroidx/recyclerview/widget/RecyclerView;

    .line 65
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/settings/WalletSettingsFragment;->getSettingsRecycleAdapter()Lcom/smedialink/ui/wallet/settings/adapter/WalletSettingsRecycleAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 66
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method


# virtual methods
.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 56
    new-instance v9, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/settings/WalletSettingsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSettingsBinding;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/databinding/ForkFragmentWalletSettingsBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v2

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 55
    new-instance v7, Lcom/smedialink/ui/wallet/settings/WalletSettingsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v7, p0}, Lcom/smedialink/ui/wallet/settings/WalletSettingsFragment$$ExternalSyntheticLambda1;-><init>(Lcom/smedialink/ui/wallet/settings/WalletSettingsFragment;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v8, "windowBackgroundGray"

    move-object v1, v9

    .line 56
    invoke-direct/range {v1 .. v8}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v1, 0x0

    aput-object v9, v0, v1

    .line 55
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public handleBottomPadding(I)V
    .locals 4

    .line 38
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/settings/WalletSettingsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSettingsBinding;->recycleSettings:Landroidx/recyclerview/widget/RecyclerView;

    .line 39
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method

.method public isSwipeBackEnabled(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/settings/WalletSettingsFragment;->setupColors()V

    .line 45
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/settings/WalletSettingsFragment;->setupListeners()V

    .line 46
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/settings/WalletSettingsFragment;->setupRecycleView()V

    .line 48
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/settings/WalletSettingsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSettingsBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkFragmentWalletSettingsBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public setupSettingsItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smedialink/model/wallet/settings/SettingUiItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/settings/WalletSettingsFragment;->getSettingsRecycleAdapter()Lcom/smedialink/ui/wallet/settings/adapter/WalletSettingsRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewInstance(Ljava/util/List;)V

    return-void
.end method
