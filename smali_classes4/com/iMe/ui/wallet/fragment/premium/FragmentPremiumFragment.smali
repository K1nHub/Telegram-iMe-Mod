.class public final Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;
.super Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;
.source "FragmentPremiumFragment.kt"

# interfaces
.implements Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFragmentPremiumFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentPremiumFragment.kt\ncom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 4 CollectionExt.kt\ncom/iMe/utils/extentions/common/CollectionExtKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 7 View.kt\nandroidx/core/view/ViewKt\n+ 8 ViewGroup.kt\nandroidx/core/view/ViewGroupKt\n*L\n1#1,398:1\n13#2,4:399\n56#3,6:403\n4#4:409\n5#4,2:412\n2634#5:410\n1#6:411\n68#7,2:414\n162#7,8:416\n71#7:424\n40#7:425\n56#7:426\n75#7:427\n329#7,2:428\n350#7:430\n331#7,2:439\n142#8,8:431\n*S KotlinDebug\n*F\n+ 1 FragmentPremiumFragment.kt\ncom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment\n*L\n65#1:399,4\n68#1:403,6\n251#1:409\n251#1:412,2\n251#1:410\n251#1:411\n349#1:414,2\n350#1:416,8\n349#1:424\n349#1:425\n349#1:426\n349#1:427\n360#1:428,2\n361#1:430\n360#1:439,2\n361#1:431,8\n*E\n"
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

.field public static final Companion:Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$Companion;


# instance fields
.field private final actionButton$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final actionButtonContainerCornerRadius$delegate:Lkotlin/Lazy;

.field private final binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final gradientCanvas$delegate:Lkotlin/Lazy;

.field private final gradientTextureBitmap$delegate:Lkotlin/Lazy;

.field private final gradientTools:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

.field private final loadingSpanSize$delegate:Lkotlin/Lazy;

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

.field private final productsRecycleAdapter$delegate:Lkotlin/Lazy;

.field private recipientTextColorKey:I

.field private final recipientViewCornerRadius$delegate:Lkotlin/Lazy;

.field private final starParticlesView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final starTextureView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;


