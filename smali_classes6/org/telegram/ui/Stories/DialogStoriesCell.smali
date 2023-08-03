.class public Lorg/telegram/ui/Stories/DialogStoriesCell;
.super Landroid/widget/FrameLayout;
.source "DialogStoriesCell.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;,
        Lorg/telegram/ui/Stories/DialogStoriesCell$Item;,
        Lorg/telegram/ui/Stories/DialogStoriesCell$Adapter;
    }
.end annotation


# instance fields
.field K:F

.field private actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

.field adapter:Lorg/telegram/ui/Stories/DialogStoriesCell$Adapter;

.field addCirclePaint:Landroid/graphics/Paint;

.field private final addNewStoryDrawable:Landroid/graphics/drawable/Drawable;

.field private addNewStoryLastColor:I

.field afterNextLayout:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public allowGlobalUpdates:Z

.field animateToDialogIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private animationRunnable:Ljava/lang/Runnable;

.field backgroundPaint:Landroid/graphics/Paint;

.field private checkedStoryNotificationDeletion:J

.field private clipTop:I

.field collapsed:Z

.field collapsedProgress:F

.field private collapsedProgress1:F

.field private collapsedProgress2:F

.field comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;",
            ">;"
        }
    .end annotation
.end field

.field currentAccount:I

.field public currentCellWidth:I

.field currentState:I

.field private currentTitle:Ljava/lang/CharSequence;

.field drawCircleForce:Z

.field ellipsizeSpanAnimator:Lorg/telegram/ui/Components/EllipsizeSpanAnimator;

.field fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field grayPaint:Landroid/graphics/Paint;

.field private hasOverlayText:Z

.field itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

.field items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Stories/DialogStoriesCell$Item;",
            ">;"
        }
    .end annotation
.end field

.field private lastUploadingCloseFriends:Z

.field layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field listViewMini:Lorg/telegram/ui/Components/RecyclerListView;

.field miniAdapter:Lorg/telegram/ui/Stories/DialogStoriesCell$Adapter;

.field private final miniItemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

.field miniItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Stories/DialogStoriesCell$Item;",
            ">;"
        }
    .end annotation
.end field

.field oldItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Stories/DialogStoriesCell$Item;",
            ">;"
        }
    .end annotation
.end field

.field oldMiniItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Stories/DialogStoriesCell$Item;",
            ">;"
        }
    .end annotation
.end field

.field private overlayTextId:I

.field private overscrollPrgoress:F

.field private overscrollSelectedPosition:I

.field private overscrollSelectedView:Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;

.field private premiumHint:Lorg/telegram/ui/Stories/recorder/HintView2;

.field progressWasDrawn:Z

.field public radialProgress:Lorg/telegram/ui/Components/RadialProgress;

.field public recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

.field storiesController:Lorg/telegram/ui/Stories/StoriesController;

.field private textAnimator:Landroid/animation/ValueAnimator;

.field titleView:Lorg/telegram/ui/Components/AnimatedTextView;

.field private final type:I

.field updateOnIdleState:Z

.field private uploadingString:Landroid/text/SpannableStringBuilder;

.field valueAnimator:Landroid/animation/ValueAnimator;

