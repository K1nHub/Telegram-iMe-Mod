.class public final Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;
.super Lcom/smedialink/ui/base/mvp/MvpBottomSheet;
.source "CryptoBuyCustomPriceBottomSheetDialog.kt"

# interfaces
.implements Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCryptoBuyCustomPriceBottomSheetDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CryptoBuyCustomPriceBottomSheetDialog.kt\ncom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 4 TextView.kt\nandroidx/core/widget/TextViewKt\n*L\n1#1,194:1\n13#2,4:195\n56#3,6:199\n58#4,23:205\n93#4,3:228\n*S KotlinDebug\n*F\n+ 1 CryptoBuyCustomPriceBottomSheetDialog.kt\ncom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog\n*L\n35#1:195,4\n36#1:199,6\n173#1:205,23\n173#1:228,3\n*E\n"
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

.field public static final Companion:Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog$Companion;


# instance fields
.field private final binding$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

.field private final fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private final minItem:Lcom/smedialink/model/wallet/crypto/buy/CryptoBuyItem;

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

.field private final resourceManager$delegate:Lkotlin/Lazy;

.field private final resultDelegate:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Float;",
            "Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$IIvv0mPVaXWXisHmwZOO7MJoBCo(Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;FLcom/smedialink/storage/domain/model/crypto/simplex/Currency;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;->showConfirmDialog$lambda$0(Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;FLcom/smedialink/storage/domain/model/crypto/simplex/Currency;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Qx698GjdTPIkOp3YTbt89wZ5Oc0(Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;)V
    .locals 0

    invoke-static {p0}, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;->setupListeners$lambda$16$lambda$15(Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 35
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;

    const-string v3, "presenter"

    const-string v4, "getPresenter()Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPricePresenter;"

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    .line 39
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletCryptoBuyCustomPriceLayoutBinding;"

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;->Companion:Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog$Companion;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/smedialink/model/wallet/crypto/buy/CryptoBuyItem;Lkotlin/jvm/functions/Function2;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            "Lcom/smedialink/model/wallet/crypto/buy/CryptoBuyItem;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "minItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resultDelegate"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "fragment.parentActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/smedialink/ui/base/mvp/MvpBottomSheet;-><init>(Landroid/content/Context;Z)V

    .line 29
    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 30
    iput-object p2, p0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;->minItem:Lcom/smedialink/model/wallet/crypto/buy/CryptoBuyItem;

    .line 31
    iput-object p3, p0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;->resultDelegate:Lkotlin/jvm/functions/Function2;

    .line 35
    new-instance p1, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog$presenter$2;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog$presenter$2;-><init>(Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;)V

    .line 16
    new-instance p2, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object p3

    const-string v0, "mvpDelegate"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPricePresenter;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "presenter"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p3, v0, p1}, Lmoxy/ktx/MoxyKtxDelegate;-><init>(Lmoxy/MvpDelegate;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 35
    iput-object p2, p0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 58
    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    .line 61
    new-instance p2, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog$special$$inlined$inject$default$1;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3, p3}, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;->resourceManager$delegate:Lkotlin/Lazy;

    .line 39
    new-instance p1, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog$binding$2;

    invoke-direct {p1, p0}, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog$binding$2;-><init>(Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;)V

    invoke-static {p0, p3, p1, v1, p3}, Lcom/smedialink/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/smedialink/ui/base/mvp/MvpBottomSheet;Lcom/smedialink/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;->binding$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    const/4 p1, 0x0

    .line 42
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyBottomPadding(Z)V

    return-void
.end method

