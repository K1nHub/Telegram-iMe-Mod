.class public final Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog;
.super Lcom/iMe/ui/base/mvp/MvpBottomSheet;
.source "ChannelDetailsBottomSheetDialog.kt"

# interfaces
.implements Lcom/iMe/ui/catalog/details/ChannelDetailsView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog$Companion;,
        Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChannelDetailsBottomSheetDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChannelDetailsBottomSheetDialog.kt\ncom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog\n+ 2 Delegates.kt\nmoxy/ktx/DelegatesKt\n+ 3 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n+ 4 View.kt\nandroidx/core/view/ViewKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,276:1\n13#2,4:277\n56#3,6:281\n262#4,2:287\n262#4,2:289\n262#4,2:294\n1855#5:291\n1856#5:293\n1#6:292\n*S KotlinDebug\n*F\n+ 1 ChannelDetailsBottomSheetDialog.kt\ncom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog\n*L\n55#1:277,4\n58#1:281,6\n88#1:287,2\n103#1:289,2\n117#1:294,2\n108#1:291\n108#1:293\n*E\n"
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

.field public static final Companion:Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog$Companion;


# instance fields
.field private final binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

.field private final chatType:Lcom/iMe/storage/domain/model/catalog/ChatType;

.field private final fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private final presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