.field viewsDrawInParent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$PONXGNkg_EKXdzn4IVp4S7i45yo(Lorg/telegram/ui/Stories/DialogStoriesCell;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/DialogStoriesCell;->lambda$new$0(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZXgvw0N2PO1RtKLhiScTr3UwJNY(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->lambda$updateColors$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cqr-Zcyq5Cbz1aW_wyENrocq2nI(ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/DialogStoriesCell;->lambda$updateColors$4(ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$g80X72rWOZKluoi2AuZKUO64Hyc(Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;)I
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/Stories/DialogStoriesCell;->lambda$new$1(Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$lxhMT8LPFQol3ZYTK4FK8Lh-qYs(Lorg/telegram/ui/Stories/DialogStoriesCell;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/DialogStoriesCell;->lambda$setProgressToCollapse$3(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mKmjhTVVDQRRdbluog0uIlsh1J8(Lorg/telegram/ui/Stories/DialogStoriesCell;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->lambda$didReceivedNotification$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$ttnktFbtBLLw22CtECOb5u1pbb0(Lorg/telegram/ui/Stories/DialogStoriesCell;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->lambda$makePremiumHint$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$uaqrQkjxgnZ9SKU5XAmvkIGJB2w(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->lambda$updateCurrentState$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zLwbjs8q6GJBtiF_3mKQ-6PaCNA(Lorg/telegram/ui/Stories/DialogStoriesCell;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->lambda$updateCurrentState$6()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;II)V
    .locals 5

    .line 139
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->oldItems:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->oldMiniItems:Ljava/util/ArrayList;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->items:Ljava/util/ArrayList;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->miniItems:Ljava/util/ArrayList;

    .line 92
    new-instance v0, Lorg/telegram/ui/Stories/DialogStoriesCell$Adapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Stories/DialogStoriesCell$Adapter;-><init>(Lorg/telegram/ui/Stories/DialogStoriesCell;Z)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->adapter:Lorg/telegram/ui/Stories/DialogStoriesCell$Adapter;

    .line 93
    new-instance v0, Lorg/telegram/ui/Stories/DialogStoriesCell$Adapter;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lorg/telegram/ui/Stories/DialogStoriesCell$Adapter;-><init>(Lorg/telegram/ui/Stories/DialogStoriesCell;Z)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->miniAdapter:Lorg/telegram/ui/Stories/DialogStoriesCell$Adapter;

    .line 94
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->grayPaint:Landroid/graphics/Paint;

    .line 95
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->addCirclePaint:Landroid/graphics/Paint;

    .line 96
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->backgroundPaint:Landroid/graphics/Paint;

    const/high16 v0, -0x40800000    # -1.0f

    .line 110
    iput v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedProgress:F

    const/4 v3, -0x1

    .line 112
    iput v3, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentState:I

    .line 114
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->viewsDrawInParent:Ljava/util/ArrayList;

    .line 115
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->animateToDialogIds:Ljava/util/ArrayList;

    .line 121
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->afterNextLayout:Ljava/util/ArrayList;

    .line 122
    iput v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedProgress1:F

    .line 131
    iput-boolean v2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->allowGlobalUpdates:Z

    .line 435
    sget-object v0, Lorg/telegram/ui/Stories/DialogStoriesCell$$ExternalSyntheticLambda7;->INSTANCE:Lorg/telegram/ui/Stories/DialogStoriesCell$$ExternalSyntheticLambda7;

    iput-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->comparator:Ljava/util/Comparator;

    const v0, 0x3e99999a    # 0.3f

    .line 657
    iput v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->K:F

    .line 815
    new-instance v0, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->ellipsizeSpanAnimator:Lorg/telegram/ui/Components/EllipsizeSpanAnimator;

    .line 140
    iput p4, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->type:I

    .line 141
    iput p3, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentAccount:I

    .line 142
    iput-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 143
    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    .line 144
    new-instance p2, Lorg/telegram/ui/Stories/DialogStoriesCell$1;

    invoke-direct {p2, p0, p1}, Lorg/telegram/ui/Stories/DialogStoriesCell$1;-><init>(Lorg/telegram/ui/Stories/DialogStoriesCell;Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 162
    new-instance p3, Lorg/telegram/ui/Stories/DialogStoriesCell$2;

    invoke-direct {p3, p0}, Lorg/telegram/ui/Stories/DialogStoriesCell$2;-><init>(Lorg/telegram/ui/Stories/DialogStoriesCell;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 173
    new-instance p2, Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {p2}, Landroidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    .line 174
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 175
    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    const-wide/16 p3, 0x96

    invoke-virtual {p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setDurations(J)V

    .line 176
    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 177
    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object p3, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 178
    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p3, p1, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    iput-object p3, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 179
    new-instance p1, Lorg/telegram/ui/Stories/DialogStoriesCell$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/DialogStoriesCell$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Stories/DialogStoriesCell;)V

    .line 183
    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 184
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance p2, Lorg/telegram/ui/Stories/DialogStoriesCell$3;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Stories/DialogStoriesCell$3;-><init>(Lorg/telegram/ui/Stories/DialogStoriesCell;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 194
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->adapter:Lorg/telegram/ui/Stories/DialogStoriesCell$Adapter;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 195
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 197
    new-instance p1, Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2, v2, v2, v1}, Lorg/telegram/ui/Components/AnimatedTextView;-><init>(Landroid/content/Context;ZZZ)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 p2, 0x3

    .line 198
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView;->setGravity(I)V

    .line 199
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-direct {p0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->getTextColor()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    .line 200
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/AnimatedTextView;->setEllipsizeByGradient(Z)V

    .line 201
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleView:Lorg/telegram/ui/Components/AnimatedTextView;

    const-string p2, "fonts/rmedium.ttf"

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 202
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 p2, 0x8

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-virtual {p1, v1, p3, v1, p2}, Landroid/view/View;->setPadding(IIII)V

    .line 203
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    const/4 p3, 0x2

    if-ne p2, p3, :cond_0

    const/16 p2, 0x12

    goto :goto_0

    :cond_0
    const/16 p2, 0x14

    :goto_0
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    .line 204
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 p2, -0x2

    invoke-static {v3, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 205
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->ellipsizeSpanAnimator:Lorg/telegram/ui/Components/EllipsizeSpanAnimator;

    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->addView(Landroid/view/View;)V

    .line 207
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 209
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->grayPaint:Landroid/graphics/Paint;

    const p2, -0x2a2522

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 210
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->grayPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 211
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->grayPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 212
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$drawable;->msg_mini_addstory:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->addNewStoryDrawable:Landroid/graphics/drawable/Drawable;

    .line 214
    new-instance p1, Lorg/telegram/ui/Stories/DialogStoriesCell$4;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/Stories/DialogStoriesCell$4;-><init>(Lorg/telegram/ui/Stories/DialogStoriesCell;Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->listViewMini:Lorg/telegram/ui/Components/RecyclerListView;

    .line 249
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 250
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->listViewMini:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance p2, Lorg/telegram/ui/Stories/DialogStoriesCell$5;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Stories/DialogStoriesCell$5;-><init>(Lorg/telegram/ui/Stories/DialogStoriesCell;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 262
    new-instance p1, Lorg/telegram/ui/Stories/DialogStoriesCell$6;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/DialogStoriesCell$6;-><init>(Lorg/telegram/ui/Stories/DialogStoriesCell;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->miniItemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    .line 268
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/DefaultItemAnimator;->setDelayAnimations(Z)V

    .line 269
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 270
    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->listViewMini:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 271
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->listViewMini:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->miniAdapter:Lorg/telegram/ui/Stories/DialogStoriesCell$Adapter;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 272
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->listViewMini:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 273
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->listViewMini:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 274
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 275
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 277
    invoke-virtual {p0, v1, v1}, Lorg/telegram/ui/Stories/DialogStoriesCell;->updateItems(ZZ)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Stories/DialogStoriesCell;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->checkLoadMore()V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Stories/DialogStoriesCell;)Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 0

    .line 70
    iget-object p0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->premiumHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Stories/DialogStoriesCell;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 70
    invoke-direct {p0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->createVerifiedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Stories/DialogStoriesCell;)F
    .locals 0

    .line 70
    iget p0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedProgress1:F

    return p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Stories/DialogStoriesCell;)Z
    .locals 0

    .line 70
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->lastUploadingCloseFriends:Z

    return p0
.end method

.method static synthetic access$1202(Lorg/telegram/ui/Stories/DialogStoriesCell;Z)Z
    .locals 0

    .line 70
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->lastUploadingCloseFriends:Z

    return p1
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Stories/DialogStoriesCell;)I
    .locals 0

    .line 70
    iget p0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->addNewStoryLastColor:I

    return p0
.end method

.method static synthetic access$1502(Lorg/telegram/ui/Stories/DialogStoriesCell;I)I
    .locals 0

    .line 70
    iput p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->addNewStoryLastColor:I

    return p1
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Stories/DialogStoriesCell;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 70
    iget-object p0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->addNewStoryDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Stories/DialogStoriesCell;)F
    .locals 0

    .line 70
    iget p0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->overscrollPrgoress:F

    return p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Stories/DialogStoriesCell;)F
    .locals 0

    .line 70
    iget p0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedProgress2:F

    return p0
.end method

.method static synthetic access$302(Lorg/telegram/ui/Stories/DialogStoriesCell;F)F
    .locals 0

    .line 70
    iput p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedProgress2:F

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/Stories/DialogStoriesCell;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->checkCollapsedProgres()V

    return-void
.end method

.method static synthetic access$600(Lorg/telegram/ui/Stories/DialogStoriesCell;)I
    .locals 0

    .line 70
    iget p0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->type:I

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Stories/DialogStoriesCell;)I
    .locals 0

    .line 70
    invoke-direct {p0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->getTextColor()I

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Stories/DialogStoriesCell;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 70
    iget-object p0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->textAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$802(Lorg/telegram/ui/Stories/DialogStoriesCell;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 70
    iput-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->textAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$900(Lorg/telegram/ui/Stories/DialogStoriesCell;)Ljava/lang/Runnable;
    .locals 0

    .line 70
    iget-object p0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->animationRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$902(Lorg/telegram/ui/Stories/DialogStoriesCell;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 70
    iput-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->animationRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method private checkCollapsedProgres()V
    .locals 3

    .line 706
    iget v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedProgress1:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    iget v2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedProgress2:F

    sub-float v2, v1, v2

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    sub-float v0, v1, v0

    iput v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedProgress:F

    .line 707
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->updateCollapsedProgress()V

    .line 710
    iget v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedProgress:F

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 715
    :goto_0
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->updateCurrentState(I)V

    .line 716
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private checkExpanded()V
    .locals 4

    .line 1579
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->checkedStoryNotificationDeletion:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    return-void

    .line 1582
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationsController;->getInstance(I)Lorg/telegram/messenger/NotificationsController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/NotificationsController;->processIgnoreStories()V

    .line 1583
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->checkedStoryNotificationDeletion:J

    return-void
.end method

.method private checkLoadMore()V
    .locals 2

    .line 335
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    iget-object v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 336
    iget v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 337
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/StoriesController;->loadNextStories(Z)V

    :cond_1
    return-void
.end method

.method private createVerifiedDrawable()Landroid/graphics/drawable/Drawable;
    .locals 7

    .line 1501
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->verified_area:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 1502
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$drawable;->verified_check:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1503
    new-instance v0, Lorg/telegram/ui/Stories/DialogStoriesCell$8;

    move-object v1, v0

    move-object v2, p0

    move-object v3, v5

    move-object v4, v6

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Stories/DialogStoriesCell$8;-><init>(Lorg/telegram/ui/Stories/DialogStoriesCell;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x1

    .line 1521
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/CombinedDrawable;->setFullsize(Z)V

    return-object v0
.end method

.method static getAvatarRight(IF)F
    .locals 3

    const/16 v0, 0x30

    .line 1567
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    const/16 v1, 0x1c

    .line 1568
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    .line 1569
    invoke-static {v0, v1, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    int-to-float p0, p0

    div-float/2addr p0, v1

    sub-float/2addr p0, v0

    const/4 v2, 0x0

    .line 1573
    invoke-static {p0, v2, p1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result p0

    mul-float/2addr v0, v1

    add-float/2addr p0, v0

    return p0
.end method

.method private getTextColor()I
    .locals 1

    .line 748
    iget v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->type:I

    if-nez v0, :cond_0

    .line 749
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultTitle:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    return v0

    .line 751
    :cond_0
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultArchivedTitle:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    return v0
.end method

.method private synthetic lambda$didReceivedNotification$2()V
    .locals 0

    .line 650
    invoke-direct {p0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->checkLoadMore()V

    return-void
.end method

.method private synthetic lambda$makePremiumHint$8()V
    .locals 3

    .line 1608
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->premiumHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v0, :cond_0

    .line 1609
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    .line 1611
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    new-instance v1, Lorg/telegram/ui/PremiumPreviewFragment;

    const-string v2, "stories"

    invoke-direct {v1, v2}, Lorg/telegram/ui/PremiumPreviewFragment;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;I)V
    .locals 0

    .line 180
    check-cast p1, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;

    .line 181
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/DialogStoriesCell;->openStoryForCell(Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;)V

    return-void
.end method

.method private static synthetic lambda$new$1(Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;)I
    .locals 0

    .line 435
    iget p1, p1, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->position:I

    iget p0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->position:I

    sub-int/2addr p1, p0

    return p1
.end method

.method private synthetic lambda$setProgressToCollapse$3(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 688
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedProgress2:F

    .line 689
    invoke-direct {p0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->checkCollapsedProgres()V

    return-void
.end method

.method private static synthetic lambda$updateColors$4(ILandroid/view/View;)V
    .locals 0

    .line 736
    check-cast p1, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;

    .line 737
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->invalidate()V

    .line 738
    iget-object p1, p1, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->textView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {p1, p0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    return-void
.end method

.method private static synthetic lambda$updateColors$5(Landroid/view/View;)V
    .locals 0

    .line 741
    check-cast p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;

    .line 742
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->invalidate()V

    return-void
.end method

.method private synthetic lambda$updateCurrentState$6()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1533
    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Stories/DialogStoriesCell;->updateItems(ZZ)V

    return-void
.end method

.method private static synthetic lambda$updateCurrentState$7(Landroid/view/View;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1538
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    .line 1539
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 1540
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private makePremiumHint()Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 5

    .line 1599
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->premiumHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v0, :cond_0

    return-object v0

    .line 1602
    :cond_0
    new-instance v0, Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;-><init>(Landroid/content/Context;I)V

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_undo_background:I

    .line 1603
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setBgColor(I)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    .line 1604
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->setMultilineText(Z)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 1605
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->setTextAlign(Landroid/text/Layout$Alignment;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x41e80000    # 29.0f

    .line 1606
    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->setJoint(FF)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->premiumHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const-string v0, "StoriesPremiumHint"

    .line 1607
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_undo_cancelColor:I

    new-instance v2, Lorg/telegram/ui/Stories/DialogStoriesCell$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/DialogStoriesCell$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stories/DialogStoriesCell;)V

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Lorg/telegram/messenger/AndroidUtilities;->replaceSingleTag(Ljava/lang/String;IILjava/lang/Runnable;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 1613
    iget-object v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->premiumHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/HintView2;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->cutInFancyHalf(Ljava/lang/CharSequence;Landroid/text/TextPaint;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Stories/recorder/HintView2;->setMaxWidthPx(I)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1614
    iget-object v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->premiumHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->setText(Ljava/lang/CharSequence;)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1615
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->premiumHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/16 v1, 0x8

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    const/16 v4, 0x18

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 1616
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 1617
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->premiumHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    const/4 v2, -0x1

    const/16 v3, 0x96

    const/16 v4, 0x33

    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1619
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->premiumHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    return-object v0
.end method

.method private openStoryForCell(Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    .line 284
    :cond_0
    iget-boolean v0, p1, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->isSelf:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController;->hasSelfStories()Z

    move-result v0

    if-nez v0, :cond_2

    .line 285
    iget p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->storiesEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    .line 286
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->showPremiumHint()V

    goto :goto_0

    .line 288
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->openStoryRecorder()V

    :goto_0
    return-void

    .line 292
    :cond_2
    iget v0, p1, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->position:I

    .line 294
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 296
    iget-object v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v2, p1, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->dialogId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Stories/StoriesController;->hasStories(J)Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    const/4 v1, 0x0

    move v2, v1

    .line 299
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x1

    if-ge v2, v3, :cond_5

    .line 300
    iget-object v3, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Stories/DialogStoriesCell$Item;

    iget-wide v6, v3, Lorg/telegram/ui/Stories/DialogStoriesCell$Item;->dialogId:J

    .line 301
    iget v3, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v3

    iget-wide v8, v3, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long v3, v6, v8

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v3, v6, v7}, Lorg/telegram/ui/Stories/StoriesController;->hasUnreadStories(J)Z

    move-result v3

    if-eqz v3, :cond_4

    move v2, v1

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    move v2, v5

    .line 306
    :goto_2
    iget-boolean v3, p1, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->isSelf:Z

    if-eqz v3, :cond_8

    if-eqz v2, :cond_6

    iget-object v2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v5, :cond_8

    .line 307
    :cond_6
    iget-wide v1, p1, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->dialogId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    move v5, v0

    goto/16 :goto_7

    .line 309
    :cond_8
    iget-boolean v2, p1, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->isSelf:Z

    if-nez v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-wide v6, p1, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->dialogId:J

    invoke-virtual {v2, v6, v7}, Lorg/telegram/ui/Stories/StoriesController;->hasUnreadStories(J)Z

    move-result v2

    if-eqz v2, :cond_9

    move v2, v5

    goto :goto_3

    :cond_9
    move v2, v1

    :goto_3
    if-eqz v2, :cond_c

    .line 311
    :goto_4
    iget-object v2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 312
    iget-object v2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stories/DialogStoriesCell$Item;

    iget-wide v2, v2, Lorg/telegram/ui/Stories/DialogStoriesCell$Item;->dialogId:J

    .line 313
    iget-boolean v6, p1, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->isSelf:Z

    if-nez v6, :cond_a

    iget-object v6, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v6, v2, v3}, Lorg/telegram/ui/Stories/StoriesController;->hasUnreadStories(J)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 314
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    :cond_a
    iget-wide v6, p1, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->dialogId:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_b

    .line 317
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v5

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 321
    :cond_c
    :goto_5
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->items:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_7

    .line 322
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->items:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Stories/DialogStoriesCell$Item;

    iget-wide v2, p1, Lorg/telegram/ui/Stories/DialogStoriesCell$Item;->dialogId:J

    .line 323
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {p1, v2, v3}, Lorg/telegram/ui/Stories/StoriesController;->hasStories(J)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 324
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->items:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Stories/DialogStoriesCell$Item;

    iget-wide v2, p1, Lorg/telegram/ui/Stories/DialogStoriesCell$Item;->dialogId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_d
    if-gt v1, v0, :cond_e

    add-int/lit8 v0, v0, -0x1

    :cond_e
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 331
    :goto_7
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getOrCreateStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {p1}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->of(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Stories/StoriesListPlaceProvider;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Lorg/telegram/ui/Stories/StoryViewer;->open(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$StoryItem;Ljava/util/ArrayList;ILorg/telegram/ui/Stories/StoriesController$StoriesList;Lorg/telegram/tgnet/TLRPC$TL_userStories;Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;Z)V

    return-void
.end method

.method private shouldDrawSelfInMini()Z
    .locals 3

    .line 428
    iget v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-wide v0, v0, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    .line 429
    iget-object v2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v2, v0, v1}, Lorg/telegram/ui/Stories/StoriesController;->hasUnreadStories(J)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController;->hasSelfStories()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController;->getDialogListStories()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private updateCurrentState(I)V
    .locals 7

    .line 1526
    iget v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentState:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1530
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentState:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    .line 1531
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->updateOnIdleState:Z

    if-eqz p1, :cond_1

    .line 1532
    new-instance p1, Lorg/telegram/ui/Stories/DialogStoriesCell$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/DialogStoriesCell$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Stories/DialogStoriesCell;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1536
    :cond_1
    iget p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentState:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-nez p1, :cond_2

    .line 1537
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    sget-object v0, Lorg/telegram/ui/Stories/DialogStoriesCell$$ExternalSyntheticLambda3;->INSTANCE:Lorg/telegram/ui/Stories/DialogStoriesCell$$ExternalSyntheticLambda3;

    invoke-static {p1, v0}, Lorg/telegram/messenger/AndroidUtilities;->forEachViews(Landroidx/recyclerview/widget/RecyclerView;Lcom/google/android/exoplayer2/util/Consumer;)V

    .line 1542
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->listViewMini:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1543
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1544
    invoke-direct {p0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->checkExpanded()V

    goto/16 :goto_2

    :cond_2
    if-ne p1, v0, :cond_6

    .line 1546
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->animateToDialogIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    move p1, v2

    .line 1547
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_5

    .line 1548
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stories/DialogStoriesCell$Item;

    iget-wide v3, v0, Lorg/telegram/ui/Stories/DialogStoriesCell$Item;->dialogId:J

    iget v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-nez v0, :cond_3

    invoke-direct {p0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->shouldDrawSelfInMini()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1549
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->animateToDialogIds:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Stories/DialogStoriesCell$Item;

    iget-wide v3, v3, Lorg/telegram/ui/Stories/DialogStoriesCell$Item;->dialogId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1550
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->animateToDialogIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1555
    :cond_5
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->listViewMini:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1556
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    goto :goto_2

    :cond_6
    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    .line 1558
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->listViewMini:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1559
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1560
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 1561
    iget p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/StoriesController;->scheduleSort()V

    .line 1563
    :cond_7
    :goto_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method


# virtual methods
.method public afterNextLayout(Ljava/lang/Runnable;)V
    .locals 1

    .line 776
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->afterNextLayout:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 646
    sget p2, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    if-ne p1, p2, :cond_1

    .line 647
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->allowGlobalUpdates:Z

    if-eqz p1, :cond_1

    .line 648
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/telegram/ui/Stories/DialogStoriesCell;->updateItems(ZZ)V

    .line 649
    new-instance p1, Lorg/telegram/ui/Stories/DialogStoriesCell$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/DialogStoriesCell$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/DialogStoriesCell;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 439
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 440
    iget v2, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->clipTop:I

    const/4 v3, 0x0

    if-lez v2, :cond_0

    .line 441
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 443
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v4

    sub-int/2addr v2, v4

    const/4 v4, 0x4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v2, v4

    iget v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedProgress1:F

    invoke-static {v3, v2, v4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v2

    int-to-float v2, v2

    .line 444
    iget-object v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    .line 445
    iget-object v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->listViewMini:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setTranslationY(F)V

    .line 446
    iget-object v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->listViewMini:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v5, 0x44

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 447
    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v6, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedProgress:F

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v4

    const/high16 v6, 0x3f000000    # 0.5f

    sub-float/2addr v4, v6

    div-float/2addr v4, v6

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    invoke-static {v4, v7, v8}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move v4, v3

    .line 449
    :goto_0
    iget-object v9, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->viewsDrawInParent:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_1

    .line 450
    iget-object v9, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->viewsDrawInParent:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;

    iput-boolean v3, v9, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->drawInParent:Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 452
    :cond_1
    iget-object v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->viewsDrawInParent:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 455
    iget v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentState:I

    const/4 v9, 0x2

    const/4 v10, -0x1

    const/4 v11, 0x1

    if-ne v4, v11, :cond_3

    iget-object v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->animateToDialogIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    move v4, v3

    move v12, v10

    .line 456
    :goto_1
    iget-object v13, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    if-ge v4, v13, :cond_5

    .line 457
    iget-object v13, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v13, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;

    .line 458
    iget-wide v14, v13, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->dialogId:J

    iget-object v5, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->animateToDialogIds:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    cmp-long v5, v14, v16

    if-nez v5, :cond_2

    .line 459
    iget-object v5, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5, v13}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v12

    :cond_2
    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0x44

    goto :goto_1

    .line 462
    :cond_3
    iget v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentState:I

    if-ne v4, v9, :cond_4

    move v12, v3

    goto :goto_2

    :cond_4
    move v12, v10

    .line 466
    :cond_5
    :goto_2
    iget v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentState:I

    if-ltz v4, :cond_1f

    if-eq v4, v9, :cond_1f

    if-ne v12, v10, :cond_7

    .line 469
    iget-object v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v12

    if-ne v12, v10, :cond_6

    .line 471
    iget-object v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v12

    :cond_6
    move v4, v11

    goto :goto_3

    :cond_7
    move v4, v3

    .line 475
    :goto_3
    iget-object v14, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget v15, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedProgress:F

    iget v3, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->K:F

    div-float/2addr v15, v3

    invoke-static {v15, v7, v8}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v3

    sub-float v3, v7, v3

    invoke-virtual {v14, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 476
    iput v10, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->overscrollSelectedPosition:I

    .line 477
    iget v3, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->overscrollPrgoress:F

    cmpl-float v3, v3, v8

    if-eqz v3, :cond_e

    move v14, v10

    const/4 v3, 0x0

    .line 480
    :goto_4
    iget-object v15, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v15}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v15

    if-ge v3, v15, :cond_d

    .line 481
    iget-object v15, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v15, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 482
    invoke-virtual {v15}, Landroid/view/View;->getX()F

    move-result v17

    cmpg-float v17, v17, v8

    if-ltz v17, :cond_b

    invoke-virtual {v15}, Landroid/view/View;->getX()F

    move-result v17

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    add-float v17, v17, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, v17, v5

    if-lez v5, :cond_8

    goto :goto_5

    .line 485
    :cond_8
    iget-object v5, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5, v15}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v5

    if-gez v5, :cond_9

    goto :goto_5

    :cond_9
    if-eq v14, v10, :cond_a

    if-ge v5, v14, :cond_b

    .line 493
    :cond_a
    iget-object v10, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->items:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/ui/Stories/DialogStoriesCell$Item;

    iget-wide v9, v10, Lorg/telegram/ui/Stories/DialogStoriesCell$Item;->dialogId:J

    iget v13, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentAccount:I

    invoke-static {v13}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v13

    move/from16 v18, v12

    iget-wide v11, v13, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long v9, v9, v11

    if-eqz v9, :cond_c

    .line 495
    check-cast v15, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;

    iput-object v15, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->overscrollSelectedView:Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;

    move v14, v5

    goto :goto_6

    :cond_b
    :goto_5
    move/from16 v18, v12

    :cond_c
    :goto_6
    add-int/lit8 v3, v3, 0x1

    move/from16 v12, v18

    const/4 v9, 0x2

    const/4 v10, -0x1

    const/4 v11, 0x1

    goto :goto_4

    :cond_d
    move/from16 v18, v12

    .line 498
    iput v14, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->overscrollSelectedPosition:I

    goto :goto_7

    :cond_e
    move/from16 v18, v12

    :goto_7
    move v5, v8

    const/4 v3, 0x0

    .line 500
    :goto_8
    iget-object v9, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-ge v3, v9, :cond_22

    .line 501
    iget-object v9, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v9, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;

    .line 502
    iget v10, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedProgress:F

    iget v11, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedProgress2:F

    iget v12, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->overscrollPrgoress:F

    iget v13, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->overscrollSelectedPosition:I

    iget v14, v9, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->position:I

    if-ne v13, v14, :cond_f

    const/4 v13, 0x1

    goto :goto_9

    :cond_f
    const/4 v13, 0x0

    :goto_9
    invoke-virtual {v9, v10, v11, v12, v13}, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->setProgressToCollapsed(FFFZ)V

    .line 503
    iget v10, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->overscrollPrgoress:F

    sub-float/2addr v10, v6

    div-float/2addr v10, v6

    invoke-static {v10, v7, v8}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v10

    const/16 v11, 0x10

    .line 504
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v10

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    sub-float v10, v7, v10

    mul-float/2addr v10, v6

    float-to-double v14, v10

    add-double/2addr v14, v12

    double-to-float v10, v14

    .line 506
    iget v12, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedProgress:F

    cmpl-float v12, v12, v8

    if-lez v12, :cond_17

    .line 508
    iget-object v10, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v10, v9}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v10

    move/from16 v12, v18

    if-lt v10, v12, :cond_10

    add-int/lit8 v11, v12, 0x2

    if-gt v10, v11, :cond_10

    const/4 v11, 0x1

    goto :goto_a

    :cond_10
    const/4 v11, 0x0

    :goto_a
    const-wide/16 v13, -0x1

    if-eqz v4, :cond_12

    sub-int v15, v10, v12

    if-ltz v15, :cond_11

    .line 512
    iget-object v6, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->animateToDialogIds:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v15, v6, :cond_11

    .line 513
    iget-object v6, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->animateToDialogIds:Ljava/util/ArrayList;

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 514
    invoke-virtual {v9, v13, v14}, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->setCrossfadeTo(J)V

    goto :goto_b

    .line 516
    :cond_11
    invoke-virtual {v9, v13, v14}, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->setCrossfadeTo(J)V

    goto :goto_b

    .line 519
    :cond_12
    invoke-virtual {v9, v13, v14}, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->setCrossfadeTo(J)V

    .line 521
    :goto_b
    iput-boolean v11, v9, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->drawInParent:Z

    if-ne v10, v12, :cond_13

    const/4 v6, 0x1

    goto :goto_c

    :cond_13
    const/4 v6, 0x0

    .line 522
    :goto_c
    iput-boolean v6, v9, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->isFirst:Z

    .line 523
    iget-object v6, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->animateToDialogIds:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v6, v12

    const/4 v13, 0x1

    sub-int/2addr v6, v13

    if-lt v10, v6, :cond_14

    move v6, v13

    goto :goto_d

    :cond_14
    const/4 v6, 0x0

    :goto_d
    iput-boolean v6, v9, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->isLast:Z

    if-gt v10, v12, :cond_15

    move v6, v8

    :goto_e
    const/16 v14, 0x44

    goto :goto_10

    :cond_15
    add-int/lit8 v6, v12, 0x1

    const/high16 v14, 0x41900000    # 18.0f

    if-ne v10, v6, :cond_16

    .line 527
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    goto :goto_f

    .line 529
    :cond_16
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    const/4 v10, 0x2

    mul-int/2addr v6, v10

    :goto_f
    int-to-float v6, v6

    goto :goto_e

    .line 531
    :goto_10
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v6, v10

    .line 532
    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v6, v10

    sget-object v10, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v15, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedProgress:F

    invoke-virtual {v10, v15}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v10

    invoke-static {v8, v6, v10}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v6

    invoke-virtual {v9, v6}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    if-eqz v11, :cond_1c

    .line 534
    iget-object v6, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->viewsDrawInParent:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_17
    move/from16 v12, v18

    const/4 v13, 0x1

    const/16 v14, 0x44

    .line 536
    iget-object v6, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v6

    if-eqz v6, :cond_18

    iget-object v6, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->isRunning()Z

    move-result v6

    if-nez v6, :cond_1c

    .line 537
    :cond_18
    iget v6, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->overscrollPrgoress:F

    cmpl-float v6, v6, v8

    if-lez v6, :cond_1b

    .line 538
    iget v6, v9, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->position:I

    iget v15, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->overscrollSelectedPosition:I

    if-ge v6, v15, :cond_19

    neg-float v6, v11

    .line 539
    invoke-virtual {v9, v6}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 540
    invoke-virtual {v9, v8}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 541
    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_11

    :cond_19
    if-le v6, v15, :cond_1a

    .line 543
    invoke-virtual {v9, v11}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 544
    invoke-virtual {v9, v8}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 545
    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_11

    .line 547
    :cond_1a
    invoke-virtual {v9, v8}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    neg-float v6, v11

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v6, v10

    .line 548
    invoke-virtual {v9, v6}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 549
    invoke-virtual {v9, v7}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_11

    .line 552
    :cond_1b
    invoke-virtual {v9, v8}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 553
    invoke-virtual {v9, v8}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 554
    invoke-virtual {v9, v7}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 557
    :cond_1c
    :goto_11
    iget-boolean v6, v9, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->drawInParent:Z

    if-eqz v6, :cond_1e

    .line 558
    iget-object v6, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getX()F

    move-result v6

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getX()F

    move-result v10

    add-float/2addr v6, v10

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    add-float/2addr v6, v9

    const/16 v9, 0x4a

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    int-to-float v9, v11

    div-float/2addr v9, v10

    add-float/2addr v6, v9

    cmpl-float v9, v5, v8

    if-eqz v9, :cond_1d

    cmpl-float v9, v6, v5

    if-lez v9, :cond_1e

    :cond_1d
    move v5, v6

    :cond_1e
    add-int/lit8 v3, v3, 0x1

    move/from16 v18, v12

    const/high16 v6, 0x3f000000    # 0.5f

    goto/16 :goto_8

    :cond_1f
    move v5, v8

    const/4 v3, 0x0

    .line 565
    :goto_12
    iget-object v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->listViewMini:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_22

    .line 566
    iget-object v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->listViewMini:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;

    .line 567
    iget-object v6, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->listViewMini:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getX()F

    move-result v6

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getX()F

    move-result v7

    add-float/2addr v6, v7

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v6, v4

    cmpl-float v4, v5, v8

    if-eqz v4, :cond_20

    cmpl-float v4, v6, v5

    if-lez v4, :cond_21

    :cond_20
    move v5, v6

    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 574
    :cond_22
    iget-object v3, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->premiumHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v3, :cond_24

    const/16 v3, 0x1d

    .line 575
    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v6, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedProgress:F

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v4

    const/16 v6, 0x4a

    invoke-static {v3, v6, v4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v3

    int-to-float v3, v3

    .line 576
    iget-object v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-lez v4, :cond_23

    .line 577
    iget-object v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 579
    :cond_23
    iget-object v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->premiumHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v4, v8, v3}, Lorg/telegram/ui/Stories/recorder/HintView2;->setJoint(FF)Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 582
    :cond_24
    iget v3, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedProgress:F

    iget v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedProgress2:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    cmpl-float v4, v3, v8

    if-eqz v4, :cond_25

    .line 584
    iget-object v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget-object v6, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/AnimatedTextView;->getTextHeight()I

    move-result v6

    sub-int/2addr v4, v6

    int-to-float v4, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    .line 585
    iget-object v6, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 v7, 0xe

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v2, v7

    sub-float/2addr v2, v4

    invoke-virtual {v6, v2}, Landroid/view/View;->setTranslationY(F)V

    const/16 v2, 0x48

    .line 586
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    neg-int v4, v2

    int-to-float v4, v4

    .line 587
    iget v6, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedProgress:F

    invoke-static {v2, v6}, Lorg/telegram/ui/Stories/DialogStoriesCell;->getAvatarRight(IF)F

    move-result v2

    add-float/2addr v4, v2

    const/16 v2, 0xc

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v4, v2

    add-float/2addr v5, v4

    .line 589
    iget-object v2, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v2, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 590
    iget-object v2, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedTextView;->getDrawable()Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;

    move-result-object v2

    iget-object v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    iget-object v4, v4, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/ActionBarMenu;->getItemsMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    add-float/2addr v5, v4

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/AnimatedTextView$AnimatedTextDrawable;->setRightPadding(F)V

    .line 591
    iget-object v2, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 592
    iget-object v2, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_13

    :cond_25
    const/4 v3, 0x0

    .line 594
    iget-object v2, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleView:Lorg/telegram/ui/Components/AnimatedTextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 597
    :goto_13
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 598
    iget v2, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentState:I

    if-ltz v2, :cond_26

    const/4 v4, 0x2

    if-eq v2, v4, :cond_26

    .line 599
    iget-object v2, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->viewsDrawInParent:Ljava/util/ArrayList;

    iget-object v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->comparator:Ljava/util/Comparator;

    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 600
    :goto_14
    iget-object v2, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->viewsDrawInParent:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_26

    .line 601
    iget-object v2, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->viewsDrawInParent:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;

    .line 602
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 603
    iget-object v4, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getX()F

    move-result v4

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getX()F

    move-result v5

    add-float/2addr v4, v5

    iget-object v5, v0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getY()F

    move-result v5

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getY()F

    move-result v6

    add-float/2addr v5, v6

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 604
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 605
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 608
    :cond_26
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public findSelfStoryCell()Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;
    .locals 4

    .line 962
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 963
    iget v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 964
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->listViewMini:Lorg/telegram/ui/Components/RecyclerListView;

    :cond_0
    const/4 v1, 0x0

    .line 966
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 967
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 968
    instance-of v3, v2, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;

    if-eqz v3, :cond_1

    .line 969
    check-cast v2, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;

    .line 970
    iget-boolean v3, v2, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->isSelf:Z

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCollapsedProgress()F
    .locals 1

    .line 720
    iget v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedProgress:F

    return v0
.end method

.method public getPremiumHint()Lorg/telegram/ui/Stories/recorder/HintView2;
    .locals 1

    .line 1595
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->premiumHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    return-object v0
.end method

.method public isExpanded()Z
    .locals 2

    .line 780
    iget v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentState:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isFullExpanded()Z
    .locals 1

    .line 784
    iget v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 613
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x0

    .line 614
    invoke-virtual {p0, v0, v0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->updateItems(ZZ)V

    .line 615
    iget v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 616
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->ellipsizeSpanAnimator:Lorg/telegram/ui/Components/EllipsizeSpanAnimator;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 621
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 622
    iget v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->storiesUpdated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 623
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->ellipsizeSpanAnimator:Lorg/telegram/ui/Components/EllipsizeSpanAnimator;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->onDetachedFromWindow()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 628
    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/16 v0, 0x12

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextSize(F)V

    .line 629
    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->items:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    const/16 p2, 0x4a

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    .line 634
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    iput p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentCellWidth:I

    .line 640
    sget-object p2, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    const/16 p2, 0x55

    .line 641
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 861
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController;->checkExpiredStories()V

    const/4 v0, 0x0

    .line 862
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 863
    iget-object v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    iget-object v2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stories/DialogStoriesCell$Item;

    iget-wide v2, v2, Lorg/telegram/ui/Stories/DialogStoriesCell$Item;->dialogId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Stories/StoriesController;->getStories(J)Lorg/telegram/tgnet/TLRPC$TL_userStories;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 865
    iget-object v2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Stories/StoriesController;->preloadUserStories(Lorg/telegram/tgnet/TLRPC$TL_userStories;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onUserLongPressed(Landroid/view/View;J)V
    .locals 0

    return-void
.end method

.method public openOverscrollSelectedStory()V
    .locals 1

    .line 884
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->overscrollSelectedView:Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;

    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->openStoryForCell(Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;)V

    const/4 v0, 0x3

    .line 885
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    return-void
.end method

.method public openSelfStories()V
    .locals 10

    .line 852
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/StoriesController;->hasSelfStories()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 855
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 856
    iget v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-wide v0, v0, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 857
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getOrCreateStoryViewer()Lorg/telegram/ui/Stories/StoryViewer;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->listViewMini:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-static {v0}, Lorg/telegram/ui/Stories/StoriesListPlaceProvider;->of(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Stories/StoriesListPlaceProvider;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Lorg/telegram/ui/Stories/StoryViewer;->open(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$StoryItem;Ljava/util/ArrayList;ILorg/telegram/ui/Stories/StoriesController$StoriesList;Lorg/telegram/tgnet/TLRPC$TL_userStories;Lorg/telegram/ui/Stories/StoryViewer$PlaceProvider;Z)V

    return-void
.end method

.method public openStoryRecorder()V
    .locals 3

    const/4 v0, 0x0

    .line 801
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 802
    iget-object v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;

    .line 803
    iget-boolean v2, v1, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->isSelf:Z

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_2

    return-void

    .line 811
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    iget v2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentAccount:I

    invoke-static {v0, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->getInstance(Landroid/app/Activity;I)Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    move-result-object v0

    .line 812
    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->fromStoryCell(Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->open(Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;)V

    return-void
.end method

.method public overscrollProgress()F
    .locals 1

    .line 893
    iget v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->overscrollPrgoress:F

    return v0
.end method

.method public scrollTo(J)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 757
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 758
    iget-object v2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Stories/DialogStoriesCell$Item;

    iget-wide v2, v2, Lorg/telegram/ui/Stories/DialogStoriesCell$Item;->dialogId:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    if-ltz v1, :cond_3

    .line 764
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result p1

    const/4 p2, 0x1

    if-ge v1, p1, :cond_2

    .line 765
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return p2

    .line 767
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result p1

    if-le v1, p1, :cond_3

    .line 768
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, v1, v0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(IIZ)V

    return p2

    :cond_3
    return v0
.end method

.method public scrollToFirst()Z
    .locals 2

    .line 788
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 789
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public scrollToFirstCell()V
    .locals 2

    .line 728
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    return-void
.end method

.method public setActionBar(Lorg/telegram/ui/ActionBar/ActionBar;)V
    .locals 0

    .line 889
    iput-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;

    return-void
.end method

.method public setClipTop(I)V
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 845
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->clipTop:I

    if-eq v0, p1, :cond_1

    .line 846
    iput p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->clipTop:I

    .line 847
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_1
    return-void
.end method

.method public setOverscoll(F)V
    .locals 1

    const/16 v0, 0x5a

    .line 871
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->overscrollPrgoress:F

    .line 872
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 873
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    .line 874
    iget p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->overscrollPrgoress:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    .line 875
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 876
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    goto :goto_0

    .line 878
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 879
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :goto_0
    return-void
.end method

.method public setProgressToCollapse(F)V
    .locals 1

    const/4 v0, 0x1

    .line 661
    invoke-virtual {p0, p1, v0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->setProgressToCollapse(FZ)V

    return-void
.end method

.method public setProgressToCollapse(FZ)V
    .locals 5

    .line 665
    iget v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedProgress1:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 669
    :cond_0
    iput p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedProgress1:F

    .line 670
    invoke-direct {p0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->checkCollapsedProgres()V

    .line 672
    iget v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->K:F

    cmpl-float p1, p1, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    move p1, v1

    .line 673
    :goto_0
    iget-boolean v2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsed:Z

    if-eq p1, v2, :cond_6

    .line 674
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsed:Z

    .line 675
    iget-object v2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->valueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_2

    .line 676
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 677
    iget-object v2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v2, 0x0

    .line 678
    iput-object v2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->valueAnimator:Landroid/animation/ValueAnimator;

    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz p2, :cond_4

    const/4 p2, 0x2

    new-array p2, p2, [F

    .line 681
    iget v4, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedProgress2:F

    aput v4, p2, v1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    aput v2, p2, v0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->valueAnimator:Landroid/animation/ValueAnimator;

    goto :goto_3

    :cond_4
    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    move v2, v3

    .line 683
    :goto_2
    iput v2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->collapsedProgress2:F

    .line 684
    invoke-direct {p0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->checkCollapsedProgres()V

    .line 686
    :goto_3
    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->valueAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_6

    .line 687
    new-instance v0, Lorg/telegram/ui/Stories/DialogStoriesCell$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/DialogStoriesCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/DialogStoriesCell;)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 691
    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->valueAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lorg/telegram/ui/Stories/DialogStoriesCell$7;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Stories/DialogStoriesCell$7;-><init>(Lorg/telegram/ui/Stories/DialogStoriesCell;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 698
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->valueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x1c2

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 699
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->valueAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 700
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->valueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_6
    return-void
.end method

.method public setTitleOverlayText(Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 819
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->hasOverlayText:Z

    .line 820
    iget v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->overlayTextId:I

    if-eq v1, p2, :cond_2

    .line 821
    iput p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->overlayTextId:I

    .line 822
    invoke-static {p1, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 824
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "..."

    .line 825
    invoke-static {p1, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result p2

    if-ltz p2, :cond_0

    .line 827
    invoke-static {p1}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object p1

    .line 828
    iget-object v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->ellipsizeSpanAnimator:Lorg/telegram/ui/Components/EllipsizeSpanAnimator;

    invoke-virtual {v1, p1, p2}, Lorg/telegram/ui/Components/EllipsizeSpanAnimator;->wrap(Landroid/text/SpannableString;I)V

    .line 832
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 835
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->hasOverlayText:Z

    .line 836
    iput p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->overlayTextId:I

    .line 837
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setTranslationY(F)V
    .locals 1

    .line 1588
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 1589
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->premiumHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v0, :cond_0

    .line 1590
    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method public showPremiumHint()V
    .locals 1

    .line 1623
    invoke-direct {p0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->makePremiumHint()Lorg/telegram/ui/Stories/recorder/HintView2;

    .line 1624
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->premiumHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    if-eqz v0, :cond_1

    .line 1625
    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->shown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1626
    sget-object v0, Lorg/telegram/messenger/BotWebViewVibrationEffect;->APP_ERROR:Lorg/telegram/messenger/BotWebViewVibrationEffect;

    invoke-virtual {v0}, Lorg/telegram/messenger/BotWebViewVibrationEffect;->vibrate()V

    .line 1628
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->premiumHint:Lorg/telegram/ui/Stories/recorder/HintView2;

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->show()Lorg/telegram/ui/Stories/recorder/HintView2;

    :cond_1
    return-void
.end method

.method public updateCollapsedProgress()V
    .locals 0

    return-void
.end method

.method public updateColors()V
    .locals 3

    .line 732
    invoke-direct {p0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->getTextColor()I

    move-result v0

    .line 734
    iget-object v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/AnimatedTextView;->setTextColor(I)V

    .line 735
    iget-object v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v2, Lorg/telegram/ui/Stories/DialogStoriesCell$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Stories/DialogStoriesCell$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-static {v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->forEachViews(Landroidx/recyclerview/widget/RecyclerView;Lcom/google/android/exoplayer2/util/Consumer;)V

    .line 740
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->listViewMini:Lorg/telegram/ui/Components/RecyclerListView;

    sget-object v1, Lorg/telegram/ui/Stories/DialogStoriesCell$$ExternalSyntheticLambda2;->INSTANCE:Lorg/telegram/ui/Stories/DialogStoriesCell$$ExternalSyntheticLambda2;

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->forEachViews(Landroidx/recyclerview/widget/RecyclerView;Lcom/google/android/exoplayer2/util/Consumer;)V

    return-void
.end method

.method public updateItems(ZZ)V
    .locals 7

    .line 342
    iget v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->overscrollPrgoress:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    if-nez p2, :cond_1

    .line 343
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->updateOnIdleState:Z

    return-void

    .line 346
    :cond_1
    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->oldItems:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 347
    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->oldItems:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->items:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 348
    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->oldMiniItems:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 349
    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->oldMiniItems:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->miniItems:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 350
    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->items:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 351
    iget p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->type:I

    if-eq p2, v1, :cond_2

    .line 352
    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->items:Ljava/util/ArrayList;

    new-instance v0, Lorg/telegram/ui/Stories/DialogStoriesCell$Item;

    iget v2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    invoke-direct {v0, p0, v2, v3}, Lorg/telegram/ui/Stories/DialogStoriesCell$Item;-><init>(Lorg/telegram/ui/Stories/DialogStoriesCell;J)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    :cond_2
    iget p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->type:I

    if-ne p2, v1, :cond_3

    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {p2}, Lorg/telegram/ui/Stories/StoriesController;->getHiddenList()Ljava/util/ArrayList;

    move-result-object p2

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {p2}, Lorg/telegram/ui/Stories/StoriesController;->getDialogListStories()Ljava/util/ArrayList;

    move-result-object p2

    :goto_0
    const/4 v0, 0x0

    move v2, v0

    .line 356
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 357
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_userStories;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    iget v5, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    .line 358
    iget-object v3, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->items:Ljava/util/ArrayList;

    new-instance v4, Lorg/telegram/ui/Stories/DialogStoriesCell$Item;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_userStories;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$TL_userStories;->user_id:J

    invoke-direct {v4, p0, v5, v6}, Lorg/telegram/ui/Stories/DialogStoriesCell$Item;-><init>(Lorg/telegram/ui/Stories/DialogStoriesCell;J)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 361
    :cond_5
    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->items:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 362
    iget-object v2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/StoriesController;->hasSelfStories()Z

    move-result v2

    if-nez v2, :cond_6

    add-int/lit8 p2, p2, -0x1

    .line 366
    :cond_6
    iget v2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->type:I

    if-ne v2, v1, :cond_7

    move v2, v1

    goto :goto_2

    :cond_7
    move v2, v0

    .line 367
    :goto_2
    iget-object v3, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v3, v2}, Lorg/telegram/ui/Stories/StoriesController;->getTotalStoriesCount(Z)I

    move-result v2

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 369
    iget-object v2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {v2}, Lorg/telegram/ui/Stories/StoriesController;->hasOnlySelfStories()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 370
    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->storiesController:Lorg/telegram/ui/Stories/StoriesController;

    invoke-virtual {p2}, Lorg/telegram/ui/Stories/StoriesController;->getUploadingStories()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_a

    .line 371
    sget p2, Lorg/telegram/messenger/R$string;->UploadingStory:I

    const-string v2, "UploadingStory"

    invoke-static {v2, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    const-string v2, "\u2026"

    .line 372
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_9

    .line 374
    iget-object v2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->uploadingString:Landroid/text/SpannableStringBuilder;

    if-nez v2, :cond_8

    .line 375
    invoke-static {p2}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    .line 376
    new-instance v2, Lorg/telegram/ui/Stories/UploadingDotsSpannable;

    invoke-direct {v2}, Lorg/telegram/ui/Stories/UploadingDotsSpannable;-><init>()V

    .line 377
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {p2, v2, v3, v4, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 378
    iget-object v3, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleView:Lorg/telegram/ui/Components/AnimatedTextView;

    invoke-virtual {v2, v3, v1}, Lorg/telegram/ui/Stories/UploadingDotsSpannable;->setParent(Landroid/view/View;Z)V

    .line 379
    iput-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->uploadingString:Landroid/text/SpannableStringBuilder;

    .line 381
    :cond_8
    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->uploadingString:Landroid/text/SpannableStringBuilder;

    iput-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentTitle:Ljava/lang/CharSequence;

    goto :goto_3

    .line 383
    :cond_9
    iput-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentTitle:Ljava/lang/CharSequence;

    goto :goto_3

    .line 386
    :cond_a
    sget p2, Lorg/telegram/messenger/R$string;->MyStory:I

    const-string v1, "MyStory"

    invoke-static {v1, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentTitle:Ljava/lang/CharSequence;

    goto :goto_3

    :cond_b
    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Stories"

    .line 389
    invoke-static {v2, p2, v1}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentTitle:Ljava/lang/CharSequence;

    .line 392
    :goto_3
    iget-boolean p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->hasOverlayText:Z

    if-nez p2, :cond_c

    .line 393
    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->titleView:Lorg/telegram/ui/Components/AnimatedTextView;

    iget-object v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentTitle:Ljava/lang/CharSequence;

    invoke-virtual {p2, v1, p1}, Lorg/telegram/ui/Components/AnimatedTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 396
    :cond_c
    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->miniItems:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 397
    :goto_4
    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->items:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v0, p2, :cond_f

    .line 398
    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->items:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/ui/Stories/DialogStoriesCell$Item;

    iget-wide v1, p2, Lorg/telegram/ui/Stories/DialogStoriesCell$Item;->dialogId:J

    iget p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    iget-wide v3, p2, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    cmp-long p2, v1, v3

    if-nez p2, :cond_d

    invoke-direct {p0}, Lorg/telegram/ui/Stories/DialogStoriesCell;->shouldDrawSelfInMini()Z

    move-result p2

    if-nez p2, :cond_d

    goto :goto_5

    .line 401
    :cond_d
    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->miniItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Stories/DialogStoriesCell$Item;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->miniItems:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v1, 0x3

    if-lt p2, v1, :cond_e

    goto :goto_6

    :cond_e
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_f
    :goto_6
    const/4 p2, 0x0

    if-eqz p1, :cond_11

    .line 409
    iget p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->currentState:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_10

    .line 410
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->listViewMini:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->miniItemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 411
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    goto :goto_7

    .line 413
    :cond_10
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->itemAnimator:Landroidx/recyclerview/widget/DefaultItemAnimator;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 414
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->listViewMini:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    goto :goto_7

    .line 417
    :cond_11
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 418
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->listViewMini:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 420
    :goto_7
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->adapter:Lorg/telegram/ui/Stories/DialogStoriesCell$Adapter;

    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->oldItems:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->items:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;->setItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 421
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->miniAdapter:Lorg/telegram/ui/Stories/DialogStoriesCell$Adapter;

    iget-object p2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->oldMiniItems:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->miniItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/ListView/AdapterWithDiffUtils;->setItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 423
    iget-object p1, p0, Lorg/telegram/ui/Stories/DialogStoriesCell;->oldItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 424
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
