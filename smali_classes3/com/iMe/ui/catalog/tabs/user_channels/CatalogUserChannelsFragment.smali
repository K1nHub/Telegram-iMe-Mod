.class public final Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment;
.super Lcom/iMe/ui/catalog/tabs/CatalogTabFragment;
.source "CatalogUserChannelsFragment.kt"

# interfaces
.implements Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment$Companion;,
        Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCatalogUserChannelsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CatalogUserChannelsFragment.kt\ncom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 4 CollectionExt.kt\ncom/iMe/utils/extentions/common/CollectionExtKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,162:1\n13#2,4:163\n56#3,6:167\n56#3,6:173\n4#4:179\n5#4,2:182\n2634#5:180\n1#6:181\n*S KotlinDebug\n*F\n+ 1 CatalogUserChannelsFragment.kt\ncom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment\n*L\n31#1:163,4\n34#1:167,6\n35#1:173,6\n88#1:179\n88#1:182,2\n88#1:180\n88#1:181\n*E\n"
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

.field public static final Companion:Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment$Companion;


# instance fields
.field private final binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final chatType:Lcom/iMe/storage/domain/model/catalog/ChatType;

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

.field private final resourceManager$delegate:Lkotlin/Lazy;

.field private final userChannelsRecycleAdapter$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$Bde1pEYSFPWSSkQdXo6eKYS7Nq0(Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment;->getThemeDescriptions$lambda$0(Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mAMqcYPJw2G78ki8U5_5po8NgMo(Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment;->setupListeners$lambda$8$lambda$7(Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 31
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "presenter"

    const-string v4, "getPresenter()Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsPresenter;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 38
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCatalogUserChannelsBinding;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment;->Companion:Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/iMe/storage/domain/model/catalog/ChatType;)V
    .locals 4

    const-string v0, "chatType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/CatalogTabFragment;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment;->chatType:Lcom/iMe/storage/domain/model/catalog/ChatType;

    .line 31
    new-instance p1, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment$presenter$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment$presenter$2;-><init>(Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment;)V

    .line 16
    new-instance v0, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v1

    const-string v2, "mvpDelegate"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsPresenter;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "presenter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lmoxy/ktx/MoxyKtxDelegate;-><init>(Lmoxy/MvpDelegate;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 31
    iput-object v0, p0, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 58
    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v0

    .line 61
    new-instance v1, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment$special$$inlined$inject$default$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment;->userChannelsRecycleAdapter$delegate:Lkotlin/Lazy;

    .line 58
    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    .line 61
    new-instance v0, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment$special$$inlined$inject$default$2;

    invoke-direct {v0, p0, v2, v2}, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment$special$$inlined$inject$default$2;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, v0}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment;->resourceManager$delegate:Lkotlin/Lazy;

    .line 38
    new-instance p1, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment$binding$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment$binding$2;-><init>(Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment;)V

    const/4 v0, 0x1

    invoke-static {p0, v2, p1, v0, v2}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    return-void
.end method

.method public static final synthetic access$getPresenter(Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment;)Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsPresenter;
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment;->getPresenter()Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsPresenter;

    move-result-object p0

    return-object p0
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCatalogUserChannelsBinding;
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkFragmentCatalogUserChannelsBinding;

    return-object v0
.end method

.method private final getPresenter()Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsPresenter;
    .locals 3

    .line 31
    iget-object v0, p0, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsPresenter;

    return-object v0
.end method

.method private final getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment;->resourceManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object v0
.end method

.method private static final getThemeDescriptions$lambda$0(Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment;->setupColors()V

    .line 58
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment;->getUserChannelsRecycleAdapter()Lcom/iMe/ui/catalog/tabs/user_channels/adapter/CatalogUserChannelsRecycleAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private final getUserChannelsRecycleAdapter()Lcom/iMe/ui/catalog/tabs/user_channels/adapter/CatalogUserChannelsRecycleAdapter;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment;->userChannelsRecycleAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/catalog/tabs/user_channels/adapter/CatalogUserChannelsRecycleAdapter;

    return-object v0
.end method

.method private final setupColors()V
    .locals 3

    .line 103
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCatalogUserChannelsBinding;

    move-result-object v0

    .line 104
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentCatalogUserChannelsBinding;->textEmptyTitle:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "windowBackgroundWhiteBlackText"

    .line 105
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v2, "setupColors$lambda$4$lambda$3"

    .line 106
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 108
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentCatalogUserChannelsBinding;->textEmptyDescription:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "windowBackgroundWhiteGrayText"

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 109
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentCatalogUserChannelsBinding;->buttonAdd:Lcom/iMe/ui/custom/ActionButton;

    invoke-virtual {v0}, Lcom/iMe/ui/custom/ActionButton;->applyColors()V

    return-void
.end method

.method private final setupListeners()V
    .locals 7

    .line 123
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCatalogUserChannelsBinding;

    move-result-object v0

    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentCatalogUserChannelsBinding;->buttonAdd:Lcom/iMe/ui/custom/ActionButton;

    const-string v0, "binding.buttonAdd"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment$setupListeners$1;

    invoke-direct {v4, p0}, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment$setupListeners$1;-><init>(Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment;)V

    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 126
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment;->getUserChannelsRecycleAdapter()Lcom/iMe/ui/catalog/tabs/user_channels/adapter/CatalogUserChannelsRecycleAdapter;

    move-result-object v0

    .line 127
    new-instance v1, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/listener/OnItemClickListener;)V

    return-void
.end method

.method private static final setupListeners$lambda$8$lambda$7(Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "<anonymous parameter 0>"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 1>"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment;->getPresenter()Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsPresenter;->onAddChannelClick()V

    return-void
.end method

.method private final setupRecycleView()V
    .locals 3

    .line 114
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCatalogUserChannelsBinding;

    move-result-object v0

    .line 115
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentCatalogUserChannelsBinding;->recycleUserChannels:Landroidx/recyclerview/widget/RecyclerView;

    .line 116
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment;->getUserChannelsRecycleAdapter()Lcom/iMe/ui/catalog/tabs/user_channels/adapter/CatalogUserChannelsRecycleAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 117
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method private final setupViews()V
    .locals 5

    .line 134
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCatalogUserChannelsBinding;

    move-result-object v0

    .line 135
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentCatalogUserChannelsBinding;->imageEmpty:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v2, 0x1

    .line 136
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    .line 137
    sget v3, Lorg/telegram/messenger/R$raw;->fork_catalog_empty:I

    const/16 v4, 0x96

    invoke-virtual {v1, v3, v4, v4}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 138
    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    .line 140
    iget-object v1, p0, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment;->chatType:Lcom/iMe/storage/domain/model/catalog/ChatType;

    sget-object v3, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentCatalogUserChannelsBinding;->textEmptyTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->catalog_user_groups_empty_title:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentCatalogUserChannelsBinding;->textEmptyDescription:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->catalog_user_groups_empty_description:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentCatalogUserChannelsBinding;->buttonAdd:Lcom/iMe/ui/custom/ActionButton;

    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->catalog_user_groups_empty_create:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 142
    :cond_1
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentCatalogUserChannelsBinding;->textEmptyTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->catalog_user_channels_empty_title:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentCatalogUserChannelsBinding;->textEmptyDescription:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->catalog_user_channels_empty_description:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentCatalogUserChannelsBinding;->buttonAdd:Lcom/iMe/ui/custom/ActionButton;

    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->catalog_user_channels_empty_create:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final getChatType()Lcom/iMe/storage/domain/model/catalog/ChatType;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment;->chatType:Lcom/iMe/storage/domain/model/catalog/ChatType;

    return-object v0
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

    const/4 v1, 0x5

    new-array v1, v1, [Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 52
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

    .line 53
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

    .line 54
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

    .line 55
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    iget-object v5, v0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_AB_SELECTORCOLOR:I

    const-string v11, "actionBarDefaultSelector"

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 56
    new-instance v2, Lorg/telegram/ui/ActionBar/ThemeDescription;

    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCatalogUserChannelsBinding;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/databinding/ForkFragmentCatalogUserChannelsBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v5

    sget v6, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 51
    new-instance v10, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v10, v0}, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment;)V

    const-string v11, "windowBackgroundGray"

    move-object v4, v2

    .line 56
    invoke-direct/range {v4 .. v11}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;I[Ljava/lang/Class;Landroid/graphics/Paint;[Landroid/graphics/drawable/Drawable;Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;Ljava/lang/String;)V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 51
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public handleBottomPadding(I)V
    .locals 5

    .line 87
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCatalogUserChannelsBinding;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 88
    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkFragmentCatalogUserChannelsBinding;->recycleUserChannels:Landroidx/recyclerview/widget/RecyclerView;

    const-string v3, "recycleUserChannels"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentCatalogUserChannelsBinding;->viewEmpty:Landroidx/core/widget/NestedScrollView;

    const-string v2, "viewEmpty"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 2634
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 89
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, p1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment;->setupColors()V

    .line 44
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment;->setupListeners()V

    .line 45
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment;->setupRecycleView()V

    .line 46
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment;->setupViews()V

    .line 48
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCatalogUserChannelsBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkFragmentCatalogUserChannelsBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public synthetic onEmptyState()V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/custom/state/GlobalStateView$-CC;->$default$onEmptyState(Lcom/iMe/ui/custom/state/GlobalStateView;)V

    return-void
.end method

.method public synthetic onLoadingState()V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/custom/state/GlobalStateView$-CC;->$default$onLoadingState(Lcom/iMe/ui/custom/state/GlobalStateView;)V

    return-void
.end method

.method public synthetic onNoInternetErrorState()V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/custom/state/GlobalStateView$-CC;->$default$onNoInternetErrorState(Lcom/iMe/ui/custom/state/GlobalStateView;)V

    return-void
.end method

.method public onSelectedLanguageChanged()V
    .locals 0

    return-void
.end method

.method public synthetic onUnexpectedErrorState()V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/custom/state/GlobalStateView$-CC;->$default$onUnexpectedErrorState(Lcom/iMe/ui/custom/state/GlobalStateView;)V

    return-void
.end method

.method public openAddChannelScreen()V
    .locals 2

    .line 67
    new-instance v0, Lorg/telegram/ui/ActionIntroActivity;

    const/16 v1, 0x68

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionIntroActivity;-><init>(I)V

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public synthetic resetLoadMore()V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/base/mvp/LoadMoreView$-CC;->$default$resetLoadMore(Lcom/iMe/ui/base/mvp/LoadMoreView;)V

    return-void
.end method

.method public showItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-direct {p0}, Lcom/iMe/ui/catalog/tabs/user_channels/CatalogUserChannelsFragment;->getUserChannelsRecycleAdapter()Lcom/iMe/ui/catalog/tabs/user_channels/adapter/CatalogUserChannelsRecycleAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->setNewInstance(Ljava/util/List;)V

    return-void
.end method
