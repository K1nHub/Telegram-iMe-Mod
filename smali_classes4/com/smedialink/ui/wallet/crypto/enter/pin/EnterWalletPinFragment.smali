.class public final Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;
.super Lcom/smedialink/ui/base/WalletAuthFragment;
.source "EnterWalletPinFragment.kt"

# interfaces
.implements Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment$Companion;,
        Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEnterWalletPinFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EnterWalletPinFragment.kt\ncom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 ContextExt.kt\ncom/smedialink/utils/extentions/common/ContextExtKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 View.kt\nandroidx/core/view/ViewKt\n+ 6 ViewGroup.kt\nandroidx/core/view/ViewGroupKt\n+ 7 RxEventBus.kt\ncom/smedialink/storage/domain/utils/rx/RxEventBus\n+ 8 RxExt.kt\ncom/smedialink/utils/extentions/rx/RxExtKt\n*L\n1#1,164:1\n13#2,4:165\n59#3:169\n51#3:174\n52#3:186\n53#3,3:189\n56#3:193\n1768#4,4:170\n798#4,11:175\n1858#4,2:187\n1860#4:192\n321#5,2:194\n342#5:196\n323#5,2:205\n120#6,8:197\n16#7,3:207\n39#8,6:210\n*S KotlinDebug\n*F\n+ 1 EnterWalletPinFragment.kt\ncom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment\n*L\n38#1:165,4\n91#1:169\n95#1:174\n95#1:186\n95#1:189,3\n95#1:193\n91#1:170,4\n95#1:175,11\n95#1:187,2\n95#1:192\n103#1:194,2\n104#1:196\n103#1:205,2\n104#1:197,8\n137#1:207,3\n138#1:210,6\n*E\n"
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

.field public static final Companion:Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment$Companion;


# instance fields
.field private final binding$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

.field private final resultDelegate:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/smedialink/model/wallet/crypto/pin/EnterPinCodeResult;",
            "Lcom/smedialink/ui/base/mvp/MvpFragment;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final screenType:Lcom/smedialink/model/wallet/crypto/pin/EnterPinCodeScreenType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 38
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "presenter"

    const-string v4, "getPresenter()Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 43
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletEthEnterPinBinding;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->Companion:Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/smedialink/model/wallet/crypto/pin/EnterPinCodeScreenType;Lkotlin/jvm/functions/Function2;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smedialink/model/wallet/crypto/pin/EnterPinCodeScreenType;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/smedialink/model/wallet/crypto/pin/EnterPinCodeResult;",
            "-",
            "Lcom/smedialink/ui/base/mvp/MvpFragment;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "screenType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resultDelegate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Lcom/smedialink/ui/base/WalletAuthFragment;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->screenType:Lcom/smedialink/model/wallet/crypto/pin/EnterPinCodeScreenType;

    .line 34
    iput-object p2, p0, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->resultDelegate:Lkotlin/jvm/functions/Function2;

    .line 38
    new-instance p1, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment$presenter$2;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment$presenter$2;-><init>(Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;)V

    .line 16
    new-instance p2, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v0

    const-string v1, "mvpDelegate"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "presenter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1, p1}, Lmoxy/ktx/MoxyKtxDelegate;-><init>(Lmoxy/MvpDelegate;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 38
    iput-object p2, p0, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 43
    new-instance p1, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment$binding$2;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment$binding$2;-><init>(Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;)V

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-static {p0, p2, p1, v0, p2}, Lcom/smedialink/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/smedialink/ui/base/mvp/MvpFragment;Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->binding$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    return-void
.end method

.method public static final synthetic access$getPresenter(Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;)Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->getPresenter()Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getResultDelegate$p(Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;)Lkotlin/jvm/functions/Function2;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->resultDelegate:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public static final synthetic access$getRxEventBus(Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;)Lcom/smedialink/storage/domain/utils/rx/RxEventBus;
    .locals 0

    .line 32
    invoke-virtual {p0}, Lcom/smedialink/ui/base/WalletAuthFragment;->getRxEventBus()Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getScreenType$p(Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;)Lcom/smedialink/model/wallet/crypto/pin/EnterPinCodeScreenType;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->screenType:Lcom/smedialink/model/wallet/crypto/pin/EnterPinCodeScreenType;

    return-object p0
.end method

