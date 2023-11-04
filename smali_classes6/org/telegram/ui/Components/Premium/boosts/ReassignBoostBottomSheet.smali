.class public Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;
.super Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;
.source "ReassignBoostBottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$BoostIconView;,
        Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$AvatarHolderView;,
        Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$ArrowView;,
        Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$TopCell;
    }
.end annotation


# instance fields
.field private final actionButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

.field private final allUsedBoosts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/telegram/tgnet/tl/TL_stories$TL_myBoost;",
            ">;"
        }
    .end annotation
.end field

.field private final buttonContainer:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorBtnCell;

.field private final currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private final selectedBoosts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/telegram/tgnet/tl/TL_stories$TL_myBoost;",
            ">;"
        }
    .end annotation
.end field

.field private timer:Landroid/os/CountDownTimer;

.field private topCell:Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$TopCell;


# direct methods
.method public static synthetic $r8$lambda$7ItAME4qTpI5QUw816_u6IY_gAM(Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;Lorg/telegram/tgnet/TLRPC$Chat;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->lambda$new$2(Lorg/telegram/tgnet/TLRPC$Chat;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9ZKwywK0qb-jlB0XQz7br_kWmR4(Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;Ljava/util/List;Ljava/util/HashSet;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_myBoosts;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->lambda$new$0(Ljava/util/List;Ljava/util/HashSet;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_myBoosts;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RNkWmxcaVCO4xZP0s6-rB6Cc-6A(Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->lambda$new$1(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ol_j0Kjm26y6P26dBSDSqNW_eHc(Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;Lorg/telegram/tgnet/TLRPC$Chat;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->lambda$new$3(Lorg/telegram/tgnet/TLRPC$Chat;Landroid/view/View;I)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_myBoosts;Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 8

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, p1, v0, v0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;ZZ)V

    .line 75
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->selectedBoosts:Ljava/util/List;

    .line 76
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->allUsedBoosts:Ljava/util/List;

    const p1, 0x3e99999a    # 0.3f

    .line 87
    iput p1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->topPadding:F

    .line 89
    iput-object p3, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 91
    iget-object p1, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_premium_myBoosts;->my_boosts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/tl/TL_stories$TL_myBoost;

    .line 92
    iget-object v1, p2, Lorg/telegram/tgnet/tl/TL_stories$TL_myBoost;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v1, :cond_0

    invoke-static {v1}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v1

    iget-wide v3, p3, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v3, v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->allUsedBoosts:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 97
    :cond_1
    new-instance p1, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorBtnCell;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    iget-object v1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    iget-object v2, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {p1, p2, v1, v2}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorBtnCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Lorg/telegram/ui/Components/RecyclerListView;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->buttonContainer:Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorBtnCell;

    const/4 p2, 0x1

    .line 98
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 99
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x8

    .line 100
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {p1, v2, v3, v4, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 101
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_dialogBackground:I

    iget-object v2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 102
    new-instance v1, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$1;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v1, p0, v2, p2, v3}, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$1;-><init>(Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;Landroid/content/Context;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->actionButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    .line 128
    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->withCounterIcon()V

    const p2, -0x678b04

    .line 129
    invoke-virtual {v1, p2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setCounterColor(I)V

    .line 130
    new-instance p2, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p3}, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;Lorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-virtual {v1, p2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p2, -0x1

    const/16 v2, 0x30

    const/16 v3, 0x57

    .line 153
    invoke-static {p2, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->containerView:Landroid/view/ViewGroup;

    const/4 v1, -0x1

    const/high16 v2, -0x40000000    # -2.0f

    iget v6, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move v4, v6

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrameMarginPx(IFIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    iget-object p1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->backgroundPaddingLeft:I

    const/16 v1, 0x40

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {p1, p2, v0, p2, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 157
    iget-object p1, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance p2, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0, p3}, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;Lorg/telegram/tgnet/TLRPC$Chat;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 176
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->fixNavigationBar()V

    .line 177
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->updateTitle()V

    .line 178
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->updateActionButton(Z)V

    .line 179
    iget-object p1, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    new-instance p2, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$2;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$2;-><init>(Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;)V

    invoke-static {p1, p2}, Lorg/telegram/ui/Components/Bulletin;->addDelegate(Landroid/widget/FrameLayout;Lorg/telegram/ui/Components/Bulletin$Delegate;)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;)Ljava/util/List;
    .locals 0

    .line 59
    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->allUsedBoosts:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 59
    iget-object p0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 0

    .line 59
    iget-object p0, p0, Lorg/telegram/ui/Components/BottomSheetWithRecyclerListView;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;)Ljava/util/List;
    .locals 0

    .line 59
    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->selectedBoosts:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;)Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 0

    .line 59
    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->currentChat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 59
    iget-object p0, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;)Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$TopCell;
    .locals 0

    .line 59
    iget-object p0, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->topCell:Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$TopCell;

    return-object p0
.end method

.method static synthetic access$602(Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$TopCell;)Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$TopCell;
    .locals 0

    .line 59
    iput-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->topCell:Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$TopCell;

    return-object p1
.end method

.method private synthetic lambda$new$0(Ljava/util/List;Ljava/util/HashSet;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_myBoosts;)V
    .locals 4

    .line 145
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    .line 146
    sget v0, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->boostedChannelByUser:I

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p3, 0x1

    aput-object p1, v2, p3

    invoke-virtual {p2}, Ljava/util/HashSet;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$new$1(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    .line 148
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->actionButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    .line 149
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/telegram/ui/Components/Premium/boosts/BoostDialogs;->showToastError(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method private synthetic lambda$new$2(Lorg/telegram/tgnet/TLRPC$Chat;Landroid/view/View;)V
    .locals 4

    .line 131
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->selectedBoosts:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 134
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->actionButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    invoke-virtual {p2}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->isLoading()Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 137
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->actionButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setLoading(Z)V

    .line 138
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 139
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 140
    iget-object v1, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->selectedBoosts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/tl/TL_stories$TL_myBoost;

    .line 141
    iget v3, v2, Lorg/telegram/tgnet/tl/TL_stories$TL_myBoost;->slot:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_stories$TL_myBoost;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v2}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 144
    :cond_2
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    new-instance p1, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, p2, v0}, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;Ljava/util/List;Ljava/util/HashSet;)V

    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;)V

    invoke-static {v1, v2, p2, p1, v0}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->applyBoost(JLjava/util/List;Lorg/telegram/messenger/Utilities$Callback;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method private synthetic lambda$new$3(Lorg/telegram/tgnet/TLRPC$Chat;Landroid/view/View;I)V
    .locals 2

    .line 158
    instance-of p3, p2, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;

    if-eqz p3, :cond_2

    .line 159
    check-cast p2, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;

    .line 160
    invoke-virtual {p2}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->getBoost()Lorg/telegram/tgnet/tl/TL_stories$TL_myBoost;

    move-result-object p3

    iget p3, p3, Lorg/telegram/tgnet/tl/TL_stories$TL_myBoost;->cooldown_until_date:I

    const/4 v0, 0x1

    if-lez p3, :cond_0

    .line 161
    sget p1, Lorg/telegram/messenger/R$string;->BoostingWaitWarning:I

    new-array p2, v0, [Ljava/lang/Object;

    const/4 p3, 0x0

    invoke-static {}, Lorg/telegram/ui/Components/Premium/boosts/BoostRepository;->boostsPerSentGift()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, p3

    const-string p3, "BoostingWaitWarning"

    invoke-static {p3, p1, p2}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 162
    iget-object p2, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->container:Lorg/telegram/ui/ActionBar/BottomSheet$ContainerView;

    iget-object p3, p0, Lorg/telegram/ui/ActionBar/BottomSheet;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {p2, p3}, Lorg/telegram/ui/Components/BulletinFactory;->of(Landroid/widget/FrameLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p2

    sget p3, Lorg/telegram/messenger/R$raw;->chats_infotip:I

    const/4 v1, 0x5

    invoke-virtual {p2, p3, p1, v1}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/Bulletin;->show(Z)Lorg/telegram/ui/Components/Bulletin;

    return-void

    .line 165
    :cond_0
    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->selectedBoosts:Ljava/util/List;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->getBoost()Lorg/telegram/tgnet/tl/TL_stories$TL_myBoost;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 166
    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->selectedBoosts:Ljava/util/List;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->getBoost()Lorg/telegram/tgnet/tl/TL_stories$TL_myBoost;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 168
    :cond_1
    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->selectedBoosts:Ljava/util/List;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->getBoost()Lorg/telegram/tgnet/tl/TL_stories$TL_myBoost;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    :goto_0
    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->selectedBoosts:Ljava/util/List;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->getBoost()Lorg/telegram/tgnet/tl/TL_stories$TL_myBoost;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    invoke-virtual {p2, p3, v0}, Lorg/telegram/ui/Components/Premium/boosts/cells/selector/SelectorUserCell;->setChecked(ZZ)V

    .line 171
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->updateActionButton(Z)V

    .line 172
    iget-object p2, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->topCell:Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$TopCell;

    iget-object p3, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->selectedBoosts:Ljava/util/List;

    invoke-virtual {p2, p3, p1}, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$TopCell;->showBoosts(Ljava/util/List;Lorg/telegram/tgnet/TLRPC$Chat;)V

    :cond_2
    return-void
.end method

.method public static show(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_myBoosts;Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;
    .locals 1

    .line 70
    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/tl/TL_stories$TL_premium_myBoosts;Lorg/telegram/tgnet/TLRPC$Chat;)V

    .line 71
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-object v0
.end method

.method private updateActionButton(Z)V
    .locals 5

    .line 233
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->actionButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setShowZero(Z)V

    .line 234
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->selectedBoosts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 235
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->actionButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    sget v3, Lorg/telegram/messenger/R$string;->BoostingReassignBoosts:I

    const-string v4, "BoostingReassignBoosts"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 237
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->actionButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    sget v3, Lorg/telegram/messenger/R$string;->BoostingReassignBoost:I

    const-string v4, "BoostingReassignBoost"

    invoke-static {v4, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setText(Ljava/lang/CharSequence;Z)V

    .line 239
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->actionButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget-object v3, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->selectedBoosts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0, v3, p1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setCount(IZ)V

    .line 240
    iget-object p1, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->actionButton:Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;

    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->selectedBoosts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Stories/recorder/ButtonWithCounterView;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method protected createAdapter()Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
    .locals 1

    .line 250
    new-instance v0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$4;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$4;-><init>(Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;)V

    return-object v0
.end method

.method protected getTitle()Ljava/lang/CharSequence;
    .locals 2

    .line 245
    sget v0, Lorg/telegram/messenger/R$string;->BoostingReassignBoost:I

    const-string v1, "BoostingReassignBoost"

    invoke-static {v1, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 7

    .line 189
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    .line 190
    new-instance v6, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$3;

    const-wide v2, 0x7fffffffffffffffL

    const-wide/16 v4, 0x3e8

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet$3;-><init>(Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;JJ)V

    iput-object v6, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->timer:Landroid/os/CountDownTimer;

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 223
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    .line 224
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->timer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    return-void
.end method

.method public onOpenAnimationEnd()V
    .locals 1

    .line 229
    iget-object v0, p0, Lorg/telegram/ui/Components/Premium/boosts/ReassignBoostBottomSheet;->timer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method
