.class public final Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsBottomSheetDialog;
.super Lcom/iMe/ui/base/mvp/MvpBottomSheet;
.source "WalletNotificationDetailsBottomSheetDialog.kt"

# interfaces
.implements Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsBottomSheetDialog$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWalletNotificationDetailsBottomSheetDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletNotificationDetailsBottomSheetDialog.kt\ncom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsBottomSheetDialog\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,177:1\n13#2,4:178\n56#3,6:182\n1#4:188\n*S KotlinDebug\n*F\n+ 1 WalletNotificationDetailsBottomSheetDialog.kt\ncom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsBottomSheetDialog\n*L\n39#1:178,4\n46#1:182,6\n*E\n"
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

.field public static final Companion:Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsBottomSheetDialog$Companion;


# instance fields
.field private final binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private final item:Lcom/iMe/model/wallet/notification/NotificationItem;

.field private final resourceManager$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$9JBtnX6IhtCIt_WMlakIVPG5XBY(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-static {p0}, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsBottomSheetDialog;->setupMessageClickableLink$lambda$4$lambda$3(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic $r8$lambda$I1BcegKS7x6Yj1VPlEbvzjVYzJo(Lkotlin/jvm/functions/Function1;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsBottomSheetDialog;->showClickableTextDialog$lambda$6$lambda$5(Lkotlin/jvm/functions/Function1;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 39
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsBottomSheetDialog;

    const-string/jumbo v3, "presenter"

    const-string v4, "getPresenter()Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsPresenter;"

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    .line 49
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsBottomSheetDialog;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletNotificationDetailsLayoutBinding;"

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsBottomSheetDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsBottomSheetDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsBottomSheetDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsBottomSheetDialog;->Companion:Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsBottomSheetDialog$Companion;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lcom/iMe/model/wallet/notification/NotificationItem;)V
    .locals 4

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "fragment.parentActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/base/mvp/MvpBottomSheet;-><init>(Landroid/content/Context;Z)V

    .line 34
    iput-object p1, p0, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsBottomSheetDialog;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 35
    iput-object p2, p0, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsBottomSheetDialog;->item:Lcom/iMe/model/wallet/notification/NotificationItem;

    .line 39
    new-instance p1, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsBottomSheetDialog$presenter$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsBottomSheetDialog$presenter$2;-><init>(Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsBottomSheetDialog;)V

    .line 16
    new-instance p2, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object v0

    const-string/jumbo v2, "mvpDelegate"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsPresenter;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "presenter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v0, v2, p1}, Lmoxy/ktx/MoxyKtxDelegate;-><init>(Lmoxy/MvpDelegate;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 58
    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    .line 61
    new-instance p2, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsBottomSheetDialog$special$$inlined$inject$default$1;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0, v0}, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsBottomSheetDialog$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 46
    iput-object p1, p0, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsBottomSheetDialog;->resourceManager$delegate:Lkotlin/Lazy;

    .line 49
    new-instance p1, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsBottomSheetDialog$binding$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsBottomSheetDialog$binding$2;-><init>(Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsBottomSheetDialog;)V

    invoke-static {p0, v0, p1, v1, v0}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpBottomSheet;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsBottomSheetDialog;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    const/4 p1, 0x0

    .line 56
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyBottomPadding(Z)V

    return-void
.end method

.method public static final synthetic access$getFragment$p(Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsBottomSheetDialog;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsBottomSheetDialog;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object p0
.end method

.method public static final synthetic access$getItem$p(Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsBottomSheetDialog;)Lcom/iMe/model/wallet/notification/NotificationItem;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsBottomSheetDialog;->item:Lcom/iMe/model/wallet/notification/NotificationItem;

    return-object p0
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletNotificationDetailsLayoutBinding;
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsBottomSheetDialog;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsBottomSheetDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkContentWalletNotificationDetailsLayoutBinding;

    return-object v0
.end method

.method private final getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsBottomSheetDialog;->resourceManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object v0
.end method

.method private final setupColors()V
    .locals 5

    .line 139
    invoke-direct {p0}, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletNotificationDetailsLayoutBinding;

    move-result-object v0

    .line 140
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletNotificationDetailsLayoutBinding;->linearRoot:Landroid/widget/LinearLayout;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 141
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletNotificationDetailsLayoutBinding;->textMessage:Landroidx/appcompat/widget/AppCompatTextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_message:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletNotificationDetailsLayoutBinding;->textDate:Landroidx/appcompat/widget/AppCompatTextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_date:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 144
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletNotificationDetailsLayoutBinding;->textActionCancel:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v2, "setupColors$lambda$9$lambda$7"

    .line 145
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setRippleBackground$default(Landroid/view/View;ZILjava/lang/Object;)V

    .line 146
    invoke-static {v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 147
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 150
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentWalletNotificationDetailsLayoutBinding;->textCategory:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v1, "setupColors$lambda$9$lambda$8"

    .line 151
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 152
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chats_name:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private final setupListeners()V
    .locals 7

    .line 164
    invoke-direct {p0}, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletNotificationDetailsLayoutBinding;

    move-result-object v0

    .line 165
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletNotificationDetailsLayoutBinding;->textActionCancel:Landroidx/appcompat/widget/AppCompatTextView;

    const-string/jumbo v0, "textActionCancel"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsBottomSheetDialog$setupListeners$1$1;

    invoke-direct {v4, p0}, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsBottomSheetDialog$setupListeners$1$1;-><init>(Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsBottomSheetDialog;)V

    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method private static final setupMessageClickableLink$lambda$4$lambda$3(Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const-string v0, "$action"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method private final setupTexts()V
    .locals 3

    .line 158
    invoke-direct {p0}, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletNotificationDetailsLayoutBinding;

    move-result-object v0

    .line 159
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentWalletNotificationDetailsLayoutBinding;->textActionCancel:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {p0}, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->common_ok:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static final showClickableTextDialog$lambda$6$lambda$5(Lkotlin/jvm/functions/Function1;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "$action"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public actionCopyToClipboard(Ljava/lang/String;)V
    .locals 2

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 80
    invoke-static {p1, v0, v1, v0}, Lcom/iMe/utils/extentions/common/ContextExtKt;->copyToClipboard$default(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public actionOpenProfileScreen(J)V
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/Pair;

    .line 72
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string/jumbo p2, "user_id"

    invoke-static {p2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    invoke-static {v0}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object p1

    .line 73
    new-instance v0, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {v0, p2}, Lorg/telegram/ui/ProfileActivity;->setPlayProfileAnimation(I)V

    .line 75
    iget-object p1, p0, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsBottomSheetDialog;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 76
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    return-void
.end method

.method protected canDismissWithSwipe()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreateView(Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsBottomSheetDialog;->setupColors()V

    .line 63
    invoke-direct {p0}, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsBottomSheetDialog;->setupListeners()V

    .line 64
    invoke-direct {p0}, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsBottomSheetDialog;->setupTexts()V

    .line 66
    invoke-direct {p0}, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletNotificationDetailsLayoutBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkContentWalletNotificationDetailsLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public setupMessageClickableLink(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clickableText"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-direct {p0}, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletNotificationDetailsLayoutBinding;

    move-result-object v0

    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletNotificationDetailsLayoutBinding;->textMessage:Landroidx/appcompat/widget/AppCompatTextView;

    .line 119
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const-string/jumbo p1, "setupMessageClickableLink$lambda$4"

    .line 121
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    new-instance v4, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsBottomSheetDialog$$ExternalSyntheticLambda1;

    invoke-direct {v4, p3}, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsBottomSheetDialog$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function0;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v2, p2

    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setSubstringClickListener$default(Landroid/widget/TextView;Ljava/lang/String;ZLcom/iMe/fork/utils/Callbacks$Callback;ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public setupScreenWithData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "date"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "category"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-direct {p0}, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentWalletNotificationDetailsLayoutBinding;

    move-result-object v0

    .line 108
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletNotificationDetailsLayoutBinding;->textDate:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object p1, v0, Lorg/telegram/messenger/databinding/ForkContentWalletNotificationDetailsLayoutBinding;->textCategory:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showClickableTextDialog([Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsBottomSheetDialog;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 129
    new-instance v1, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsBottomSheetDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2}, Lcom/iMe/ui/wallet/notifications/details/WalletNotificationDetailsBottomSheetDialog$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 130
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object p1

    const-string p2, "Builder(fragment.parentA\u2026                .create()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0, p1}, Lcom/iMe/ui/base/mvp/MvpBottomSheet;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method
