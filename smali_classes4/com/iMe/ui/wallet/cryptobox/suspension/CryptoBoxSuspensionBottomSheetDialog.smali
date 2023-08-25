.class public final Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog;
.super Lcom/iMe/ui/base/mvp/MvpBottomSheet;
.source "CryptoBoxSuspensionBottomSheetDialog.kt"

# interfaces
.implements Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCryptoBoxSuspensionBottomSheetDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CryptoBoxSuspensionBottomSheetDialog.kt\ncom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,121:1\n13#2,4:122\n56#3,6:126\n*S KotlinDebug\n*F\n+ 1 CryptoBoxSuspensionBottomSheetDialog.kt\ncom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog\n*L\n31#1:122,4\n34#1:126,6\n*E\n"
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

.field public static final Companion:Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog$Companion;


# instance fields
.field private final binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

.field private final resourceManager$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 31
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog;

    const-string/jumbo v3, "presenter"

    const-string v4, "getPresenter()Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionPresenter;"

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    .line 36
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkContentCryptoboxSuspensionBinding;"

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog;->Companion:Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionAction;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 4

    const-string/jumbo v0, "transactionAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragment"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "fragment.parentActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/base/mvp/MvpBottomSheet;-><init>(Landroid/content/Context;Z)V

    .line 28
    iput-object p2, p0, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 31
    new-instance p2, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog$presenter$2;

    invoke-direct {p2, p0, p1}, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog$presenter$2;-><init>(Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxTransactionAction;)V

    .line 16
    new-instance p1, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v0

    const-string/jumbo v2, "mvpDelegate"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionPresenter;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "presenter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v0, v2, p2}, Lmoxy/ktx/MoxyKtxDelegate;-><init>(Lmoxy/MvpDelegate;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 31
    iput-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 58
    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    .line 61
    new-instance p2, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog$special$$inlined$inject$default$1;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0, v0}, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog;->resourceManager$delegate:Lkotlin/Lazy;

    .line 36
    new-instance p1, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog$binding$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog$binding$2;-><init>(Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog;)V

    invoke-static {p0, v0, p1, v1, v0}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpBottomSheet;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    const/4 p1, 0x0

    .line 41
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyBottomPadding(Z)V

    return-void
.end method

.method public static final synthetic access$getFragment$p(Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object p0
.end method

.method public static final synthetic access$getPresenter(Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog;)Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionPresenter;
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog;->getPresenter()Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionPresenter;

    move-result-object p0

    return-object p0
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkContentCryptoboxSuspensionBinding;
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxSuspensionBinding;

    return-object v0
.end method

.method private final getPresenter()Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionPresenter;
    .locals 3

    .line 31
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionPresenter;

    return-object v0
.end method

.method private final getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog;->resourceManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object v0
.end method

.method private final setupColors()V
    .locals 6

    .line 81
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentCryptoboxSuspensionBinding;

    move-result-object v0

    .line 82
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxSuspensionBinding;->buttonProcess:Lcom/iMe/ui/custom/BigActionButton;

    invoke-virtual {v1}, Lcom/iMe/ui/custom/ActionButton;->applyColors()V

    .line 83
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxSuspensionBinding;->buttonClose:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 84
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    const-string/jumbo v2, "setupColors$lambda$1$lambda$0"

    .line 85
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setCircleRippleBackground(Landroid/view/View;)V

    .line 87
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/widget/TextView;

    iget-object v3, v0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxSuspensionBinding;->textTitle:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v4, "textTitle"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    aput-object v3, v2, v5

    iget-object v3, v0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxSuspensionBinding;->textDescription:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v5, "textDescription"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setTextsColor(I[Landroid/widget/TextView;)V

    .line 88
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxSuspensionBinding;->textTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    return-void
.end method

.method private final setupListeners()V
    .locals 13

    .line 107
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentCryptoboxSuspensionBinding;

    move-result-object v0

    .line 108
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxSuspensionBinding;->buttonProcess:Lcom/iMe/ui/custom/BigActionButton;

    const-string v2, "buttonProcess"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog$setupListeners$1$1;

    invoke-direct {v4, p0}, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog$setupListeners$1$1;-><init>(Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog;)V

    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 109
    iget-object v7, v0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxSuspensionBinding;->buttonClose:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const-string v0, "buttonClose"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog$setupListeners$1$2;

    invoke-direct {v10, p0}, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog$setupListeners$1$2;-><init>(Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog;)V

    const-wide/16 v8, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method private final setupViews()V
    .locals 4

    .line 93
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentCryptoboxSuspensionBinding;

    move-result-object v0

    .line 94
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxSuspensionBinding;->textTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->cryptobox_stop_confirmation_title:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxSuspensionBinding;->textDescription:Landroidx/appcompat/widget/AppCompatTextView;

    .line 96
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->cryptobox_stop_confirmation_description:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 95
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxSuspensionBinding;->buttonProcess:Lcom/iMe/ui/custom/BigActionButton;

    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->cryptobox_details_stop:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentCryptoboxSuspensionBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxSuspensionBinding;->buttonClose:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x0

    .line 100
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setLongClickEnabled(Z)V

    .line 101
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_close_white:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

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

.method public onCreateView(Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog;->setupColors()V

    .line 46
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog;->setupListeners()V

    .line 47
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog;->setupViews()V

    .line 49
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentCryptoboxSuspensionBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkContentCryptoboxSuspensionBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public renderButtonLoading(Z)V
    .locals 1

    .line 57
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentCryptoboxSuspensionBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxSuspensionBinding;->buttonProcess:Lcom/iMe/ui/custom/BigActionButton;

    invoke-virtual {v0, p1}, Lcom/iMe/ui/custom/ActionButton;->updateLoadingState(Z)V

    return-void
.end method

.method public showFee(Lcom/iMe/model/wallet/crypto/send/fee/FeeType;)V
    .locals 2

    const-string v0, "feeType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentCryptoboxSuspensionBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxSuspensionBinding;->feeView:Lcom/iMe/ui/custom/FeeView;

    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0, v1, p0, p1}, Lcom/iMe/ui/custom/FeeView;->init(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/ui/base/mvp/MvpBottomSheet;Lcom/iMe/model/wallet/crypto/send/fee/FeeType;)V

    return-void
.end method

.method public showTransactionError(Ljava/lang/String;)V
    .locals 8

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 74
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/R$string;->common_error:I

    invoke-interface {v0, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/R$string;->common_ok:I

    invoke-interface {v0, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v3, p1

    .line 73
    invoke-static/range {v1 .. v7}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->showErrorAlert$default(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Landroid/app/Dialog;

    return-void
.end method

.method public showTransactionSuccess()V
    .locals 7

    .line 65
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 66
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->status_ok:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->cryptobox_stop_success:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 68
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/suspension/CryptoBoxSuspensionBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->common_ok:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    .line 65
    invoke-static/range {v0 .. v6}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->showSuccessAlert$default(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Landroid/app/Dialog;

    return-void
.end method