.method public static final synthetic access$handleBackPress(Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->handleBackPress()V

    return-void
.end method

.method public static final synthetic access$onForgotPinClick(Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->onForgotPinClick()V

    return-void
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletEthEnterPinBinding;
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->binding$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/smedialink/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletEthEnterPinBinding;

    return-object v0
.end method

.method private final getPresenter()Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;

    return-object v0
.end method

.method private final handleBackPress()V
    .locals 6

    .line 94
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->screenType:Lcom/smedialink/model/wallet/crypto/pin/EnterPinCodeScreenType;

    sget-object v1, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_3

    .line 96
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    goto :goto_3

    .line 95
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    const-string v1, "parentLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    const-string v1, "fragmentStack"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 798
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 807
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/smedialink/ui/base/WalletAuthFragment;

    if-eqz v3, :cond_2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 1859
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    if-gez v0, :cond_4

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_4
    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 53
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v5

    if-ne v0, v5, :cond_5

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    goto :goto_2

    .line 54
    :cond_5
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->removeSelfFromStack()V

    :goto_2
    move v0, v4

    goto :goto_1

    :cond_6
    :goto_3
    return-void
.end method

.method private final isLastWalletScreen()Z
    .locals 4

    .line 91
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    const-string v1, "parentLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    const-string v1, "fragmentStack"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1768
    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    .line 1770
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 59
    instance-of v3, v3, Lcom/smedialink/ui/base/WalletAuthFragment;

    if-eqz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    if-gez v1, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwCountOverflow()V

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v0, 0x1

    if-ne v1, v0, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method private final onForgotPinClick()V
    .locals 1

    .line 152
    invoke-static {}, Lorg/telegram/ui/PasscodeActivity;->newInstanceForWalletPinRestore()Lorg/telegram/ui/PasscodeActivity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private final setupActionBar()V
    .locals 8

    .line 101
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAddToContainer(Z)V

    .line 102
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletEthEnterPinBinding;

    move-result-object v0

    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletEthEnterPinBinding;->imageBack:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v0, ""

    .line 103
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 321
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 342
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_0

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 104
    :goto_1
    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v1, v3

    .line 120
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 126
    invoke-virtual {v0, v3, v1, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 323
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    sget v0, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 107
    invoke-static {v2}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->setCircleRippleBackground(Landroid/view/View;)V

    const-string v0, "actionBarDefaultTitle"

    .line 108
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-static {v2, v0}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->setImageColor(Landroid/widget/ImageView;I)V

    const-wide/16 v3, 0x0

    .line 109
    new-instance v5, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment$setupActionBar$1$2;

    invoke-direct {v5, p0}, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment$setupActionBar$1$2;-><init>(Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method private final setupListeners()V
    .locals 4

    .line 136
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
    new-instance v1, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment$setupListeners$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment$setupListeners$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;)V

    new-instance v2, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment$setupListeners$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment$setupListeners$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/smedialink/ui/base/mvp/base/BaseView;)V

    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string v1, "viewState: BaseView? = n\u2026  onError.invoke()\n    })"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0, v0}, Lcom/smedialink/ui/base/mvp/MvpFragment;->autoDispose(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method private final setupPasscodeView()V
    .locals 2

    .line 114
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletEthEnterPinBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletEthEnterPinBinding;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    .line 116
    new-instance v1, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment$setupPasscodeView$1$1;

    invoke-direct {v1, p0}, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment$setupPasscodeView$1$1;-><init>(Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;)V

    .line 115
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PasscodeView;->setWalletDelegate(Lorg/telegram/ui/Components/PasscodeView$WalletDelegate;)V

    const/4 v1, 0x0

    .line 131
    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Components/PasscodeView;->onShow(ZZ)V

    return-void
.end method


# virtual methods
.method public isSwipeBackEnabled(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 54
    iget-object p1, p0, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->screenType:Lcom/smedialink/model/wallet/crypto/pin/EnterPinCodeScreenType;

    invoke-virtual {p1}, Lcom/smedialink/model/wallet/crypto/pin/EnterPinCodeScreenType;->isTotalLock()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->isLastWalletScreen()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onBackPressed()Z
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->handleBackPress()V

    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->setupListeners()V

    .line 58
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->setupActionBar()V

    .line 59
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->setupPasscodeView()V

    .line 61
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletEthEnterPinBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkFragmentWalletEthEnterPinBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onPause()V
    .locals 1

    .line 83
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletEthEnterPinBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletEthEnterPinBinding;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PasscodeView;->onPause()V

    .line 84
    invoke-super {p0}, Lcom/smedialink/ui/base/mvp/MvpFragment;->onPause()V

    return-void
.end method

.method public onPinCodeErrorShake()V
    .locals 1

    .line 70
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletEthEnterPinBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletEthEnterPinBinding;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PasscodeView;->onWalletPinCodeError()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 78
    invoke-super {p0}, Lcom/smedialink/ui/base/WalletAuthFragment;->onResume()V

    .line 79
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletEthEnterPinBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletEthEnterPinBinding;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PasscodeView;->onResume()V

    return-void
.end method

.method public onSuccessEnterPinCode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "pin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/smedialink/ui/base/WalletAuthFragment;->getRxEventBus()Lcom/smedialink/storage/domain/utils/rx/RxEventBus;

    move-result-object v0

    new-instance v1, Lcom/smedialink/common/AppRxEvents$SuccessEnterPinCode;

    iget-object v2, p0, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->screenType:Lcom/smedialink/model/wallet/crypto/pin/EnterPinCodeScreenType;

    invoke-direct {v1, v2}, Lcom/smedialink/common/AppRxEvents$SuccessEnterPinCode;-><init>(Lcom/smedialink/model/wallet/crypto/pin/EnterPinCodeScreenType;)V

    invoke-virtual {v0, v1}, Lcom/smedialink/storage/domain/utils/rx/RxEventBus;->publish(Lcom/smedialink/storage/domain/utils/rx/event/RxEvent;)V

    .line 66
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->resultDelegate:Lkotlin/jvm/functions/Function2;

    new-instance v1, Lcom/smedialink/model/wallet/crypto/pin/EnterPinCodeResult$Success;

    invoke-direct {v1, p1, p2}, Lcom/smedialink/model/wallet/crypto/pin/EnterPinCodeResult$Success;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public redirectScreenToPasswordEnter()V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->onForgotPinClick()V

    return-void
.end method

.method public shouldAskPinCode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
