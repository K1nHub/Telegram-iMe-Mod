.class public final Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsBottomSheetDialog;
.super Lcom/iMe/ui/base/mvp/MvpBottomSheet;
.source "TonFragmentProductDetailsBottomSheetDialog.kt"

# interfaces
.implements Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsBottomSheetDialog$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTonFragmentProductDetailsBottomSheetDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TonFragmentProductDetailsBottomSheetDialog.kt\ncom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsBottomSheetDialog\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,125:1\n13#2,4:126\n56#3,6:130\n*S KotlinDebug\n*F\n+ 1 TonFragmentProductDetailsBottomSheetDialog.kt\ncom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsBottomSheetDialog\n*L\n30#1:126,4\n33#1:130,6\n*E\n"
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

.field public static final Companion:Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsBottomSheetDialog$Companion;


# instance fields
.field private final actionButton$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final onBuyClickAction:Lcom/iMe/fork/utils/Callbacks$Callback;

.field private final resourceManager$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x3

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 30
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsBottomSheetDialog;

    const-string/jumbo v3, "presenter"

    const-string v4, "getPresenter()Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsPresenter;"

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    .line 35
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsBottomSheetDialog;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkContentFragmentProductDetailsBinding;"

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 38
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsBottomSheetDialog;

    const-string v3, "actionButton"

    const-string v4, "getActionButton()Lorg/telegram/ui/Components/Premium/PremiumButtonView;"

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsBottomSheetDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsBottomSheetDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsBottomSheetDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsBottomSheetDialog;->Companion:Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsBottomSheetDialog$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/iMe/model/wallet/fragment/TonFragmentItem$Product;Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 4

    const-string/jumbo v0, "productItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "onBuyClickAction"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "fragment.parentActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/base/mvp/MvpBottomSheet;-><init>(Landroid/content/Context;Z)V

    .line 27
    iput-object p3, p0, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsBottomSheetDialog;->onBuyClickAction:Lcom/iMe/fork/utils/Callbacks$Callback;

    .line 30
    new-instance p3, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsBottomSheetDialog$presenter$2;

    invoke-direct {p3, p0, p1}, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsBottomSheetDialog$presenter$2;-><init>(Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsBottomSheetDialog;Lcom/iMe/model/wallet/fragment/TonFragmentItem$Product;)V

    .line 16
    new-instance p1, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v0

    const-string/jumbo v2, "mvpDelegate"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsPresenter;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "presenter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v0, v2, p3}, Lmoxy/ktx/MoxyKtxDelegate;-><init>(Lmoxy/MvpDelegate;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 58
    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    .line 61
    new-instance p3, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsBottomSheetDialog$special$$inlined$inject$default$1;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0, v0}, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsBottomSheetDialog$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, p3}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 33
    iput-object p1, p0, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsBottomSheetDialog;->resourceManager$delegate:Lkotlin/Lazy;

    .line 35
    new-instance p1, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsBottomSheetDialog$binding$2;

    invoke-direct {p1, p2}, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsBottomSheetDialog$binding$2;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-static {p0, v0, p1, v1, v0}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpBottomSheet;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsBottomSheetDialog;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 38
    new-instance p1, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsBottomSheetDialog$actionButton$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsBottomSheetDialog$actionButton$2;-><init>(Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsBottomSheetDialog;)V

    invoke-static {p0, v0, p1, v1, v0}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpBottomSheet;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsBottomSheetDialog;->actionButton$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    const/4 p1, 0x0

    .line 41
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyBottomPadding(Z)V

    return-void
.end method

.method public static final synthetic access$getOnBuyClickAction$p(Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsBottomSheetDialog;)Lcom/iMe/fork/utils/Callbacks$Callback;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsBottomSheetDialog;->onBuyClickAction:Lcom/iMe/fork/utils/Callbacks$Callback;

    return-object p0
.end method

.method public static final synthetic access$initActionButton(Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsBottomSheetDialog;)Lorg/telegram/ui/Components/Premium/PremiumButtonView;
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsBottomSheetDialog;->initActionButton()Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    move-result-object p0

    return-object p0
.end method

.method private final getActionButton()Lorg/telegram/ui/Components/Premium/PremiumButtonView;
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsBottomSheetDialog;->actionButton$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsBottomSheetDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    return-object v0
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkContentFragmentProductDetailsBinding;
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsBottomSheetDialog;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsBottomSheetDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkContentFragmentProductDetailsBinding;

    return-object v0
.end method

.method private final getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsBottomSheetDialog;->resourceManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object v0
.end method

