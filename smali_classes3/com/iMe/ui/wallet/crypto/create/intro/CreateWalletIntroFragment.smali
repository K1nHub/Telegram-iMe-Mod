.class public final Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;
.super Lcom/iMe/ui/base/wallet_creation/WalletCreationBaseFragment;
.source "CreateWalletIntroFragment.kt"

# interfaces
.implements Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCreateWalletIntroFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CreateWalletIntroFragment.kt\ncom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n+ 4 CollectionExt.kt\ncom/iMe/utils/extentions/common/CollectionExtKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,372:1\n13#2,4:373\n68#3,2:377\n162#3,8:379\n71#3:387\n40#3:388\n56#3:389\n75#3:390\n68#3,2:391\n162#3,8:393\n71#3:401\n40#3:402\n56#3:403\n75#3:404\n4#4:405\n5#4,2:408\n2634#5:406\n1#6:407\n*S KotlinDebug\n*F\n+ 1 CreateWalletIntroFragment.kt\ncom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment\n*L\n61#1:373,4\n222#1:377,2\n223#1:379,8\n222#1:387\n222#1:388\n222#1:389\n222#1:390\n225#1:391,2\n226#1:393,8\n225#1:401\n225#1:402\n225#1:403\n225#1:404\n270#1:405\n270#1:408,2\n270#1:406\n270#1:407\n*E\n"
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

.field public static final Companion:Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$Companion;


# instance fields
.field private final binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final bottomPanelRect:Landroid/graphics/Rect;

.field private final linkedWalletViewCornerRadius$delegate:Lkotlin/Lazy;

.field private final linkedWalletViewStrokeWidth$delegate:Lkotlin/Lazy;

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

.field private final toolbar$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final walletCreationType:Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;


