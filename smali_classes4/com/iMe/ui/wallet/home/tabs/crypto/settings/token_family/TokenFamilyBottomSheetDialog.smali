.class public final Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog;
.super Lcom/iMe/ui/base/mvp/MvpBottomSheet;
.source "TokenFamilyBottomSheetDialog.kt"

# interfaces
.implements Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTokenFamilyBottomSheetDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TokenFamilyBottomSheetDialog.kt\ncom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,134:1\n13#2,4:135\n56#3,6:139\n56#3,6:145\n*S KotlinDebug\n*F\n+ 1 TokenFamilyBottomSheetDialog.kt\ncom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog\n*L\n31#1:135,4\n34#1:139,6\n35#1:145,6\n*E\n"
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

.field public static final Companion:Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog$Companion;


# instance fields
.field private final binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

.field private final resourceManager$delegate:Lkotlin/Lazy;

.field private final tokensRecycleAdapter$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$ZmsAIBUY7V3cBSHCbXENHEtX7-A(Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog;->setupListeners$lambda$8(Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 31
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog;

    const-string v3, "presenter"

    const-string v4, "getPresenter()Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter;"

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    .line 38
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkContentTokenFamilyBinding;"

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog;->Companion:Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/iMe/model/wallet/home/FoundTokenItem;",
            ">;",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            ")V"
        }
    .end annotation

    const-string v0, "foundTokens"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "fragment.parentActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/base/mvp/MvpBottomSheet;-><init>(Landroid/content/Context;Z)V

    .line 27
    iput-object p2, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 31
    new-instance p2, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog$presenter$2;

    invoke-direct {p2, p0, p1}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog$presenter$2;-><init>(Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog;Ljava/util/List;)V

    .line 16
    new-instance p1, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v0

    const-string v2, "mvpDelegate"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "presenter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v0, v2, p2}, Lmoxy/ktx/MoxyKtxDelegate;-><init>(Lmoxy/MvpDelegate;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 31
    iput-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 58
    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p2

    .line 61
    new-instance v0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog$special$$inlined$inject$default$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v2}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p2, v0}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    .line 34
    iput-object p2, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog;->tokensRecycleAdapter$delegate:Lkotlin/Lazy;

    .line 58
    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    .line 61
    new-instance p2, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog$special$$inlined$inject$default$2;

    invoke-direct {p2, p0, v2, v2}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog$special$$inlined$inject$default$2;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog;->resourceManager$delegate:Lkotlin/Lazy;

    .line 38
    new-instance p1, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog$binding$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog$binding$2;-><init>(Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog;)V

    invoke-static {p0, v2, p1, v1, v2}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpBottomSheet;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    const/4 p1, 0x0

    .line 41
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyBottomPadding(Z)V

    return-void
.end method

