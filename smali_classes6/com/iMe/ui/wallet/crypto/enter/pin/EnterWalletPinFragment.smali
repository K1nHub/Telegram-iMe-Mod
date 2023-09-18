.class public final Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;
.super Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;
.source "EnterWalletPinFragment.kt"

# interfaces
.implements Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment$Companion;,
        Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEnterWalletPinFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EnterWalletPinFragment.kt\ncom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 ContextExt.kt\ncom/iMe/utils/extentions/common/ContextExtKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 View.kt\nandroidx/core/view/ViewKt\n+ 6 ViewGroup.kt\nandroidx/core/view/ViewGroupKt\n+ 7 RxEventBus.kt\ncom/iMe/storage/domain/utils/rx/RxEventBus\n+ 8 RxExt.kt\ncom/iMe/utils/extentions/rx/RxExtKt\n*L\n1#1,236:1\n13#2,4:237\n76#3:241\n68#3:246\n69#3:258\n70#3,3:261\n73#3:265\n1774#4,4:242\n800#4,11:247\n1864#4,2:259\n1866#4:264\n329#5,2:266\n350#5:268\n331#5,2:277\n142#6,8:269\n16#7,3:279\n63#8,12:282\n*S KotlinDebug\n*F\n+ 1 EnterWalletPinFragment.kt\ncom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment\n*L\n50#1:237,4\n168#1:241\n172#1:246\n172#1:258\n172#1:261,3\n172#1:265\n168#1:242,4\n172#1:247,11\n172#1:259,2\n172#1:264\n180#1:266,2\n181#1:268\n180#1:277,2\n181#1:269,8\n213#1:279,3\n214#1:282,12\n*E\n"
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

.field public static final Companion:Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment$Companion;


# instance fields
.field private final binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

.field private final resultDelegate:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeResult;",
            "Lcom/iMe/ui/base/mvp/MvpFragment;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final screenType:Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;


