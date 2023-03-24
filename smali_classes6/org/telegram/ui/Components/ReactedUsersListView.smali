.class public Lorg/telegram/ui/Components/ReactedUsersListView;
.super Landroid/widget/FrameLayout;
.source "ReactedUsersListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ReactedUsersListView$ContainerLinerLayout;,
        Lorg/telegram/ui/Components/ReactedUsersListView$OnCustomEmojiSelectedListener;,
        Lorg/telegram/ui/Components/ReactedUsersListView$OnProfileSelectedListener;,
        Lorg/telegram/ui/Components/ReactedUsersListView$OnHeightChangedListener;,
        Lorg/telegram/ui/Components/ReactedUsersListView$ReactedUserHolderView;
    }
.end annotation


# instance fields
.field private adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field public canLoadMore:Z

.field private currentAccount:I

.field customEmojiStickerSets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$InputStickerSet;",
            ">;"
        }
    .end annotation
.end field

.field customReactionsEmoji:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;",
            ">;"
        }
    .end annotation
.end field

.field private filter:Lorg/telegram/tgnet/TLRPC$Reaction;

.field public isLoaded:Z

.field public isLoading:Z

.field public listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private loadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

.field private message:Lorg/telegram/messenger/MessageObject;

.field messageContainsEmojiButton:Lorg/telegram/ui/Components/MessageContainsEmojiButton;

.field private offset:Ljava/lang/String;

.field private onCustomEmojiSelectedListener:Lorg/telegram/ui/Components/ReactedUsersListView$OnCustomEmojiSelectedListener;

.field private onHeightChangedListener:Lorg/telegram/ui/Components/ReactedUsersListView$OnHeightChangedListener;

.field private onProfileSelectedListener:Lorg/telegram/ui/Components/ReactedUsersListView$OnProfileSelectedListener;

.field private peerReactionMap:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;",
            ">;>;"
        }
    .end annotation
.end field

.field private predictiveCount:I