.method private final initActionButton()Lorg/telegram/ui/Components/Premium/PremiumButtonView;
    .locals 5

    .line 90
    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->getDpToPx(I)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v4, v3}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;-><init>(Landroid/content/Context;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-object v0
.end method

.method private final setupColors()V
    .locals 2

    .line 105
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentFragmentProductDetailsBinding;

    move-result-object v0

    .line 106
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentFragmentProductDetailsBinding;->viewHeader:Lcom/iMe/ui/custom/ImageHeaderView;

    invoke-virtual {v1}, Lcom/iMe/ui/custom/ImageHeaderView;->setupColors()V

    .line 107
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentFragmentProductDetailsBinding;->viewPriceCell:Lcom/iMe/ui/custom/DetailsIconCellView;

    invoke-virtual {v1}, Lcom/iMe/ui/custom/DetailsIconCellView;->setupColors()V

    .line 108
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentFragmentProductDetailsBinding;->viewTimeLeftCell:Lcom/iMe/ui/custom/DetailsIconCellView;

    invoke-virtual {v0}, Lcom/iMe/ui/custom/DetailsIconCellView;->setupColors()V

    return-void
.end method

.method private final setupListeners()V
    .locals 6

    .line 113
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsBottomSheetDialog;->getActionButton()Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    move-result-object v0

    new-instance v3, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsBottomSheetDialog$setupListeners$1;

    invoke-direct {v3, p0}, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsBottomSheetDialog$setupListeners$1;-><init>(Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsBottomSheetDialog;)V

    const-wide/16 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method private final setupViews()V
    .locals 5

    .line 93
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentFragmentProductDetailsBinding;

    move-result-object v0

    .line 94
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentFragmentProductDetailsBinding;->frameButtonContainer:Landroid/widget/FrameLayout;

    .line 95
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsBottomSheetDialog;->getActionButton()Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    move-result-object v1

    const/4 v2, -0x1

    const/16 v3, 0x30

    const/16 v4, 0x10

    .line 96
    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    .line 94
    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected canDismissWithSwipe()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreateView(Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsBottomSheetDialog;->setupViews()V

    .line 46
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsBottomSheetDialog;->setupColors()V

    .line 47
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsBottomSheetDialog;->setupListeners()V

    .line 49
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentFragmentProductDetailsBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkContentFragmentProductDetailsBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public renderScreenData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const-string/jumbo v0, "titleText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "username"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "priceText"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentFragmentProductDetailsBinding;

    move-result-object v0

    .line 56
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentFragmentProductDetailsBinding;->viewHeader:Lcom/iMe/ui/custom/ImageHeaderView;

    const-string/jumbo v2, "viewHeader"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    new-instance v2, Lcom/iMe/ui/custom/ImageHeaderView$IconData$TextAvatar;

    .line 59
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    int-to-long v3, v3

    const/4 v8, 0x1

    .line 61
    invoke-static {p2, v8}, Lkotlin/text/StringsKt;->getOrNull(Ljava/lang/CharSequence;I)Ljava/lang/Character;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 58
    :goto_0
    invoke-direct {v2, v3, v4, p2, v5}, Lcom/iMe/ui/custom/ImageHeaderView$IconData$TextAvatar;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 65
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object p2

    sget v4, Lorg/telegram/messenger/R$string;->fragment_username_details_description:I

    invoke-interface {p2, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v4, p1

    .line 56
    invoke-static/range {v1 .. v7}, Lcom/iMe/ui/custom/ImageHeaderView;->setupViewData$default(Lcom/iMe/ui/custom/ImageHeaderView;Lcom/iMe/ui/custom/ImageHeaderView$IconData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 67
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkContentFragmentProductDetailsBinding;->viewPriceCell:Lcom/iMe/ui/custom/DetailsIconCellView;

    .line 68
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$string;->wallet_buy_tokens_purchase_slide_price_title:I

    invoke-interface {p2, v0}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 70
    sget v0, Lorg/telegram/messenger/R$drawable;->fork_ic_donations_24:I

    .line 67
    invoke-virtual {p1, p2, p3, v0, v8}, Lcom/iMe/ui/custom/DetailsIconCellView;->setupViewData(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 73
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsBottomSheetDialog;->getActionButton()Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    move-result-object p1

    .line 74
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/R$string;->fragment_username_details_buy:I

    new-array v1, v8, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    invoke-interface {p2, v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 73
    invoke-virtual {p1, p2, v2, v8}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setOverlayText(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public renderTimeLeft(Ljava/lang/String;)V
    .locals 8

    const-string/jumbo v0, "timeLeftText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentFragmentProductDetailsBinding;

    move-result-object v0

    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentFragmentProductDetailsBinding;->viewTimeLeftCell:Lcom/iMe/ui/custom/DetailsIconCellView;

    const-string v0, "binding.viewTimeLeftCell"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/usernames/details/TonFragmentProductDetailsBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$string;->fragment_username_details_ends_in:I

    invoke-interface {v0, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 85
    sget v4, Lorg/telegram/messenger/R$drawable;->fork_ic_done_24:I

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v3, p1

    .line 82
    invoke-static/range {v1 .. v7}, Lcom/iMe/ui/custom/DetailsIconCellView;->setupViewData$default(Lcom/iMe/ui/custom/DetailsIconCellView;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)V

    return-void
.end method