# direct methods
.method public static synthetic $r8$lambda$3oUZ5uDEvEHvOajxR0GrcmQc-0U(Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;->setupColors()V

    return-void
.end method

.method public static synthetic $r8$lambda$gLVbsjfOOAy_g39SHr47KBWY0iM(Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;->setupItemMoreOptions$lambda$8$lambda$7(Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$gegpOcd2L1AYVg44iHoP340nBJI(Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;->showCreateNewWalletConfirmationDialog$lambda$2(Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ntoKGDqORFWed5U7crgXe2YGX5Y(Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;Landroid/view/View;IIII)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;->setupListeners$lambda$12$lambda$11(Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;Landroid/view/View;IIII)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;

    const/4 v1, 0x3

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 61
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "presenter"

    const-string v4, "getPresenter()Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 70
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 76
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "toolbar"

    const-string v4, "getToolbar()Lorg/telegram/ui/ActionBar/ActionBar;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;->Companion:Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;)V
    .locals 3

    const-string v0, "linkedWalletAddress"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "walletCreationType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-direct {p0}, Lcom/iMe/ui/base/wallet_creation/WalletCreationBaseFragment;-><init>()V

    .line 58
    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;->walletCreationType:Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;

    .line 61
    new-instance p2, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$presenter$2;

    invoke-direct {p2, p0, p1}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$presenter$2;-><init>(Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;Ljava/lang/String;)V

    .line 16
    new-instance p1, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v0

    const-string v1, "mvpDelegate"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "presenter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1, p2}, Lmoxy/ktx/MoxyKtxDelegate;-><init>(Lmoxy/MvpDelegate;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 61
    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 70
    new-instance p1, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$binding$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$binding$2;-><init>(Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;)V

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-static {p0, p2, p1, v0, p2}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 73
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;->bottomPanelRect:Landroid/graphics/Rect;

    .line 74
    sget-object p1, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$linkedWalletViewStrokeWidth$2;->INSTANCE:Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$linkedWalletViewStrokeWidth$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;->linkedWalletViewStrokeWidth$delegate:Lkotlin/Lazy;

    .line 75
    sget-object p1, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$linkedWalletViewCornerRadius$2;->INSTANCE:Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$linkedWalletViewCornerRadius$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;->linkedWalletViewCornerRadius$delegate:Lkotlin/Lazy;

    .line 76
    new-instance p1, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$toolbar$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$toolbar$2;-><init>(Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;)V

    invoke-static {p0, p2, p1, v0, p2}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;->toolbar$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    return-void
.end method

.method public static final synthetic access$getBottomPanelRect$p(Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;)Landroid/graphics/Rect;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;->bottomPanelRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static final synthetic access$getPresenter(Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;)Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter;
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;->getPresenter()Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getWalletCreationType$p(Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;)Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;->walletCreationType:Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;

    return-object p0
.end method

.method public static final synthetic access$initActionBar(Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;)Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;->initActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$openTutorialScreen(Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;->openTutorialScreen()V

    return-void
.end method

.method public static final synthetic access$showInfoDialog(Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;->showInfoDialog()V

    return-void
.end method

.method public static final synthetic access$updateBottomPanelElevation(Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;->updateBottomPanelElevation()V

    return-void
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;

    return-object v0
.end method

.method private final getLinkedWalletViewCornerRadius()F
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;->linkedWalletViewCornerRadius$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method private final getLinkedWalletViewStrokeWidth()F
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;->linkedWalletViewStrokeWidth$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method private final getPresenter()Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter;
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter;

    return-object v0
.end method

.method private final getToolbar()Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;->toolbar$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/ActionBar/ActionBar;

    return-object v0
.end method

.method private final initActionBar()Lorg/telegram/ui/ActionBar/ActionBar;
    .locals 4

    .line 178
    new-instance v0, Lorg/telegram/ui/ActionBar/ActionBar;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;-><init>(Landroid/content/Context;)V

    .line 179
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackButtonImage(I)V

    .line 180
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;->walletCreationType:Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;

    invoke-virtual {v2}, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;->getTitleTextResId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 181
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v1

    sget v2, Lcom/iMe/common/IdFabric$Menu;->INFO:I

    sget v3, Lorg/telegram/messenger/R$drawable;->msg_info:I

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->addItem(II)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 182
    new-instance v1, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$initActionBar$1$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$initActionBar$1$1;-><init>(Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setActionBarMenuOnItemClick(Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;)V

    return-object v0
.end method

.method private final openTutorialScreen()V
    .locals 3

    .line 360
    sget-object v0, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->Companion:Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$Companion;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$Companion;->newInstance$default(Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$Companion;Lcom/iMe/model/wallet/crypto/tutorial/TutorialType;ILjava/lang/Object;)Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private final setupColors()V
    .locals 7

    .line 254
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;->getToolbar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    .line 255
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBar;->setBackgroundColor(I)V

    .line 256
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/ActionBar;->setTitleColor(I)V

    .line 257
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 258
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 260
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;

    move-result-object v0

    .line 261
    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    const/4 v1, 0x2

    new-array v3, v1, [Landroid/widget/TextView;

    .line 263
    iget-object v5, v0, Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;->textTitle:Landroid/widget/TextView;

    const-string v6, "textTitle"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v5, v3, v4

    iget-object v5, v0, Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;->textAddress:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v6, "textAddress"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x1

    aput-object v5, v3, v6

    invoke-static {v2, v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setTextsColorKey(I[Landroid/widget/TextView;)V

    .line 264
    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;->textDescription:Landroid/widget/TextView;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 265
    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;->textLinkedWalletTitle:Landroid/widget/TextView;

    .line 266
    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v3, "setupColors$lambda$20$lambda$15"

    .line 267
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 269
    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;->textUserId:Landroidx/appcompat/widget/AppCompatTextView;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText:I

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    new-array v1, v1, [Landroidx/appcompat/widget/AppCompatImageView;

    .line 270
    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;->imageLinkedWalletInfo:Landroidx/appcompat/widget/AppCompatImageView;

    aput-object v2, v1, v4

    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;->imageCopy:Landroidx/appcompat/widget/AppCompatImageView;

    aput-object v2, v1, v6

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 2634
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 5
    check-cast v2, Landroidx/appcompat/widget/AppCompatImageView;

    const-string v3, "setupColors$lambda$20$lambda$16"

    .line 271
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/iMe/utils/extentions/common/ImageViewExtKt;->setImageColor(Landroid/widget/ImageView;I)V

    .line 272
    invoke-static {v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setCircleRippleBackground(Landroid/view/View;)V

    goto :goto_0

    .line 274
    :cond_0
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;->itemMoreOptions:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 275
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    const-string v2, "setupColors$lambda$20$lambda$17"

    .line 276
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setCircleRippleBackground(Landroid/view/View;)V

    .line 278
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;->constraintWallet:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v2, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    .line 279
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v4

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 281
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;->getLinkedWalletViewStrokeWidth()F

    move-result v4

    .line 282
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    invoke-virtual {p0, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    .line 280
    invoke-virtual {v2, v4, v5}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setStroke(FI)V

    .line 284
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;->getLinkedWalletViewCornerRadius()F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setCornerSize(F)V

    .line 278
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 286
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;->textPrivacy:Landroid/widget/TextView;

    .line 287
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 288
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 290
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;->linearBottomPanel:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 291
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;->buttonNext:Lcom/iMe/fork/ui/view/FloatingActionButton;

    invoke-virtual {v0}, Lcom/iMe/fork/ui/view/FloatingActionButton;->updateColors()V

    return-void
.end method

.method private final setupItemMoreOptions(Lcom/iMe/storage/domain/model/crypto/Network$Explorer;)V
    .locals 7

    .line 194
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;->itemMoreOptions:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x0

    .line 195
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setLongClickEnabled(Z)V

    const/4 v2, 0x2

    .line 196
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSubMenuOpenSide(I)V

    .line 197
    sget v2, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    const-string v2, "setupItemMoreOptions$lambda$8"

    .line 198
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setCircleRippleBackground(Landroid/view/View;)V

    .line 200
    sget v2, Lcom/iMe/common/IdFabric$Menu;->SCAN_ADDRESS:I

    .line 202
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    .line 203
    sget v4, Lorg/telegram/messenger/R$string;->wallet_transaction_details_action_open_etherscan:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 204
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/Network$Explorer;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 202
    invoke-interface {v3, v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 199
    invoke-virtual {v0, v2, v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v1

    .line 207
    invoke-virtual {p1}, Lcom/iMe/storage/domain/model/crypto/Network$Explorer;->getLogoUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setIcon(Ljava/lang/String;)V

    .line 209
    new-instance v4, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$setupItemMoreOptions$1$2;

    invoke-direct {v4, v0}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$setupItemMoreOptions$1$2;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 210
    new-instance p1, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setDelegate(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;)V

    .line 216
    sget p1, Lorg/telegram/messenger/R$string;->AccDescrMoreOptions:I

    const-string v1, "AccDescrMoreOptions"

    invoke-static {v1, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 215
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static final setupItemMoreOptions$lambda$8$lambda$7(Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    sget v0, Lcom/iMe/common/IdFabric$Menu;->SCAN_ADDRESS:I

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;->getPresenter()Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter;->onViewOnScanClick()V

    :cond_0
    return-void
.end method

.method private final setupListeners()V
    .locals 15

    .line 221
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;

    move-result-object v0

    .line 222
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;->getToolbar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    .line 68
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v2

    const-string v3, "nestedRoot"

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v2

    if-nez v2, :cond_0

    .line 223
    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;->nestedRoot:Landroidx/core/widget/NestedScrollView;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v0, Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;->nestedRoot:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v4, v1

    .line 163
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 165
    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    .line 166
    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    .line 168
    invoke-virtual {v2, v1, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 40
    :cond_0
    new-instance v2, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$setupListeners$lambda$12$$inlined$doOnLayout$1;

    invoke-direct {v2, v0}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$setupListeners$lambda$12$$inlined$doOnLayout$1;-><init>(Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 225
    :goto_0
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;->linearBottomPanel:Landroid/widget/LinearLayout;

    const-string v2, "linearBottomPanel"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v2

    if-nez v2, :cond_1

    .line 226
    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;->nestedRoot:Landroidx/core/widget/NestedScrollView;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 163
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    .line 164
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    .line 165
    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    .line 168
    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 227
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;->linearBottomPanel:Landroid/widget/LinearLayout;

    invoke-static {p0}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;->access$getBottomPanelRect$p(Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 228
    invoke-static {p0}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;->access$updateBottomPanelElevation(Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;)V

    goto :goto_1

    .line 40
    :cond_1
    new-instance v2, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$setupListeners$lambda$12$$inlined$doOnLayout$2;

    invoke-direct {v2, v0, p0}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$setupListeners$lambda$12$$inlined$doOnLayout$2;-><init>(Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 230
    :goto_1
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;->nestedRoot:Landroidx/core/widget/NestedScrollView;

    new-instance v2, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 237
    iget-object v3, v0, Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;->buttonNext:Lcom/iMe/fork/ui/view/FloatingActionButton;

    const-string v1, "buttonNext"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    new-instance v6, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$setupListeners$1$4;

    invoke-direct {v6, p0}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$setupListeners$1$4;-><init>(Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;)V

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 238
    iget-object v9, v0, Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;->imageCopy:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v1, "imageCopy"

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v10, 0x0

    new-instance v12, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$setupListeners$1$5;

    invoke-direct {v12, p0}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$setupListeners$1$5;-><init>(Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;)V

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-static/range {v9 .. v14}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 239
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;->imageLinkedWalletInfo:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v0, "imageLinkedWalletInfo"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$setupListeners$1$6;

    invoke-direct {v4, p0}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$setupListeners$1$6;-><init>(Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method private static final setupListeners$lambda$12$lambda$11(Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;Landroid/view/View;IIII)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;->getToolbar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object p1

    if-lez p3, :cond_0

    const/high16 p2, 0x41400000    # 12.0f

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setElevation(F)V

    .line 234
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;->updateBottomPanelElevation()V

    return-void
.end method

.method private final setupViews()V
    .locals 12

    .line 296
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAddToContainer(Z)V

    .line 297
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;

    move-result-object v0

    .line 298
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;->imageHeader:Lorg/telegram/ui/Components/RLottieImageView;

    const/4 v2, 0x1

    .line 299
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RLottieImageView;->setAutoRepeat(Z)V

    .line 300
    sget v3, Lorg/telegram/messenger/R$raw;->fork_crypto_wallet:I

    const/16 v4, 0x96

    invoke-virtual {v1, v3, v4, v4}, Lorg/telegram/ui/Components/RLottieImageView;->setAnimation(III)V

    .line 301
    invoke-virtual {v1}, Lorg/telegram/ui/Components/RLottieImageView;->playAnimation()V

    .line 303
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;->textTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->wallet_creation_intro_title:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;->textDescription:Landroid/widget/TextView;

    .line 305
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->wallet_creation_intro_description:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 304
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;->textLinkedWalletTitle:Landroid/widget/TextView;

    .line 307
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->wallet_creation_intro_linked_wallet:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 306
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;->textPrivacy:Landroid/widget/TextView;

    .line 309
    new-instance v3, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;

    invoke-direct {v3}, Lorg/telegram/messenger/AndroidUtilities$LinkMovementMethodMy;-><init>()V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 310
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->wallet_creation_intro_privacy:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 311
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v6, "*"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x0

    move-object v5, v3

    .line 312
    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v11

    const-string v6, "*"

    .line 313
    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v3

    const/4 v5, -0x1

    if-eq v11, v5, :cond_0

    if-eq v3, v5, :cond_0

    if-eq v11, v3, :cond_0

    add-int/lit8 v5, v3, 0x1

    const-string v6, ""

    .line 315
    invoke-virtual {v4, v3, v5, v6}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v5, v11, 0x1

    .line 320
    invoke-virtual {v4, v11, v5, v6}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 326
    new-instance v5, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    .line 329
    sget v6, Lorg/telegram/messenger/R$string;->PrivacyPolicyUrl:I

    const-string v7, "PrivacyPolicyUrl"

    .line 327
    invoke-static {v7, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 326
    invoke-direct {v5, v6}, Lorg/telegram/ui/Components/URLSpanNoUnderline;-><init>(Ljava/lang/String;)V

    sub-int/2addr v3, v2

    const/16 v2, 0x21

    .line 325
    invoke-virtual {v4, v5, v11, v3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 338
    :cond_0
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;->itemMoreOptions:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    sget v2, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 342
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;->buttonNext:Lcom/iMe/fork/ui/view/FloatingActionButton;

    sget v1, Lorg/telegram/messenger/R$drawable;->msg_arrow_forward:I

    invoke-virtual {v0, v1}, Lcom/iMe/fork/ui/view/FloatingActionButton;->setIcon(I)V

    return-void
.end method

.method private static final showCreateNewWalletConfirmationDialog$lambda$2(Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;->getPresenter()Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroPresenter;->prepareCreateWalletFlow()V

    return-void
.end method

.method private final showInfoDialog()V
    .locals 11

    .line 349
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    .line 350
    sget v1, Lorg/telegram/messenger/R$string;->wallet_creation_intro_information_title:I

    .line 349
    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 352
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    .line 353
    sget v1, Lorg/telegram/messenger/R$string;->wallet_creation_intro_information_description:I

    .line 352
    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x39

    const/4 v10, 0x0

    move-object v2, p0

    .line 348
    invoke-static/range {v2 .. v10}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->createDialogInfoWithAnimation$default(Lorg/telegram/ui/ActionBar/BaseFragment;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    .line 347
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method private final updateBottomPanelElevation()V
    .locals 3

    .line 244
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 245
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;

    move-result-object v1

    .line 246
    iget-object v2, v1, Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;->constraintLinkedWalletSection:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 247
    iget-object v1, v1, Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;->linearBottomPanel:Landroid/widget/LinearLayout;

    .line 248
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;->bottomPanelRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-lt v0, v2, :cond_0

    const/high16 v0, 0x41400000    # 12.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 247
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setElevation(F)V

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

    .line 169
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 170
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v2

    .line 171
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 172
    new-instance v4, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$$ExternalSyntheticLambda3;-><init>(Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;)V

    .line 173
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    .line 169
    invoke-direct {v1, v2, v3, v4, v5}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;ILorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 168
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public isLightStatusBar()Z
    .locals 4

    .line 165
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    invoke-static {v0}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v0

    const-wide v2, 0x3fe6666660000000L    # 0.699999988079071

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;->setupColors()V

    .line 80
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;->setupListeners()V

    .line 81
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;->setupViews()V

    .line 83
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    .line 85
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;->getToolbar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    .line 86
    invoke-static {v1, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    .line 84
    invoke-virtual {p1, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "binding.root.apply {\n   \u2026)\n            )\n        }"

    .line 83
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public openAddWalletScreen(Lcom/iMe/storage/domain/model/crypto/Wallet;Ljava/lang/String;)V
    .locals 3

    const-string v0, "wallet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    sget-object v0, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;->Companion:Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$Companion;

    .line 141
    new-instance v1, Lcom/iMe/model/wallet/crypto/tutorial/TutorialType$WalletIntro;

    .line 140
    new-instance v2, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$openAddWalletScreen$1;

    invoke-direct {v2, p1, p2}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$openAddWalletScreen$1;-><init>(Lcom/iMe/storage/domain/model/crypto/Wallet;Ljava/lang/String;)V

    .line 141
    invoke-direct {v1, v2}, Lcom/iMe/model/wallet/crypto/tutorial/TutorialType$WalletIntro;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 140
    invoke-virtual {v0, v1}, Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment$Companion;->newInstance(Lcom/iMe/model/wallet/crypto/tutorial/TutorialType;)Lcom/iMe/ui/wallet/crypto/tutorial/CreateWalletTutorialFragment;

    move-result-object p1

    .line 139
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public openAddressScan(Ljava/lang/String;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public openCreateWalletScreen(Lcom/iMe/storage/domain/model/crypto/Wallet;Ljava/lang/String;)V
    .locals 8

    const-string v0, "wallet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    new-instance v0, Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;

    .line 130
    new-instance v5, Lcom/iMe/model/wallet/pin/CreatePinCodeScreenType$Creation;

    .line 131
    sget-object v1, Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Create;->INSTANCE:Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial$Create;

    .line 130
    invoke-direct {v5, v1}, Lcom/iMe/model/wallet/pin/CreatePinCodeScreenType$Creation;-><init>(Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;)V

    const/4 v3, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p2

    move-object v4, p1

    .line 127
    invoke-direct/range {v1 .. v7}, Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Wallet;Lcom/iMe/model/wallet/pin/CreatePinCodeScreenType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 126
    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->newInstanceForWalletPin(Lcom/iMe/model/wallet/pin/WalletPinScreenArgs;)Lorg/telegram/ui/PasscodeActivity;

    move-result-object p1

    .line 125
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public openImportWalletScreen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "password"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    sget-object v0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->Companion:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$Companion;

    .line 116
    new-instance v1, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$Import;

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    invoke-direct {v1, p2, p1}, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$Import;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0, v1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$Companion;->newInstance(Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType;)Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    move-result-object p1

    .line 114
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public setupScreenData(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Network$Explorer;)V
    .locals 8

    const-string v0, "user"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "address"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "explorer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;

    move-result-object v0

    .line 93
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;->constraintLinkedWalletSection:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v2, "constraintLinkedWalletSection"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 94
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;->imageAvatar:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/BackupImageView;->setUser(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 95
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;->textUserId:Landroidx/appcompat/widget/AppCompatTextView;

    .line 96
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/R$string;->wallet_home_crypto_account_telegram_id:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-wide v6, p1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-interface {v4, v5, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 95
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;->textAddress:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    invoke-direct {p0, p3}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;->setupItemMoreOptions(Lcom/iMe/storage/domain/model/crypto/Network$Explorer;)V

    return-void
.end method

.method public showCreateNewWalletConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;)V
    .locals 7

    const-string v0, "dialogModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "context"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    new-instance v3, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;)V

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/dialogs/DialogUtils;->createDialog$default(Landroid/content/Context;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 108
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 109
    invoke-static {p1}, Lcom/iMe/utils/dialogs/DialogExtKt;->makeRedPositiveButton(Lorg/telegram/ui/ActionBar/AlertDialog;)V

    return-void
.end method

.method public updateNextButtonLoadingState(Z)V
    .locals 2

    .line 158
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentCreateWalletIntroBinding;->buttonNext:Lcom/iMe/fork/ui/view/FloatingActionButton;

    xor-int/lit8 v1, p1, 0x1

    .line 159
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 160
    invoke-virtual {v0, p1}, Lcom/iMe/fork/ui/view/FloatingActionButton;->updateLoadingState(Z)V

    return-void
.end method