# direct methods
.method public static synthetic $r8$lambda$JL0x6C99IAi7dPnsUvGZ84LRIKU(Lorg/telegram/ui/ContactsActivity;Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/ui/ContactsActivity;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->openChooseContact$lambda$2$lambda$1(Lorg/telegram/ui/ContactsActivity;Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/ui/ContactsActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$S6a3lycaMOhZk4_DOVK5aG41VRU(Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->getThemeDescriptions$lambda$7(Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WAEdebOeoDZgXbmLemgFRs1_IZM(Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->showConfirmationDialog$lambda$0(Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nvpvo9Y4ObaTqegINs_Sert9Jr4(Lcom/iMe/ui/wallet/fragment/premium/adapter/TonFragmentPremiumRecycleAdapter;Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->setupListeners$lambda$20$lambda$19(Lcom/iMe/ui/wallet/fragment/premium/adapter/TonFragmentPremiumRecycleAdapter;Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;

    const/4 v1, 0x5

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 65
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string/jumbo v3, "presenter"

    const-string v4, "getPresenter()Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 70
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 74
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "actionButton"

    const-string v4, "getActionButton()Lorg/telegram/ui/Components/Premium/PremiumButtonView;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 88
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string/jumbo v3, "starParticlesView"

    const-string v4, "getStarParticlesView()Lorg/telegram/ui/Components/Premium/StarParticlesView;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 89
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string/jumbo v3, "starTextureView"

    const-string v4, "getStarTextureView()Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x4

    aput-object v0, v1, v2

    sput-object v1, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->Companion:Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 63
    invoke-direct {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;-><init>()V

    .line 65
    new-instance v0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$presenter$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$presenter$2;-><init>(Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;)V

    .line 16
    new-instance v1, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v2

    const-string/jumbo v3, "mvpDelegate"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;

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

    .line 65
    iput-object v1, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 58
    sget-object v0, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v0}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v0

    .line 61
    new-instance v1, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$special$$inlined$inject$default$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v2}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 68
    iput-object v0, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->productsRecycleAdapter$delegate:Lkotlin/Lazy;

    .line 70
    new-instance v0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$binding$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$binding$2;-><init>(Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;)V

    const/4 v1, 0x1

    invoke-static {p0, v2, v0, v1, v2}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 74
    new-instance v0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$actionButton$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$actionButton$2;-><init>(Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;)V

    invoke-static {p0, v2, v0, v1, v2}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->actionButton$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 75
    sget-object v0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$actionButtonContainerCornerRadius$2;->INSTANCE:Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$actionButtonContainerCornerRadius$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->actionButtonContainerCornerRadius$delegate:Lkotlin/Lazy;

    .line 76
    sget-object v0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$gradientTextureBitmap$2;->INSTANCE:Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$gradientTextureBitmap$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->gradientTextureBitmap$delegate:Lkotlin/Lazy;

    .line 79
    new-instance v0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$gradientCanvas$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$gradientCanvas$2;-><init>(Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->gradientCanvas$delegate:Lkotlin/Lazy;

    .line 80
    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    .line 81
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradientBackground1:I

    .line 82
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradientBackground2:I

    .line 83
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradientBackground3:I

    .line 84
    sget v6, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradientBackground4:I

    .line 80
    invoke-direct {v0, v3, v4, v5, v6}, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;-><init>(IIII)V

    iput-object v0, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->gradientTools:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    .line 86
    sget-object v0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$loadingSpanSize$2;->INSTANCE:Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$loadingSpanSize$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->loadingSpanSize$delegate:Lkotlin/Lazy;

    .line 87
    sget-object v0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$recipientViewCornerRadius$2;->INSTANCE:Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$recipientViewCornerRadius$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->recipientViewCornerRadius$delegate:Lkotlin/Lazy;

    .line 88
    new-instance v0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$starParticlesView$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$starParticlesView$2;-><init>(Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;)V

    invoke-static {p0, v2, v0, v1, v2}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->starParticlesView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 89
    new-instance v0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$starTextureView$2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$starTextureView$2;-><init>(Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;)V

    invoke-static {p0, v2, v0, v1, v2}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object v0

    iput-object v0, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->starTextureView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 90
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    iput v0, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->recipientTextColorKey:I

    return-void
.end method

.method public static final synthetic access$getGradientTextureBitmap(Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;)Landroid/graphics/Bitmap;
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->getGradientTextureBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getPresenter(Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;)Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->getPresenter()Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initActionButton(Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;)Lorg/telegram/ui/Components/Premium/PremiumButtonView;
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->initActionButton()Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initStarParticlesView(Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;)Lorg/telegram/ui/Components/Premium/StarParticlesView;
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->initStarParticlesView()Lorg/telegram/ui/Components/Premium/StarParticlesView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initStarTextureView(Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;)Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->initStarTextureView()Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    move-result-object p0

    return-object p0
.end method

.method private final getActionButton()Lorg/telegram/ui/Components/Premium/PremiumButtonView;
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->actionButton$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    return-object v0
.end method

.method private final getActionButtonContainerCornerRadius()I
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->actionButtonContainerCornerRadius$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;

    return-object v0
.end method

.method private final getGradientCanvas()Landroid/graphics/Canvas;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->gradientCanvas$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Canvas;

    return-object v0
.end method

.method private final getGradientTextureBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->gradientTextureBitmap$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<get-gradientTextureBitmap>(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private final getLoadingSpanSize()I
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->loadingSpanSize$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final getPresenter()Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;

    return-object v0
.end method

.method private final getProductsRecycleAdapter()Lcom/iMe/ui/wallet/fragment/premium/adapter/TonFragmentPremiumRecycleAdapter;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->productsRecycleAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/fragment/premium/adapter/TonFragmentPremiumRecycleAdapter;

    return-object v0
.end method

.method private final getRecipientViewCornerRadius()I
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->recipientViewCornerRadius$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final getStarParticlesView()Lorg/telegram/ui/Components/Premium/StarParticlesView;
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->starParticlesView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/Premium/StarParticlesView;

    return-object v0
.end method

.method private final getStarTextureView()Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->starTextureView$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    return-object v0
.end method

.method private static final getThemeDescriptions$lambda$7(Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->setupColors()V

    .line 187
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->getProductsRecycleAdapter()Lcom/iMe/ui/wallet/fragment/premium/adapter/TonFragmentPremiumRecycleAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private final initActionButton()Lorg/telegram/ui/Components/Premium/PremiumButtonView;
    .locals 5

    .line 194
    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->getDpToPx(I)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;-><init>(Landroid/content/Context;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-object v0
.end method

.method private final initStarParticlesView()Lorg/telegram/ui/Components/Premium/StarParticlesView;
    .locals 3

    .line 197
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$initStarParticlesView$1;

    invoke-direct {v1, v0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$initStarParticlesView$1;-><init>(Landroid/content/Context;)V

    .line 205
    iget-object v0, v1, Lorg/telegram/ui/Components/Premium/StarParticlesView;->drawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    const/4 v2, 0x0

    .line 206
    iput-boolean v2, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->useBlur:Z

    const/4 v2, 0x1

    .line 207
    iput-boolean v2, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->forceMaxAlpha:Z

    .line 208
    iput-boolean v2, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->checkBounds:Z

    .line 209
    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->init()V

    return-object v1
.end method

.method private final initStarTextureView()Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;
    .locals 2

    .line 214
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$initStarTextureView$1;

    invoke-direct {v1, v0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$initStarTextureView$1;-><init>(Landroid/content/Context;)V

    .line 227
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->getStarParticlesView()Lorg/telegram/ui/Components/Premium/StarParticlesView;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setStarParticlesView(Lorg/telegram/ui/Components/Premium/StarParticlesView;)V

    return-object v1
.end method

.method private static final openChooseContact$lambda$2$lambda$1(Lorg/telegram/ui/ContactsActivity;Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Lorg/telegram/ui/ContactsActivity;)V
    .locals 0

    const-string p3, "$this_apply"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p3, "this$0"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 140
    invoke-direct {p1}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->getPresenter()Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;

    move-result-object p0

    const-string/jumbo p1, "user"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;->onContactSelected(Lorg/telegram/tgnet/TLRPC$User;)V

    :cond_0
    return-void
.end method

.method private final setupColors()V
    .locals 9

    .line 231
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->updateStarTextureView()V

    .line 232
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->getStarParticlesView()Lorg/telegram/ui/Components/Premium/StarParticlesView;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/StarParticlesView;->drawable:Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/StarParticlesView$Drawable;->updateColors()V

    .line 233
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->getStarTextureView()Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->mRenderer:Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconRenderer;->updateColors()V

    .line 234
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;

    move-result-object v0

    .line 235
    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 237
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradientBackground2:I

    invoke-virtual {p0, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    const/4 v6, 0x0

    aput v5, v4, v6

    .line 238
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_premiumGradientBackground3:I

    invoke-virtual {p0, v5}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v5

    const/4 v7, 0x1

    aput v5, v4, v7

    .line 236
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 240
    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    .line 235
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 242
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;->buttonBack:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v2, -0x1

    .line 243
    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    const-string/jumbo v4, "setupColors$lambda$15$lambda$12"

    .line 244
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setCircleRippleBackground(Landroid/view/View;)V

    const/4 v1, 0x5

    new-array v1, v1, [Landroid/widget/TextView;

    .line 249
    iget-object v4, v0, Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;->textTitle:Landroid/widget/TextView;

    const-string/jumbo v5, "textTitle"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v4, v1, v6

    iget-object v4, v0, Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;->textSubtitle:Landroid/widget/TextView;

    const-string/jumbo v5, "textSubtitle"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v4, v1, v7

    iget-object v4, v0, Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;->textRecipientTitle:Landroid/widget/TextView;

    const-string/jumbo v5, "textRecipientTitle"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v4, v1, v3

    iget-object v4, v0, Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;->textDurationTitle:Landroid/widget/TextView;

    const-string/jumbo v5, "textDurationTitle"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x3

    aput-object v4, v1, v5

    iget-object v4, v0, Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;->textBalance:Landroid/widget/TextView;

    const-string/jumbo v8, "textBalance"

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x4

    aput-object v4, v1, v8

    .line 247
    invoke-static {v2, v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setTextsColor(I[Landroid/widget/TextView;)V

    new-array v1, v5, [Landroid/widget/TextView;

    .line 251
    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;->textTitle:Landroid/widget/TextView;

    aput-object v2, v1, v6

    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;->textRecipientTitle:Landroid/widget/TextView;

    aput-object v2, v1, v7

    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;->textDurationTitle:Landroid/widget/TextView;

    aput-object v2, v1, v3

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
    check-cast v2, Landroid/widget/TextView;

    const-string/jumbo v3, "setupColors$lambda$15$lambda$13"

    .line 252
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    goto :goto_0

    .line 254
    :cond_0
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;->viewRecipient:Landroid/widget/LinearLayout;

    .line 256
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->getRecipientViewCornerRadius()I

    move-result v2

    .line 257
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    .line 255
    invoke-static {v2, v4}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 260
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->getRecipientViewCornerRadius()I

    move-result v2

    .line 262
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v4

    .line 259
    invoke-static {v2, v6, v4}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 265
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;->textRecipientValue:Landroid/widget/TextView;

    iget v2, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->recipientTextColorKey:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 266
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;->imageRecipientIcon:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v2, "imageRecipientIcon"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/iMe/utils/extentions/common/ImageViewExtKt;->setImageColor(Landroid/widget/ImageView;I)V

    .line 268
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;->cardView:Landroidx/cardview/widget/CardView;

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 270
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;->frameButtonContainer:Landroid/widget/FrameLayout;

    .line 271
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->getActionButtonContainerCornerRadius()I

    move-result v1

    .line 273
    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v2

    .line 270
    invoke-static {v1, v6, v2}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private final setupListeners()V
    .locals 13

    .line 300
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;

    move-result-object v0

    .line 301
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;->buttonBack:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v2, "buttonBack"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$setupListeners$1$1;

    invoke-direct {v4, p0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$setupListeners$1$1;-><init>(Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;)V

    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 302
    iget-object v7, v0, Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;->viewRecipient:Landroid/widget/LinearLayout;

    const-string/jumbo v0, "viewRecipient"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$setupListeners$1$2;

    invoke-direct {v10, p0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$setupListeners$1$2;-><init>(Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;)V

    const-wide/16 v8, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 303
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->getActionButton()Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    move-result-object v0

    new-instance v3, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$setupListeners$1$3;

    invoke-direct {v3, p0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$setupListeners$1$3;-><init>(Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;)V

    const-wide/16 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 305
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->getProductsRecycleAdapter()Lcom/iMe/ui/wallet/fragment/premium/adapter/TonFragmentPremiumRecycleAdapter;

    move-result-object v0

    .line 306
    new-instance v1, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/wallet/fragment/premium/adapter/TonFragmentPremiumRecycleAdapter;Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/listener/OnItemClickListener;)V

    return-void
.end method

.method private static final setupListeners$lambda$20$lambda$19(Lcom/iMe/ui/wallet/fragment/premium/adapter/TonFragmentPremiumRecycleAdapter;Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string v0, "$this_with"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "<anonymous parameter 1>"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    invoke-virtual {p0, p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chad/library/adapter/base/entity/node/BaseNode;

    .line 308
    instance-of p2, p0, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;

    if-eqz p2, :cond_0

    invoke-direct {p1}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->getPresenter()Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;

    move-result-object p1

    check-cast p0, Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;

    invoke-virtual {p1, p0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;->onProductItemClick(Lcom/iMe/model/wallet/fragment/TonFragmentItem$Premium;)V

    :cond_0
    return-void
.end method

.method private final setupRecycleView()V
    .locals 4

    .line 315
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;->recyclerProducts:Landroidx/recyclerview/widget/RecyclerView;

    .line 316
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->getProductsRecycleAdapter()Lcom/iMe/ui/wallet/fragment/premium/adapter/TonFragmentPremiumRecycleAdapter;

    move-result-object v1

    .line 317
    invoke-virtual {v1}, Lcom/iMe/ui/wallet/fragment/premium/adapter/TonFragmentPremiumRecycleAdapter;->getGlobalStateProvider()Lcom/iMe/ui/adapter/provider/GlobalStateProvider;

    move-result-object v2

    const/4 v3, 0x1

    .line 318
    invoke-virtual {v2, v3}, Lcom/iMe/ui/adapter/provider/GlobalStateProvider;->setWhiteBackground(Z)V

    .line 319
    new-instance v3, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$setupRecycleView$1$1$1$1;

    invoke-direct {v3, p0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$setupRecycleView$1$1$1$1;-><init>(Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;)V

    invoke-virtual {v2, v3}, Lcom/iMe/ui/adapter/provider/GlobalStateProvider;->setOnRetryButtonClickAction(Lkotlin/jvm/functions/Function0;)V

    .line 321
    new-instance v2, Lcom/iMe/ui/wallet/fragment/premium/adapter/diff/TonFragmentPremiumDiffCallback;

    invoke-direct {v2}, Lcom/iMe/ui/wallet/fragment/premium/adapter/diff/TonFragmentPremiumDiffCallback;-><init>()V

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setDiffCallback(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 316
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 323
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/4 v1, 0x0

    .line 324
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    return-void
.end method

.method private final setupViews()V
    .locals 9

    .line 329
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAddToContainer(Z)V

    .line 330
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;

    move-result-object v0

    .line 331
    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;->framePremiumStarContainer:Landroid/widget/FrameLayout;

    .line 333
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->getStarParticlesView()Lorg/telegram/ui/Components/Premium/StarParticlesView;

    move-result-object v3

    const/4 v4, -0x1

    const/16 v5, 0xc8

    const/16 v6, 0x11

    .line 334
    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v7

    .line 332
    invoke-virtual {v2, v3, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 340
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->getStarTextureView()Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    move-result-object v3

    .line 341
    invoke-static {v5, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v5

    .line 339
    invoke-virtual {v2, v3, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 348
    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;->frameButtonContainer:Landroid/widget/FrameLayout;

    const-string/jumbo v3, "setupViews$lambda$30$lambda$26"

    .line 349
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-static {v2}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->isLayoutRequested()Z

    move-result v3

    if-nez v3, :cond_0

    .line 350
    iget-object v3, v0, Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;->nestedRoot:Landroidx/core/widget/NestedScrollView;

    const-string/jumbo v5, "nestedRoot"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v0, Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;->nestedRoot:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v5, v6

    .line 163
    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    .line 164
    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    .line 165
    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    .line 168
    invoke-virtual {v3, v6, v7, v8, v5}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 40
    :cond_0
    new-instance v3, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$setupViews$lambda$30$lambda$26$$inlined$doOnLayout$1;

    invoke-direct {v3, v0, v2}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$setupViews$lambda$30$lambda$26$$inlined$doOnLayout$1;-><init>(Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;Landroid/widget/FrameLayout;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 353
    :goto_0
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->getActionButton()Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    move-result-object v3

    const/16 v5, 0x30

    .line 354
    invoke-static {v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    .line 352
    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 358
    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;->buttonBack:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 359
    sget v3, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    const-string/jumbo v3, "setupViews$lambda$30$lambda$28"

    .line 360
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const-string/jumbo v4, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 350
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    instance-of v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_1

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_2

    iget v1, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 361
    :cond_2
    sget v4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v1, v4

    .line 143
    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 145
    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 146
    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 148
    invoke-virtual {v3, v4, v1, v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 331
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 364
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;->textTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->fragment_premium_title:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;->textSubtitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->fragment_premium_subtitle:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;->textRecipientTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    .line 368
    sget v3, Lorg/telegram/messenger/R$string;->wallet_binance_receive_choose_contact_title:I

    .line 367
    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;->textRecipientValue:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    .line 371
    sget v3, Lorg/telegram/messenger/R$string;->wallet_binance_receive_choose_contact_hint:I

    .line 370
    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;->textDurationTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    .line 374
    sget v3, Lorg/telegram/messenger/R$string;->fragment_premium_choose_duration:I

    .line 373
    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->fragment_premium_balance:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 378
    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;->textBalance:Landroid/widget/TextView;

    new-instance v3, Landroid/text/SpannableStringBuilder;

    .line 379
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "xxxxxx"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 378
    invoke-direct {v3, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 382
    new-instance v4, Lorg/telegram/ui/Components/LoadingSpan;

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;->textBalance:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->getLoadingSpanSize()I

    move-result v5

    invoke-direct {v4, v0, v5}, Lorg/telegram/ui/Components/LoadingSpan;-><init>(Landroid/view/View;I)V

    .line 383
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 384
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const/16 v5, 0x21

    .line 381
    invoke-virtual {v3, v4, v0, v1, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 378
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static final showConfirmationDialog$lambda$0(Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->getPresenter()Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumPresenter;->giftPremium()V

    return-void
.end method

.method private final updateStarTextureView()V
    .locals 15

    .line 279
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 280
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->isZero(Ljava/lang/Number;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/iMe/storage/data/utils/extentions/NumberExtKt;->isZero(Ljava/lang/Number;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 284
    :cond_0
    iget-object v2, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->gradientTools:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->gradientMatrix(IIIIFF)V

    .line 285
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->getGradientCanvas()Landroid/graphics/Canvas;

    move-result-object v1

    .line 286
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 287
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float v2, v3, v2

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 290
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v12, v2

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v13, v0

    .line 291
    iget-object v0, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->gradientTools:Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;

    iget-object v14, v0, Lorg/telegram/ui/Components/Premium/PremiumGradient$PremiumGradientTools;->paint:Landroid/graphics/Paint;

    move-object v9, v1

    .line 288
    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 293
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 295
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->getStarTextureView()Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    move-result-object v0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->getGradientTextureBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->setBackgroundBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    :goto_0
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

    .line 182
    new-instance v1, Lorg/telegram/ui/ActionBar/ThemeDescription;

    .line 183
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v2

    .line 184
    sget v3, Lorg/telegram/ui/ActionBar/ThemeDescription;->FLAG_BACKGROUND:I

    .line 181
    new-instance v4, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$$ExternalSyntheticLambda3;-><init>(Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;)V

    .line 189
    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundGray:I

    .line 182
    invoke-direct {v1, v2, v3, v4, v5}, Lorg/telegram/ui/ActionBar/ThemeDescription;-><init>(Landroid/view/View;ILorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 181
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
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

    .line 95
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->setupViews()V

    .line 96
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->setupRecycleView()V

    .line 97
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->setupColors()V

    .line 98
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->setupListeners()V

    .line 100
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onTransitionAnimationEnd(ZZ)V
    .locals 2

    .line 104
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->onTransitionAnimationEnd(ZZ)V

    .line 105
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->getStarTextureView()Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;

    move-result-object p1

    const/16 p2, -0x168

    const-wide/16 v0, 0x96

    invoke-virtual {p1, p2, v0, v1}, Lorg/telegram/ui/Components/Premium/GLIcon/GLIconTextureView;->startEnterAnimation(IJ)V

    return-void
.end method

.method public openChooseContact(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    new-instance v0, Lorg/telegram/ui/ContactsActivity;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ContactsActivity;-><init>(Landroid/os/Bundle;)V

    .line 138
    new-instance p1, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$$ExternalSyntheticLambda4;

    invoke-direct {p1, v0, p0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/ContactsActivity;Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ContactsActivity;->setDelegate(Lorg/telegram/ui/ContactsActivity$ContactsActivityDelegate;)V

    .line 136
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public renderBalance(Ljava/lang/String;)V
    .locals 1

    const-string v0, "balanceText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;->textBalance:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public renderButton(Ljava/lang/String;Z)V
    .locals 3

    const-string v0, "buttonText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->getActionButton()Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 153
    invoke-virtual {v0, p1, v1, v2}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setOverlayText(Ljava/lang/String;ZZ)V

    .line 158
    invoke-static {v0, p2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setEnabledWithAlpha(Landroid/view/View;Z)V

    return-void
.end method

.method public renderItems(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->getProductsRecycleAdapter()Lcom/iMe/ui/wallet/fragment/premium/adapter/TonFragmentPremiumRecycleAdapter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setDiffNewData$default(Lcom/chad/library/adapter/base/BaseQuickAdapter;Ljava/util/List;Ljava/lang/Runnable;ILjava/lang/Object;)V

    return-void
.end method

.method public renderRecipient(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 5

    const-string/jumbo v0, "user"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iput v0, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->recipientTextColorKey:I

    .line 164
    invoke-direct {p0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;

    move-result-object v0

    .line 165
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;->imageUserAvatar:Lorg/telegram/ui/Components/BackupImageView;

    const-string/jumbo v2, "renderRecipient$lambda$6$lambda$4"

    .line 166
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 167
    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/BackupImageView;->setUser(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 169
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentFragmentPremiumBinding;->textRecipientValue:Landroid/widget/TextView;

    .line 170
    invoke-static {p1}, Lorg/telegram/messenger/ContactsController;->formatName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget p1, p0, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;->recipientTextColorKey:I

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public showActionError(Ljava/lang/String;)V
    .locals 9

    const-string/jumbo v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->common_error:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 131
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->common_ok:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v2, p0

    move-object v4, p1

    .line 128
    invoke-static/range {v2 .. v8}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->showErrorAlert$default(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Landroid/app/Dialog;

    return-void
.end method

.method public showActionSuccess()V
    .locals 4

    .line 120
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->cryptobox_create_success_title:I

    invoke-interface {v0, v1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->fragment_premium_gift_success_description:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->common_ok:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 123
    new-instance v3, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;)V

    .line 119
    invoke-static {p0, v0, v1, v2, v3}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->showSuccessAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/iMe/fork/utils/Callbacks$Callback;)Landroid/app/Dialog;

    return-void
.end method

.method public showConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;)V
    .locals 7

    const-string v0, "dialogModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v0, "parentActivity"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    new-instance v3, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/ui/wallet/fragment/premium/FragmentPremiumFragment;)V

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/dialogs/DialogUtils;->createFormattedDialog$default(Landroid/content/Context;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 109
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method
