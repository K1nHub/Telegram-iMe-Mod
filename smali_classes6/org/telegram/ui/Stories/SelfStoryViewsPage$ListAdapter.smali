.class Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "SelfStoryViewsPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/SelfStoryViewsPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;


# direct methods
.method public static synthetic $r8$lambda$2Zb6dNUqlfPIQk7TNQpRxlIEEMs(Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->lambda$onCreateViewHolder$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$ovH5UX0yMDzOLFxLwLrWauYEbss(Lorg/telegram/ui/Stories/SelfStoryViewsPage;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->lambda$onCreateViewHolder$2(Lorg/telegram/ui/Stories/SelfStoryViewsPage;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zDnOL1H_xBpxs8y7s7N6lht2010(Lorg/telegram/ui/Stories/SelfStoryViewsPage;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->lambda$onCreateViewHolder$1(Lorg/telegram/ui/Stories/SelfStoryViewsPage;)V

    return-void
.end method

.method private constructor <init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage;)V
    .locals 0

    .line 720
    iput-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 722
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->items:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage;Lorg/telegram/ui/Stories/SelfStoryViewsPage$1;)V
    .locals 0

    .line 720
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage;)V

    return-void
.end method

.method private synthetic lambda$onCreateViewHolder$0()V
    .locals 1

    .line 786
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    invoke-static {v0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->access$1200(Lorg/telegram/ui/Stories/SelfStoryViewsPage;)V

    return-void
.end method

.method private static synthetic lambda$onCreateViewHolder$1(Lorg/telegram/ui/Stories/SelfStoryViewsPage;)V
    .locals 0

    .line 841
    invoke-static {p0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->access$1200(Lorg/telegram/ui/Stories/SelfStoryViewsPage;)V

    return-void
.end method

.method private static synthetic lambda$onCreateViewHolder$2(Lorg/telegram/ui/Stories/SelfStoryViewsPage;)V
    .locals 0

    .line 842
    invoke-static {p0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->access$1200(Lorg/telegram/ui/Stories/SelfStoryViewsPage;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 880
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 933
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;

    iget p1, p1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;->viewType:I

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 885
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 12

    .line 859
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 860
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/Cells/ReactedUserHolderView;

    .line 861
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    iget v0, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;

    iget-object v2, v2, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;->user:Lorg/telegram/tgnet/tl/TL_stories$TL_storyView;

    iget-wide v2, v2, Lorg/telegram/tgnet/tl/TL_stories$TL_storyView;->user_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 863
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    iget-object v0, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->defaultModel:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    iget-object v0, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->animateDateForUsers:Ljava/util/HashSet;

    iget-object v2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;

    iget-object v2, v2, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;->user:Lorg/telegram/tgnet/tl/TL_stories$TL_storyView;

    iget-wide v4, v2, Lorg/telegram/tgnet/tl/TL_stories$TL_storyView;->user_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v10

    .line 865
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;

    iget-object v0, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;->user:Lorg/telegram/tgnet/tl/TL_stories$TL_storyView;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_storyView;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    const/4 v11, 0x0

    if-eqz v0, :cond_0

    .line 866
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;

    iget-object v0, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;->user:Lorg/telegram/tgnet/tl/TL_stories$TL_storyView;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_storyView;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-static {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTLReaction(Lorg/telegram/tgnet/TLRPC$Reaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 867
    iget-object v0, v0, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->emojicon:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v2, "\u2764"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v6, v1

    goto :goto_0

    :cond_0
    move v6, v11

    :goto_0
    const/4 v4, 0x0

    if-eqz v6, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 871
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;

    iget-object v0, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;->user:Lorg/telegram/tgnet/tl/TL_stories$TL_storyView;

    iget-object v0, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_storyView;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    :goto_1
    move-object v5, v0

    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;

    iget-object v0, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;->user:Lorg/telegram/tgnet/tl/TL_stories$TL_storyView;

    iget v0, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_storyView;->date:I

    int-to-long v7, v0

    const/4 v9, 0x1

    move-object v2, p1

    invoke-virtual/range {v2 .. v10}, Lorg/telegram/ui/Cells/ReactedUserHolderView;->setUserReaction(Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$Reaction;ZJZZ)V

    .line 872
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    if-ge p2, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->items:Ljava/util/ArrayList;

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;

    iget v0, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;->viewType:I

    goto :goto_2

    :cond_2
    const/4 v0, -0x1

    :goto_2
    if-eq v0, v1, :cond_4

    const/16 v2, 0xb

    if-eq v0, v2, :cond_4

    const/16 v2, 0xc

    if-ne v0, v2, :cond_3

    goto :goto_3

    :cond_3
    move v1, v11

    .line 873
    :cond_4
    :goto_3
    iput-boolean v1, p1, Lorg/telegram/ui/Cells/ReactedUserHolderView;->drawDivider:Z

    .line 874
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;

    iget-object p2, p2, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;->user:Lorg/telegram/tgnet/tl/TL_stories$TL_storyView;

    invoke-static {v0, p2}, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->access$500(Lorg/telegram/ui/Stories/SelfStoryViewsPage;Lorg/telegram/tgnet/tl/TL_stories$TL_storyView;)Z

    move-result p2

    if-eqz p2, :cond_5

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_5
    const/high16 p2, 0x3f000000    # 0.5f

    :goto_4
    invoke-virtual {p1, p2, v11}, Lorg/telegram/ui/Cells/ReactedUserHolderView;->animateAlpha(FZ)V

    :cond_6
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 11

    const/16 p1, 0x1c

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_0

    .line 796
    :pswitch_0
    new-instance p1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter$3;

    iget-object p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter$3;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;Landroid/content/Context;)V

    goto/16 :goto_5

    .line 774
    :pswitch_1
    new-instance p1, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x41500000    # 13.0f

    .line 775
    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 776
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText:I

    iget-object v2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    iget-object v2, v2, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 777
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteLinkText:I

    iget-object v2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    iget-object v2, v2, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setLinkTextColor(I)V

    const/16 v1, 0x10

    .line 778
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    const/16 v2, 0x15

    .line 779
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    .line 780
    invoke-virtual {p1, v2, v1, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    const v1, 0x7fffffff

    .line 781
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    const/16 v1, 0x11

    .line 782
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 783
    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;->setDisablePaddingsOffsetY(Z)V

    const/16 v0, 0xb

    if-ne p2, v0, :cond_0

    .line 785
    sget p2, Lorg/telegram/messenger/R$string;->StoryViewsPremiumHint:I

    const-string v0, "StoryViewsPremiumHint"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;)V

    invoke-static {p2, v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 789
    :cond_0
    sget p2, Lorg/telegram/messenger/R$string;->ServerErrorViewersFull:I

    const-string v0, "ServerErrorViewersFull"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 791
    :goto_0
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_5

    .line 764
    :pswitch_2
    new-instance p2, Lorg/telegram/ui/Components/FlickerLoadingView;

    iget-object v2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    iget-object v3, v3, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p2, v2, v3}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 765
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/FlickerLoadingView;->setIsSingleCell(Z)V

    .line 766
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/FlickerLoadingView;->setIgnoreHeightCheck(Z)V

    const/16 v0, 0x14

    .line 767
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/FlickerLoadingView;->setItemsCount(I)V

    .line 768
    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    .line 769
    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->showDate(Z)V

    goto/16 :goto_4

    .line 812
    :pswitch_3
    iget-object p1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    iget-object p1, p1, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->defaultModel:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    iget-boolean p1, p1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->isExpiredViews:Z

    const/4 v2, 0x7

    const/16 v3, 0xa

    const/16 v4, 0x8

    if-eqz p1, :cond_2

    const/16 v0, 0xc

    :cond_1
    :goto_1
    move v9, v0

    goto :goto_2

    :cond_2
    if-eq p2, v3, :cond_1

    if-eq p2, v2, :cond_1

    if-eq p2, v4, :cond_1

    const/4 p1, 0x5

    if-ne p2, p1, :cond_3

    goto :goto_1

    :cond_3
    move v9, v1

    .line 819
    :goto_2
    new-instance p1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter$4;

    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    iget-object v10, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v5, p1

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter$4;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;Landroid/content/Context;Landroid/view/View;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    if-ne p2, v2, :cond_4

    .line 826
    iget-object p2, p1, Lorg/telegram/ui/Components/StickerEmptyView;->title:Landroid/widget/TextView;

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 827
    sget p2, Lorg/telegram/messenger/R$string;->NoResult:I

    const-string v0, "NoResult"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/StickerEmptyView;->setSubtitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_4
    if-ne p2, v4, :cond_5

    .line 829
    iget-object p2, p1, Lorg/telegram/ui/Components/StickerEmptyView;->title:Landroid/widget/TextView;

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 830
    sget p2, Lorg/telegram/messenger/R$string;->NoContactsViewed:I

    const-string v0, "NoContactsViewed"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/StickerEmptyView;->setSubtitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_5
    if-ne p2, v3, :cond_6

    .line 832
    iget-object p2, p1, Lorg/telegram/ui/Components/StickerEmptyView;->title:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 833
    iget-object p2, p1, Lorg/telegram/ui/Components/StickerEmptyView;->title:Landroid/widget/TextView;

    sget v0, Lorg/telegram/messenger/R$string;->ServerErrorViewersTitle:I

    const-string v2, "ServerErrorViewersTitle"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 834
    sget p2, Lorg/telegram/messenger/R$string;->ServerErrorViewers:I

    const-string v0, "ServerErrorViewers"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/StickerEmptyView;->setSubtitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 835
    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    iget-object p2, p2, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->defaultModel:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    iget-boolean p2, p2, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->isExpiredViews:Z

    if-eqz p2, :cond_8

    .line 836
    iget-object p2, p1, Lorg/telegram/ui/Components/StickerEmptyView;->title:Landroid/widget/TextView;

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 837
    new-instance p2, Landroid/text/SpannableStringBuilder;

    invoke-direct {p2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 838
    sget v0, Lorg/telegram/messenger/R$string;->ExpiredViewsStub:I

    const-string v2, "ExpiredViewsStub"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->replaceTags(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 839
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    iget v0, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController;->premiumLocked:Z

    if-nez v0, :cond_7

    const-string v0, "\n\n"

    .line 840
    invoke-virtual {p2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 841
    sget v0, Lorg/telegram/messenger/R$string;->ExpiredViewsStubPremiumDescription:I

    const-string v2, "ExpiredViewsStubPremiumDescription"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    new-instance v3, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v3, v2}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage;)V

    invoke-static {v0, v3}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 842
    sget v0, Lorg/telegram/messenger/R$string;->LearnMore:I

    const-string v2, "LearnMore"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    new-instance v3, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage;)V

    invoke-virtual {p1, v0, v3}, Lorg/telegram/ui/Components/StickerEmptyView;->createButtonLayout(Ljava/lang/CharSequence;Ljava/lang/Runnable;)V

    .line 844
    :cond_7
    iget-object v0, p1, Lorg/telegram/ui/Components/StickerEmptyView;->subtitle:Lorg/telegram/ui/Components/LinkSpanDrawable$LinksTextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 846
    :cond_8
    iget-object p2, p1, Lorg/telegram/ui/Components/StickerEmptyView;->title:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 847
    iget-object p2, p1, Lorg/telegram/ui/Components/StickerEmptyView;->title:Landroid/widget/TextView;

    sget v0, Lorg/telegram/messenger/R$string;->NoViews:I

    const-string v2, "NoViews"

    invoke-static {v2, v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 848
    sget p2, Lorg/telegram/messenger/R$string;->NoViewsStub:I

    const-string v0, "NoViewsStub"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/StickerEmptyView;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 850
    :goto_3
    invoke-virtual {p1, v1, v1}, Lorg/telegram/ui/Components/StickerEmptyView;->showProgress(ZZ)V

    goto :goto_5

    .line 757
    :pswitch_4
    new-instance p2, Lorg/telegram/ui/Components/FlickerLoadingView;

    iget-object v2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    iget-object v3, v3, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {p2, v2, v3}, Lorg/telegram/ui/Components/FlickerLoadingView;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    .line 758
    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/FlickerLoadingView;->setIsSingleCell(Z)V

    .line 759
    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/FlickerLoadingView;->setViewType(I)V

    .line 760
    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/FlickerLoadingView;->showDate(Z)V

    :goto_4
    move-object p1, p2

    goto :goto_5

    .line 738
    :pswitch_5
    new-instance p1, Lorg/telegram/ui/Cells/FixedHeightEmptyCell;

    iget-object p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const/16 v0, 0x46

    invoke-direct {p1, p2, v0}, Lorg/telegram/ui/Cells/FixedHeightEmptyCell;-><init>(Landroid/content/Context;I)V

    goto :goto_5

    .line 741
    :pswitch_6
    new-instance p1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter$2;

    sget v3, Lorg/telegram/ui/Cells/ReactedUserHolderView;->STYLE_STORY:I

    iget-object p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    iget v4, p2, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentAccount:I

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    iget-object v6, p2, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter$2;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;IILandroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Z)V

    goto :goto_5

    .line 730
    :pswitch_7
    new-instance p1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter$1;

    iget-object p2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter$1;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;Landroid/content/Context;)V

    .line 854
    :goto_5
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public updateRows()V
    .locals 9

    .line 889
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 890
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    iget-object v1, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->currentModel:Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;

    .line 891
    iget-boolean v2, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage;->isSearchDebounce:Z

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    .line 892
    iget-object v1, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->items:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;

    invoke-direct {v2, v0, v4, v5}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage;ILorg/telegram/ui/Stories/SelfStoryViewsPage$1;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 893
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;

    iget-object v2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    invoke-direct {v1, v2, v3, v5}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage;ILorg/telegram/ui/Stories/SelfStoryViewsPage$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 895
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->items:Ljava/util/ArrayList;

    new-instance v6, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;

    invoke-direct {v6, v0, v4, v5}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage;ILorg/telegram/ui/Stories/SelfStoryViewsPage$1;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_6

    .line 896
    iget-object v0, v1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->views:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, v1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->isExpiredViews:Z

    if-nez v0, :cond_1

    iget-boolean v0, v1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->loading:Z

    if-nez v0, :cond_6

    iget-boolean v0, v1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->hasNext:Z

    if-nez v0, :cond_6

    .line 897
    :cond_1
    iget-object v0, v1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->state:Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;

    iget-object v0, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;->searchQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 898
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;

    iget-object v2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    const/4 v3, 0x7

    invoke-direct {v1, v2, v3, v5}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage;ILorg/telegram/ui/Stories/SelfStoryViewsPage$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 899
    :cond_2
    iget-boolean v0, v1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->isExpiredViews:Z

    const/4 v2, 0x5

    if-eqz v0, :cond_3

    .line 900
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;

    iget-object v3, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    invoke-direct {v1, v3, v2, v5}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage;ILorg/telegram/ui/Stories/SelfStoryViewsPage$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 901
    :cond_3
    iget v0, v1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->totalCount:I

    if-lez v0, :cond_4

    iget-object v1, v1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->state:Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;

    iget-boolean v1, v1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;->contactsOnly:Z

    if-eqz v1, :cond_4

    .line 902
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;

    iget-object v2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3, v5}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage;ILorg/telegram/ui/Stories/SelfStoryViewsPage$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_4
    if-lez v0, :cond_5

    .line 904
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;

    iget-object v2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3, v5}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage;ILorg/telegram/ui/Stories/SelfStoryViewsPage$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 906
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;

    iget-object v3, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    invoke-direct {v1, v3, v2, v5}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage;ILorg/telegram/ui/Stories/SelfStoryViewsPage$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_6
    if-eqz v1, :cond_7

    .line 910
    :goto_0
    iget-object v0, v1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->views:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_7

    .line 911
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->items:Ljava/util/ArrayList;

    new-instance v2, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;

    iget-object v6, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    iget-object v7, v1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->views:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/tl/TL_stories$TL_storyView;

    const/4 v8, 0x1

    invoke-direct {v2, v6, v8, v7, v5}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage;ILorg/telegram/tgnet/tl/TL_stories$TL_storyView;Lorg/telegram/ui/Stories/SelfStoryViewsPage$1;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    if-eqz v1, :cond_a

    .line 914
    iget-boolean v0, v1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->loading:Z

    if-nez v0, :cond_8

    iget-boolean v0, v1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->hasNext:Z

    if-eqz v0, :cond_a

    .line 915
    :cond_8
    iget-object v0, v1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->views:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 916
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;

    iget-object v2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    invoke-direct {v1, v2, v3, v5}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage;ILorg/telegram/ui/Stories/SelfStoryViewsPage$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 918
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;

    iget-object v2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3, v5}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage;ILorg/telegram/ui/Stories/SelfStoryViewsPage$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_a
    if-eqz v1, :cond_b

    .line 920
    iget-boolean v0, v1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->showReactionOnly:Z

    if-eqz v0, :cond_b

    .line 921
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;

    iget-object v2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    const/16 v3, 0xb

    invoke-direct {v1, v2, v3, v5}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage;ILorg/telegram/ui/Stories/SelfStoryViewsPage$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_b
    if-eqz v1, :cond_c

    .line 922
    iget-object v0, v1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->views:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v2, v1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->totalCount:I

    if-ge v0, v2, :cond_c

    iget-object v0, v1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->state:Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;

    iget-object v0, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;->searchQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, v1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ViewsModel;->state:Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;

    iget-boolean v0, v0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$FiltersState;->contactsOnly:Z

    if-nez v0, :cond_c

    .line 923
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;

    iget-object v2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    const/16 v3, 0xc

    invoke-direct {v1, v2, v3, v5}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage;ILorg/telegram/ui/Stories/SelfStoryViewsPage$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 927
    :cond_c
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->items:Ljava/util/ArrayList;

    new-instance v1, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;

    iget-object v2, p0, Lorg/telegram/ui/Stories/SelfStoryViewsPage$ListAdapter;->this$0:Lorg/telegram/ui/Stories/SelfStoryViewsPage;

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3, v5}, Lorg/telegram/ui/Stories/SelfStoryViewsPage$Item;-><init>(Lorg/telegram/ui/Stories/SelfStoryViewsPage;ILorg/telegram/ui/Stories/SelfStoryViewsPage$1;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 928
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