.field resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private userReactions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$D3Xq7oCm4gBSNEX1g61aRhwRqVo(Lorg/telegram/ui/Components/ReactedUsersListView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ReactedUsersListView;->lambda$load$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DgKPmBLm7kct_vMIOvAKn0gPRiw(Lorg/telegram/ui/Components/ReactedUsersListView;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ReactedUsersListView;->lambda$new$0(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$E6GedzHlNsUVvVbWOkgpGIZ1UA0(Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;)I
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/ReactedUsersListView;->lambda$setSeenUsers$1(Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$M7POKq-4-eR4lyX1ZpRTeFRBd7k(Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;)I
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/ReactedUsersListView;->lambda$load$2(Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$TkzaXagg7qNf9ip9x8IzwnpCWI4(Lorg/telegram/ui/Components/ReactedUsersListView;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ReactedUsersListView;->lambda$load$6(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$m21R6qSIcMLIpTzeK5Tri6KSc8c(Lorg/telegram/ui/Components/ReactedUsersListView;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ReactedUsersListView;->lambda$load$4(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nCpjtuGIkwU3V-6bkxgCuzwa1xo(Lorg/telegram/ui/Components/ReactedUsersListView;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ReactedUsersListView;->lambda$load$5(Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ILorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReactionCount;Z)V
    .locals 5

    .line 83
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->userReactions:Ljava/util/List;

    .line 69
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->peerReactionMap:Landroid/util/LongSparseArray;

    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->canLoadMore:Z

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->customReactionsEmoji:Ljava/util/ArrayList;

    .line 78
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->customEmojiStickerSets:Ljava/util/ArrayList;

    .line 84
    iput p3, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->currentAccount:I

    .line 85
    iput-object p4, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->message:Lorg/telegram/messenger/MessageObject;

    const/4 p4, 0x0

    if-nez p5, :cond_0

    move-object v1, p4

    goto :goto_0

    .line 86
    :cond_0
    iget-object v1, p5, Lorg/telegram/tgnet/TLRPC$ReactionCount;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    :goto_0
    iput-object v1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->filter:Lorg/telegram/tgnet/TLRPC$Reaction;

    .line 87
    iput-object p2, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-nez p5, :cond_1

    const/4 p5, 0x6

    goto :goto_1

    .line 88
    :cond_1
    iget p5, p5, Lorg/telegram/tgnet/TLRPC$ReactionCount;->count:I

    :goto_1
    iput p5, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->predictiveCount:I

    .line 89
    new-instance p5, Lorg/telegram/ui/Components/ReactedUsersListView$1;

    invoke-direct {p5, p0, p1, p2}, Lorg/telegram/ui/Components/ReactedUsersListView$1;-><init>(Lorg/telegram/ui/Components/ReactedUsersListView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p5, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 99
    new-instance p5, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p5, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 100
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, p5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    if-eqz p6, :cond_2

    .line 102
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v2, 0x8

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v3, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 103
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 105
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    const-string v3, "listSelectorSDK21"

    if-lt v1, v2, :cond_3

    .line 106
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVerticalScrollbarThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/ReactedUsersListView$2;

    invoke-direct {v2, p0, p3, p1, p2}, Lorg/telegram/ui/Components/ReactedUsersListView$2;-><init>(Lorg/telegram/ui/Components/ReactedUsersListView;ILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 161
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/ReactedUsersListView$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ReactedUsersListView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/ReactedUsersListView;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 173
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/ReactedUsersListView$3;

    invoke-direct {v2, p0, p5}, Lorg/telegram/ui/Components/ReactedUsersListView$3;-><init>(Lorg/telegram/ui/Components/ReactedUsersListView;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 181
    iget-object p5, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p5, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 182
    iget-object p5, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {p5, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 183
    iget-object p5, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, -0x1

    invoke-static {v1, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, p5, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    new-instance p5, Lorg/telegram/ui/Components/ReactedUsersListView$4;

    invoke-direct {p5, p0, p1, p2}, Lorg/telegram/ui/Components/ReactedUsersListView$4;-><init>(Lorg/telegram/ui/Components/ReactedUsersListView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p5, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->loadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    const-string p1, "actionBarDefaultSubmenuBackground"

    .line 191
    invoke-virtual {p5, p1, v3, p4}, Lorg/telegram/ui/Components/FlickerLoadingView;->setColors(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->loadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/FlickerLoadingView;->setIsSingleCell(Z)V

    .line 194
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->loadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    iget p2, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->predictiveCount:I

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/FlickerLoadingView;->setItemsCount(I)V

    .line 195
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->loadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-static {v1, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-nez p6, :cond_4

    .line 196
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->filter:Lorg/telegram/tgnet/TLRPC$Reaction;

    if-eqz p1, :cond_4

    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;

    if-eqz p1, :cond_4

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/messenger/MessagesController;->premiumLocked:Z

    if-nez p1, :cond_4

    .line 197
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->customReactionsEmoji:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 198
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->customReactionsEmoji:Ljava/util/ArrayList;

    iget-object p2, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->filter:Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-static {p2}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTLReaction(Lorg/telegram/tgnet/TLRPC$Reaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    invoke-direct {p0}, Lorg/telegram/ui/Components/ReactedUsersListView;->updateCustomReactionsButton()V

    .line 201
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->loadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    iget-object p2, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->customReactionsEmoji:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5

    const/16 p2, 0x10

    goto :goto_2

    :cond_5
    const/16 p2, 0x17

    :goto_2
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/ReactedUsersListView;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lorg/telegram/ui/Components/ReactedUsersListView;->updateHeight()V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/ReactedUsersListView;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lorg/telegram/ui/Components/ReactedUsersListView;->updateCustomReactionsButton()V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/ReactedUsersListView;)Ljava/util/List;
    .locals 0

    .line 50
    iget-object p0, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->userReactions:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/ReactedUsersListView;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 0

    .line 50
    iget-object p0, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/ReactedUsersListView;)I
    .locals 0

    .line 50
    invoke-direct {p0}, Lorg/telegram/ui/Components/ReactedUsersListView;->getLoadCount()I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/ReactedUsersListView;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lorg/telegram/ui/Components/ReactedUsersListView;->load()V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/ReactedUsersListView;)Lorg/telegram/ui/Components/FlickerLoadingView;
    .locals 0

    .line 50
    iget-object p0, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->loadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    return-object p0
.end method

.method private getLoadCount()I
    .locals 1

    .line 386
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->filter:Lorg/telegram/tgnet/TLRPC$Reaction;

    if-nez v0, :cond_0

    const/16 v0, 0x64

    goto :goto_0

    :cond_0
    const/16 v0, 0x32

    :goto_0
    return v0
.end method

.method private static synthetic lambda$load$2(Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;)I
    .locals 1

    .line 311
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->date:I

    if-lez v0, :cond_1

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    neg-int p0, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/high16 p0, -0x80000000

    :goto_1
    return p0
.end method

.method private synthetic lambda$load$3(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 319
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 320
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 321
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->loadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$load$4(Lorg/telegram/tgnet/TLObject;)V
    .locals 11

    .line 274
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_messageReactionsList;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 275
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messages_messageReactionsList;

    .line 277
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_messageReactionsList;->users:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    .line 278
    iget v3, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    goto :goto_0

    .line 281
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move v2, v1

    .line 282
    :goto_1
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_messageReactionsList;->reactions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_5

    .line 283
    iget-object v3, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->userReactions:Ljava/util/List;

    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_messageReactionsList;->reactions:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_messageReactionsList;->reactions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v5

    .line 285
    iget-object v3, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->peerReactionMap:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 287
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    move v7, v1

    .line 289
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 290
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    if-nez v8, :cond_2

    .line 291
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v7, v7, -0x1

    :cond_2
    add-int/2addr v7, v4

    goto :goto_2

    .line 297
    :cond_3
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_messageReactionsList;->reactions:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-static {v4}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTLReaction(Lorg/telegram/tgnet/TLRPC$Reaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v4

    .line 298
    iget-wide v7, v4, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_4

    .line 299
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 301
    :cond_4
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_messageReactionsList;->reactions:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    iget-object v4, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->peerReactionMap:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v5, v6, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 305
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->filter:Lorg/telegram/tgnet/TLRPC$Reaction;

    if-nez v2, :cond_6

    .line 306
    iget-object v2, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->customReactionsEmoji:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 307
    iget-object v2, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->customReactionsEmoji:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 308
    invoke-direct {p0}, Lorg/telegram/ui/Components/ReactedUsersListView;->updateCustomReactionsButton()V

    .line 311
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->userReactions:Ljava/util/List;

    sget-object v2, Lorg/telegram/ui/Components/ReactedUsersListView$$ExternalSyntheticLambda4;->INSTANCE:Lorg/telegram/ui/Components/ReactedUsersListView$$ExternalSyntheticLambda4;

    invoke-static {v2}, Lj$/util/Comparator$-CC;->comparingInt(Lj$/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 313
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 315
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->isLoaded:Z

    if-nez v0, :cond_7

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 316
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 317
    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 318
    new-instance v2, Lorg/telegram/ui/Components/ReactedUsersListView$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ReactedUsersListView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ReactedUsersListView;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 323
    new-instance v2, Lorg/telegram/ui/Components/ReactedUsersListView$5;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ReactedUsersListView$5;-><init>(Lorg/telegram/ui/Components/ReactedUsersListView;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 329
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 331
    invoke-direct {p0}, Lorg/telegram/ui/Components/ReactedUsersListView;->updateHeight()V

    .line 333
    iput-boolean v4, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->isLoaded:Z

    .line 335
    :cond_7
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_messageReactionsList;->next_offset:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->offset:Ljava/lang/String;

    if-nez p1, :cond_8

    .line 337
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->canLoadMore:Z

    .line 338
    :cond_8
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->isLoading:Z

    goto :goto_3

    .line 340
    :cond_9
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->isLoading:Z

    :goto_3
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private synthetic lambda$load$5(Lorg/telegram/tgnet/TLObject;)V
    .locals 2

    .line 273
    iget v0, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/ReactedUsersListView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/ReactedUsersListView$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ReactedUsersListView;Lorg/telegram/tgnet/TLObject;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/NotificationCenter;->doOnIdle(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$load$6(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 273
    new-instance p2, Lorg/telegram/ui/Components/ReactedUsersListView$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/ReactedUsersListView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/ReactedUsersListView;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;I)V
    .locals 3

    .line 162
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    if-nez p1, :cond_0

    .line 164
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->onProfileSelectedListener:Lorg/telegram/ui/Components/ReactedUsersListView$OnProfileSelectedListener;

    if-eqz p1, :cond_1

    .line 165
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->userReactions:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v0}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->userReactions:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;

    invoke-interface {p1, p0, v0, v1, p2}, Lorg/telegram/ui/Components/ReactedUsersListView$OnProfileSelectedListener;->onProfileSelected(Lorg/telegram/ui/Components/ReactedUsersListView;JLorg/telegram/tgnet/TLRPC$MessagePeerReaction;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 168
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->onCustomEmojiSelectedListener:Lorg/telegram/ui/Components/ReactedUsersListView$OnCustomEmojiSelectedListener;

    if-eqz p1, :cond_1

    .line 169
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->customEmojiStickerSets:Ljava/util/ArrayList;

    invoke-interface {p1, p0, p2}, Lorg/telegram/ui/Components/ReactedUsersListView$OnCustomEmojiSelectedListener;->showCustomEmojiAlert(Lorg/telegram/ui/Components/ReactedUsersListView;Ljava/util/ArrayList;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static synthetic lambda$setSeenUsers$1(Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;)I
    .locals 1

    .line 242
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->date:I

    if-lez v0, :cond_1

    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    neg-int p0, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/high16 p0, -0x80000000

    :goto_1
    return p0
.end method

.method private load()V
    .locals 5

    const/4 v0, 0x1

    .line 259
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->isLoading:Z

    .line 261
    iget v1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    .line 262
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessageReactionsList;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessageReactionsList;-><init>()V

    .line 263
    iget-object v3, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessageReactionsList;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 264
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    iput v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessageReactionsList;->id:I

    .line 265
    invoke-direct {p0}, Lorg/telegram/ui/Components/ReactedUsersListView;->getLoadCount()I

    move-result v1

    iput v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessageReactionsList;->limit:I

    .line 266
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->filter:Lorg/telegram/tgnet/TLRPC$Reaction;

    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessageReactionsList;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    .line 267
    iget-object v3, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->offset:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessageReactionsList;->offset:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 269
    iget v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessageReactionsList;->flags:I

    or-int/2addr v0, v1

    iput v0, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessageReactionsList;->flags:I

    :cond_0
    if-eqz v3, :cond_1

    .line 271
    iget v0, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessageReactionsList;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessageReactionsList;->flags:I

    .line 272
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Components/ReactedUsersListView$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ReactedUsersListView$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/ReactedUsersListView;)V

    const/16 v3, 0x40

    invoke-virtual {v0, v2, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method private updateCustomReactionsButton()V
    .locals 8

    .line 347
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->customEmojiStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 348
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 349
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v7, 0x0

    move v1, v7

    .line 350
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->customReactionsEmoji:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 351
    iget v2, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->currentAccount:I

    iget-object v3, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->customReactionsEmoji:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iget-wide v3, v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->findDocument(IJ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/MessageObject;->getInputStickerSet(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 352
    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 353
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 357
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController;->premiumLocked:Z

    if-eqz v0, :cond_2

    return-void

    .line 360
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->customEmojiStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 361
    new-instance v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;

    iget v2, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->currentAccount:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v6, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/MessageContainsEmojiButton;-><init>(ILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/util/ArrayList;I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->messageContainsEmojiButton:Lorg/telegram/ui/Components/MessageContainsEmojiButton;

    .line 362
    iput-boolean v7, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->checkWidth:Z

    return-void
.end method

.method private updateHeight()V
    .locals 3

    .line 366
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->onHeightChangedListener:Lorg/telegram/ui/Components/ReactedUsersListView$OnHeightChangedListener;

    if-eqz v0, :cond_3

    .line 368
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->userReactions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 370
    iget v0, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->predictiveCount:I

    :cond_0
    mul-int/lit8 v0, v0, 0x32

    .line 372
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    .line 373
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->messageContainsEmojiButton:Lorg/telegram/ui/Components/MessageContainsEmojiButton;

    if-eqz v1, :cond_1

    .line 374
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    const/16 v2, 0x8

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 376
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    if-eqz v1, :cond_2

    .line 377
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 381
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->onHeightChangedListener:Lorg/telegram/ui/Components/ReactedUsersListView$OnHeightChangedListener;

    invoke-interface {v1, p0, v0}, Lorg/telegram/ui/Components/ReactedUsersListView$OnHeightChangedListener;->onHeightChanged(Lorg/telegram/ui/Components/ReactedUsersListView;I)V

    :cond_3
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 251
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 252
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->isLoaded:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->isLoading:Z

    if-nez v0, :cond_0

    .line 253
    invoke-direct {p0}, Lorg/telegram/ui/Components/ReactedUsersListView;->load()V

    :cond_0
    return-void
.end method

.method public setOnCustomEmojiSelectedListener(Lorg/telegram/ui/Components/ReactedUsersListView$OnCustomEmojiSelectedListener;)Lorg/telegram/ui/Components/ReactedUsersListView;
    .locals 0

    .line 629
    iput-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->onCustomEmojiSelectedListener:Lorg/telegram/ui/Components/ReactedUsersListView$OnCustomEmojiSelectedListener;

    return-object p0
.end method

.method public setOnHeightChangedListener(Lorg/telegram/ui/Components/ReactedUsersListView$OnHeightChangedListener;)Lorg/telegram/ui/Components/ReactedUsersListView;
    .locals 0

    .line 556
    iput-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->onHeightChangedListener:Lorg/telegram/ui/Components/ReactedUsersListView$OnHeightChangedListener;

    return-object p0
.end method

.method public setOnProfileSelectedListener(Lorg/telegram/ui/Components/ReactedUsersListView$OnProfileSelectedListener;)Lorg/telegram/ui/Components/ReactedUsersListView;
    .locals 0

    .line 551
    iput-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->onProfileSelectedListener:Lorg/telegram/ui/Components/ReactedUsersListView$OnProfileSelectedListener;

    return-object p0
.end method

.method public setPredictiveCount(I)V
    .locals 1

    .line 573
    iput p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->predictiveCount:I

    .line 574
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->loadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/FlickerLoadingView;->setItemsCount(I)V

    return-void
.end method

.method public setSeenUsers(Ljava/util/List;)Lorg/telegram/ui/Components/ReactedUsersListView;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/telegram/ui/Components/ReactedHeaderView$UserSeen;",
            ">;)",
            "Lorg/telegram/ui/Components/ReactedUsersListView;"
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->userReactions:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 207
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/ReactedHeaderView$UserSeen;

    .line 208
    iget-object v3, v2, Lorg/telegram/ui/Components/ReactedHeaderView$UserSeen;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v3, :cond_0

    .line 209
    iget v4, v2, Lorg/telegram/ui/Components/ReactedHeaderView$UserSeen;->date:I

    if-lez v4, :cond_0

    const/4 v4, 0x0

    .line 210
    :goto_1
    iget-object v5, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->userReactions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 211
    iget-object v5, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->userReactions:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;

    if-eqz v5, :cond_1

    .line 212
    iget v6, v5, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->date:I

    if-gtz v6, :cond_1

    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    iget-wide v8, v3, Lorg/telegram/tgnet/TLRPC$User;->id:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    .line 213
    iget v2, v2, Lorg/telegram/ui/Components/ReactedHeaderView$UserSeen;->date:I

    iput v2, v5, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->date:I

    .line 214
    iput-boolean v1, v5, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->dateIsSeen:Z

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 221
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 222
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/ReactedHeaderView$UserSeen;

    .line 223
    iget-object v3, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->peerReactionMap:Landroid/util/LongSparseArray;

    iget-object v4, v2, Lorg/telegram/ui/Components/ReactedHeaderView$UserSeen;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v3, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    goto :goto_2

    .line 227
    :cond_3
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messagePeerReaction;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messagePeerReaction;-><init>()V

    const/4 v4, 0x0

    .line 228
    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    .line 229
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 230
    iget-object v5, v2, Lorg/telegram/ui/Components/ReactedHeaderView$UserSeen;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iput-wide v5, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 231
    iget v2, v2, Lorg/telegram/ui/Components/ReactedHeaderView$UserSeen;->date:I

    iput v2, v3, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->date:I

    .line 232
    iput-boolean v1, v3, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->dateIsSeen:Z

    .line 233
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 234
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    iget-object v4, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->peerReactionMap:Landroid/util/LongSparseArray;

    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v5}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 236
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 238
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->userReactions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 241
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->userReactions:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 242
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->userReactions:Ljava/util/List;

    sget-object v0, Lorg/telegram/ui/Components/ReactedUsersListView$$ExternalSyntheticLambda3;->INSTANCE:Lorg/telegram/ui/Components/ReactedUsersListView$$ExternalSyntheticLambda3;

    invoke-static {v0}, Lj$/util/Comparator$-CC;->comparingInt(Lj$/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 244
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 245
    invoke-direct {p0}, Lorg/telegram/ui/Components/ReactedUsersListView;->updateHeight()V

    return-object p0
.end method
