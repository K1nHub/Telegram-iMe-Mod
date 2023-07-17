.class public final Lcom/iMe/ui/catalog/CatalogRootFragment;
.super Lcom/iMe/ui/base/mvp/MvpFragment;
.source "CatalogRootFragment.kt"

# interfaces
.implements Lcom/iMe/ui/wallet/common/BottomNavigationDelegate;
.implements Lcom/iMe/ui/catalog/CatalogRootView;
.implements Lcom/iMe/navigation/common/configuration/NavigationViewConfiguration;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/catalog/CatalogRootFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCatalogRootFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CatalogRootFragment.kt\ncom/iMe/ui/catalog/CatalogRootFragment\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 ViewExt.kt\ncom/iMe/utils/extentions/common/ViewExtKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,239:1\n13#2,4:240\n56#3,6:244\n56#3,6:250\n1855#4,2:256\n1855#4,2:258\n1855#4,2:269\n1855#4,2:271\n2634#4:273\n245#5,9:260\n1#6:274\n*S KotlinDebug\n*F\n+ 1 CatalogRootFragment.kt\ncom/iMe/ui/catalog/CatalogRootFragment\n*L\n45#1:240,4\n46#1:244,6\n47#1:250,6\n78#1:256,2\n83#1:258,2\n116#1:269,2\n138#1:271,2\n198#1:273\n87#1:260,9\n198#1:274\n*E\n"
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

.field public static final Companion:Lcom/iMe/ui/catalog/CatalogRootFragment$Companion;


# instance fields
.field private final binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final bottomNavigationRouter$delegate:Lkotlin/Lazy;

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

.field private final resourceManager$delegate:Lkotlin/Lazy;

