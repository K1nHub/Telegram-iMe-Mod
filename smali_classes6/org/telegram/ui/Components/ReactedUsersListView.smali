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

    .line 80
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->userReactions:Ljava/util/List;

    .line 66
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->peerReactionMap:Landroid/util/LongSparseArray;

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->canLoadMore:Z

    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->customReactionsEmoji:Ljava/util/ArrayList;

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->customEmojiStickerSets:Ljava/util/ArrayList;

    .line 81
    iput p3, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->currentAccount:I

    .line 82
    iput-object p4, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->message:Lorg/telegram/messenger/MessageObject;

    const/4 p4, 0x0

    if-nez p5, :cond_0

    move-object v1, p4

    goto :goto_0

    .line 83
    :cond_0
    iget-object v1, p5, Lorg/telegram/tgnet/TLRPC$ReactionCount;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    :goto_0
    iput-object v1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->filter:Lorg/telegram/tgnet/TLRPC$Reaction;

    .line 84
    iput-object p2, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    if-nez p5, :cond_1

    const/4 p5, 0x6

    goto :goto_1

    .line 85
    :cond_1
    iget p5, p5, Lorg/telegram/tgnet/TLRPC$ReactionCount;->count:I

    :goto_1
    iput p5, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->predictiveCount:I

    .line 86
    new-instance p5, Lorg/telegram/ui/Components/ReactedUsersListView$1;

    invoke-direct {p5, p0, p1, p2}, Lorg/telegram/ui/Components/ReactedUsersListView$1;-><init>(Lorg/telegram/ui/Components/ReactedUsersListView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p5, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 96
    new-instance p5, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p5, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 97
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, p5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    if-eqz p6, :cond_2

    .line 99
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v2, 0x8

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v3, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 100
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 102
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    const-string v3, "listSelectorSDK21"

    if-lt v1, v2, :cond_3

    .line 103
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVerticalScrollbarThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/ReactedUsersListView$2;

    invoke-direct {v2, p0, p1, p2, p3}, Lorg/telegram/ui/Components/ReactedUsersListView$2;-><init>(Lorg/telegram/ui/Components/ReactedUsersListView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;I)V

    iput-object v2, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 158
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/ReactedUsersListView$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ReactedUsersListView$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Components/ReactedUsersListView;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 170
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Components/ReactedUsersListView$3;

    invoke-direct {v2, p0, p5}, Lorg/telegram/ui/Components/ReactedUsersListView$3;-><init>(Lorg/telegram/ui/Components/ReactedUsersListView;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 178
    iget-object p5, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p5, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 179
    iget-object p5, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {p5, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 180
    iget-object p5, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, -0x1

    invoke-static {v1, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, p5, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    new-instance p5, Lorg/telegram/ui/Components/ReactedUsersListView$4;

    invoke-direct {p5, p0, p1, p2}, Lorg/telegram/ui/Components/ReactedUsersListView$4;-><init>(Lorg/telegram/ui/Components/ReactedUsersListView;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p5, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->loadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    const-string p1, "actionBarDefaultSubmenuBackground"

    .line 188
    invoke-virtual {p5, p1, v3, p4}, Lorg/telegram/ui/Components/FlickerLoadingView;->setColors(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->loadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/FlickerLoadingView;->setIsSingleCell(Z)V

    .line 191
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->loadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    iget p2, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->predictiveCount:I

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/FlickerLoadingView;->setItemsCount(I)V

    .line 192
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->loadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-static {v1, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-nez p6, :cond_4

    .line 193
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->filter:Lorg/telegram/tgnet/TLRPC$Reaction;

    if-eqz p1, :cond_4

    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;

    if-eqz p1, :cond_4

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-boolean p1, p1, Lorg/telegram/messenger/MessagesController;->premiumLocked:Z

    if-nez p1, :cond_4

    .line 194
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->customReactionsEmoji:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 195
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->customReactionsEmoji:Ljava/util/ArrayList;

    iget-object p2, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->filter:Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-static {p2}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTLReaction(Lorg/telegram/tgnet/TLRPC$Reaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    invoke-direct {p0}, Lorg/telegram/ui/Components/ReactedUsersListView;->updateCustomReactionsButton()V

    .line 198
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

    .line 47
    invoke-direct {p0}, Lorg/telegram/ui/Components/ReactedUsersListView;->updateHeight()V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/ReactedUsersListView;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lorg/telegram/ui/Components/ReactedUsersListView;->updateCustomReactionsButton()V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/ReactedUsersListView;)Ljava/util/List;
    .locals 0

    .line 47
    iget-object p0, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->userReactions:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/ReactedUsersListView;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 0

    .line 47
    iget-object p0, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-object p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/ReactedUsersListView;)I
    .locals 0

    .line 47
    invoke-direct {p0}, Lorg/telegram/ui/Components/ReactedUsersListView;->getLoadCount()I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/ReactedUsersListView;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lorg/telegram/ui/Components/ReactedUsersListView;->load()V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/ReactedUsersListView;)I
    .locals 0

    .line 47
    iget p0, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->currentAccount:I

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/ReactedUsersListView;)Lorg/telegram/ui/Components/FlickerLoadingView;
    .locals 0

    .line 47
    iget-object p0, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->loadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    return-object p0
.end method

.method private getLoadCount()I
    .locals 1

    .line 367
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
    .locals 0

    .line 291
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private synthetic lambda$load$3(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 300
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 301
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 302
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->loadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private synthetic lambda$load$4(Lorg/telegram/tgnet/TLObject;)V
    .locals 12

    .line 254
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_messageReactionsList;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 255
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messages_messageReactionsList;

    .line 257
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

    .line 258
    iget v3, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    goto :goto_0

    .line 261
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    .line 262
    :goto_1
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_messageReactionsList;->reactions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_5

    .line 263
    iget-object v3, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->userReactions:Ljava/util/List;

    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_messageReactionsList;->reactions:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_messageReactionsList;->reactions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v3}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v5

    .line 265
    iget-object v3, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->peerReactionMap:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 267
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    const/4 v7, 0x0

    .line 269
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 270
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    if-nez v8, :cond_2

    .line 271
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v7, v7, -0x1

    :cond_2
    add-int/2addr v7, v4

    goto :goto_2

    .line 277
    :cond_3
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_messageReactionsList;->reactions:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-static {v4}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTLReaction(Lorg/telegram/tgnet/TLRPC$Reaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v4

    .line 278
    iget-wide v7, v4, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-eqz v11, :cond_4

    .line 279
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 281
    :cond_4
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_messageReactionsList;->reactions:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    iget-object v4, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->peerReactionMap:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v5, v6, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 285
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->filter:Lorg/telegram/tgnet/TLRPC$Reaction;

    if-nez v2, :cond_6

    .line 286
    iget-object v2, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->customReactionsEmoji:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 287
    iget-object v2, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->customReactionsEmoji:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 288
    invoke-direct {p0}, Lorg/telegram/ui/Components/ReactedUsersListView;->updateCustomReactionsButton()V

    .line 291
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->userReactions:Ljava/util/List;

    sget-object v2, Lorg/telegram/ui/Components/ReactedUsersListView$$ExternalSyntheticLambda4;->INSTANCE:Lorg/telegram/ui/Components/ReactedUsersListView$$ExternalSyntheticLambda4;

    invoke-static {v2}, Lj$/util/Comparator$-CC;->comparingInt(Lj$/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 294
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 296
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->isLoaded:Z

    if-nez v0, :cond_7

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 297
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 298
    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 299
    new-instance v2, Lorg/telegram/ui/Components/ReactedUsersListView$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ReactedUsersListView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ReactedUsersListView;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 304
    new-instance v2, Lorg/telegram/ui/Components/ReactedUsersListView$5;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ReactedUsersListView$5;-><init>(Lorg/telegram/ui/Components/ReactedUsersListView;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 310
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 312
    invoke-direct {p0}, Lorg/telegram/ui/Components/ReactedUsersListView;->updateHeight()V

    .line 314
    iput-boolean v4, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->isLoaded:Z

    .line 316
    :cond_7
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_messageReactionsList;->next_offset:Ljava/lang/String;

    iput-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->offset:Ljava/lang/String;

    if-nez p1, :cond_8

    .line 318
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->canLoadMore:Z

    .line 319
    :cond_8
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->isLoading:Z

    goto :goto_3

    .line 321
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

    .line 253
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

    .line 253
    new-instance p2, Lorg/telegram/ui/Components/ReactedUsersListView$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Components/ReactedUsersListView$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/ReactedUsersListView;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;I)V
    .locals 3

    .line 159
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    if-nez p1, :cond_0

    .line 161
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->onProfileSelectedListener:Lorg/telegram/ui/Components/ReactedUsersListView$OnProfileSelectedListener;

    if-eqz p1, :cond_1

    .line 162
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

    .line 165
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->onCustomEmojiSelectedListener:Lorg/telegram/ui/Components/ReactedUsersListView$OnCustomEmojiSelectedListener;

    if-eqz p1, :cond_1

    .line 166
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->customEmojiStickerSets:Ljava/util/ArrayList;

    invoke-interface {p1, p0, p2}, Lorg/telegram/ui/Components/ReactedUsersListView$OnCustomEmojiSelectedListener;->showCustomEmojiAlert(Lorg/telegram/ui/Components/ReactedUsersListView;Ljava/util/ArrayList;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static synthetic lambda$setSeenUsers$1(Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;)I
    .locals 0

    .line 222
    iget-object p0, p0, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private load()V
    .locals 5

    const/4 v0, 0x1

    .line 239
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->isLoading:Z

    .line 241
    iget v1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    .line 242
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessageReactionsList;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessageReactionsList;-><init>()V

    .line 243
    iget-object v3, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lorg/telegram/messenger/MessagesController;->getInputPeer(J)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessageReactionsList;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 244
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->message:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    iput v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessageReactionsList;->id:I

    .line 245
    invoke-direct {p0}, Lorg/telegram/ui/Components/ReactedUsersListView;->getLoadCount()I

    move-result v1

    iput v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessageReactionsList;->limit:I

    .line 246
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->filter:Lorg/telegram/tgnet/TLRPC$Reaction;

    iput-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessageReactionsList;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    .line 247
    iget-object v3, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->offset:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessageReactionsList;->offset:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 249
    iget v1, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessageReactionsList;->flags:I

    or-int/2addr v0, v1

    iput v0, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessageReactionsList;->flags:I

    :cond_0
    if-eqz v3, :cond_1

    .line 251
    iget v0, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessageReactionsList;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_getMessageReactionsList;->flags:I

    .line 252
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

    .line 328
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->customEmojiStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 329
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 330
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 331
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->customReactionsEmoji:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 332
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

    .line 333
    iget-wide v3, v2, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 334
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 338
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController;->premiumLocked:Z

    if-eqz v0, :cond_2

    return-void

    .line 341
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->customEmojiStickerSets:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 342
    new-instance v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;

    iget v2, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->currentAccount:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v6, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/MessageContainsEmojiButton;-><init>(ILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/util/ArrayList;I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->messageContainsEmojiButton:Lorg/telegram/ui/Components/MessageContainsEmojiButton;

    .line 343
    iput-boolean v7, v0, Lorg/telegram/ui/Components/MessageContainsEmojiButton;->checkWidth:Z

    return-void
.end method

.method private updateHeight()V
    .locals 3

    .line 347
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->onHeightChangedListener:Lorg/telegram/ui/Components/ReactedUsersListView$OnHeightChangedListener;

    if-eqz v0, :cond_3

    .line 349
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->userReactions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 351
    iget v0, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->predictiveCount:I

    :cond_0
    mul-int/lit8 v0, v0, 0x30

    .line 353
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    .line 354
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->messageContainsEmojiButton:Lorg/telegram/ui/Components/MessageContainsEmojiButton;

    if-eqz v1, :cond_1

    .line 355
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    const/16 v2, 0x8

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 357
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    if-eqz v1, :cond_2

    .line 358
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 362
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->onHeightChangedListener:Lorg/telegram/ui/Components/ReactedUsersListView$OnHeightChangedListener;

    invoke-interface {v1, p0, v0}, Lorg/telegram/ui/Components/ReactedUsersListView$OnHeightChangedListener;->onHeightChanged(Lorg/telegram/ui/Components/ReactedUsersListView;I)V

    :cond_3
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 231
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 232
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->isLoaded:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->isLoading:Z

    if-nez v0, :cond_0

    .line 233
    invoke-direct {p0}, Lorg/telegram/ui/Components/ReactedUsersListView;->load()V

    :cond_0
    return-void
.end method

.method public setOnCustomEmojiSelectedListener(Lorg/telegram/ui/Components/ReactedUsersListView$OnCustomEmojiSelectedListener;)Lorg/telegram/ui/Components/ReactedUsersListView;
    .locals 0

    .line 541
    iput-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->onCustomEmojiSelectedListener:Lorg/telegram/ui/Components/ReactedUsersListView$OnCustomEmojiSelectedListener;

    return-object p0
.end method

.method public setOnHeightChangedListener(Lorg/telegram/ui/Components/ReactedUsersListView$OnHeightChangedListener;)Lorg/telegram/ui/Components/ReactedUsersListView;
    .locals 0

    .line 468
    iput-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->onHeightChangedListener:Lorg/telegram/ui/Components/ReactedUsersListView$OnHeightChangedListener;

    return-object p0
.end method

.method public setOnProfileSelectedListener(Lorg/telegram/ui/Components/ReactedUsersListView$OnProfileSelectedListener;)Lorg/telegram/ui/Components/ReactedUsersListView;
    .locals 0

    .line 463
    iput-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->onProfileSelectedListener:Lorg/telegram/ui/Components/ReactedUsersListView$OnProfileSelectedListener;

    return-object p0
.end method

.method public setPredictiveCount(I)V
    .locals 1

    .line 485
    iput p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->predictiveCount:I

    .line 486
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->loadingView:Lorg/telegram/ui/Components/FlickerLoadingView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/FlickerLoadingView;->setItemsCount(I)V

    return-void
.end method

.method public setSeenUsers(Ljava/util/List;)Lorg/telegram/ui/Components/ReactedUsersListView;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;)",
            "Lorg/telegram/ui/Components/ReactedUsersListView;"
        }
    .end annotation

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 204
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    .line 205
    iget-object v2, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->peerReactionMap:Landroid/util/LongSparseArray;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 209
    :cond_0
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_messagePeerReaction;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_messagePeerReaction;-><init>()V

    const/4 v3, 0x0

    .line 210
    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    .line 211
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 212
    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iput-wide v4, v3, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 213
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 214
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    iget-object v3, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->peerReactionMap:Landroid/util/LongSparseArray;

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$MessagePeerReaction;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v4}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 216
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 218
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->userReactions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 221
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->userReactions:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 222
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->userReactions:Ljava/util/List;

    sget-object v0, Lorg/telegram/ui/Components/ReactedUsersListView$$ExternalSyntheticLambda3;->INSTANCE:Lorg/telegram/ui/Components/ReactedUsersListView$$ExternalSyntheticLambda3;

    invoke-static {v0}, Lj$/util/Comparator$-CC;->comparingInt(Lj$/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 224
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactedUsersListView;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 225
    invoke-direct {p0}, Lorg/telegram/ui/Components/ReactedUsersListView;->updateHeight()V

    return-object p0
.end method