.field private final resourceManager$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$6LIrtxv7x1myUsxQLda8UVEuAJw(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog;->setupViews$lambda$16$lambda$15$lambda$14(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$AbReGjzBmBIRB2YHQ1B2AoTXI1Y(Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog;->setupListeners$lambda$20$lambda$19(Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$uLbcIqfohyOo8bEvY8TzPWca554(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog;->setupButtonMore$lambda$18$lambda$17(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 55
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog;

    const-string v3, "presenter"

    const-string v4, "getPresenter()Lcom/iMe/ui/catalog/details/ChannelDetailsPresenter;"

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    .line 61
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog;

    const-string v3, "binding"

    const-string v4, "getBinding()Lorg/telegram/messenger/databinding/ForkContentChannelDetailsBinding;"

    invoke-direct {v1, v2, v3, v4, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog;->Companion:Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/iMe/model/catalog/CampaignItem;Lorg/telegram/tgnet/TLRPC$Chat;Lcom/iMe/storage/domain/model/catalog/ChatType;Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 2

    const-string v0, "campaign"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chat"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragment"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "fragment.parentActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/iMe/ui/base/mvp/MvpBottomSheet;-><init>(Landroid/content/Context;Z)V

    .line 50
    iput-object p3, p0, Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog;->chatType:Lcom/iMe/storage/domain/model/catalog/ChatType;

    .line 51
    iput-object p4, p0, Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 55
    new-instance p3, Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog$presenter$2;

    invoke-direct {p3, p0, p1, p2}, Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog$presenter$2;-><init>(Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog;Lcom/iMe/model/catalog/CampaignItem;Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 16
    new-instance p1, Lmoxy/ktx/MoxyKtxDelegate;

    invoke-interface {p0}, Lmoxy/MvpDelegateHolder;->getMvpDelegate()Lmoxy/MvpDelegate;

    move-result-object p2

    const-string p4, "mvpDelegate"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-class v0, Lcom/iMe/ui/catalog/details/ChannelDetailsPresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "presenter"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p1, p2, p4, p3}, Lmoxy/ktx/MoxyKtxDelegate;-><init>(Lmoxy/MvpDelegate;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 55
    iput-object p1, p0, Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    .line 58
    sget-object p1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p1

    .line 61
    new-instance p2, Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog$special$$inlined$inject$default$1;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3, p3}, Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    invoke-static {p1, p2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    .line 58
    iput-object p1, p0, Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog;->resourceManager$delegate:Lkotlin/Lazy;

    .line 61
    new-instance p1, Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog$binding$2;

    invoke-direct {p1, p0}, Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog$binding$2;-><init>(Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog;)V

    invoke-static {p0, p3, p1, v1, p3}, Lcom/iMe/utils/extentions/delegate/ResettableLazyDelegateKt;->resettableLazy$default(Lcom/iMe/ui/base/mvp/MvpBottomSheet;Lcom/iMe/utils/extentions/delegate/ResettableLazyManager;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    move-result-object p1

    iput-object p1, p0, Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    const/4 p1, 0x0

    .line 70
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyBottomPadding(Z)V

    .line 71
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method public static final synthetic access$getChatType$p(Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog;)Lcom/iMe/storage/domain/model/catalog/ChatType;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog;->chatType:Lcom/iMe/storage/domain/model/catalog/ChatType;

    return-object p0
.end method

.method public static final synthetic access$getFragment$p(Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog;)Lorg/telegram/ui/ActionBar/BaseFragment;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-object p0
.end method

.method public static final synthetic access$getPresenter(Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog;)Lcom/iMe/ui/catalog/details/ChannelDetailsPresenter;
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog;->getPresenter()Lcom/iMe/ui/catalog/details/ChannelDetailsPresenter;

    move-result-object p0

    return-object p0
.end method

.method private final getBinding()Lorg/telegram/messenger/databinding/ForkContentChannelDetailsBinding;
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog;->binding$delegate:Lcom/iMe/utils/extentions/delegate/ResettableLazy;

    sget-object v1, Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iMe/utils/extentions/delegate/ResettableLazy;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/databinding/ForkContentChannelDetailsBinding;

    return-object v0
.end method

.method private final getPresenter()Lcom/iMe/ui/catalog/details/ChannelDetailsPresenter;
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog;->presenter$delegate:Lmoxy/ktx/MoxyKtxDelegate;

    sget-object v1, Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lmoxy/ktx/MoxyKtxDelegate;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lmoxy/MvpPresenter;

    move-result-object v0

    check-cast v0, Lcom/iMe/ui/catalog/details/ChannelDetailsPresenter;

    return-object v0
.end method

.method private final getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog;->resourceManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iMe/storage/domain/utils/system/ResourceManager;

    return-object v0
.end method

.method private final onSubItemClick(I)V
    .locals 1

    .line 248
    sget v0, Lcom/iMe/common/IdFabric$Menu;->SHARE:I

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog;->getPresenter()Lcom/iMe/ui/catalog/details/ChannelDetailsPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/ui/catalog/details/ChannelDetailsPresenter;->shareChannelLink()V

    goto :goto_0

    .line 249
    :cond_0
    sget v0, Lcom/iMe/common/IdFabric$Menu;->COPY:I

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog;->getPresenter()Lcom/iMe/ui/catalog/details/ChannelDetailsPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/ui/catalog/details/ChannelDetailsPresenter;->copyChannelLink()V

    goto :goto_0

    .line 250
    :cond_1
    sget v0, Lcom/iMe/common/IdFabric$Menu;->QR:I

    if-ne p1, v0, :cond_2

    invoke-direct {p0}, Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog;->getPresenter()Lcom/iMe/ui/catalog/details/ChannelDetailsPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iMe/ui/catalog/details/ChannelDetailsPresenter;->createChannelQr()V

    :cond_2
    :goto_0
    return-void
.end method

.method private final setupButtonMore()V
    .locals 6

    .line 216
    invoke-direct {p0}, Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentChannelDetailsBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentChannelDetailsBinding;->buttonMore:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    const/4 v1, 0x0

    .line 217
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setLongClickEnabled(Z)V

    const/4 v2, 0x2

    .line 218
    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setSubMenuOpenSide(I)V

    .line 219
    sget v2, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIcon(I)V

    const-string v2, "setupButtonMore$lambda$18"

    .line 220
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setCircleRippleBackground(Landroid/view/View;)V

    .line 222
    sget v2, Lcom/iMe/common/IdFabric$Menu;->SHARE:I

    .line 223
    sget v3, Lorg/telegram/messenger/R$drawable;->share:I

    .line 224
    sget v4, Lorg/telegram/messenger/R$string;->ShareLink:I

    const-string v5, "ShareLink"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 221
    invoke-virtual {v0, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 227
    sget v2, Lcom/iMe/common/IdFabric$Menu;->COPY:I

    .line 228
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_link2:I

    .line 229
    sget v4, Lorg/telegram/messenger/R$string;->CopyLink:I

    const-string v5, "CopyLink"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 226
    invoke-virtual {v0, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 232
    sget v2, Lcom/iMe/common/IdFabric$Menu;->QR:I

    .line 233
    sget v3, Lorg/telegram/messenger/R$drawable;->msg_qrcode:I

    .line 234
    sget v4, Lorg/telegram/messenger/R$string;->GetQRCode:I

    const-string v5, "GetQRCode"

    invoke-static {v5, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 231
    invoke-virtual {v0, v2, v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->addSubItem(IILjava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/ActionBarMenuSubItem;

    .line 236
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->redrawPopup(I)V

    .line 237
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItem:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setPopupItemsColor(IZ)V

    .line 238
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuItemIcon:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setPopupItemsColor(IZ)V

    .line 239
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-virtual {p0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setupPopupRadialSelectors(I)V

    .line 240
    new-instance v1, Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    sget v1, Lorg/telegram/messenger/R$string;->AccDescrMoreOptions:I

    const-string v2, "AccDescrMoreOptions"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 241
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static final setupButtonMore$lambda$18$lambda$17(Lorg/telegram/ui/ActionBar/ActionBarMenuItem;Landroid/view/View;)V
    .locals 0

    const-string p1, "$this_with"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->toggleSubMenu()V

    return-void
.end method

.method private final setupColors()V
    .locals 7

    .line 158
    invoke-direct {p0}, Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentChannelDetailsBinding;

    move-result-object v0

    .line 159
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentChannelDetailsBinding;->buttonSubscribe:Lcom/iMe/ui/custom/BigActionButton;

    invoke-virtual {v1}, Lcom/iMe/ui/custom/ActionButton;->applyColors()V

    .line 160
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentChannelDetailsBinding;->buttonMore:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    .line 161
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayIcon:I

    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setIconColor(I)V

    const-string v3, "setupColors$lambda$13$lambda$8"

    .line 162
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setCircleRippleBackground(Landroid/view/View;)V

    .line 164
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentChannelDetailsBinding;->textName:Landroidx/appcompat/widget/AppCompatTextView;

    .line 165
    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v4, "setupColors$lambda$13$lambda$9"

    .line 166
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->withMediumTypeface(Landroid/widget/TextView;)V

    .line 168
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentChannelDetailsBinding;->textNickname:Landroidx/appcompat/widget/AppCompatTextView;

    .line 169
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 170
    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 172
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentChannelDetailsBinding;->textSubscribersCount:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v5, "setupColors$lambda$13$lambda$11"

    .line 173
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v5, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    invoke-virtual {p0, v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v6

    invoke-static {v1, v6}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setCompoundDrawablesColor(Landroid/widget/TextView;I)V

    .line 174
    invoke-virtual {p0, v5}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 176
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentChannelDetailsBinding;->textDescription:Landroidx/appcompat/widget/AppCompatTextView;

    .line 177
    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 178
    invoke-virtual {p0, v4}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 180
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentChannelDetailsBinding;->textLanguageValue:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {p0, v3}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/widget/TextView;

    .line 181
    iget-object v3, v0, Lorg/telegram/messenger/databinding/ForkContentChannelDetailsBinding;->textLanguageTitle:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v4, "textLanguageTitle"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    aput-object v3, v1, v4

    iget-object v3, v0, Lorg/telegram/messenger/databinding/ForkContentChannelDetailsBinding;->textTags:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v4, "textTags"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    aput-object v3, v1, v4

    invoke-static {v5, v1}, Lcom/iMe/utils/extentions/common/ViewExtKt;->setTextsColorKey(I[Landroid/widget/TextView;)V

    .line 182
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentChannelDetailsBinding;->imageLanguage:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    .line 183
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v4

    .line 184
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 182
    invoke-direct {v3, v4, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 186
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentChannelDetailsBinding;->imageTags:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    .line 187
    invoke-virtual {p0, v2}, Lorg/telegram/ui/ActionBar/BottomSheet;->getThemedColor(I)I

    move-result v2

    .line 188
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 186
    invoke-direct {v1, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method private final setupListeners()V
    .locals 7

    .line 255
    invoke-direct {p0}, Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentChannelDetailsBinding;

    move-result-object v0

    .line 256
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentChannelDetailsBinding;->buttonSubscribe:Lcom/iMe/ui/custom/BigActionButton;

    const-string v2, "buttonSubscribe"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog$setupListeners$1$1;

    invoke-direct {v4, p0}, Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog$setupListeners$1$1;-><init>(Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog;)V

    const-wide/16 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/iMe/utils/extentions/common/ViewExtKt;->safeThrottledClick$default(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 257
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentChannelDetailsBinding;->buttonMore:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    new-instance v1, Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog$$ExternalSyntheticLambda2;-><init>(Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setDelegate(Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemDelegate;)V

    return-void
.end method

.method private static final setupListeners$lambda$20$lambda$19(Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    invoke-direct {p0, p1}, Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog;->onSubItemClick(I)V

    return-void
.end method

.method private final setupViews()V
    .locals 4

    .line 194
    invoke-direct {p0}, Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentChannelDetailsBinding;

    move-result-object v0

    .line 195
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentChannelDetailsBinding;->textNickname:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 196
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentChannelDetailsBinding;->textDescription:Landroidx/appcompat/widget/AppCompatTextView;

    .line 197
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 198
    sget-object v2, Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog$$ExternalSyntheticLambda1;->INSTANCE:Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog$$ExternalSyntheticLambda1;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 208
    iget-object v1, v0, Lorg/telegram/messenger/databinding/ForkContentChannelDetailsBinding;->textLanguageTitle:Landroidx/appcompat/widget/AppCompatTextView;

    .line 209
    invoke-direct {p0}, Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/R$string;->catalog_channel_details_language:I

    invoke-interface {v2, v3}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 208
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentChannelDetailsBinding;->textTags:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {p0}, Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog;->getResourceManager()Lcom/iMe/storage/domain/utils/system/ResourceManager;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/R$string;->catalog_channel_details_tags:I

    invoke-interface {v1, v2}, Lcom/iMe/storage/domain/utils/system/ResourceManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    invoke-direct {p0}, Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog;->setupButtonMore()V

    return-void
.end method

.method private static final setupViews$lambda$16$lambda$15$lambda$14(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 199
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 200
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 202
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    if-ne p1, v1, :cond_1

    .line 203
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_1
    return v0
.end method


# virtual methods
.method public onCreateView(Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 77
    invoke-direct {p0}, Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog;->setupColors()V

    .line 78
    invoke-direct {p0}, Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog;->setupListeners()V

    .line 79
    invoke-direct {p0}, Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog;->setupViews()V

    .line 81
    invoke-direct {p0}, Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentChannelDetailsBinding;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/databinding/ForkContentChannelDetailsBinding;->getRoot()Landroidx/core/widget/NestedScrollView;

    move-result-object p1

    const-string v0, "binding.root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onSubscribedToChannel(Landroid/net/Uri;)V
    .locals 1

    const-string v0, "channelUri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public setupCampaignInfo(Lcom/iMe/model/catalog/CampaignItem;)V
    .locals 21

    const-string v0, "campaignItem"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-direct/range {p0 .. p0}, Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentChannelDetailsBinding;

    move-result-object v0

    .line 87
    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkContentChannelDetailsBinding;->imageAvatar:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v3, "imageAvatar"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/iMe/model/catalog/CampaignItem;->getPhoto()Ljava/lang/String;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$drawable;->photo_placeholder_in:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/iMe/utils/extentions/common/ImageViewExtKt;->loadFrom$default(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Integer;ZILjava/lang/Object;)V

    .line 88
    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkContentChannelDetailsBinding;->imageVerified:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v3, "imageVerified"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/iMe/model/catalog/CampaignItem;->isVerified()Z

    move-result v3

    const/16 v4, 0x8

    if-eqz v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    .line 262
    :goto_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 89
    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkContentChannelDetailsBinding;->textName:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual/range {p1 .. p1}, Lcom/iMe/model/catalog/CampaignItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/iMe/model/catalog/CampaignItem;->getShortname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 91
    iget-object v3, v0, Lorg/telegram/messenger/databinding/ForkContentChannelDetailsBinding;->textNickname:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 93
    new-instance v7, Lorg/telegram/ui/Components/URLSpanNoUnderline;

    const/4 v8, 0x1

    invoke-direct {v7, v2, v8}, Lorg/telegram/ui/Components/URLSpanNoUnderline;-><init>(Ljava/lang/String;Z)V

    .line 95
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v9, 0x21

    .line 92
    invoke-virtual {v6, v7, v5, v2, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 91
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkContentChannelDetailsBinding;->textDescription:Landroidx/appcompat/widget/AppCompatTextView;

    .line 100
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/iMe/model/catalog/CampaignItem;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 101
    invoke-static {v5, v3, v5, v5}, Lorg/telegram/messenger/MessageObject;->addLinks(ZLjava/lang/CharSequence;ZZ)V

    .line 100
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v3, "setupCampaignInfo$lambda$6$lambda$5$lambda$2"

    .line 103
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/iMe/model/catalog/CampaignItem;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/2addr v3, v8

    if-eqz v3, :cond_1

    move v3, v5

    goto :goto_1

    :cond_1
    move v3, v4

    .line 262
    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 105
    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkContentChannelDetailsBinding;->topic:Lcom/iMe/ui/topics/TopicView;

    sget-object v3, Lcom/iMe/storage/domain/model/topics/TopicModel;->Companion:Lcom/iMe/storage/domain/model/topics/TopicModel$Companion;

    invoke-virtual/range {p1 .. p1}, Lcom/iMe/model/catalog/CampaignItem;->getCategory()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/iMe/storage/domain/model/topics/TopicModel$Companion;->createMockupWithTitle(Ljava/lang/String;)Lcom/iMe/storage/domain/model/topics/TopicModel;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Lcom/iMe/ui/topics/TopicView;->setTopic(Lcom/iMe/storage/domain/model/topics/TopicModel;Z)V

    .line 106
    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkContentChannelDetailsBinding;->textLanguageValue:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual/range {p1 .. p1}, Lcom/iMe/model/catalog/CampaignItem;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v2, v0, Lorg/telegram/messenger/databinding/ForkContentChannelDetailsBinding;->textSubscribersCount:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual/range {p1 .. p1}, Lcom/iMe/model/catalog/CampaignItem;->getMembersCount()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    invoke-virtual/range {p1 .. p1}, Lcom/iMe/model/catalog/CampaignItem;->getTags()Ljava/util/List;

    move-result-object v2

    .line 1855
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 109
    iget-object v6, v0, Lorg/telegram/messenger/databinding/ForkContentChannelDetailsBinding;->flexboxTags:Lcom/google/android/flexbox/FlexboxLayout;

    .line 110
    new-instance v7, Lcom/iMe/ui/custom/ChannelTagView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v9, "context"

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x6

    const/4 v14, 0x0

    move-object v9, v7

    invoke-direct/range {v9 .. v14}, Lcom/iMe/ui/custom/ChannelTagView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v15, -0x2

    const/16 v16, -0x2

    const/16 v17, 0x6

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x6

    .line 111
    invoke-static/range {v15 .. v20}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 109
    invoke-virtual {v6, v7, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 117
    :cond_2
    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentChannelDetailsBinding;->constraintTags:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v2, "constraintTags"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/iMe/model/catalog/CampaignItem;->getTags()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v8

    if-eqz v1, :cond_3

    move v4, v5

    .line 262
    :cond_3
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setupSubscribeButton(Z)V
    .locals 3

    .line 123
    invoke-direct {p0}, Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog;->getBinding()Lorg/telegram/messenger/databinding/ForkContentChannelDetailsBinding;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/databinding/ForkContentChannelDetailsBinding;->buttonSubscribe:Lcom/iMe/ui/custom/BigActionButton;

    .line 124
    iget-object v1, p0, Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog;->chatType:Lcom/iMe/storage/domain/model/catalog/ChatType;

    sget-object v2, Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    if-eqz p1, :cond_0

    .line 133
    sget p1, Lorg/telegram/messenger/R$string;->JoinGroup:I

    const-string v1, "JoinGroup"

    invoke-static {v1, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 134
    :cond_0
    sget p1, Lorg/telegram/messenger/R$string;->LeaveMegaMenu:I

    const-string v1, "LeaveMegaMenu"

    invoke-static {v1, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_2
    if-eqz p1, :cond_3

    .line 128
    sget p1, Lorg/telegram/messenger/R$string;->ChannelJoin:I

    const-string v1, "ChannelJoin"

    .line 126
    invoke-static {v1, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 130
    :cond_3
    sget p1, Lorg/telegram/messenger/R$string;->LeaveChannel:I

    const-string v1, "LeaveChannel"

    invoke-static {v1, p1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 123
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showChannelQr(J)V
    .locals 2

    .line 143
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "chat_id"

    .line 144
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 145
    iget-object p1, p0, Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance p2, Lorg/telegram/ui/QrActivity;

    invoke-direct {p2, v0}, Lorg/telegram/ui/QrActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method public showShareDialog(Ljava/lang/String;)V
    .locals 2

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/iMe/ui/catalog/details/ChannelDetailsBottomSheetDialog;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "fragment.parentActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/iMe/utils/extentions/common/ContextExtKt;->share(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