.method public static final synthetic access$getFragment$p(Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object p0
.end method

.method public static final synthetic access$getMinItem$p(Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;)Lcom/smedialink/model/wallet/crypto/buy/CryptoBuyItem;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;->minItem:Lcom/smedialink/model/wallet/crypto/buy/CryptoBuyItem;

    return-object p0
.end method

.method public static final synthetic access$getPresenter(Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;)Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPricePresenter;
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;->getPresenter()Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPricePresenter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$validateExchange(Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;->validateExchange()V

    return-void
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletCryptoBuyCustomPriceLayoutBinding;
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;->binding$delegate:Lcom/smedialink/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/smedialink/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkContentWalletCryptoBuyCustomPriceLayoutBinding;

    return-object v0
.end method

.method private final getPresenter()Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPricePresenter;
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPricePresenter;

    return-object v0
.end method

.method private final getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;->resourceManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    return-object v0
.end method

.method private final setupActionBar()V
    .locals 3

    .line 165
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletCryptoBuyCustomPriceLayoutBinding;

    move-result-object v0

    .line 166
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletCryptoBuyCustomPriceLayoutBinding;->imageBack:Landroidx/appcompat/widget/AppCompatImageView;

    sget v2, Lorg/telegram/messenger/R$drawable;->ic_ab_back:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 167
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentWalletCryptoBuyCustomPriceLayoutBinding;->textTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->wallet_crypto_buy_custom_price_dialog_toolbar_title:I

    invoke-interface {v1, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final setupListeners()V
    .locals 17

    move-object/from16 v0, p0

    .line 172
    invoke-direct/range {p0 .. p0}, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletCryptoBuyCustomPriceLayoutBinding;

    move-result-object v1

    .line 173
    iget-object v2, v1, Lorg/telegram/messenger/databinding/ForkContentWalletCryptoBuyCustomPriceLayoutBinding;->editFromAmount:Landroidx/appcompat/widget/AppCompatEditText;

    const-string v3, "editFromAmount"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    new-instance v4, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog$setupListeners$lambda$16$$inlined$doAfterTextChanged$1;

    invoke-direct {v4, v0, v1}, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog$setupListeners$lambda$16$$inlined$doAfterTextChanged$1;-><init>(Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;Lorg/telegram/messenger/databinding/ForkContentWalletCryptoBuyCustomPriceLayoutBinding;)V

    .line 93
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 174
    iget-object v5, v1, Lorg/telegram/messenger/databinding/ForkContentWalletCryptoBuyCustomPriceLayoutBinding;->imageBack:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v2, "imageBack"

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog$setupListeners$1$2;

    invoke-direct {v8, v0}, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog$setupListeners$1$2;-><init>(Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;)V

    const-wide/16 v6, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 175
    iget-object v2, v1, Lorg/telegram/messenger/databinding/ForkContentWalletCryptoBuyCustomPriceLayoutBinding;->editFromAmount:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog$$ExternalSyntheticLambda0;-><init>(Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;)V

    const/4 v4, 0x6

    invoke-static {v2, v4, v3}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->onAction(Landroid/widget/EditText;ILorg/fork/utils/Callbacks$Callback;)V

    .line 176
    iget-object v5, v1, Lorg/telegram/messenger/databinding/ForkContentWalletCryptoBuyCustomPriceLayoutBinding;->textAction:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "textAction"

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog$setupListeners$1$4;

    invoke-direct {v8, v0}, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog$setupListeners$1$4;-><init>(Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;)V

    invoke-static/range {v5 .. v10}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 177
    iget-object v11, v1, Lorg/telegram/messenger/databinding/ForkContentWalletCryptoBuyCustomPriceLayoutBinding;->linearTo:Landroid/widget/LinearLayout;

    const-string v2, "linearTo"

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v14, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog$setupListeners$1$5;

    invoke-direct {v14, v0, v1}, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog$setupListeners$1$5;-><init>(Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;Lorg/telegram/messenger/databinding/ForkContentWalletCryptoBuyCustomPriceLayoutBinding;)V

    const-wide/16 v12, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-static/range {v11 .. v16}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method private static final setupListeners$lambda$16$lambda$15(Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;->validateExchange()V

    return-void
.end method

.method private final setupStyles()V
    .locals 7

    .line 114
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string v2, "actionBarDefault"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 115
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletCryptoBuyCustomPriceLayoutBinding;

    move-result-object v0

    .line 116
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletCryptoBuyCustomPriceLayoutBinding;->imageBack:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v3, "setupStyles$lambda$11$lambda$5"

    .line 117
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->setCircleRippleBackground(Landroid/view/View;)V

    const-string v3, "actionBarDefaultTitle"

    .line 118
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v1, v4}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->setImageColor(Landroid/widget/ImageView;I)V

    .line 121
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletCryptoBuyCustomPriceLayoutBinding;->textAction:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v4, "setupStyles$lambda$11$lambda$6"

    .line 122
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v1, v4, v5, v6}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->setRippleBackground$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 123
    invoke-static {v1}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    const-string v4, "chats_actionBackground"

    .line 124
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 127
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletCryptoBuyCustomPriceLayoutBinding;->editFromAmount:Landroidx/appcompat/widget/AppCompatEditText;

    const-string v5, "setupStyles$lambda$11$lambda$7"

    .line 128
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 129
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setTextColor(I)V

    const-string v5, "windowBackgroundWhiteGrayText2"

    .line 130
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 133
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletCryptoBuyCustomPriceLayoutBinding;->textToAmount:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v6, "setupStyles$lambda$11$lambda$8"

    .line 134
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 135
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-static {v1, v6}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->setCompoundDrawablesColor(Landroid/widget/TextView;I)V

    .line 136
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 139
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletCryptoBuyCustomPriceLayoutBinding;->textFromCurrency:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v6, "setupStyles$lambda$11$lambda$9"

    .line 140
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 141
    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 144
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletCryptoBuyCustomPriceLayoutBinding;->textToCurrency:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v4, "setupStyles$lambda$11$lambda$10"

    .line 145
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/smedialink/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 146
    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 149
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletCryptoBuyCustomPriceLayoutBinding;->linearRoot:Landroid/widget/LinearLayout;

    const-string v4, "windowBackgroundWhite"

    invoke-static {v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 150
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletCryptoBuyCustomPriceLayoutBinding;->linearHeader:Landroid/widget/LinearLayout;

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 151
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletCryptoBuyCustomPriceLayoutBinding;->textTax:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 152
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletCryptoBuyCustomPriceLayoutBinding;->textTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 153
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentWalletCryptoBuyCustomPriceLayoutBinding;->viewDivider:Landroid/view/View;

    const-string v1, "divider"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method private static final showConfirmDialog$lambda$0(Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;FLcom/smedialink/storage/domain/model/crypto/simplex/Currency;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$currency"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;->resultDelegate:Lkotlin/jvm/functions/Function2;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-virtual {p0}, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;->dismiss()V

    return-void
.end method

.method private final validateExchange()V
    .locals 3

    .line 182
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;->getPresenter()Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPricePresenter;

    move-result-object v0

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletCryptoBuyCustomPriceLayoutBinding;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/databinding/ForkContentWalletCryptoBuyCustomPriceLayoutBinding;->editFromAmount:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletCryptoBuyCustomPriceLayoutBinding;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/databinding/ForkContentWalletCryptoBuyCustomPriceLayoutBinding;->textToAmount:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPricePresenter;->validateExchange(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected canDismissWithSwipe()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public configureExchangeState(FFLcom/smedialink/storage/domain/model/crypto/simplex/Currency;Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;)V
    .locals 4

    const-string v0, "fromCurrency"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toCurrency"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletCryptoBuyCustomPriceLayoutBinding;

    move-result-object v0

    .line 80
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletCryptoBuyCustomPriceLayoutBinding;->textFromCurrency:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    invoke-interface {p3}, Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;->getSymbol()I

    move-result p3

    invoke-interface {v2, p3}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object p3, v0, Lorg/telegram/messenger/databinding/ForkContentWalletCryptoBuyCustomPriceLayoutBinding;->editFromAmount:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-virtual {p3}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p3, :cond_1

    invoke-static {p3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    move p3, v1

    goto :goto_1

    :cond_1
    :goto_0
    move p3, v2

    :goto_1
    const/4 v3, 0x0

    if-nez p3, :cond_2

    .line 82
    iget-object p3, v0, Lorg/telegram/messenger/databinding/ForkContentWalletCryptoBuyCustomPriceLayoutBinding;->editFromAmount:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1, v2, v3}, Lcom/smedialink/utils/extentions/common/StringExtKt;->stripZeros$default(Ljava/lang/String;CILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 84
    :cond_2
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletCryptoBuyCustomPriceLayoutBinding;->textToCurrency:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object p3

    invoke-interface {p4}, Lcom/smedialink/storage/domain/model/crypto/simplex/Currency;->getSymbol()I

    move-result p4

    invoke-interface {p3, p4}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletCryptoBuyCustomPriceLayoutBinding;->textToAmount:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v1, v2, v3}, Lcom/smedialink/utils/extentions/common/StringExtKt;->stripZeros$default(Ljava/lang/String;CILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletCryptoBuyCustomPriceLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentWalletCryptoBuyCustomPriceLayoutBinding;->editFromAmount:Landroidx/appcompat/widget/AppCompatEditText;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 51
    invoke-super {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method public onCreateView(Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;->setupActionBar()V

    .line 56
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;->setupStyles()V

    .line 57
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;->setupListeners()V

    .line 59
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletCryptoBuyCustomPriceLayoutBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkContentWalletCryptoBuyCustomPriceLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public resetInputError()V
    .locals 3

    .line 103
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletCryptoBuyCustomPriceLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentWalletCryptoBuyCustomPriceLayoutBinding;->textAction:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "chats_actionBackground"

    .line 104
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 105
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;->getResourceManager()Lcom/smedialink/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->wallet_crypto_buy_custom_price_dialog_action:I

    invoke-interface {v1, v2}, Lcom/smedialink/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showConfirmDialog(FLcom/smedialink/storage/domain/model/crypto/simplex/Currency;Lcom/smedialink/model/dialog/DialogModel;)V
    .locals 7

    const-string v0, "currency"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dialogModel"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v0, "fragment.parentActivity"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    new-instance v3, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1, p2}, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog$$ExternalSyntheticLambda1;-><init>(Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;FLcom/smedialink/storage/domain/model/crypto/simplex/Currency;)V

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v2, p3

    invoke-static/range {v1 .. v6}, Lcom/smedialink/utils/dialogs/DialogUtils;->createDialog$default(Landroid/content/Context;Lcom/smedialink/model/dialog/DialogModel;Lorg/fork/utils/Callbacks$Callback;Lorg/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/smedialink/ui/base/mvp/MvpBottomSheet;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showExchangedValue(F)V
    .locals 4

    .line 90
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletCryptoBuyCustomPriceLayoutBinding;

    move-result-object v0

    .line 91
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentWalletCryptoBuyCustomPriceLayoutBinding;->textToAmount:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lcom/smedialink/utils/extentions/common/StringExtKt;->stripZeros$default(Ljava/lang/String;CILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showInputError(Ljava/lang/String;)V
    .locals 2

    const-string v0, "errorText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-direct {p0}, Lcom/smedialink/ui/wallet/crypto/buy/customPrice/CryptoBuyCustomPriceBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletCryptoBuyCustomPriceLayoutBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentWalletCryptoBuyCustomPriceLayoutBinding;->textAction:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "dialogTextRed"

    .line 97
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 98
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