# direct methods
.method public static synthetic $r8$lambda$9_L2rOLbAgzhl0biPPOFP8CtSB0(Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->showForgotPasswordOptionsDialog$lambda$4(Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$T0umubUWbOkUzoHEiZcb7gKoSjg(Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->showDeleteWalletDialog$lambda$2(Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Wba2-VYdQ9gfmwFok6YOHMd_2J0(Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->onDeleteWalletSuccess$lambda$1(Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-class v0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    .line 50
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string/jumbo v3, "presenter"

    const-string v4, "getPresenter()Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;"

    const/4 v5, 0x0

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v2

    aput-object v2, v1, v5

    .line 55
    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletEthEnterPinBinding;"

    invoke-direct {v2, v0, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->Companion:Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;Lkotlin/jvm/functions/Function2;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeResult;",
            "-",
            "Lcom/iMe/ui/base/mvp/MvpFragment;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "screenType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "resultDelegate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->screenType:Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;

    .line 46
    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->resultDelegate:Lkotlin/jvm/functions/Function2;

    .line 50
    new-instance p1, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment$presenter$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment$presenter$2;-><init>(Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;)V

    .line 16
    new-instance p2, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v0

    const-string v1, "mvpDelegate"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "presenter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v0, v1, p1}, Lmoxy/ktx/MoxyKtxDelegate;-><init>(Lmoxy/MvpDelegate;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 50
    iput-object p2, p0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 55
    new-instance p1, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment$binding$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment$binding$2;-><init>(Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;)V

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-static {p0, p2, p1, v0, p2}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpFragment;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    return-void
.end method

.method public static final synthetic access$getPresenter(Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;)Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->getPresenter()Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getResultDelegate$p(Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;)Lkotlin/jvm/functions/Function2;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->resultDelegate:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public static final synthetic access$getRxEventBus(Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;)Lcom/iMe/storage/domain/utils/rx/RxEventBus;
    .locals 0

    .line 44
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getRxEventBus()Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getScreenType$p(Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;)Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->screenType:Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;

    return-object p0
.end method

.method public static final synthetic access$handleBackPress(Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->handleBackPress()V

    return-void
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletEthEnterPinBinding;
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletEthEnterPinBinding;

    return-object v0
.end method

.method private final getPresenter()Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;

    return-object v0
.end method

.method private final handleBackPress()V
    .locals 6

    .line 171
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->screenType:Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;

    sget-object v1, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_3

    .line 173
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    goto :goto_3

    .line 172
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    const-string/jumbo v1, "parentLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    const-string v1, "fragmentStack"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 800
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 809
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;

    if-eqz v3, :cond_2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 1865
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

    .line 70
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v5

    if-ne v0, v5, :cond_5

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishFragment()V

    goto :goto_2

    .line 71
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

    .line 168
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    const-string/jumbo v1, "parentLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    const-string v1, "fragmentStack"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1774
    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_1

    .line 1776
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v2

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 76
    instance-of v3, v3, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;

    if-eqz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    if-gez v1, :cond_1

    .line 1776
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwCountOverflow()V

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v0, 0x1

    if-ne v1, v0, :cond_3

    move v2, v0

    :cond_3
    return v2
.end method

.method private static final onDeleteWalletSuccess$lambda$1(Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;)V
    .locals 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 113
    instance-of v2, v2, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne v1, v0, :cond_2

    .line 117
    sget-object v1, Lcom/iMe/ui/wallet/common/WalletRootFragment;->Companion:Lcom/iMe/ui/wallet/common/WalletRootFragment$Companion;

    invoke-virtual {v1}, Lcom/iMe/ui/wallet/common/WalletRootFragment$Companion;->newInstance()Lcom/iMe/ui/wallet/common/WalletRootFragment;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    goto :goto_1

    .line 120
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->parentLayout:Lorg/telegram/ui/ActionBar/INavigationLayout;

    invoke-interface {v0}, Lorg/telegram/ui/ActionBar/INavigationLayout;->finishWalletScreens()V

    .line 121
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getRxEventBus()Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    move-result-object p0

    .line 122
    sget-object v0, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$AllWalletsReset;->INSTANCE:Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$AllWalletsReset;

    invoke-virtual {p0, v0}, Lcom/iMe/storage/domain/utils/rx/RxEventBus;->publish(Lcom/iMe/storage/domain/utils/rx/event/RxEvent;)V

    .line 123
    sget-object v0, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$SelectWalletCryptoTab;->INSTANCE:Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$SelectWalletCryptoTab;

    invoke-virtual {p0, v0}, Lcom/iMe/storage/domain/utils/rx/RxEventBus;->publish(Lcom/iMe/storage/domain/utils/rx/event/RxEvent;)V

    :goto_1
    return-void
.end method

.method private final setupActionBar()V
    .locals 8

    .line 178
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BaseFragment;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBar;->setAddToContainer(Z)V

    .line 179
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletEthEnterPinBinding;

    move-result-object v0

    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletEthEnterPinBinding;->imageBack:Landroidx/appcompat/widget/AppCompatImageView;

    const-string/jumbo v0, "setupActionBar$lambda$6"

    .line 180
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 350
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_0

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    iget v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 181
    :cond_1
    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v1, v3

    .line 143
    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 145
    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 146
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 148
    invoke-virtual {v0, v3, v1, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 331
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    sget v0, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 184
    invoke-static {v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setCircleRippleBackground(Landroid/view/View;)V

    .line 185
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-static {v2, v0}, Lcom/iMe/utils/extentions/common/ImageViewExtKt;->setImageColor(Landroid/widget/ImageView;I)V

    const-wide/16 v3, 0x0

    .line 186
    new-instance v5, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment$setupActionBar$1$2;

    invoke-direct {v5, p0}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment$setupActionBar$1$2;-><init>(Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method private final setupListeners()V
    .locals 4

    .line 212
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getRxEventBus()Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/iMe/storage/domain/utils/rx/RxEventBus;->getPublisher()Lio/reactivex/subjects/PublishSubject;

    move-result-object v1

    const-class v2, Lcom/iMe/storage/domain/utils/rx/event/DomainRxEvents$CryptoEvent;

    .line 17
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->ofType(Ljava/lang/Class;)Lio/reactivex/Observable;

    move-result-object v1

    .line 18
    invoke-virtual {v0}, Lcom/iMe/storage/domain/utils/rx/RxEventBus;->getSchedulersProvider()Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/iMe/storage/domain/utils/rx/SchedulersProvider;->ui()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    const-string/jumbo v1, "publisher\n            .o\u2026(schedulersProvider.ui())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    new-instance v1, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment$setupListeners$$inlined$subscribeWithErrorHandle$default$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment$setupListeners$$inlined$subscribeWithErrorHandle$default$1;-><init>(Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;)V

    new-instance v2, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v2, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v1, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment$setupListeners$$inlined$subscribeWithErrorHandle$default$2;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment$setupListeners$$inlined$subscribeWithErrorHandle$default$2;-><init>(Lcom/iMe/ui/base/mvp/base/BaseView;)V

    .line 70
    new-instance v3, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;

    invoke-direct {v3, v1}, Lcom/iMe/utils/extentions/rx/RxExtKt$sam$i$io_reactivex_functions_Consumer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 68
    invoke-virtual {v0, v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    const-string/jumbo v1, "viewState: BaseView? = n\u2026rror.invoke(error)\n    })"

    .line 70
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0, v0}, Lcom/iMe/ui/base/mvp/MvpFragment;->autoDispose(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method private final setupPasscodeView()V
    .locals 2

    .line 191
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletEthEnterPinBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletEthEnterPinBinding;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    .line 193
    new-instance v1, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment$setupPasscodeView$1$1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment$setupPasscodeView$1$1;-><init>(Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;)V

    .line 192
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PasscodeView;->setWalletDelegate(Lorg/telegram/ui/Components/PasscodeView$WalletDelegate;)V

    const/4 v1, 0x0

    .line 207
    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Components/PasscodeView;->onShow(ZZ)V

    return-void
.end method

.method private static final showDeleteWalletDialog$lambda$2(Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->getPresenter()Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;->deleteWallets()V

    return-void
.end method

.method private static final showForgotPasswordOptionsDialog$lambda$4(Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->getPresenter()Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinPresenter;->onForgotPasscodeOptionSelected(I)V

    return-void
.end method


# virtual methods
.method public isSwipeBackEnabled(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 71
    iget-object p1, p0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->screenType:Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;

    invoke-virtual {p1}, Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;->isTotalLock()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->isLastWalletScreen()Z

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

    .line 64
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->handleBackPress()V

    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->setupListeners()V

    .line 75
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->setupActionBar()V

    .line 76
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->setupPasscodeView()V

    .line 78
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletEthEnterPinBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkFragmentWalletEthEnterPinBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onDeleteWalletSuccess()V
    .locals 3

    .line 110
    new-instance v0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;)V

    const-wide/16 v1, 0x96

    invoke-virtual {p0, v1, v2, v0}, Lcom/iMe/ui/base/mvp/MvpFragment;->postViewActionDelayed(JLcom/iMe/fork/utils/Callbacks$Callback;)V

    return-void
.end method

.method public onFragmentDestroy()V
    .locals 1

    .line 92
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletEthEnterPinBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletEthEnterPinBinding;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PasscodeView;->resetWalletLoadingAnimation()V

    .line 93
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onFragmentDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 87
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletEthEnterPinBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletEthEnterPinBinding;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PasscodeView;->onPause()V

    .line 88
    invoke-super {p0}, Lcom/iMe/ui/base/mvp/MvpFragment;->onPause()V

    return-void
.end method

.method public onPinCodeErrorShake()V
    .locals 1

    .line 106
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletEthEnterPinBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletEthEnterPinBinding;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PasscodeView;->onWalletPinCodeError()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 82
    invoke-super {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->onResume()V

    .line 83
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletEthEnterPinBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletEthEnterPinBinding;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/PasscodeView;->onResume()V

    return-void
.end method

.method public onSuccessEnterPinCode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "pin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "password"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/iMe/ui/base/wallet_auth/WalletAuthBaseFragment;->getRxEventBus()Lcom/iMe/storage/domain/utils/rx/RxEventBus;

    move-result-object v0

    new-instance v1, Lcom/iMe/common/AppRxEvents$SuccessEnterPinCode;

    iget-object v2, p0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->screenType:Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;

    invoke-direct {v1, v2}, Lcom/iMe/common/AppRxEvents$SuccessEnterPinCode;-><init>(Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeScreenType;)V

    invoke-virtual {v0, v1}, Lcom/iMe/storage/domain/utils/rx/RxEventBus;->publish(Lcom/iMe/storage/domain/utils/rx/event/RxEvent;)V

    .line 102
    iget-object v0, p0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->resultDelegate:Lkotlin/jvm/functions/Function2;

    new-instance v1, Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeResult$Success;

    invoke-direct {v1, p1, p2}, Lcom/iMe/model/wallet/crypto/pin/EnterPinCodeResult$Success;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public openPasswordEnterScreen()V
    .locals 1

    .line 130
    invoke-static {}, Lorg/telegram/ui/PasscodeActivity;->newInstanceForWalletPinRestore()Lorg/telegram/ui/PasscodeActivity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public openRestoreWalletScreen(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "walletAddress"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    sget-object v0, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;->Companion:Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$Companion;

    .line 136
    new-instance v1, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$Import;

    const-string v2, ""

    invoke-direct {v1, p1, v2}, Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType$Import;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-virtual {v0, v1}, Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment$Companion;->newInstance(Lcom/iMe/model/wallet/crypto/create/CreateWalletScreenType;)Lcom/iMe/ui/wallet/crypto/create/CreateWalletFragment;

    move-result-object p1

    .line 134
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method protected shouldAskPinCode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showDeleteWalletDialog(Lcom/iMe/model/dialog/DialogModel;)V
    .locals 3

    const-string v0, "dialogModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "parentActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    new-instance v1, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;)V

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/iMe/utils/dialogs/DialogUtils;->createDialog(Landroid/content/Context;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    .line 150
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 151
    invoke-static {p1}, Lcom/iMe/utils/dialogs/DialogExtKt;->makeRedPositiveButton(Lorg/telegram/ui/ActionBar/AlertDialog;)V

    return-void
.end method

.method public showForgotPasswordOptionsDialog()V
    .locals 1

    .line 157
    new-instance v0, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;)V

    invoke-static {p0, v0}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->createForgotPinOptionsBottomSheetDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    .line 156
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public updateLoadingState(ZZ)V
    .locals 1

    .line 97
    invoke-direct {p0}, Lcom/iMe/ui/wallet/crypto/enter/pin/EnterWalletPinFragment;->getBinding()Lorg/telegram/messenger/databinding/ForkFragmentWalletEthEnterPinBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkFragmentWalletEthEnterPinBinding;->passcodeView:Lorg/telegram/ui/Components/PasscodeView;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/ui/Components/PasscodeView;->updateLoadingState(ZZ)V

    return-void
.end method