.field private final tabs$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$DxE6wcDnWkZQQhQfnJogrt9-GpE(Lcom/iMe/ui/catalog/CatalogRootFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/catalog/CatalogRootFragment;->getThemeDescriptions$lambda$4(Lcom/iMe/ui/catalog/CatalogRootFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$f_iBQeX7Ks1Kj4LwQItnMde2M3o(Lcom/iMe/ui/catalog/CatalogRootFragment;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/catalog/CatalogRootFragment;->openSelectLanguageScreen$lambda$7(Lcom/iMe/ui/catalog/CatalogRootFragment;Ljava/lang/Integer;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/iMe/ui/catalog/CatalogRootFragment;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 45
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "presenter"

    const-string v4, "getPresenter()Lcom/iMe/ui/catalog/CatalogRootPresenter;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 50
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCatalogGlobalBinding;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/iMe/ui/catalog/CatalogRootFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/iMe/ui/catalog/CatalogRootFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/catalog/CatalogRootFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/ui/catalog/CatalogRootFragment;->Companion:Lcom/iMe/ui/catalog/CatalogRootFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 42
    invoke-direct {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;-><init>()V

    .line 45
    new-instance v0, Lcom/iMe/ui/catalog/CatalogRootFragment$presenter$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/catalog/CatalogRootFragment$presenter$2;-><init>(Lcom/iMe/ui/catalog/CatalogRootFragment;)V

    .line 16
    new-instance v1, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v2

    const-string v3, "mvpDelegate"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Lcom/iMe/ui/catalog/CatalogRootPresenter;

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

    .line 45
    iput-object v1, p0, Lcom/iMe/ui/catalog/CatalogRootFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 46
    invoke-static {}, Lcom/iMe/di/module/NavigationModuleKt;->getCOMMON_BOTTOM_NAVIGATOR()Lorg/koin/core/qualifier/StringQualifier;

    move-result-object v0

    .line 58
    sget-object v1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v2

    .line 61
    new-instance v3, Lcom/iMe/ui/catalog/CatalogRootFragment$special$$inlined$inject$default$1;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v0, v4}, Lcom/iMe/ui/catalog/CatalogRootFragment$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v2, v3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/iMe/ui/catalog/CatalogRootFragment;->bottomNavigationRouter$delegate:Lkotlin/Lazy;

    .line 58
    invoke-virtual {v1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v0

    .line 61
    new-instance v1, Lcom/iMe/ui/catalog/CatalogRootFragment$special$$inlined$inject$default$2;

    invoke-direct {v1, p0, v4, v4}, Lcom/iMe/ui/catalog/CatalogRootFragment$special$$inlined$inject$default$2;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 47
    iput-object v0, p0, Lcom/iMe/ui/catalog/CatalogRootFragment;->resourceManager$delegate:Lkotlin/Lazy;

    .line 50
    new-instance v0, Lcom/iMe/ui/catalog/CatalogRootFragment$binding$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/catalog/CatalogRootFragment$binding$2;-><init>(Lcom/iMe/ui/catalog/CatalogRootFragment;)V

    const/4 v1, 0x1

    invoke-static {p0, v4, v0, v1, v4}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/catalog/CatalogRootFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 51
    new-instance v0, Lcom/iMe/ui/catalog/CatalogRootFragment$tabs$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/catalog/CatalogRootFragment$tabs$2;-><init>(Lcom/iMe/ui/catalog/CatalogRootFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/catalog/CatalogRootFragment;->tabs$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getPresenter(Lcom/iMe/ui/catalog/CatalogRootFragment;)Lcom/iMe/ui/catalog/CatalogRootPresenter;
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/iMe/ui/catalog/CatalogRootFragment;->getPresenter()Lcom/iMe/ui/catalog/CatalogRootPresenter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initTabs(Lcom/iMe/ui/catalog/CatalogRootFragment;)Ljava/util/List;
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/iMe/ui/catalog/CatalogRootFragment;->initTabs()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCatalogGlobalBinding;
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/iMe/ui/catalog/CatalogRootFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/catalog/CatalogRootFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkFragmentCatalogGlobalBinding;

    return-object v0
.end method

.method private final getBottomNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/iMe/navigation/common/router/base/NavigationRouter<",
            "Lcom/iMe/ui/catalog/tabs/CatalogFragment;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/iMe/ui/catalog/CatalogRootFragment;->bottomNavigationRouter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/navigation/common/router/base/NavigationRouter;

    return-object v0
.end method

.method private final getPresenter()Lcom/iMe/ui/catalog/CatalogRootPresenter;
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/iMe/ui/catalog/CatalogRootFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/iMe/ui/catalog/CatalogRootFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/catalog/CatalogRootPresenter;

    return-object v0
.end method

.method private final getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/iMe/ui/catalog/CatalogRootFragment;->resourceManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object v0
.end method

.method private final getTabs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/model/common/NavigationTab<",
            "Lcom/iMe/ui/catalog/tabs/CatalogFragment;",
            ">;>;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/iMe/ui/catalog/CatalogRootFragment;->tabs$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private static final getThemeDescriptions$lambda$4(Lcom/iMe/ui/catalog/CatalogRootFragment;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-direct {p0}, Lcom/iMe/ui/catalog/CatalogRootFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCatalogGlobalBinding;

    move-result-object p0

    .line 111
    iget-object v0, p0, Lorg/telegram/messenger/databinding/ForkFragmentCatalogGlobalBinding;->cardBottomNavigationWrapper:Landroidx/cardview/widget/CardView;

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroidx/cardview/widget/CardView;->setRadius(F)V

    .line 112
    iget-object p0, p0, Lorg/telegram/messenger/databinding/ForkFragmentCatalogGlobalBinding;->realtimeBlur:Lcom/github/mmin18/widget/RealtimeBlurView;

    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    const/16 v1, 0x37

    invoke-static {v0, v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withAlpha(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/github/mmin18/widget/RealtimeBlurView;->setOverlayColor(I)V

    return-void
.end method

.method private final initTabs()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iMe/model/common/NavigationTab<",
            "Lcom/iMe/ui/catalog/tabs/CatalogFragment;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/iMe/model/common/NavigationTab;

    .line 190
    new-instance v1, Lcom/iMe/model/common/NavigationTab;

    .line 191
    sget v2, Lorg/telegram/messenger/R$id;->catalog_root_bottom_navigation_channels:I

    .line 192
    sget-object v3, Lcom/iMe/ui/catalog/tabs/CatalogFragment;->Companion:Lcom/iMe/ui/catalog/tabs/CatalogFragment$Companion;

    sget-object v4, Lcom/iMe/storage/domain/model/catalog/ChatType;->CHANNEL:Lcom/iMe/storage/domain/model/catalog/ChatType;

    invoke-virtual {v3, v4}, Lcom/iMe/ui/catalog/tabs/CatalogFragment$Companion;->newInstance(Lcom/iMe/storage/domain/model/catalog/ChatType;)Lcom/iMe/ui/catalog/tabs/CatalogFragment;

    move-result-object v4

    .line 190
    invoke-direct {v1, v2, v4}, Lcom/iMe/model/common/NavigationTab;-><init>(ILcom/iMe/ui/base/mvp/MvpFragment;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 194
    new-instance v1, Lcom/iMe/model/common/NavigationTab;

    .line 195
    sget v2, Lorg/telegram/messenger/R$id;->catalog_root_bottom_navigation_groups:I

    .line 196
    sget-object v4, Lcom/iMe/storage/domain/model/catalog/ChatType;->GROUP:Lcom/iMe/storage/domain/model/catalog/ChatType;

    invoke-virtual {v3, v4}, Lcom/iMe/ui/catalog/tabs/CatalogFragment$Companion;->newInstance(Lcom/iMe/storage/domain/model/catalog/ChatType;)Lcom/iMe/ui/catalog/tabs/CatalogFragment;

    move-result-object v3

    .line 194
    invoke-direct {v1, v2, v3}, Lcom/iMe/model/common/NavigationTab;-><init>(ILcom/iMe/ui/base/mvp/MvpFragment;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 189
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 2634
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/iMe/model/common/NavigationTab;

    .line 199
    invoke-virtual {v2}, Lcom/iMe/model/common/NavigationTab;->getFragment()Lcom/iMe/ui/base/mvp/MvpFragment;

    move-result-object v2

    check-cast v2, Lcom/iMe/ui/catalog/tabs/CatalogFragment;

    invoke-virtual {v2, p0}, Lcom/iMe/ui/wallet/common/BottomNavigationTabFragment;->setBottomNavigationDelegate(Lcom/iMe/ui/wallet/common/BottomNavigationDelegate;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static final newInstance()Lcom/iMe/ui/catalog/CatalogRootFragment;
    .locals 1

    sget-object v0, Lcom/iMe/ui/catalog/CatalogRootFragment;->Companion:Lcom/iMe/ui/catalog/CatalogRootFragment$Companion;

    invoke-virtual {v0}, Lcom/iMe/ui/catalog/CatalogRootFragment$Companion;->newInstance()Lcom/iMe/ui/catalog/CatalogRootFragment;

    move-result-object v0

    return-object v0
.end method

.method private static final openSelectLanguageScreen$lambda$7(Lcom/iMe/ui/catalog/CatalogRootFragment;Ljava/lang/Integer;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    invoke-direct {p0}, Lcom/iMe/ui/catalog/CatalogRootFragment;->getPresenter()Lcom/iMe/ui/catalog/CatalogRootPresenter;

    move-result-object p0

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/iMe/ui/catalog/CatalogRootPresenter;->onSelectedLanguageChanged(I)V

    return-void
.end method

.method private final setupActionBar()V
    .locals 4

    .line 152
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x0

    .line 153
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setCastShadows(Z)V

    .line 154
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 155
    invoke-direct {p0}, Lcom/iMe/ui/catalog/CatalogRootFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->catalog_title:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 156
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAllowOverlayTitle(Z)V

    .line 157
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v1

    sget v2, Lcom/iMe/common/IdFabric$Menu;->LANGUAGE:I

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_language:I

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 158
    new-instance v1, Lcom/iMe/ui/catalog/CatalogRootFragment$setupActionBar$1$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/catalog/CatalogRootFragment$setupActionBar$1$1;-><init>(Lcom/iMe/ui/catalog/CatalogRootFragment;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    return-void
.end method

.method private final setupBottomNavigationBar()V
    .locals 23

    .line 203
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/catalog/CatalogRootFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCatalogGlobalBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentCatalogGlobalBinding;->bottomNavigationCatalog:Lcom/fxn/BubbleTabBar;

    .line 204
    new-instance v1, Lcom/iMe/ui/catalog/CatalogRootFragment$setupBottomNavigationBar$1$1;

    move-object/from16 v2, p0

    invoke-direct {v1, v2}, Lcom/iMe/ui/catalog/CatalogRootFragment$setupBottomNavigationBar$1$1;-><init>(Lcom/iMe/ui/catalog/CatalogRootFragment;)V

    invoke-virtual {v0, v1}, Lcom/fxn/BubbleTabBar;->addBubbleListener(Lcom/fxn/OnBubbleClickListener;)V

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/fxn/parser/MenuItem;

    .line 211
    new-instance v12, Lcom/fxn/parser/MenuItem;

    .line 212
    sget v4, Lorg/telegram/messenger/R$id;->catalog_root_bottom_navigation_channels:I

    .line 213
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/catalog/CatalogRootFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    sget v5, Lorg/telegram/messenger/R$string;->catalog_navigation_channels:I

    invoke-interface {v3, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 214
    sget v6, Lorg/telegram/messenger/R$drawable;->fork_filter_icon_channel:I

    .line 216
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/catalog/CatalogRootFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    const v13, 0x106000b

    invoke-interface {v3, v13}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getColor(I)I

    move-result v8

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/16 v10, 0x20

    const/4 v11, 0x0

    move-object v3, v12

    .line 211
    invoke-direct/range {v3 .. v11}, Lcom/fxn/parser/MenuItem;-><init>(ILjava/lang/CharSequence;IZIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v3, 0x0

    aput-object v12, v1, v3

    .line 218
    new-instance v3, Lcom/fxn/parser/MenuItem;

    .line 219
    sget v15, Lorg/telegram/messenger/R$id;->catalog_root_bottom_navigation_groups:I

    .line 220
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/catalog/CatalogRootFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$string;->catalog_navigation_groups:I

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 221
    sget v17, Lorg/telegram/messenger/R$drawable;->msg_groups:I

    .line 223
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/catalog/CatalogRootFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v4

    invoke-interface {v4, v13}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getColor(I)I

    move-result v19

    const/16 v18, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x20

    const/16 v22, 0x0

    move-object v14, v3

    .line 218
    invoke-direct/range {v14 .. v22}, Lcom/fxn/parser/MenuItem;-><init>(ILjava/lang/CharSequence;IZIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v4, 0x1

    aput-object v3, v1, v4

    .line 210
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fxn/BubbleTabBar;->setMenu(Ljava/util/List;)V

    return-void
.end method

.method private final setupColors()V
    .locals 5

    .line 170
    invoke-direct {p0}, Lcom/iMe/ui/catalog/CatalogRootFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCatalogGlobalBinding;

    move-result-object v0

    .line 171
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentCatalogGlobalBinding;->realtimeBlur:Lcom/github/mmin18/widget/RealtimeBlurView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    const/16 v4, 0x37

    invoke-static {v3, v4}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withAlpha(II)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/github/mmin18/widget/RealtimeBlurView;->setOverlayColor(I)V

    .line 172
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentCatalogGlobalBinding;->bottomNavigationCatalog:Lcom/fxn/BubbleTabBar;

    .line 173
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v3, "parentActivity"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Lcom/fxn/BubbleTabBar;->setDisableIconColor(Landroid/content/Context;I)V

    .line 174
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/fxn/BubbleTabBar;->setTabContainerBackground(Landroid/content/Context;I)V

    return-void
.end method

.method private final setupNavigationRouter()V
    .locals 3

    .line 180
    invoke-direct {p0}, Lcom/iMe/ui/catalog/CatalogRootFragment;->getBottomNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

    move-result-object v0

    .line 181
    new-instance v1, Lcom/iMe/navigation/common/configuration/NavigationConfiguration;

    .line 183
    invoke-direct {p0}, Lcom/iMe/ui/catalog/CatalogRootFragment;->getTabs()Ljava/util/List;

    move-result-object v2

    .line 181
    invoke-direct {v1, p0, v2}, Lcom/iMe/navigation/common/configuration/NavigationConfiguration;-><init>(Lcom/iMe/navigation/common/configuration/NavigationViewConfiguration;Ljava/util/List;)V

    .line 180
    invoke-interface {v0, v1}, Lcom/iMe/navigation/common/router/base/NavigationRouter;->init(Lcom/iMe/navigation/common/configuration/NavigationConfiguration;)V

    return-void
.end method


# virtual methods
.method public getBottomNavigationPadding(Lkotlin/jvm/functions/Function1;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-direct {p0}, Lcom/iMe/ui/catalog/CatalogRootFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCatalogGlobalBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentCatalogGlobalBinding;->cardBottomNavigationWrapper:Landroidx/cardview/widget/CardView;

    const-string v1, "binding.cardBottomNavigationWrapper"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/iMe/ui/catalog/CatalogRootFragment$getBottomNavigationPadding$$inlined$afterMeasured$1;

    invoke-direct {v2, v0, p1}, Lcom/iMe/ui/catalog/CatalogRootFragment$getBottomNavigationPadding$$inlined$afterMeasured$1;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public getFragmentContainer()Landroid/view/ViewGroup;
    .locals 2

    .line 143
    invoke-direct {p0}, Lcom/iMe/ui/catalog/CatalogRootFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCatalogGlobalBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentCatalogGlobalBinding;->frameFragmentContainer:Landroid/widget/FrameLayout;

    const-string v1, "binding.frameFragmentContainer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getParentFragment()Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 0

    return-object p0
.end method

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

    const/4 v1, 0x6

    new-array v1, v1, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 104
    new-instance v10, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v3, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v4, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    sget v9, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefault:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v2, 0x0

    aput-object v10, v1, v2

    .line 105
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v12, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v13, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_ITEMSCOLOR:I

    sget v18, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultIcon:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v11, v2

    invoke-direct/range {v11 .. v18}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 106
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_TITLECOLOR:I

    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 107
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    sget v14, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSelector:I

    move-object v4, v2

    move v11, v14

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 108
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v8, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v9, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v7, v2

    invoke-direct/range {v7 .. v14}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 109
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 103
    new-instance v10, Lcom/iMe/ui/catalog/CatalogRootFragment$$ExternalSyntheticLambda1;

    invoke-direct {v10, v0}, Lcom/iMe/ui/catalog/CatalogRootFragment$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/ui/catalog/CatalogRootFragment;)V

    .line 114
    sget v11, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v2

    .line 109
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 103
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    .line 116
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/catalog/CatalogRootFragment;->getBottomNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

    move-result-object v2

    invoke-interface {v2}, Lcom/iMe/navigation/common/router/base/NavigationRouter;->getScreenStack()Ljava/util/List;

    move-result-object v2

    .line 1855
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iMe/ui/catalog/tabs/CatalogFragment;

    .line 117
    invoke-virtual {v3}, Lcom/iMe/ui/catalog/tabs/CatalogFragment;->getThemeDescriptions()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public isSwipeBackEnabled(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 56
    invoke-direct {p0}, Lcom/iMe/ui/catalog/CatalogRootFragment;->getBottomNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/navigation/common/router/base/NavigationRouter;->getCurrentScreen()Lcom/iMe/ui/base/mvp/MvpFragment;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/catalog/tabs/CatalogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/iMe/ui/catalog/tabs/CatalogFragment;->isSwipeBackEnabled(Landroid/view/MotionEvent;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public onActivityResultFragment(IILandroid/content/Intent;)V
    .locals 2

    .line 77
    invoke-super {p0, p1, p2, p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->onActivityResultFragment(IILandroid/content/Intent;)V

    .line 78
    invoke-direct {p0}, Lcom/iMe/ui/catalog/CatalogRootFragment;->getBottomNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/navigation/common/router/base/NavigationRouter;->getScreenStack()Ljava/util/List;

    move-result-object v0

    .line 1855
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/catalog/tabs/CatalogFragment;

    .line 78
    invoke-virtual {v1, p1, p2, p3}, Lcom/iMe/ui/catalog/tabs/CatalogFragment;->onActivityResultFragment(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-direct {p0}, Lcom/iMe/ui/catalog/CatalogRootFragment;->setupActionBar()V

    .line 61
    invoke-direct {p0}, Lcom/iMe/ui/catalog/CatalogRootFragment;->setupColors()V

    .line 62
    invoke-direct {p0}, Lcom/iMe/ui/catalog/CatalogRootFragment;->setupBottomNavigationBar()V

    .line 64
    invoke-direct {p0}, Lcom/iMe/ui/catalog/CatalogRootFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCatalogGlobalBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkFragmentCatalogGlobalBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 82
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onDestroyView()V

    .line 83
    invoke-direct {p0}, Lcom/iMe/ui/catalog/CatalogRootFragment;->getBottomNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/navigation/common/router/base/NavigationRouter;->getScreenStack()Ljava/util/List;

    move-result-object v0

    .line 1855
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/catalog/tabs/CatalogFragment;

    .line 83
    invoke-virtual {v1}, Lcom/iMe/ui/catalog/tabs/CatalogFragment;->onDestroyView()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onFragmentDestroy()V
    .locals 1

    .line 72
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onFragmentDestroy()V

    .line 73
    invoke-direct {p0}, Lcom/iMe/ui/catalog/CatalogRootFragment;->getBottomNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/navigation/common/router/base/NavigationRouter;->clean()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 98
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onPause()V

    .line 99
    invoke-direct {p0}, Lcom/iMe/ui/catalog/CatalogRootFragment;->getBottomNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/navigation/common/router/base/NavigationRouter;->getCurrentScreen()Lcom/iMe/ui/base/mvp/MvpFragment;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/catalog/tabs/CatalogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iMe/ui/catalog/tabs/CatalogFragment;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 93
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onResume()V

    .line 94
    invoke-direct {p0}, Lcom/iMe/ui/catalog/CatalogRootFragment;->getBottomNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/navigation/common/router/base/NavigationRouter;->getCurrentScreen()Lcom/iMe/ui/base/mvp/MvpFragment;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/catalog/tabs/CatalogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iMe/ui/catalog/tabs/CatalogFragment;->onResume()V

    :cond_0
    return-void
.end method

.method public onSelectedLanguageChanged()V
    .locals 2

    .line 138
    invoke-direct {p0}, Lcom/iMe/ui/catalog/CatalogRootFragment;->getTabs()Ljava/util/List;

    move-result-object v0

    .line 1855
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iMe/model/common/NavigationTab;

    .line 139
    invoke-virtual {v1}, Lcom/iMe/model/common/NavigationTab;->getFragment()Lcom/iMe/ui/base/mvp/MvpFragment;

    move-result-object v1

    check-cast v1, Lcom/iMe/ui/catalog/tabs/CatalogFragment;

    invoke-virtual {v1}, Lcom/iMe/ui/catalog/tabs/CatalogFragment;->onSelectedLanguageChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onTabSelected(I)V
    .locals 2

    .line 122
    invoke-direct {p0}, Lcom/iMe/ui/catalog/CatalogRootFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCatalogGlobalBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentCatalogGlobalBinding;->bottomNavigationCatalog:Lcom/fxn/BubbleTabBar;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/fxn/BubbleTabBar;->setSelectedById(IZ)V

    .line 123
    invoke-direct {p0}, Lcom/iMe/ui/catalog/CatalogRootFragment;->getBottomNavigationRouter()Lcom/iMe/navigation/common/router/base/NavigationRouter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/iMe/navigation/common/router/base/NavigationRouter;->show(I)V

    return-void
.end method

.method public onViewReady()V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/iMe/ui/catalog/CatalogRootFragment;->setupNavigationRouter()V

    return-void
.end method

.method public openSelectLanguageScreen(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+",
            "Lorg/telegram/messenger/LocaleController$LocaleInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "languages"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-static {p2}, Lcom/iMe/fork/utils/CollectionsUtilsKt;->toArrayList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p2

    .line 128
    new-instance v0, Lcom/iMe/ui/catalog/CatalogRootFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/iMe/ui/catalog/CatalogRootFragment$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/catalog/CatalogRootFragment;)V

    invoke-static {p1, p2, v0}, Lorg/telegram/ui/LanguageSelectActivity;->newInstanceForCatalog(ILjava/util/ArrayList;Lcom/iMe/fork/utils/Callbacks$Callback1;)Lorg/telegram/ui/LanguageSelectActivity;

    move-result-object p1

    .line 127
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method
