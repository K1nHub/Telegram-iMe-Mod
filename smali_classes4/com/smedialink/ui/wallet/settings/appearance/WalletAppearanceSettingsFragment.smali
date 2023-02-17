.class public final Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;
.super Lcom/smedialink/ui/base/WalletAuthFragment;
.source "WalletAppearanceSettingsFragment.kt"

# interfaces
.implements Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletAppearanceSettingsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletAppearanceSettingsFragment.kt\ncom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,104:1\n13#2,4:105\n56#3,6:109\n*S KotlinDebug\n*F\n+ 1 WalletAppearanceSettingsFragment.kt\ncom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment\n*L\n25#1:105,4\n26#1:109,6\n*E\n"
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

.field public static final Companion:Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment$Companion;


# instance fields
.field private final appearanceSettingsRecycleAdapter$delegate:Lkotlin/Lazy;

.field private final binding$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;


# direct methods
.method public static synthetic $r8$lambda$I9__eqWoHn4_00sAkXUOPHf381w(Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;->setupListeners$lambda-4(Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$aWcUMpiCS5MjX4WvNXreG7F8L9A(Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;->getThemeDescriptions$lambda-0(Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 25
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "presenter"

    const-string v4, "getPresenter()Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsPresenter;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 29
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletInterfaceSettingsBinding;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;->Companion:Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 22
    invoke-direct {p0}, Lcom/smedialink/ui/base/WalletAuthFragment;-><init>()V

    .line 25
    new-instance v0, Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment$presenter$2;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment$presenter$2;-><init>(Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;)V

    .line 16
    new-instance v1, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v2

    const-string v3, "mvpDelegate"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsPresenter;

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

    .line 25
    iput-object v1, p0, Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 58
    sget-object v0, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v0}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v0

    .line 61
    new-instance v1, Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment$special$$inlined$inject$default$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;->appearanceSettingsRecycleAdapter$delegate:Lkotlin/Lazy;

    .line 29
    new-instance v0, Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment$binding$2;

    invoke-direct {v0, p0}, Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment$binding$2;-><init>(Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;)V

    const/4 v1, 0x1

    invoke-static {p0, v2, v0, v1, v2}, Lcom/smedialink/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/smedialink/ui/base/mvp/MvpFragment;Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;->binding$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    return-void
.end method

.method private final getAppearanceSettingsRecycleAdapter()Lcom/smedialink/ui/wallet/settings/appearance/adapter/WalletAppearanceSettingsRecycleAdapter;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;->appearanceSettingsRecycleAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/settings/appearance/adapter/WalletAppearanceSettingsRecycleAdapter;

    return-object v0
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletInterfaceSettingsBinding;
    .locals 3

    .line 29
    iget-object v0, p0, Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;->binding$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/smedialink/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletInterfaceSettingsBinding;

    return-object v0
.end method

.method private final getPresenter()Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsPresenter;
    .locals 3

    .line 25
    iget-object v0, p0, Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsPresenter;

    return-object v0
.end method

.method private static final getThemeDescriptions$lambda-0(Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;->getAppearanceSettingsRecycleAdapter()Lcom/smedialink/ui/wallet/settings/appearance/adapter/WalletAppearanceSettingsRecycleAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private final setupActionBar()V
    .locals 3

    .line 64
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x0

    .line 65
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setCastShadows(Z)V

    .line 66
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    const/4 v1, 0x1

    .line 67
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 68
    invoke-virtual {p0}, Lcom/smedialink/ui/base/WalletAuthFragment;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->wallet_settings_interface:I

    invoke-interface {v1, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 69
    new-instance v1, Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment$setupActionBar$1$1;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment$setupActionBar$1$1;-><init>(Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    return-void
.end method

.method private final setupColors()V
    .locals 2

    .line 87
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletInterfaceSettingsBinding;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentWalletInterfaceSettingsBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    const-string v1, "windowBackgroundGray"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-void
.end method

.method private final setupListeners()V
    .locals 2

    .line 93
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;->getAppearanceSettingsRecycleAdapter()Lcom/smedialink/ui/wallet/settings/appearance/adapter/WalletAppearanceSettingsRecycleAdapter;

    move-result-object v0

    new-instance v1, Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/listener/OnItemClickListener;)V

    return-void
.end method

.method private static final setupListeners$lambda-4(Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$noName_0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "$noName_1"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;->getPresenter()Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsPresenter;

    move-result-object p1

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;->getAppearanceSettingsRecycleAdapter()Lcom/smedialink/ui/wallet/settings/appearance/adapter/WalletAppearanceSettingsRecycleAdapter;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/smedialink/model/wallet/settings/InterfaceSettingItem;

    invoke-virtual {p1, p0}, Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsPresenter;->resolveItemClick(Lcom/smedialink/model/wallet/settings/InterfaceSettingItem;)V

    return-void
.end method

.method private final setupRecycleView()V
    .locals 3

    .line 80
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletInterfaceSettingsBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletInterfaceSettingsBinding;->recycleSettings:Landroidx/recyclerview/widget/RecyclerView;

    .line 81
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;->getAppearanceSettingsRecycleAdapter()Lcom/smedialink/ui/wallet/settings/appearance/adapter/WalletAppearanceSettingsRecycleAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 82
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method


# virtual methods
.method public getThemeDescriptions()Ljava/util/ArrayList;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ActionBar/ThemeDescription;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    const/16 v1, 0x8

    new-array v1, v1, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 49
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "actionBarDefault"

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v10, v1, v2

    .line 50
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v18, "actionBarDefaultIcon"

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 51
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "actionBarDefaultTitle"

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 52
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const-string v11, "actionBarDefaultSelector"

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 53
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUBACKGROUND:I

    const-string v11, "actionBarDefaultSubmenuBackground"

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 54
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUITEM:I

    const-string v11, "actionBarDefaultSubmenuItem"

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 55
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SUBMENUITEM:I

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_IMAGECOLOR:I

    or-int v6, v3, v4

    const-string v11, "actionBarDefaultSubmenuItemIcon"

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 56
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletInterfaceSettingsBinding;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/databinding/ForkFragmentWalletInterfaceSettingsBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v5

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 48
    new-instance v10, Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v10, v0}, Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment$$ExternalSyntheticLambda1;-><init>(Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;)V

    const-string v11, "windowBackgroundGray"

    move-object v4, v2

    .line 56
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 48
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
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
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;->setupActionBar()V

    .line 37
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;->setupColors()V

    .line 38
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;->setupListeners()V

    .line 39
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;->setupRecycleView()V

    .line 41
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletInterfaceSettingsBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkFragmentWalletInterfaceSettingsBinding;->getRoot()Landroid/widget/FrameLayout;

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
            "Lcom/smedialink/model/wallet/settings/InterfaceSettingItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/settings/appearance/WalletAppearanceSettingsFragment;->getAppearanceSettingsRecycleAdapter()Lcom/smedialink/ui/wallet/settings/appearance/adapter/WalletAppearanceSettingsRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setNewInstance(Ljava/util/List;)V

    return-void
.end method
