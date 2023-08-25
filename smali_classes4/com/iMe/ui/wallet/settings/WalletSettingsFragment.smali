.class public final Lcom/iMe/ui/wallet/settings/WalletSettingsFragment;
.super Lcom/iMe/ui/wallet/common/WalletTabFragment;
.source "WalletSettingsFragment.kt"

# interfaces
.implements Lcom/iMe/ui/wallet/settings/WalletSettingsView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/settings/WalletSettingsFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletSettingsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletSettingsFragment.kt\ncom/iMe/ui/wallet/settings/WalletSettingsFragment\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 4 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,99:1\n13#2,4:100\n56#3,6:104\n162#4,8:110\n*S KotlinDebug\n*F\n+ 1 WalletSettingsFragment.kt\ncom/iMe/ui/wallet/settings/WalletSettingsFragment\n*L\n24#1:100,4\n25#1:104,6\n32#1:110,8\n*E\n"
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

.field public static final Companion:Lcom/iMe/ui/wallet/settings/WalletSettingsFragment$Companion;


# instance fields
.field private final binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final settingsRecycleAdapter$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$0zirOMUSjqe5__50-He1zgVsfuA(Lcom/iMe/ui/wallet/settings/WalletSettingsFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/iMe/ui/wallet/settings/WalletSettingsFragment;->setupListeners$lambda$2(Lcom/iMe/ui/wallet/settings/WalletSettingsFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$8-s832S04d9nV_75UwQ2gEOGcK4(Lcom/iMe/ui/wallet/settings/WalletSettingsFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/settings/WalletSettingsFragment;->getThemeDescriptions$lambda$0(Lcom/iMe/ui/wallet/settings/WalletSettingsFragment;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/iMe/ui/wallet/settings/WalletSettingsFragment;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 24
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string/jumbo v3, "presenter"

    const-string v4, "getPresenter()Lcom/iMe/ui/wallet/settings/WalletSettingsPresenter;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 27
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSettingsBinding;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/iMe/ui/wallet/settings/WalletSettingsFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/iMe/ui/wallet/settings/WalletSettingsFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/wallet/settings/WalletSettingsFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/ui/wallet/settings/WalletSettingsFragment;->Companion:Lcom/iMe/ui/wallet/settings/WalletSettingsFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 22
    invoke-direct {p0}, Lcom/iMe/ui/wallet/common/WalletTabFragment;-><init>()V

    .line 24
    new-instance v0, Lcom/iMe/ui/wallet/settings/WalletSettingsFragment$presenter$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/settings/WalletSettingsFragment$presenter$2;-><init>(Lcom/iMe/ui/wallet/settings/WalletSettingsFragment;)V

    .line 16
    new-instance v1, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v2

    const-string/jumbo v3, "mvpDelegate"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Lcom/iMe/ui/wallet/settings/WalletSettingsPresenter;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "presenter"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lmoxy/ktx/MoxyKtxDelegate;-><init>(Lmoxy/MvpDelegate;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 58
    sget-object v0, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v0}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v0

    .line 61
    new-instance v1, Lcom/iMe/ui/wallet/settings/WalletSettingsFragment$special$$inlined$inject$default$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Lcom/iMe/ui/wallet/settings/WalletSettingsFragment$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/iMe/ui/wallet/settings/WalletSettingsFragment;->settingsRecycleAdapter$delegate:Lkotlin/Lazy;

    .line 27
    new-instance v0, Lcom/iMe/ui/wallet/settings/WalletSettingsFragment$binding$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/settings/WalletSettingsFragment$binding$2;-><init>(Lcom/iMe/ui/wallet/settings/WalletSettingsFragment;)V

    const/4 v1, 0x1

    invoke-static {p0, v2, v0, v1, v2}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/wallet/settings/WalletSettingsFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    return-void
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSettingsBinding;
    .locals 3

    .line 27
    iget-object v0, p0, Lcom/iMe/ui/wallet/settings/WalletSettingsFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/settings/WalletSettingsFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSettingsBinding;

    return-object v0
.end method

.method private final getSettingsRecycleAdapter()Lcom/iMe/ui/wallet/settings/adapter/WalletSettingsRecycleAdapter;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/iMe/ui/wallet/settings/WalletSettingsFragment;->settingsRecycleAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/settings/adapter/WalletSettingsRecycleAdapter;

    return-object v0
.end method

.method private static final getThemeDescriptions$lambda$0(Lcom/iMe/ui/wallet/settings/WalletSettingsFragment;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-direct {p0}, Lcom/iMe/ui/wallet/settings/WalletSettingsFragment;->getSettingsRecycleAdapter()Lcom/iMe/ui/wallet/settings/adapter/WalletSettingsRecycleAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private final openFAQ()V
    .locals 2

    .line 88
    new-instance v0, Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet;

    .line 89
    sget-object v1, Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$ScreenType;->WALLET_SETTINGS:Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$ScreenType;

    .line 88
    invoke-direct {v0, v1, p0}, Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet;-><init>(Lcom/iMe/fork/ui/dialog/SettingsHelpBottomSheet$ScreenType;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 87
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private final openInterfaceSettings()V
    .locals 1

    .line 83
    sget-object v0, Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;->Companion:Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment$Companion;

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment$Companion;->newInstance()Lcom/iMe/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private final openWalletAccountSettings()V
    .locals 1

    .line 79
    sget-object v0, Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsFragment;->Companion:Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsFragment$Companion;

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsFragment$Companion;->newInstance()Lcom/iMe/ui/wallet/crypto/settings/WalletAccountSettingsFragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private final setupColors()V
    .locals 2

    .line 64
    invoke-direct {p0}, Lcom/iMe/ui/wallet/settings/WalletSettingsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSettingsBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletSettingsBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-void
.end method

.method private final setupListeners()V
    .locals 2

    .line 68
    invoke-direct {p0}, Lcom/iMe/ui/wallet/settings/WalletSettingsFragment;->getSettingsRecycleAdapter()Lcom/iMe/ui/wallet/settings/adapter/WalletSettingsRecycleAdapter;

    move-result-object v0

    new-instance v1, Lcom/iMe/ui/wallet/settings/WalletSettingsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/settings/WalletSettingsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/wallet/settings/WalletSettingsFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/listener/OnItemClickListener;)V

    return-void
.end method

.method private static final setupListeners$lambda$2(Lcom/iMe/ui/wallet/settings/WalletSettingsFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 1>"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-direct {p0}, Lcom/iMe/ui/wallet/settings/WalletSettingsFragment;->getSettingsRecycleAdapter()Lcom/iMe/ui/wallet/settings/adapter/WalletSettingsRecycleAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem;

    .line 70
    sget-object p2, Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$Main$Help;->INSTANCE:Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$Main$Help;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/settings/WalletSettingsFragment;->openFAQ()V

    goto :goto_0

    .line 71
    :cond_0
    sget-object p2, Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$Main$CryptoAccount;->INSTANCE:Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$Main$CryptoAccount;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/iMe/ui/wallet/settings/WalletSettingsFragment;->openWalletAccountSettings()V

    goto :goto_0

    .line 72
    :cond_1
    sget-object p2, Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$Main$Interface;->INSTANCE:Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem$Main$Interface;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/iMe/ui/wallet/settings/WalletSettingsFragment;->openInterfaceSettings()V

    :cond_2
    :goto_0
    return-void
.end method

.method private final setupRecycleView()V
    .locals 3

    .line 57
    invoke-direct {p0}, Lcom/iMe/ui/wallet/settings/WalletSettingsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSettingsBinding;->recycleSettings:Landroidx/recyclerview/widget/RecyclerView;

    .line 58
    invoke-direct {p0}, Lcom/iMe/ui/wallet/settings/WalletSettingsFragment;->getSettingsRecycleAdapter()Lcom/iMe/ui/wallet/settings/adapter/WalletSettingsRecycleAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 59
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method


# virtual methods
.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 6
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

    .line 48
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 49
    invoke-direct {p0}, Lcom/iMe/ui/wallet/settings/WalletSettingsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSettingsBinding;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/databinding/ForkFragmentWalletSettingsBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v2

    .line 50
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 47
    new-instance v4, Lcom/iMe/ui/wallet/settings/WalletSettingsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/iMe/ui/wallet/settings/WalletSettingsFragment$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/ui/wallet/settings/WalletSettingsFragment;)V

    .line 52
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    .line 48
    invoke-direct {v1, v2, v3, v4, v5}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;ILorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 47
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public handleBottomPadding(I)V
    .locals 4

    .line 32
    invoke-direct {p0}, Lcom/iMe/ui/wallet/settings/WalletSettingsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletSettingsBinding;->recycleSettings:Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "binding.recycleSettings"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 164
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 165
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    .line 168
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/view/View;->setPadding(IIII)V

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

    .line 36
    invoke-direct {p0}, Lcom/iMe/ui/wallet/settings/WalletSettingsFragment;->setupColors()V

    .line 37
    invoke-direct {p0}, Lcom/iMe/ui/wallet/settings/WalletSettingsFragment;->setupListeners()V

    .line 38
    invoke-direct {p0}, Lcom/iMe/ui/wallet/settings/WalletSettingsFragment;->setupRecycleView()V

    .line 40
    invoke-direct {p0}, Lcom/iMe/ui/wallet/settings/WalletSettingsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletSettingsBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkFragmentWalletSettingsBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public renderSettingsItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/crypto/settings/WalletSettingsItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0}, Lcom/iMe/ui/wallet/settings/WalletSettingsFragment;->getSettingsRecycleAdapter()Lcom/iMe/ui/wallet/settings/adapter/WalletSettingsRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewInstance(Ljava/util/List;)V

    return-void
.end method