.method public static final synthetic access$getFragment$p(Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object p0
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkContentTokenFamilyBinding;
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkContentTokenFamilyBinding;

    return-object v0
.end method

.method private final getPresenter()Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter;
    .locals 3

    .line 31
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter;

    return-object v0
.end method

.method private final getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog;->resourceManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object v0
.end method

.method private final getTokensRecycleAdapter()Lcom/iMe/ui/wallet/home/tabs/crypto/settings/adapter/FoundTokensRecycleAdapter;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog;->tokensRecycleAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/adapter/FoundTokensRecycleAdapter;

    return-object v0
.end method

.method private final setupColors()V
    .locals 4

    .line 78
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentTokenFamilyBinding;

    move-result-object v0

    .line 79
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentTokenFamilyBinding;->textTitle:Landroid/widget/TextView;

    .line 80
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const-string/jumbo v2, "setupColors$lambda$2$lambda$0"

    .line 81
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 83
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentTokenFamilyBinding;->textDescription:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentTokenFamilyBinding;->divider:Lcom/iMe/ui/custom/DividerView;

    invoke-virtual {v1}, Lcom/iMe/ui/custom/DividerView;->setupColors()V

    .line 85
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentTokenFamilyBinding;->buttonDone:Landroid/widget/TextView;

    const-string/jumbo v1, "setupColors$lambda$2$lambda$1"

    .line 86
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setRippleBackground$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 87
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlueText:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 88
    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    return-void
.end method

.method private final setupListeners()V
    .locals 7

    .line 116
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog;->getTokensRecycleAdapter()Lcom/iMe/ui/wallet/home/tabs/crypto/settings/adapter/FoundTokensRecycleAdapter;

    move-result-object v0

    new-instance v1, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog;)V

    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setOnItemClickListener(Lcom/chad/library/adapter/base/listener/OnItemClickListener;)V

    .line 121
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentTokenFamilyBinding;

    move-result-object v0

    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentTokenFamilyBinding;->buttonDone:Landroid/widget/TextView;

    const-string v0, "binding.buttonDone"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog$setupListeners$2;

    invoke-direct {v4, p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog$setupListeners$2;-><init>(Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog;)V

    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method private static final setupListeners$lambda$8(Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 1>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p1, p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 118
    instance-of p2, p1, Lcom/iMe/model/wallet/home/FoundTokenItem;

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog;->getPresenter()Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter;

    move-result-object p0

    check-cast p1, Lcom/iMe/model/wallet/home/FoundTokenItem;

    invoke-virtual {p0, p1}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter;->onTokenClicked(Lcom/iMe/model/wallet/home/FoundTokenItem;)V

    :cond_0
    return-void
.end method

.method private final setupRecyclerView()V
    .locals 4

    .line 101
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentTokenFamilyBinding;

    move-result-object v0

    .line 102
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentTokenFamilyBinding;->recyclerTokens:Landroidx/recyclerview/widget/RecyclerView;

    .line 103
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog;->getTokensRecycleAdapter()Lcom/iMe/ui/wallet/home/tabs/crypto/settings/adapter/FoundTokensRecycleAdapter;

    move-result-object v1

    .line 104
    invoke-virtual {v1}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/adapter/FoundTokensRecycleAdapter;->getFoundTokenProvider()Lcom/iMe/ui/adapter/provider/FoundTokenProvider;

    move-result-object v2

    const/4 v3, 0x0

    .line 105
    invoke-virtual {v2, v3}, Lcom/iMe/ui/adapter/provider/FoundTokenProvider;->setTickerVisible(Z)V

    .line 106
    invoke-virtual {v2, v3}, Lcom/iMe/ui/adapter/provider/FoundTokenProvider;->setLastItemDividerVisible(Z)V

    .line 108
    new-instance v2, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/adapter/diff/TokensSearchDiffCallback;

    invoke-direct {v2}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/adapter/diff/TokensSearchDiffCallback;-><init>()V

    invoke-virtual {v1, v2}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setDiffCallback(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 103
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 110
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method private final setupViews()V
    .locals 4

    .line 94
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentTokenFamilyBinding;

    move-result-object v0

    .line 95
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentTokenFamilyBinding;->textDescription:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->wallet_token_family_description:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentTokenFamilyBinding;->buttonDone:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->wallet_backup_done:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected canDismissWithSwipe()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected canDismissWithTouchOutside()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public dismiss()V
    .locals 1

    .line 60
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog;->getPresenter()Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyPresenter;->onDismiss()V

    .line 61
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method public onCreateView(Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog;->setupColors()V

    .line 48
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog;->setupListeners()V

    .line 49
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog;->setupRecyclerView()V

    .line 50
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog;->setupViews()V

    .line 52
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentTokenFamilyBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkContentTokenFamilyBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public renderData(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)V"
        }
    .end annotation

    const-string v0, "foundTokens"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog;->getTokensRecycleAdapter()Lcom/iMe/ui/wallet/home/tabs/crypto/settings/adapter/FoundTokensRecycleAdapter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->setDiffNewData$default(Lcom/chad/library/adapter/base/BaseQuickAdapter;Ljava/util/List;Ljava/lang/Runnable;ILjava/lang/Object;)V

    return-void
.end method

.method public setupScreenWithData(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/node/BaseNode;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "titleText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "foundTokens"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentTokenFamilyBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentTokenFamilyBinding;->textTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    invoke-direct {p0}, Lcom/iMe/ui/wallet/home/tabs/crypto/settings/token_family/TokenFamilyBottomSheetDialog;->getTokensRecycleAdapter()Lcom/iMe/ui/wallet/home/tabs/crypto/settings/adapter/FoundTokensRecycleAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/chad/library/adapter/base/BaseNodeAdapter;->setNewInstance(Ljava/util/List;)V

    return-void
.end method
