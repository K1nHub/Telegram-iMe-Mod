.class public final Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;
.super Lcom/iMe/ui/base/mvp/MvpBottomSheet;
.source "CryptoBoxConditionsBottomSheetDialog.kt"

# interfaces
.implements Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCryptoBoxConditionsBottomSheetDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CryptoBoxConditionsBottomSheetDialog.kt\ncom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,285:1\n13#2,4:286\n56#3,6:290\n1#4:296\n*S KotlinDebug\n*F\n+ 1 CryptoBoxConditionsBottomSheetDialog.kt\ncom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog\n*L\n55#1:286,4\n58#1:290,6\n*E\n"
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

.field public static final Companion:Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog$Companion;


# instance fields
.field private final actionButton$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

.field private final resourceManager$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$6pQCCXlKYvWlXW333FiqvElStRk(Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;->startActivationFlow$lambda$9(Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MNDndwYr7r_ZV2yXmYVcwXyLF1E(Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$WithDescription$Subscribe;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;->renderButton$lambda$8$lambda$7$lambda$6$lambda$5(Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$WithDescription$Subscribe;)V

    return-void
.end method

.method public static synthetic $r8$lambda$i2vRrW75W7pAgToDJhO4Vy_02jo(Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;->setupViews$lambda$12$lambda$11$lambda$10(Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x3

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 55
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;

    const-string v3, "presenter"

    const-string v4, "getPresenter()Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;"

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    .line 60
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkContentCryptoboxConditionsBinding;"

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 65
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;

    const-string v3, "actionButton"

    const-string v4, "getActionButton()Lorg/telegram/ui/Components/Premium/PremiumButtonView;"

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;->Companion:Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 3

    const-string v0, "cryptoBoxInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragment"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p3}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "fragment.parentActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/base/mvp/MvpBottomSheet;-><init>(Landroid/content/Context;Z)V

    .line 52
    iput-object p3, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 55
    new-instance p3, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog$presenter$2;

    invoke-direct {p3, p0, p1, p2}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog$presenter$2;-><init>(Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 16
    new-instance p1, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object p2

    const-string v0, "mvpDelegate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "presenter"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0, p3}, Lmoxy/ktx/MoxyKtxDelegate;-><init>(Lmoxy/MvpDelegate;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 55
    iput-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 58
    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    .line 61
    new-instance p2, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog$special$$inlined$inject$default$1;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3, p3}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 58
    iput-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;->resourceManager$delegate:Lkotlin/Lazy;

    .line 60
    new-instance p1, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog$binding$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog$binding$2;-><init>(Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;)V

    invoke-static {p0, p3, p1, v1, p3}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpBottomSheet;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    .line 65
    new-instance p1, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog$actionButton$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog$actionButton$2;-><init>(Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;)V

    invoke-static {p0, p3, p1, v1, p3}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpBottomSheet;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;->actionButton$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    const/4 p1, 0x0

    .line 68
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyBottomPadding(Z)V

    return-void
.end method

.method public static final synthetic access$getFragment$p(Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object p0
.end method

.method public static final synthetic access$getPresenter(Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;)Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;->getPresenter()Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$initActionButton(Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;)Lorg/telegram/ui/Components/Premium/PremiumButtonView;
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;->initActionButton()Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    move-result-object p0

    return-object p0
.end method

.method private final getActionButton()Lorg/telegram/ui/Components/Premium/PremiumButtonView;
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;->actionButton$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    return-object v0
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkContentCryptoboxConditionsBinding;
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxConditionsBinding;

    return-object v0
.end method

.method private final getPresenter()Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;

    return-object v0
.end method

.method private final getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;->resourceManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object v0
.end method

.method private final initActionButton()Lorg/telegram/ui/Components/Premium/PremiumButtonView;
    .locals 5

    .line 219
    new-instance v0, Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v4, v3}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;-><init>(Landroid/content/Context;IZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    return-object v0
.end method

.method public static final newInstance(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;Lorg/telegram/tgnet/TLRPC$Chat;)Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;
    .locals 1

    sget-object v0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;->Companion:Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog$Companion;->newInstance(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/storage/domain/model/crypto/cryptobox/CryptoBoxInfo;Lorg/telegram/tgnet/TLRPC$Chat;)Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;

    move-result-object p0

    return-object p0
.end method

.method private static final renderButton$lambda$8$lambda$7$lambda$6$lambda$5(Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$WithDescription$Subscribe;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this_with"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    iget-object p0, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$WithDescription$Subscribe;->getChatId()J

    move-result-wide v0

    neg-long v0, v0

    invoke-static {v0, v1}, Lorg/telegram/ui/ChatActivity;->newInstanceForDialogId(J)Lorg/telegram/ui/ChatActivity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private final setupColors()V
    .locals 4

    .line 255
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentCryptoboxConditionsBinding;

    move-result-object v0

    .line 256
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxConditionsBinding;->viewHeader:Lcom/iMe/ui/custom/ImageHeaderView;

    invoke-virtual {v1}, Lcom/iMe/ui/custom/ImageHeaderView;->setupColors()V

    .line 257
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxConditionsBinding;->viewRewardPerUserCell:Lcom/iMe/ui/custom/DetailsIconCellView;

    invoke-virtual {v1}, Lcom/iMe/ui/custom/DetailsIconCellView;->setupColors()V

    .line 258
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxConditionsBinding;->viewMembersCell:Lcom/iMe/ui/custom/DetailsIconCellView;

    invoke-virtual {v1}, Lcom/iMe/ui/custom/DetailsIconCellView;->setupColors()V

    .line 259
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxConditionsBinding;->viewBalanceCell:Lcom/iMe/ui/custom/DetailsIconCellView;

    invoke-virtual {v1}, Lcom/iMe/ui/custom/DetailsIconCellView;->setupColors()V

    .line 260
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxConditionsBinding;->viewStartDateCell:Lcom/iMe/ui/custom/DetailsIconCellView;

    invoke-virtual {v1}, Lcom/iMe/ui/custom/DetailsIconCellView;->setupColors()V

    .line 262
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxConditionsBinding;->textActionDescription:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 263
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxConditionsBinding;->imageActionDescription:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v2, "imageActionDescription"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v3

    invoke-static {v1, v3}, Lcom/iMe/utils/extentions/common/ImageViewExtKt;->setImageColor(Landroid/widget/ImageView;I)V

    .line 265
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxConditionsBinding;->itemMoreOptions:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 266
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    const-string v1, "setupColors$lambda$14$lambda$13"

    .line 267
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setCircleRippleBackground(Landroid/view/View;)V

    return-void
.end method

.method private final setupListeners()V
    .locals 6

    .line 273
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;->getActionButton()Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    move-result-object v0

    new-instance v3, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog$setupListeners$1;

    invoke-direct {v3, p0}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog$setupListeners$1;-><init>(Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;)V

    const-wide/16 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method private final setupViews()V
    .locals 10

    .line 222
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentCryptoboxConditionsBinding;

    move-result-object v0

    .line 223
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxConditionsBinding;->frameButtonContainer:Landroid/widget/FrameLayout;

    .line 224
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;->getActionButton()Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    move-result-object v2

    const/4 v3, -0x1

    const/16 v4, 0x30

    const/16 v5, 0x10

    .line 225
    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    .line 223
    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxConditionsBinding;->itemMoreOptions:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x0

    .line 231
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setLongClickEnabled(Z)V

    const/4 v1, 0x2

    .line 232
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSubMenuOpenSide(I)V

    .line 233
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    .line 234
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    const-string v1, "setupViews$lambda$12$lambda$11"

    .line 235
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setCircleRippleBackground(Landroid/view/View;)V

    .line 237
    sget v1, Lcom/iMe/common/IdFabric$Menu;->COPY:I

    .line 238
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_copy:I

    .line 239
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->cryptobox_copy_name:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 236
    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 241
    new-instance v7, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog$setupViews$1$1$1;

    invoke-direct {v7, v0}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog$setupViews$1$1$1;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    const-wide/16 v5, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v4, v0

    invoke-static/range {v4 .. v9}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 242
    new-instance v1, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog$$ExternalSyntheticLambda3;-><init>(Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setDelegate(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;)V

    .line 249
    sget v1, Lorg/telegram/messenger/R$string;->AccDescrMoreOptions:I

    const-string v2, "AccDescrMoreOptions"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 248
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static final setupViews$lambda$12$lambda$11$lambda$10(Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    sget v0, Lcom/iMe/common/IdFabric$Menu;->SCAN_ADDRESS:I

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;->getPresenter()Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;->onViewOnScanClick()V

    goto :goto_0

    .line 245
    :cond_0
    sget v0, Lcom/iMe/common/IdFabric$Menu;->COPY:I

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;->getPresenter()Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;->onCopyNameClick()V

    :cond_1
    :goto_0
    return-void
.end method

.method private static final startActivationFlow$lambda$9(Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;->getPresenter()Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsPresenter;->onAuthSuccess()V

    return-void
.end method


# virtual methods
.method protected canDismissWithSwipe()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public copyNameToClipboard(Ljava/lang/String;)V
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 176
    invoke-static {p1, v0, v1, v0}, Lcom/iMe/utils/extentions/common/ContextExtKt;->copyToClipboard$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public onCreateView(Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 72
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;->setupViews()V

    .line 73
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;->setupColors()V

    .line 74
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;->setupListeners()V

    .line 76
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentCryptoboxConditionsBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkContentCryptoboxConditionsBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public openAddressScan(Ljava/lang/String;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public openCreateWalletIntroScreen(Ljava/lang/String;Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;)V
    .locals 2

    const-string v0, "linkedWalletAddress"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "walletCreationType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 197
    sget-object v1, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;->Companion:Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$Companion;

    invoke-virtual {v1, p2, p1}, Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment$Companion;->newInstance(Lcom/iMe/model/wallet/crypto/create/WalletCreationType$Initial;Ljava/lang/String;)Lcom/iMe/ui/wallet/crypto/create/intro/CreateWalletIntroFragment;

    move-result-object p1

    .line 196
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public renderButton(Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType;)V
    .locals 12

    const-string v0, "buttonType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;->getActionButton()Lorg/telegram/ui/Components/Premium/PremiumButtonView;

    move-result-object v0

    .line 132
    sget-object v1, Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$Ok;->INSTANCE:Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$Ok;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 133
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setOverlayColor(I)V

    goto :goto_2

    .line 136
    :cond_0
    sget-object v1, Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$Taken;->INSTANCE:Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$Taken;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    .line 137
    :cond_1
    sget-object v1, Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$Finished;->INSTANCE:Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$Finished;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_1

    .line 138
    :cond_2
    sget-object v1, Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$Stopped;->INSTANCE:Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$Stopped;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :goto_1
    if-eqz v1, :cond_3

    .line 139
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v4, Lorg/telegram/messenger/R$color;->cell_button_green:I

    invoke-interface {v1, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setOverlayColor(I)V

    goto :goto_2

    :cond_3
    move-object v1, v2

    .line 145
    :goto_2
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v4

    invoke-virtual {p1}, Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType;->getTextResId()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_3

    :cond_4
    move v1, v5

    .line 144
    :goto_3
    invoke-virtual {v0, v4, v1, v3}, Lorg/telegram/ui/Components/Premium/PremiumButtonView;->setOverlayText(Ljava/lang/String;ZZ)V

    .line 150
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentCryptoboxConditionsBinding;

    move-result-object v0

    .line 151
    instance-of v1, p1, Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$WithDescription;

    const-string v4, "linearActionDescription"

    if-eqz v1, :cond_6

    .line 152
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxConditionsBinding;->linearActionDescription:Landroid/widget/LinearLayout;

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v5, v3, v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->visible$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 153
    iget-object v6, v0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxConditionsBinding;->textActionDescription:Landroid/widget/TextView;

    .line 154
    instance-of v0, p1, Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$WithDescription$Subscribe;

    if-eqz v0, :cond_5

    .line 155
    check-cast p1, Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$WithDescription$Subscribe;

    .line 156
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$WithDescription;->getDescriptionTextResId()I

    move-result v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$WithDescription$Subscribe;->getChatName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "renderButton$lambda$8$lambda$7$lambda$6"

    .line 157
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$WithDescription$Subscribe;->getChatName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-instance v9, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog$$ExternalSyntheticLambda2;

    invoke-direct {v9, p0, p1}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$WithDescription$Subscribe;)V

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setSubstringClickListener$default(Landroid/widget/TextView;Ljava/lang/String;ZLcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)V

    goto :goto_4

    .line 162
    :cond_5
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v0

    check-cast p1, Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$WithDescription;

    invoke-virtual {p1}, Lcom/iMe/model/cryptobox/CryptoBoxActionButtonType$WithDescription;->getDescriptionTextResId()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 166
    :cond_6
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkContentCryptoboxConditionsBinding;->linearActionDescription:Landroid/widget/LinearLayout;

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v5, v3, v2}, Lcom/iMe/utils/extentions/common/ViewExtKt;->gone$default(Landroid/view/View;ZILjava/lang/Object;)V

    :goto_4
    return-void
.end method

.method public renderScreenData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iMe/storage/domain/model/crypto/Network$Explorer;)V
    .locals 12

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    const-string v7, "tokenLogoUrl"

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "networkIconUrl"

    invoke-static {p2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "name"

    invoke-static {p3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "description"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "rewardPerUserText"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "membersText"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "balanceText"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "startDate"

    move-object/from16 v8, p8

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "explorer"

    move-object/from16 v9, p9

    invoke-static {v9, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentCryptoboxConditionsBinding;

    move-result-object v7

    .line 87
    iget-object v10, v7, Lorg/telegram/messenger/databinding/ForkContentCryptoboxConditionsBinding;->viewHeader:Lcom/iMe/ui/custom/ImageHeaderView;

    .line 88
    new-instance v11, Lcom/iMe/ui/custom/ImageHeaderView$IconData$RemoteImage;

    invoke-direct {v11, p1}, Lcom/iMe/ui/custom/ImageHeaderView$IconData$RemoteImage;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v10, v11, p2, p3, v3}, Lcom/iMe/ui/custom/ImageHeaderView;->setupViewData(Lcom/iMe/ui/custom/ImageHeaderView$IconData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v0, v7, Lorg/telegram/messenger/databinding/ForkContentCryptoboxConditionsBinding;->viewRewardPerUserCell:Lcom/iMe/ui/custom/DetailsIconCellView;

    .line 94
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->cryptobox_conditions_reward_per_user:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 96
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_ic_cryptobox:I

    const/4 v3, 0x1

    .line 93
    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/iMe/ui/custom/DetailsIconCellView;->setupViewData(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 99
    iget-object v0, v7, Lorg/telegram/messenger/databinding/ForkContentCryptoboxConditionsBinding;->viewMembersCell:Lcom/iMe/ui/custom/DetailsIconCellView;

    .line 100
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->cryptobox_details_members:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 102
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_groups:I

    .line 99
    invoke-virtual {v0, v1, v5, v2, v3}, Lcom/iMe/ui/custom/DetailsIconCellView;->setupViewData(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 105
    iget-object v0, v7, Lorg/telegram/messenger/databinding/ForkContentCryptoboxConditionsBinding;->viewBalanceCell:Lcom/iMe/ui/custom/DetailsIconCellView;

    .line 106
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->cryptobox_details_balance:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 108
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_ic_donations_24:I

    .line 105
    invoke-virtual {v0, v1, v6, v2, v3}, Lcom/iMe/ui/custom/DetailsIconCellView;->setupViewData(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 111
    iget-object v0, v7, Lorg/telegram/messenger/databinding/ForkContentCryptoboxConditionsBinding;->viewStartDateCell:Lcom/iMe/ui/custom/DetailsIconCellView;

    const-string v1, "viewStartDateCell"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->staking_conditions_start:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 114
    sget v2, Lorg/telegram/messenger/R$drawable;->fork_ic_start:I

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object p1, v0

    move-object p2, v1

    move-object/from16 p3, p8

    move/from16 p4, v2

    move/from16 p5, v4

    move/from16 p6, v5

    move-object/from16 p7, v6

    .line 111
    invoke-static/range {p1 .. p7}, Lcom/iMe/ui/custom/DetailsIconCellView;->setupViewData$default(Lcom/iMe/ui/custom/DetailsIconCellView;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/Object;)V

    .line 116
    iget-object v0, v7, Lorg/telegram/messenger/databinding/ForkContentCryptoboxConditionsBinding;->itemMoreOptions:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 117
    sget v1, Lcom/iMe/common/IdFabric$Menu;->SCAN_ADDRESS:I

    .line 119
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    .line 120
    sget v4, Lorg/telegram/messenger/R$string;->wallet_transaction_details_action_open_etherscan:I

    new-array v3, v3, [Ljava/lang/Object;

    .line 121
    invoke-virtual/range {p9 .. p9}, Lcom/iMe/storage/domain/model/crypto/Network$Explorer;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    .line 119
    invoke-interface {v2, v4, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 116
    invoke-virtual {v0, v1, v6, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    move-result-object v0

    .line 124
    invoke-virtual/range {p9 .. p9}, Lcom/iMe/storage/domain/model/crypto/Network$Explorer;->getLogoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;->setIcon(Ljava/lang/String;)V

    return-void
.end method

.method public showActivationConfirmationDialog(Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;)V
    .locals 7

    const-string v0, "dialogModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "context"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/dialogs/DialogUtils;->createDialog$default(Landroid/content/Context;Lcom/iMe/model/dialog/DialogModel;Lcom/iMe/fork/utils/Callbacks$Callback;Lcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/iMe/ui/base/mvp/MvpBottomSheet;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public showParticipationSuccess()V
    .locals 5

    .line 210
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 211
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->cryptobox_participation_success_title:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 212
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->cryptobox_participation_success_description:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 213
    invoke-direct {p0}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$string;->common_ok:I

    invoke-interface {v3, v4}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 214
    new-instance v4, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog$$ExternalSyntheticLambda0;-><init>(Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;)V

    .line 210
    invoke-static {v0, v1, v2, v3, v4}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->showSuccessAlert(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/iMe/fork/utils/Callbacks$Callback;)Landroid/app/Dialog;

    return-void
.end method

.method public showSelectOptionsDialog(Ljava/lang/String;[Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "items"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {v0, p1, p2, p3}, Lcom/iMe/utils/dialogs/DialogsFactoryKt;->createOptionsBottomSheetDialog(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;[Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/iMe/ui/base/mvp/MvpBottomSheet;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method

.method public startActivationFlow()V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v1, v0, Lorg/telegram/ui/LaunchActivity;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/telegram/ui/LaunchActivity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    new-instance v1, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog$$ExternalSyntheticLambda1;-><init>(Lcom/iMe/ui/wallet/cryptobox/conditions/CryptoBoxConditionsBottomSheetDialog;)V

    invoke-static {v0, v1}, Lcom/iMe/utils/helper/wallet/WalletHelper;->safeRunWithActivationCheck(Lorg/telegram/ui/LaunchActivity;Lcom/iMe/fork/utils/Callbacks$Callback;)V

    :cond_1
    return-void
.end method
