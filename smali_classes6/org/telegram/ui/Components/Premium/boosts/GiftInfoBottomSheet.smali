.class public Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet;
.super Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;
.source "GiftInfoBottomSheet.java"


# instance fields
.field private adapter:Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;

.field private final giftCode:Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;

.field private final isUnused:Z

.field private slug:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$AusFeIsjXxR9K-78xBxwWNm3CLU(Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Lorg/telegram/messenger/browser/Browser$Progress;Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet;->lambda$show$1(Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Lorg/telegram/messenger/browser/Browser$Progress;Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BtGTNYbb0Kgj5P_YZPoU0oAxlzU(Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/telegram/messenger/browser/Browser$Progress;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet;->lambda$show$2(Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/telegram/messenger/browser/Browser$Progress;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Hi2M5yt_gIu4wV2ZSWW4rq4K6zU(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet;->lambda$show$0(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZLorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;Ljava/lang/String;)V
    .locals 1

    .line 105
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)V

    .line 106
    iget p2, p4, Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;->used_date:I

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move p2, p3

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    iput-boolean p2, p0, Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet;->isUnused:Z

    .line 107
    iput-object p4, p0, Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet;->giftCode:Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;

    .line 108
    iput-object p5, p0, Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet;->slug:Ljava/lang/String;

    .line 109
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyTopPadding(Z)V

    .line 110
    invoke-virtual {p0, p3}, Lorg/telegram/ui/ActionBar/BottomSheet;->setApplyBottomPadding(Z)V

    .line 111
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    .line 112
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->updateTitle()V

    .line 113
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet;->adapter:Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;

    invoke-virtual {p2, p1, p4, p5}, Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;->init(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet;)Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;
    .locals 0

    .line 29
    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet;->giftCode:Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet;->slug:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet;)Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;
    .locals 0

    .line 29
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 29
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet;)I
    .locals 0

    .line 29
    iget p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->currentAccount:I

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 29
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method public static handleIntent(Landroid/content/Intent;Lorg/telegram/messenger/browser/Browser$Progress;)Z
    .locals 3

    .line 67
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 69
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "http"

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "tg"

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 84
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p0

    const-string v1, "tg:giftcode"

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "tg://giftcode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    if-eqz p0, :cond_4

    .line 88
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet;->show(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Lorg/telegram/messenger/browser/Browser$Progress;)V

    return v2

    .line 72
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "telegram.me"

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "t.me"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "telegram.dog"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 74
    :cond_3
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 76
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p0

    const-string v1, "/giftcode"

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p0, :cond_4

    .line 78
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet;->show(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Lorg/telegram/messenger/browser/Browser$Progress;)V

    return v2

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$show$0(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 1

    const/4 v0, 0x1

    .line 38
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private static synthetic lambda$show$1(Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Lorg/telegram/messenger/browser/Browser$Progress;Lorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;)V
    .locals 6

    .line 41
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 44
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 47
    :cond_1
    new-instance p0, Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet;

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZLorg/telegram/tgnet/TLRPC$TL_payments_checkedGiftCode;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1, p0}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    if-eqz p3, :cond_2

    .line 50
    invoke-virtual {p3}, Lorg/telegram/messenger/browser/Browser$Progress;->end()V

    :cond_2
    return-void
.end method

.method private static synthetic lambda$show$2(Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/telegram/messenger/browser/Browser$Progress;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 53
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 57
    invoke-virtual {p1}, Lorg/telegram/messenger/browser/Browser$Progress;->end()V

    :cond_1
    return-void
.end method

.method public static show(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-static {p0, p1, v0}, Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet;->show(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Lorg/telegram/messenger/browser/Browser$Progress;)V

    return-void
.end method

.method public static show(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Lorg/telegram/messenger/browser/Browser$Progress;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 35
    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    if-eqz p2, :cond_1

    .line 37
    invoke-virtual {p2}, Lorg/telegram/messenger/browser/Browser$Progress;->init()V

    .line 38
    new-instance v1, Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {p2, v1}, Lorg/telegram/messenger/browser/Browser$Progress;->onCancel(Ljava/lang/Runnable;)V

    .line 40
    :cond_1
    new-instance v1, Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0, p0, p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet$$ExternalSyntheticLambda2;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/lang/String;Lorg/telegram/messenger/browser/Browser$Progress;)V

    new-instance p0, Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet$$ExternalSyntheticLambda1;

    invoke-direct {p0, v0, p2}, Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/telegram/messenger/browser/Browser$Progress;)V

    invoke-static {p1, v1, p0}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->checkGiftCode(Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method


# virtual methods
.method protected createAdapter()Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
    .locals 2

    .line 135
    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet$2;

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet$2;-><init>(Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet;->adapter:Lorg/telegram/ui/Components/Premium/boosts/adapters/GiftInfoAdapter;

    return-object v0
.end method

.method protected getTitle()Ljava/lang/CharSequence;
    .locals 2

    .line 129
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet;->isUnused:Z

    if-eqz v0, :cond_0

    sget v0, Lorg/telegram/messenger/R$string;->BoostingGiftLink:I

    const-string v1, "BoostingGiftLink"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 130
    :cond_0
    sget v0, Lorg/telegram/messenger/R$string;->BoostingUsedGiftLink:I

    const-string v1, "BoostingUsedGiftLink"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public onViewCreated(Landroid/widget/FrameLayout;)V
    .locals 1

    .line 118
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->onViewCreated(Landroid/widget/FrameLayout;)V

    .line 119
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet$1;-><init>(Lorg/telegram/ui/Components/Premium/boosts/GiftInfoBottomSheet;)V

    invoke-static {p1, v0}, Lorg/telegram/ui/Components/Bulletin;->addDelegate(Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/Bulletin$Delegate;)V

    return-void
.end method
