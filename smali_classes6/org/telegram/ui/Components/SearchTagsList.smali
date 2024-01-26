.class public Lorg/telegram/ui/Components/SearchTagsList;
.super Lorg/telegram/ui/Components/BlurredFrameLayout;
.source "SearchTagsList.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/SearchTagsList$TagButton;,
        Lorg/telegram/ui/Components/SearchTagsList$Adapter;,
        Lorg/telegram/ui/Components/SearchTagsList$Item;
    }
.end annotation


# instance fields
.field private final adapter:Lorg/telegram/ui/Components/SearchTagsList$Adapter;

.field private chosen:J

.field private final currentAccount:I

.field private final items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/SearchTagsList$Item;",
            ">;"
        }
    .end annotation
.end field

.field public final listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private final oldItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/SearchTagsList$Item;",
            ">;"
        }
    .end annotation
.end field

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private shownT:F


# direct methods
.method public static synthetic $r8$lambda$4RWlRsykGvCTW4QRJCW49yPYE5E(Lorg/telegram/ui/Components/SearchTagsList;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/SearchTagsList;->lambda$new$1(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$kUAJTY3EFeBO6T2aY85u0WZLpc8(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/SearchTagsList;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$l9CYtkMoD4sqTqcrCjmwvoDlYaI(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Components/SearchTagsList;->lambda$clear$2(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 4

    .line 76
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/BlurredFrameLayout;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)V

    .line 47
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/SearchTagsList;->oldItems:Ljava/util/ArrayList;

    .line 48
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/SearchTagsList;->items:Ljava/util/ArrayList;

    .line 78
    iput p3, p0, Lorg/telegram/ui/Components/SearchTagsList;->currentAccount:I

    .line 79
    iput-object p4, p0, Lorg/telegram/ui/Components/SearchTagsList;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 81
    new-instance p2, Lorg/telegram/ui/Components/SearchTagsList$1;

    invoke-direct {p2, p0, p1, p4}, Lorg/telegram/ui/Components/SearchTagsList$1;-><init>(Lorg/telegram/ui/Components/SearchTagsList;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/SearchTagsList;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const p4, 0x40b51eb8    # 5.66f

    .line 87
    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p4

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, p4, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 88
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 89
    new-instance p4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p4, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 90
    invoke-virtual {p4, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 91
    invoke-virtual {p2, p4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 92
    new-instance p1, Lorg/telegram/ui/Components/SearchTagsList$Adapter;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/SearchTagsList$Adapter;-><init>(Lorg/telegram/ui/Components/SearchTagsList;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/SearchTagsList;->adapter:Lorg/telegram/ui/Components/SearchTagsList$Adapter;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 p1, -0x1

    .line 93
    invoke-static {p1, p1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    new-instance p1, Lorg/telegram/ui/Components/SearchTagsList$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/SearchTagsList$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/SearchTagsList;)V

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 114
    new-instance p1, Lorg/telegram/ui/Components/SearchTagsList$2;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Components/SearchTagsList$2;-><init>(Lorg/telegram/ui/Components/SearchTagsList;)V

    .line 135
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 136
    sget-object p4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x140

    .line 137
    invoke-virtual {p1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    .line 138
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 140
    invoke-static {p3}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/MediaDataController;->loadSavedReactions(Z)V

    .line 141
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SearchTagsList;->updateTags()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/SearchTagsList;)Ljava/util/ArrayList;
    .locals 0

    .line 39
    iget-object p0, p0, Lorg/telegram/ui/Components/SearchTagsList;->items:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/SearchTagsList;)J
    .locals 2

    .line 39
    iget-wide v0, p0, Lorg/telegram/ui/Components/SearchTagsList;->chosen:J

    return-wide v0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/SearchTagsList;)Ljava/util/ArrayList;
    .locals 0

    .line 39
    iget-object p0, p0, Lorg/telegram/ui/Components/SearchTagsList;->oldItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/SearchTagsList;)I
    .locals 0

    .line 39
    iget p0, p0, Lorg/telegram/ui/Components/SearchTagsList;->currentAccount:I

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/SearchTagsList;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 39
    iget-object p0, p0, Lorg/telegram/ui/Components/SearchTagsList;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method private static synthetic lambda$clear$2(Landroid/view/View;)V
    .locals 2

    .line 150
    instance-of v0, p0, Lorg/telegram/ui/Components/SearchTagsList$TagButton;

    if-eqz v0, :cond_0

    .line 151
    check-cast p0, Lorg/telegram/ui/Components/SearchTagsList$TagButton;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/SearchTagsList$TagButton;->setChosen(ZZ)Z

    :cond_0
    return-void
.end method

.method private static synthetic lambda$new$0(Landroid/view/View;)V
    .locals 2

    .line 99
    instance-of v0, p0, Lorg/telegram/ui/Components/SearchTagsList$TagButton;

    if-eqz v0, :cond_0

    .line 100
    check-cast p0, Lorg/telegram/ui/Components/SearchTagsList$TagButton;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/SearchTagsList$TagButton;->setChosen(ZZ)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;I)V
    .locals 4

    if-ltz p2, :cond_2

    .line 95
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchTagsList;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchTagsList;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget-object v1, Lorg/telegram/ui/Components/SearchTagsList$$ExternalSyntheticLambda0;->INSTANCE:Lorg/telegram/ui/Components/SearchTagsList$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->forAllChild(Landroidx/core/util/Consumer;)V

    .line 103
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchTagsList;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/SearchTagsList$Item;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SearchTagsList$Item;->hash()J

    move-result-wide v0

    .line 104
    iget-wide v2, p0, Lorg/telegram/ui/Components/SearchTagsList;->chosen:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_1

    const-wide/16 p1, 0x0

    .line 105
    iput-wide p1, p0, Lorg/telegram/ui/Components/SearchTagsList;->chosen:J

    const/4 p1, 0x0

    .line 106
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/SearchTagsList;->setFilter(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    goto :goto_0

    .line 108
    :cond_1
    iput-wide v0, p0, Lorg/telegram/ui/Components/SearchTagsList;->chosen:J

    .line 109
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchTagsList;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Components/SearchTagsList$Item;

    iget-object p2, p2, Lorg/telegram/ui/Components/SearchTagsList$Item;->reaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-virtual {p0, p2}, Lorg/telegram/ui/Components/SearchTagsList;->setFilter(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V

    .line 110
    check-cast p1, Lorg/telegram/ui/Components/SearchTagsList$TagButton;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p2}, Lorg/telegram/ui/Components/SearchTagsList$TagButton;->setChosen(ZZ)Z

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public attach()V
    .locals 2

    .line 162
    iget v0, p0, Lorg/telegram/ui/Components/SearchTagsList;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->savedReactionTagsUpdate:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public clear()V
    .locals 2

    .line 149
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchTagsList;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    sget-object v1, Lorg/telegram/ui/Components/SearchTagsList$$ExternalSyntheticLambda1;->INSTANCE:Lorg/telegram/ui/Components/SearchTagsList$$ExternalSyntheticLambda1;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->forAllChild(Landroidx/core/util/Consumer;)V

    const-wide/16 v0, 0x0

    .line 154
    iput-wide v0, p0, Lorg/telegram/ui/Components/SearchTagsList;->chosen:J

    return-void
.end method

.method public detach()V
    .locals 2

    .line 166
    iget v0, p0, Lorg/telegram/ui/Components/SearchTagsList;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->savedReactionTagsUpdate:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 171
    sget p2, Lorg/telegram/messenger/NotificationCenter;->savedReactionTagsUpdate:I

    if-ne p1, p2, :cond_0

    .line 172
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SearchTagsList;->updateTags()V

    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 261
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 263
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SearchTagsList;->getCurrentHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 264
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/BlurredFrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 265
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 228
    iget v0, p0, Lorg/telegram/ui/Components/SearchTagsList;->shownT:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 231
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getCurrentHeight()I
    .locals 2

    .line 256
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/SearchTagsList;->shownT:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 1

    const/16 p2, 0x28

    .line 223
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method protected setFilter(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V
    .locals 0

    return-void
.end method

.method public setShown(F)V
    .locals 4

    .line 236
    iput p1, p0, Lorg/telegram/ui/Components/SearchTagsList;->shownT:F

    .line 237
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchTagsList;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setPivotX(F)V

    .line 238
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchTagsList;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setPivotY(F)V

    .line 239
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchTagsList;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const v1, 0x3f4ccccd    # 0.8f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 240
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchTagsList;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v1, v2, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setScaleY(F)V

    .line 241
    iget-object v0, p0, Lorg/telegram/ui/Components/SearchTagsList;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 242
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public shown()Z
    .locals 2

    .line 246
    iget v0, p0, Lorg/telegram/ui/Components/SearchTagsList;->shownT:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public updateTags()V
    .locals 7

    .line 177
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 178
    iget-object v1, p0, Lorg/telegram/ui/Components/SearchTagsList;->oldItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 179
    iget-object v1, p0, Lorg/telegram/ui/Components/SearchTagsList;->oldItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Components/SearchTagsList;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 180
    iget-object v1, p0, Lorg/telegram/ui/Components/SearchTagsList;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 181
    iget v1, p0, Lorg/telegram/ui/Components/SearchTagsList;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->getSavedReactionTags()Lorg/telegram/tgnet/TLRPC$TL_messages_savedReactionsTags;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 183
    :goto_0
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$messages_SavedReactionTags;->tags:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 184
    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$messages_SavedReactionTags;->tags:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_savedReactionTag;

    .line 185
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_savedReactionTag;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-static {v4}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTLReaction(Lorg/telegram/tgnet/TLRPC$Reaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v4

    .line 186
    iget-wide v5, v4, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->hash:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 187
    iget-object v5, p0, Lorg/telegram/ui/Components/SearchTagsList;->items:Ljava/util/ArrayList;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_savedReactionTag;->count:I

    invoke-static {v4, v3}, Lorg/telegram/ui/Components/SearchTagsList$Item;->get(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;I)Lorg/telegram/ui/Components/SearchTagsList$Item;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    iget-wide v3, v4, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->hash:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 201
    :cond_1
    new-instance v0, Lorg/telegram/ui/Components/SearchTagsList$3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/SearchTagsList$3;-><init>(Lorg/telegram/ui/Components/SearchTagsList;)V

    invoke-static {v0}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/SearchTagsList;->adapter:Lorg/telegram/ui/Components/SearchTagsList$Adapter;

    .line 218
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method
