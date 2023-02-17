.class public Lorg/telegram/ui/Components/ReactionsContainerLayout;
.super Landroid/widget/FrameLayout;
.source "ReactionsContainerLayout.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ReactionsContainerLayout$CustomReactionsContainer;,
        Lorg/telegram/ui/Components/ReactionsContainerLayout$InternalImageView;,
        Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;,
        Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;,
        Lorg/telegram/ui/Components/ReactionsContainerLayout$LeftRightShadowsListener;
    }
.end annotation


# static fields
.field public static final TRANSITION_PROGRESS_VALUE:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lorg/telegram/ui/Components/ReactionsContainerLayout;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private allReactionsAvailable:Z

.field private allReactionsIsDefault:Z

.field private allReactionsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;",
            ">;"
        }
    .end annotation
.end field

.field private animatePopup:Z

.field private final animationEnabled:Z

.field private bgPaint:Landroid/graphics/Paint;

.field public bigCircleOffset:I

.field private bigCircleRadius:F

.field cancelPressedAnimation:Landroid/animation/ValueAnimator;

.field private cancelPressedProgress:F

.field chatScrimPopupContainerLayout:Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;

.field private clicked:Z

.field private currentAccount:I

.field private customEmojiReactionsEnterProgress:F

.field private customEmojiReactionsIconView:Lorg/telegram/ui/Components/ReactionsContainerLayout$InternalImageView;

.field customReactionsContainer:Landroid/widget/FrameLayout;

.field private delegate:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;

.field public final durationScale:F

.field private flipVerticalProgress:F

.field fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

.field private isFlippedVertically:Z

.field lastReactionSentTime:J

.field private lastUpdate:J

.field lastVisibleViews:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field lastVisibleViewsTmp:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private leftAlpha:F

.field private leftShadowPaint:Landroid/graphics/Paint;

.field private linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private listAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field private location:[I

.field private mPath:Landroid/graphics/Path;

.field private messageObject:Lorg/telegram/messenger/MessageObject;

.field private mirrorX:Z

.field public nextRecentReaction:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

.field private otherViewsScale:F

.field parentLayout:Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;

.field premiumLockContainer:Landroid/widget/FrameLayout;

.field private premiumLockIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

.field private premiumLockedReactions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/telegram/tgnet/TLRPC$TL_availableReaction;",
            ">;"
        }
    .end annotation
.end field

.field private prepareAnimation:Z

.field private pressedProgress:F

.field private pressedReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

.field private pressedReactionPosition:I

.field private pressedViewScale:F

.field pullingDownBackAnimator:Landroid/animation/ValueAnimator;

.field pullingLeftOffset:F

.field public radius:F

.field reactionsWindow:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

.field public rect:Landroid/graphics/RectF;

.field public final recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

.field resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private rightAlpha:F

.field private rightShadowPaint:Landroid/graphics/Paint;

.field private selectedPaint:Landroid/graphics/Paint;

.field selectedReactions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;",
            ">;"
        }
    .end annotation
.end field

.field private shadow:Landroid/graphics/drawable/Drawable;

.field private shadowPad:Landroid/graphics/Rect;

.field skipDraw:Z

.field private smallCircleRadius:F

.field private transitionProgress:F

.field private visibleReactionsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;",
            ">;"
        }
    .end annotation
.end field

.field private waitingLoadingChatId:J


# direct methods
.method public static synthetic $r8$lambda$AyfSH1xaSj-IL5YEdAm1MOq_5VM(Lorg/telegram/ui/Components/ReactionsContainerLayout;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->lambda$showCustomEmojiReactionDialog$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$FZ1SlmzMXuDpg5zNzPms6GrULmQ(Lorg/telegram/ui/Components/ReactionsContainerLayout;Landroid/view/View;I)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->lambda$new$1(Landroid/view/View;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$XhrkrxtNHwR7EluC8gKp2Pq-rFM(Lorg/telegram/ui/Components/ReactionsContainerLayout;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->lambda$clearRecentReactions$4(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$fB7aNtB_mjQnmfRU2QygrF2m8Wg(Lorg/telegram/ui/Components/ReactionsContainerLayout;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->lambda$new$0(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$pDzuSeMQJzZ-QBiaiDUkC0XqhZo(Lorg/telegram/ui/Components/ReactionsContainerLayout;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->lambda$animatePullingBack$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 77
    new-instance v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$1;

    const-class v1, Ljava/lang/Float;

    const-string/jumbo v2, "transitionProgress"

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/ReactionsContainerLayout$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->TRANSITION_PROGRESS_VALUE:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 6

    .line 168
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 97
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->bgPaint:Landroid/graphics/Paint;

    .line 98
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->leftShadowPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rightShadowPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 101
    iput v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->transitionProgress:F

    .line 102
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rect:Landroid/graphics/RectF;

    .line 103
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->mPath:Landroid/graphics/Path;

    const/16 v2, 0x48

    .line 104
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->radius:F

    const/16 v2, 0x8

    .line 105
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->bigCircleRadius:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 106
    iput v3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->smallCircleRadius:F

    const/16 v3, 0x24

    .line 107
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->bigCircleOffset:I

    .line 121
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0x14

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->visibleReactionsList:Ljava/util/List;

    .line 122
    new-instance v3, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->premiumLockedReactions:Ljava/util/List;

    .line 123
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->allReactionsList:Ljava/util/List;

    .line 128
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->selectedReactions:Ljava/util/HashSet;

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 130
    iput-object v4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->location:[I

    .line 134
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->shadowPad:Landroid/graphics/Rect;

    .line 138
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 159
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->lastVisibleViews:Ljava/util/HashSet;

    .line 160
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->lastVisibleViewsTmp:Ljava/util/HashSet;

    .line 169
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "animator_duration_scale"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->durationScale:F

    .line 170
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->selectedPaint:Landroid/graphics/Paint;

    const-string v4, "listSelectorSDK21"

    .line 171
    invoke-static {v4, p4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 172
    iput-object p4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 173
    iput p3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->currentAccount:I

    .line 174
    iput-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 176
    new-instance p1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;-><init>(Lorg/telegram/ui/Components/ReactionsContainerLayout;Landroid/content/Context;Z)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->nextRecentReaction:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    .line 177
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 178
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->nextRecentReaction:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    iput-boolean v0, p1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->touchable:Z

    .line 179
    iget-object p1, p1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->pressedBackupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 181
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->nextRecentReaction:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 183
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->animationsEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->animationEnabled:Z

    .line 185
    sget p1, Lorg/telegram/messenger/R$drawable;->reactions_bubble_shadow:I

    invoke-static {p2, p1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->shadow:Landroid/graphics/drawable/Drawable;

    .line 186
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->shadowPad:Landroid/graphics/Rect;

    const/4 v1, 0x7

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    iput v1, p1, Landroid/graphics/Rect;->right:I

    iput v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 187
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->shadow:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string v2, "chat_messagePanelShadow"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 189
    new-instance p1, Lorg/telegram/ui/Components/ReactionsContainerLayout$2;

    invoke-direct {p1, p0, p2}, Lorg/telegram/ui/Components/ReactionsContainerLayout$2;-><init>(Lorg/telegram/ui/Components/ReactionsContainerLayout;Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 210
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 211
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 212
    new-instance v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$3;

    invoke-direct {v1, p0, p2, v0, v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$3;-><init>(Lorg/telegram/ui/Components/ReactionsContainerLayout;Landroid/content/Context;IZ)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 264
    new-instance v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$4;-><init>(Lorg/telegram/ui/Components/ReactionsContainerLayout;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 287
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 288
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 289
    new-instance v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$5;

    invoke-direct {v1, p0, p2}, Lorg/telegram/ui/Components/ReactionsContainerLayout$5;-><init>(Lorg/telegram/ui/Components/ReactionsContainerLayout;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->listAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 407
    new-instance p2, Lorg/telegram/ui/Components/ReactionsContainerLayout$LeftRightShadowsListener;

    const/4 v1, 0x0

    invoke-direct {p2, p0, v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout$LeftRightShadowsListener;-><init>(Lorg/telegram/ui/Components/ReactionsContainerLayout;Lorg/telegram/ui/Components/ReactionsContainerLayout$1;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 408
    new-instance p2, Lorg/telegram/ui/Components/ReactionsContainerLayout$6;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$6;-><init>(Lorg/telegram/ui/Components/ReactionsContainerLayout;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 442
    new-instance p2, Lorg/telegram/ui/Components/ReactionsContainerLayout$7;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$7;-><init>(Lorg/telegram/ui/Components/ReactionsContainerLayout;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 453
    new-instance p2, Lorg/telegram/ui/Components/ReactionsContainerLayout$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/ReactionsContainerLayout;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 459
    new-instance p2, Lorg/telegram/ui/Components/ReactionsContainerLayout$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/ReactionsContainerLayout;)V

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    const/4 p2, -0x1

    .line 467
    invoke-static {p2, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 468
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 469
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 470
    invoke-direct {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->invalidateShaders()V

    .line 472
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p1

    sub-int/2addr p2, p1

    .line 473
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->nextRecentReaction:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/16 v0, 0xc

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int v0, p2, v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 474
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->nextRecentReaction:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 476
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->bgPaint:Landroid/graphics/Paint;

    const-string p2, "actionBarDefaultSubmenuBackground"

    invoke-static {p2, p4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 477
    invoke-static {p3}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaDataController;->preloadDefaultReactions()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/ReactionsContainerLayout;)F
    .locals 0

    .line 75
    iget p0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->transitionProgress:F

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;
    .locals 0

    .line 75
    iget-object p0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Ljava/util/List;
    .locals 0

    .line 75
    iget-object p0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->visibleReactionsList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/ReactionsContainerLayout;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;
    .locals 0

    .line 75
    iput-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/ReactionsContainerLayout;FF)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->showUnlockPremium(FF)V

    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/ReactionsContainerLayout;)[I
    .locals 0

    .line 75
    iget-object p0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->location:[I

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/ReactionsContainerLayout;Landroid/view/View;F)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setChildScale(Landroid/view/View;F)V

    return-void
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 75
    iget-object p0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/ReactionsContainerLayout;)F
    .locals 0

    .line 75
    iget p0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->leftAlpha:F

    return p0
.end method

.method static synthetic access$1702(Lorg/telegram/ui/Components/ReactionsContainerLayout;F)F
    .locals 0

    .line 75
    iput p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->leftAlpha:F

    return p1
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/ReactionsContainerLayout;)F
    .locals 0

    .line 75
    iget p0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rightAlpha:F

    return p0
.end method

.method static synthetic access$1802(Lorg/telegram/ui/Components/ReactionsContainerLayout;F)F
    .locals 0

    .line 75
    iput p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rightAlpha:F

    return p1
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Landroid/graphics/Paint;
    .locals 0

    .line 75
    iget-object p0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rightShadowPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/ReactionsContainerLayout;)F
    .locals 0

    .line 75
    invoke-direct {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getPullingLeftProgress()F

    move-result p0

    return p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Landroid/graphics/Paint;
    .locals 0

    .line 75
    iget-object p0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->leftShadowPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->allReactionsIsDefault:Z

    return p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/ReactionsContainerLayout;)I
    .locals 0

    .line 75
    iget p0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->currentAccount:I

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->animationEnabled:Z

    return p0
.end method

.method static synthetic access$2402(Lorg/telegram/ui/Components/ReactionsContainerLayout;I)I
    .locals 0

    .line 75
    iput p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedReactionPosition:I

    return p1
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/ReactionsContainerLayout;)F
    .locals 0

    .line 75
    iget p0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedProgress:F

    return p0
.end method

.method static synthetic access$2502(Lorg/telegram/ui/Components/ReactionsContainerLayout;F)F
    .locals 0

    .line 75
    iput p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedProgress:F

    return p1
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;
    .locals 0

    .line 75
    iget-object p0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->delegate:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;

    return-object p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->clicked:Z

    return p0
.end method

.method static synthetic access$2702(Lorg/telegram/ui/Components/ReactionsContainerLayout;Z)Z
    .locals 0

    .line 75
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->clicked:Z

    return p1
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/ReactionsContainerLayout;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->cancelPressed()V

    return-void
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Landroid/graphics/Paint;
    .locals 0

    .line 75
    iget-object p0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->selectedPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/ReactionsContainerLayout;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->showCustomEmojiReactionDialog()V

    return-void
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/ReactionsContainerLayout;)F
    .locals 0

    .line 75
    iget p0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->cancelPressedProgress:F

    return p0
.end method

.method static synthetic access$3002(Lorg/telegram/ui/Components/ReactionsContainerLayout;F)F
    .locals 0

    .line 75
    iput p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->cancelPressedProgress:F

    return p1
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/ReactionsContainerLayout;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->animatePullingBack()V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 0

    .line 75
    iget-object p0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->listAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Z
    .locals 0

    .line 75
    invoke-direct {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->showUnlockPremiumButton()Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Lorg/telegram/ui/Components/Premium/PremiumLockIconView;
    .locals 0

    .line 75
    iget-object p0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->premiumLockIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    return-object p0
.end method

.method static synthetic access$702(Lorg/telegram/ui/Components/ReactionsContainerLayout;Lorg/telegram/ui/Components/Premium/PremiumLockIconView;)Lorg/telegram/ui/Components/Premium/PremiumLockIconView;
    .locals 0

    .line 75
    iput-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->premiumLockIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    return-object p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Lorg/telegram/ui/Components/ReactionsContainerLayout$InternalImageView;
    .locals 0

    .line 75
    iget-object p0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->customEmojiReactionsIconView:Lorg/telegram/ui/Components/ReactionsContainerLayout$InternalImageView;

    return-object p0
.end method

.method static synthetic access$802(Lorg/telegram/ui/Components/ReactionsContainerLayout;Lorg/telegram/ui/Components/ReactionsContainerLayout$InternalImageView;)Lorg/telegram/ui/Components/ReactionsContainerLayout$InternalImageView;
    .locals 0

    .line 75
    iput-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->customEmojiReactionsIconView:Lorg/telegram/ui/Components/ReactionsContainerLayout$InternalImageView;

    return-object p1
.end method

.method private animatePullingBack()V
    .locals 4

    .line 481
    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pullingLeftOffset:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    .line 482
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pullingDownBackAnimator:Landroid/animation/ValueAnimator;

    .line 483
    new-instance v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ReactionsContainerLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 490
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pullingDownBackAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 491
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pullingDownBackAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method private cancelPressed()V
    .locals 3

    .line 1511
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1512
    iput v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->cancelPressedProgress:F

    .line 1513
    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedProgress:F

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 1514
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->cancelPressedAnimation:Landroid/animation/ValueAnimator;

    .line 1515
    new-instance v2, Lorg/telegram/ui/Components/ReactionsContainerLayout$8;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$8;-><init>(Lorg/telegram/ui/Components/ReactionsContainerLayout;F)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1523
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->cancelPressedAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$9;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$9;-><init>(Lorg/telegram/ui/Components/ReactionsContainerLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1533
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->cancelPressedAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1534
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->cancelPressedAnimation:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1535
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->cancelPressedAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private checkPressedProgress(Landroid/graphics/Canvas;Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;)V
    .locals 9

    .line 834
    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pullingLeftOffset:F

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    .line 835
    invoke-direct {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getPullingLeftProgress()F

    move-result v0

    .line 836
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    const/16 v5, 0x22

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v3

    mul-float v3, v3, v0

    const/16 v0, 0x2e

    .line 837
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    mul-float v3, v3, v0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 839
    :goto_0
    iget-object v0, p2, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->currentReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iget-object v4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_8

    .line 840
    iget-object v0, p2, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p2, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    goto :goto_1

    :cond_1
    iget-object v0, p2, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 841
    :goto_1
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    shr-int/2addr v5, v4

    int-to-float v5, v5

    invoke-virtual {p2, v5}, Landroid/widget/FrameLayout;->setPivotX(F)V

    .line 842
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-virtual {p2, v5}, Landroid/widget/FrameLayout;->setPivotY(F)V

    .line 843
    iget v5, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedViewScale:F

    invoke-virtual {p2, v5}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 844
    iget v5, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedViewScale:F

    invoke-virtual {p2, v5}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 846
    iget-boolean v5, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->clicked:Z

    if-nez v5, :cond_5

    .line 847
    iget-object v5, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->cancelPressedAnimation:Landroid/animation/ValueAnimator;

    const/4 v6, 0x0

    if-nez v5, :cond_3

    .line 848
    iget-object v5, p2, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->pressedBackupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 849
    iget-object v5, p2, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->pressedBackupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v5, v1}, Landroid/view/View;->setAlpha(F)V

    .line 850
    iget-object v5, p2, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->pressedBackupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->hasBitmapImage()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p2, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->pressedBackupImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v5, v5, Lorg/telegram/ui/Components/BackupImageView;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p2, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->pressedBackupImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget-object v5, v5, Lorg/telegram/ui/Components/BackupImageView;->animatedEmojiDrawable:Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->hasBitmapImage()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 851
    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    .line 854
    :cond_3
    iget-object v5, p2, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->pressedBackupImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget v7, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->cancelPressedProgress:F

    sub-float v7, v1, v7

    invoke-virtual {v5, v7}, Landroid/view/View;->setAlpha(F)V

    .line 855
    iget v5, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->cancelPressedProgress:F

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 857
    :cond_4
    :goto_2
    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedProgress:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_5

    .line 858
    iput-boolean v4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->clicked:Z

    .line 859
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v7, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->lastReactionSentTime:J

    sub-long/2addr v0, v7

    const-wide/16 v7, 0x12c

    cmp-long v5, v0, v7

    if-lez v5, :cond_5

    .line 860
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->lastReactionSentTime:J

    .line 861
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->delegate:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;

    iget-object v1, p2, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->currentReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-interface {v0, p2, v1, v4, v6}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;->onReactionClicked(Landroid/view/View;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;ZZ)V

    .line 866
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 867
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getX()F

    move-result v1

    add-float/2addr v0, v1

    .line 868
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v4

    mul-float v1, v1, v4

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v1, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    sub-float v4, v0, v1

    cmpg-float v5, v4, v2

    if-gez v5, :cond_6

    .line 869
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v5

    cmpl-float v5, v5, v2

    if-ltz v5, :cond_6

    neg-float v0, v4

    sub-float/2addr v0, v3

    .line 870
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    goto :goto_3

    .line 871
    :cond_6
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v0

    add-float/2addr v4, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_7

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v4

    cmpg-float v4, v4, v2

    if-gtz v4, :cond_7

    .line 872
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v2, v0

    sub-float/2addr v2, v1

    sub-float/2addr v2, v3

    invoke-virtual {p2, v2}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    goto :goto_3

    :cond_7
    sub-float/2addr v2, v3

    .line 874
    invoke-virtual {p2, v2}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 876
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getX()F

    move-result v1

    add-float/2addr v0, v1

    .line 877
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getY()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 878
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v0

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getScaleY()F

    move-result v1

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getPivotX()F

    move-result v2

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getPivotY()F

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 879
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 880
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_5

    .line 882
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    .line 884
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v5, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedViewScale:F

    sub-float/2addr v5, v1

    mul-float v0, v0, v5

    const/high16 v5, 0x40400000    # 3.0f

    div-float/2addr v0, v5

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->otherViewsScale:F

    sub-float v6, v1, v6

    mul-float v5, v5, v6

    iget v6, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedReactionPosition:I

    sub-int/2addr v6, p1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    sub-int/2addr v6, v4

    int-to-float v4, v6

    mul-float v5, v5, v4

    sub-float/2addr v0, v5

    .line 886
    iget v4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedReactionPosition:I

    if-ge p1, v4, :cond_9

    .line 887
    invoke-virtual {p2, v2}, Landroid/widget/FrameLayout;->setPivotX(F)V

    neg-float p1, v0

    .line 888
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    goto :goto_4

    .line 890
    :cond_9
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p1, v3

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setPivotX(F)V

    sub-float/2addr v0, v3

    .line 891
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 893
    :goto_4
    iget-object p1, p2, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    iget-object v0, p2, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setPivotY(F)V

    .line 894
    iget p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->otherViewsScale:F

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 895
    iget p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->otherViewsScale:F

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 896
    iget-object p1, p2, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget v0, p2, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->sideScale:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 897
    iget-object p1, p2, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget v0, p2, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->sideScale:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 898
    iget-object p1, p2, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->pressedBackupImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 900
    iget-object p1, p2, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    :goto_5
    return-void
.end method

.method private checkPressedProgressForOtherViews(Landroid/view/View;)V
    .locals 5

    .line 817
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    .line 819
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedViewScale:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v2, v3

    mul-float v1, v1, v2

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    iget v4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->otherViewsScale:F

    sub-float/2addr v3, v4

    mul-float v2, v2, v3

    iget v3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedReactionPosition:I

    sub-int/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    mul-float v2, v2, v3

    sub-float/2addr v1, v2

    .line 821
    iget v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedReactionPosition:I

    if-ge v0, v2, :cond_0

    const/4 v0, 0x0

    .line 822
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    neg-float v0, v1

    .line 823
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    .line 825
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 826
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 828
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->otherViewsScale:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 829
    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->otherViewsScale:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private drawBubbles(Landroid/graphics/Canvas;FFFI)V
    .locals 9

    .line 790
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 792
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->flipVerticalProgress:F

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    iget v4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->transitionProgress:F

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v4

    mul-float v2, v2, v5

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    int-to-float v2, v2

    sub-float/2addr v0, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    const/16 v5, 0x8

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->expandSize()F

    move-result v6

    sub-float/2addr v5, v6

    iget v6, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->flipVerticalProgress:F

    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v6

    invoke-static {v4, v5, v6}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v4

    invoke-virtual {p1, v3, v0, v2, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 793
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->mirrorX:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    iget v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->bigCircleOffset:I

    sub-int/2addr v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->bigCircleOffset:I

    :goto_1
    int-to-float v0, v0

    .line 794
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->expandSize()F

    move-result v3

    add-float/2addr v2, v3

    .line 795
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->expandSize()F

    move-result v4

    sub-float/2addr v3, v4

    iget v4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->flipVerticalProgress:F

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v4

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    const/4 v3, 0x3

    .line 796
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    .line 797
    iget-object v4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->shadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 798
    iget-object v4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, p5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 799
    iget-object p5, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->shadow:Landroid/graphics/drawable/Drawable;

    sub-float v4, v0, p2

    int-to-float v3, v3

    mul-float v5, v3, p3

    sub-float/2addr v4, v5

    float-to-int v4, v4

    sub-float v6, v2, p2

    sub-float/2addr v6, v5

    float-to-int v6, v6

    add-float v7, v0, p2

    add-float/2addr v7, v5

    float-to-int v7, v7

    add-float v8, v2, p2

    add-float/2addr v8, v5

    float-to-int v5, v8

    invoke-virtual {p5, v4, v6, v7, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 800
    iget-object p5, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->shadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 801
    iget-object p5, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, p2, p5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 803
    sget-boolean p5, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez p5, :cond_3

    iget-boolean p5, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->mirrorX:Z

    if-eqz p5, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p5

    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->bigCircleOffset:I

    sub-int/2addr p5, v0

    int-to-float p5, p5

    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->bigCircleRadius:F

    add-float/2addr p5, v0

    goto :goto_3

    :cond_3
    :goto_2
    iget p5, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->bigCircleOffset:I

    int-to-float p5, p5

    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->bigCircleRadius:F

    sub-float/2addr p5, v0

    .line 804
    :goto_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->smallCircleRadius:F

    sub-float/2addr v0, v2

    sub-float/2addr v0, v3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->expandSize()F

    move-result v2

    add-float/2addr v0, v2

    .line 805
    iget v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->smallCircleRadius:F

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->expandSize()F

    move-result v3

    sub-float/2addr v2, v3

    iget v3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->flipVerticalProgress:F

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v1

    invoke-static {v0, v2, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    const/4 v1, 0x1

    .line 806
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    neg-int v1, v1

    .line 807
    iget-object v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->shadow:Landroid/graphics/drawable/Drawable;

    sub-float v3, p5, p2

    int-to-float v1, v1

    mul-float v1, v1, p3

    sub-float/2addr v3, v1

    float-to-int p3, v3

    sub-float v3, v0, p2

    sub-float/2addr v3, v1

    float-to-int v3, v3

    add-float v4, p5, p2

    add-float/2addr v4, v1

    float-to-int v4, v4

    add-float/2addr p2, v0

    add-float/2addr p2, v1

    float-to-int p2, p2

    invoke-virtual {v2, p3, v3, v4, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 808
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->shadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 809
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p5, v0, p4, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 810
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 812
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->shadow:Landroid/graphics/drawable/Drawable;

    const/16 p2, 0xff

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 813
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method private fillRecentReactionsList(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;",
            ">;)V"
        }
    .end annotation

    .line 989
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->allReactionsAvailable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 991
    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->getEnabledReactionsList()Ljava/util/List;

    move-result-object v0

    .line 992
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 993
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    invoke-static {v2}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromEmojicon(Lorg/telegram/tgnet/TLRPC$TL_availableReaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v2

    .line 994
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 998
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->getTopReactions()Ljava/util/ArrayList;

    move-result-object v0

    .line 999
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1001
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_5

    .line 1002
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-static {v5}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTLReaction(Lorg/telegram/tgnet/TLRPC$Reaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v5

    .line 1003
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    iget v6, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v6

    if-nez v6, :cond_2

    iget-wide v6, v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-nez v10, :cond_3

    .line 1004
    :cond_2
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1005
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    :cond_3
    const/16 v5, 0x10

    if-ne v4, v5, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1013
    :cond_5
    :goto_2
    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->getRecentReactions()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v3, 0x0

    .line 1014
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 1015
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-static {v4}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTLReaction(Lorg/telegram/tgnet/TLRPC$Reaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v4

    .line 1016
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1017
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1018
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1023
    :cond_7
    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->getEnabledReactionsList()Ljava/util/List;

    move-result-object v0

    .line 1024
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_9

    .line 1025
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    invoke-static {v3}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromEmojicon(Lorg/telegram/tgnet/TLRPC$TL_availableReaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v3

    .line 1026
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 1027
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1028
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_9
    return-void
.end method

.method private getPullingLeftProgress()F
    .locals 3

    .line 905
    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pullingLeftOffset:F

    const/16 v1, 0x2a

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    return v0
.end method

.method private invalidateShaders()V
    .locals 13

    const/16 v0, 0x18

    .line 918
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    .line 919
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const-string v2, "actionBarDefaultSubmenuBackground"

    .line 920
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    .line 921
    iget-object v11, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->leftShadowPaint:Landroid/graphics/Paint;

    new-instance v12, Landroid/graphics/LinearGradient;

    int-to-float v6, v0

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v4, 0x0

    const/4 v9, 0x0

    move-object v3, v12

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 922
    iget-object v11, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rightShadowPaint:Landroid/graphics/Paint;

    new-instance v12, Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    int-to-float v4, v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    sub-int/2addr v3, v0

    int-to-float v6, v3

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v3, v12

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 923
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private synthetic lambda$animatePullingBack$2(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 484
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pullingDownBackAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pullingLeftOffset:F

    .line 485
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->customReactionsContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    .line 486
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 488
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private synthetic lambda$clearRecentReactions$4(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1133
    iget p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaDataController;->clearRecentReactions()V

    .line 1134
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1135
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->fillRecentReactionsList(Ljava/util/List;)V

    .line 1136
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setVisibleReactionsList(Ljava/util/List;)V

    .line 1137
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->lastVisibleViews:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->clear()V

    .line 1138
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->reactionsWindow:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->setRecentReactions(Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;I)V
    .locals 1

    .line 454
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->delegate:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;

    if-eqz p2, :cond_0

    instance-of v0, p1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    if-eqz v0, :cond_0

    .line 455
    check-cast p1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    .line 456
    iget-object p1, p1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->currentReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    const/4 v0, 0x0

    invoke-interface {p2, p0, p1, v0, v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;->onReactionClicked(Landroid/view/View;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;ZZ)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;I)Z
    .locals 2

    .line 460
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->delegate:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    instance-of v1, p1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    if-eqz v1, :cond_0

    .line 461
    check-cast p1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    .line 462
    iget-object p1, p1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->currentReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    const/4 v1, 0x1

    invoke-interface {p2, p0, p1, v1, v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;->onReactionClicked(Landroid/view/View;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;ZZ)V

    return v1

    :cond_0
    return v0
.end method

.method private synthetic lambda$showCustomEmojiReactionDialog$3()V
    .locals 1

    const/4 v0, 0x0

    .line 501
    iput-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->reactionsWindow:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    return-void
.end method

.method private setChildScale(Landroid/view/View;F)V
    .locals 1

    .line 520
    instance-of v0, p1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    if-eqz v0, :cond_0

    .line 521
    check-cast p1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    iput p2, p1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->sideScale:F

    goto :goto_0

    .line 523
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 524
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    :goto_0
    return-void
.end method

.method private setVisibleReactionsList(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;",
            ">;)V"
        }
    .end annotation

    .line 548
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->visibleReactionsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 549
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->showCustomEmojiReaction()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 551
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    const/16 v3, 0x24

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v0, v3

    const/16 v3, 0x22

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    div-int/2addr v0, v3

    const/4 v3, 0x7

    if-le v0, v3, :cond_0

    const/4 v0, 0x7

    :cond_0
    if-ge v0, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    const/4 v3, 0x0

    .line 558
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 559
    iget-object v4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->visibleReactionsList:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 561
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    .line 562
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->nextRecentReaction:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    const/4 v4, -0x1

    invoke-static {v0, v3, v4}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->access$900(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;I)V

    goto :goto_1

    .line 565
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->visibleReactionsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 567
    :cond_4
    :goto_1
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->allReactionsIsDefault:Z

    const/4 v0, 0x0

    .line 568
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->visibleReactionsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 569
    iget-object v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->visibleReactionsList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iget-wide v2, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_5

    .line 570
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->allReactionsIsDefault:Z

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 573
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->allReactionsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 574
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->allReactionsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 576
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 577
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    mul-int v0, v0, p1

    const/16 p1, 0xc8

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    if-ge v0, p1, :cond_7

    .line 578
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v0, -0x2

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 581
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->listAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private showCustomEmojiReactionDialog()V
    .locals 7

    .line 496
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->reactionsWindow:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    if-eqz v0, :cond_0

    return-void

    .line 499
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget-object v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->allReactionsList:Ljava/util/List;

    iget-object v4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->selectedReactions:Ljava/util/HashSet;

    iget-object v6, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v1, v0

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Ljava/util/List;Ljava/util/HashSet;Lorg/telegram/ui/Components/ReactionsContainerLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->reactionsWindow:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    .line 500
    new-instance v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/ReactionsContainerLayout;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->onDismissListener(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showUnlockPremium(FF)V
    .locals 2

    .line 515
    new-instance p1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-direct {p1, p2, v0, v1}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    .line 516
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->show()V

    return-void
.end method

.method private showUnlockPremiumButton()Z
    .locals 1

    .line 511
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->premiumLockedReactions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController;->premiumLocked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public clearRecentReactions()V
    .locals 3

    .line 1129
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lorg/telegram/messenger/R$string;->ClearRecentReactionsAlertTitle:I

    .line 1130
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->ClearRecentReactionsAlertMessage:I

    .line 1131
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->ClearButton:I

    .line 1132
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/ReactionsContainerLayout$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ReactionsContainerLayout;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    .line 1140
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    .line 1141
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    .line 1142
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    const/4 v1, -0x1

    .line 1143
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const-string v1, "dialogTextRed2"

    .line 1145
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 4

    .line 1559
    sget p2, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    .line 1560
    aget-object p2, p3, p1

    check-cast p2, Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 1561
    iget-wide v0, p2, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    iget-wide v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->waitingLoadingChatId:J

    cmp-long p3, v0, v2

    if-nez p3, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p3

    if-eqz p3, :cond_0

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$ChatFull;->available_reactions:Lorg/telegram/tgnet/TLRPC$ChatReactions;

    instance-of p2, p2, Lorg/telegram/tgnet/TLRPC$TL_chatReactionsNone;

    if-nez p2, :cond_0

    .line 1562
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->messageObject:Lorg/telegram/messenger/MessageObject;

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p3}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setMessage(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 1563
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1564
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->startEnterAnimation(Z)V

    :cond_0
    return-void
.end method

.method public dismissParent(Z)V
    .locals 1

    .line 1081
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->reactionsWindow:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    if-eqz v0, :cond_0

    .line 1082
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->dismiss(Z)V

    const/4 p1, 0x0

    .line 1083
    iput-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->reactionsWindow:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 587
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->lastUpdate:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x10

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 588
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->lastUpdate:J

    .line 590
    iget-boolean v2, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->isFlippedVertically:Z

    const/high16 v3, 0x435c0000    # 220.0f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v2, :cond_0

    iget v8, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->flipVerticalProgress:F

    cmpl-float v9, v8, v5

    if-eqz v9, :cond_0

    long-to-float v0, v0

    div-float/2addr v0, v3

    add-float/2addr v8, v0

    .line 591
    invoke-static {v5, v8}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->flipVerticalProgress:F

    .line 592
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    .line 593
    iget v2, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->flipVerticalProgress:F

    cmpl-float v8, v2, v4

    if-eqz v8, :cond_1

    long-to-float v0, v0

    div-float/2addr v0, v3

    sub-float/2addr v2, v0

    .line 594
    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->flipVerticalProgress:F

    .line 595
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 598
    :cond_1
    :goto_0
    iget v0, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->transitionProgress:F

    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sub-float/2addr v0, v1

    const/high16 v2, 0x3f400000    # 0.75f

    div-float v3, v0, v2

    .line 599
    iget v0, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->bigCircleRadius:F

    mul-float v2, v0, v3

    iget v0, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->smallCircleRadius:F

    mul-float v8, v0, v3

    .line 601
    iget-object v0, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->lastVisibleViewsTmp:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 602
    iget-object v0, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->lastVisibleViewsTmp:Ljava/util/HashSet;

    iget-object v9, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->lastVisibleViews:Ljava/util/HashSet;

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 603
    iget-object v0, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->lastVisibleViews:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 605
    iget-boolean v0, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->prepareAnimation:Z

    if-eqz v0, :cond_2

    .line 606
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 609
    :cond_2
    iget-object v0, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    if-eqz v0, :cond_4

    .line 610
    iget v0, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedProgress:F

    cmpl-float v9, v0, v5

    if-eqz v9, :cond_4

    const v9, 0x3c2ec33e

    add-float/2addr v0, v9

    .line 611
    iput v0, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedProgress:F

    cmpl-float v0, v0, v5

    if-ltz v0, :cond_3

    .line 613
    iput v5, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedProgress:F

    .line 615
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 620
    :cond_4
    iget v0, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedProgress:F

    const/high16 v9, 0x40000000    # 2.0f

    mul-float v10, v0, v9

    add-float/2addr v10, v5

    iput v10, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedViewScale:F

    const v10, 0x3e19999a    # 0.15f

    mul-float v0, v0, v10

    sub-float v0, v5, v0

    .line 621
    iput v0, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->otherViewsScale:F

    .line 623
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 624
    sget-boolean v10, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v10, :cond_6

    iget-boolean v10, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->mirrorX:Z

    if-eqz v10, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x3f600000    # 0.875f

    goto :goto_2

    :cond_6
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x3e000000    # 0.125f

    :goto_2
    mul-float v10, v10, v11

    .line 626
    iget v11, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->transitionProgress:F

    cmpl-float v12, v11, v5

    if-eqz v12, :cond_7

    .line 628
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v9

    invoke-virtual {v7, v11, v11, v10, v12}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 632
    :cond_7
    sget-boolean v11, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v11, :cond_9

    iget-boolean v11, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->mirrorX:Z

    if-eqz v11, :cond_8

    goto :goto_3

    .line 635
    :cond_8
    iget v11, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->transitionProgress:F

    invoke-static {v1, v11}, Ljava/lang/Math;->max(FF)F

    move-result v1

    sub-float v1, v5, v1

    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_4

    .line 633
    :cond_9
    :goto_3
    iget v11, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->transitionProgress:F

    invoke-static {v1, v11}, Ljava/lang/Math;->max(FF)F

    move-result v1

    move v11, v1

    const/4 v1, 0x0

    .line 637
    :goto_4
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getPullingLeftProgress()F

    move-result v12

    .line 638
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->expandSize()F

    move-result v13

    .line 639
    iget-object v14, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->chatScrimPopupContainerLayout:Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;

    if-eqz v14, :cond_a

    .line 640
    invoke-virtual {v14, v13}, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->setExpandSize(F)V

    .line 642
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v15

    sub-int/2addr v14, v15

    int-to-float v14, v14

    invoke-static {v5, v1}, Ljava/lang/Math;->min(FF)F

    move-result v15

    mul-float v14, v14, v15

    .line 643
    iget-object v15, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rect:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v14

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v9

    int-to-float v9, v9

    iget-object v5, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    move/from16 v17, v14

    iget v14, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->otherViewsScale:F

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v14, v16, v14

    mul-float v5, v5, v14

    add-float/2addr v9, v5

    sub-float/2addr v9, v13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v14

    sub-int/2addr v5, v14

    int-to-float v5, v5

    mul-float v5, v5, v11

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v18

    sub-int v14, v14, v18

    int-to-float v14, v14

    add-float/2addr v14, v13

    invoke-virtual {v15, v4, v9, v5, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 644
    iget-object v4, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v9, v13, v5

    sub-float/2addr v4, v9

    div-float/2addr v4, v5

    iput v4, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->radius:F

    .line 645
    iget-object v4, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->shadow:Landroid/graphics/drawable/Drawable;

    iget v5, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->customEmojiReactionsEnterProgress:F

    const v9, 0x3d4ccccd    # 0.05f

    div-float/2addr v5, v9

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v5, v9, v5

    const/4 v14, 0x0

    invoke-static {v5, v9, v14}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v5

    const/high16 v9, 0x437f0000    # 255.0f

    mul-float v5, v5, v9

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 646
    iget-object v4, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->shadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v15

    sub-int/2addr v14, v15

    iget-object v15, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->shadowPad:Landroid/graphics/Rect;

    iget v9, v15, Landroid/graphics/Rect;->right:I

    add-int/2addr v14, v9

    int-to-float v9, v14

    mul-float v9, v9, v1

    add-float/2addr v5, v9

    iget v1, v15, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float/2addr v5, v1

    float-to-int v1, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v5

    iget-object v9, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->shadowPad:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v9

    float-to-int v9, v13

    sub-int/2addr v5, v9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v14

    sub-int/2addr v13, v14

    iget-object v14, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->shadowPad:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    add-int/2addr v13, v14

    int-to-float v13, v13

    mul-float v13, v13, v11

    float-to-int v11, v13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v14

    sub-int/2addr v13, v14

    iget-object v14, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->shadowPad:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v13, v14

    add-int/2addr v13, v9

    invoke-virtual {v4, v1, v5, v11, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 647
    iget-object v1, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->shadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 649
    invoke-virtual {v7, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 651
    iget-boolean v0, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->skipDraw:Z

    if-nez v0, :cond_c

    .line 652
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 653
    iget v1, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->transitionProgress:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v5, v1, v4

    if-eqz v5, :cond_b

    .line 655
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v7, v1, v1, v10, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 657
    :cond_b
    iget-object v1, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rect:Landroid/graphics/RectF;

    iget v4, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->radius:F

    iget-object v5, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v4, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 658
    invoke-virtual {v7, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 661
    :cond_c
    iget-object v0, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 662
    iget-object v0, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->mPath:Landroid/graphics/Path;

    iget-object v1, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rect:Landroid/graphics/RectF;

    iget v4, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->radius:F

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v4, v4, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 664
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 665
    iget v1, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->transitionProgress:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v5, v1, v4

    if-eqz v5, :cond_d

    .line 667
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v7, v1, v1, v10, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 670
    :cond_d
    iget v1, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->transitionProgress:F

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_20

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v1

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v4

    if-nez v1, :cond_20

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 673
    :goto_5
    iget-object v11, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    if-ge v5, v11, :cond_1d

    .line 674
    iget-object v11, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v11, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 675
    iget v13, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->transitionProgress:F

    cmpl-float v13, v13, v4

    if-eqz v13, :cond_e

    .line 676
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v10, v13

    add-float/2addr v4, v10

    const/high16 v10, 0x43480000    # 200.0f

    .line 677
    iget-object v13, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v4, v13

    const v13, 0x3f4ccccd    # 0.8f

    sub-float/2addr v4, v13

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float v4, v4, v10

    float-to-int v10, v4

    .line 679
    :cond_e
    instance-of v4, v11, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    if-eqz v4, :cond_14

    .line 680
    iget-object v4, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    .line 681
    invoke-direct {v6, v7, v4}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->checkPressedProgress(Landroid/graphics/Canvas;Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;)V

    .line 682
    iget-boolean v11, v4, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->hasEnterAnimation:Z

    if-eqz v11, :cond_10

    iget-object v11, v4, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v11}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v11

    if-nez v11, :cond_10

    :cond_f
    :goto_6
    const/high16 v14, 0x40000000    # 2.0f

    goto/16 :goto_a

    .line 685
    :cond_10
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getX()F

    move-result v11

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v13

    int-to-float v13, v13

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    add-float/2addr v11, v13

    const/4 v13, 0x0

    cmpl-float v11, v11, v13

    if-lez v11, :cond_12

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getX()F

    move-result v11

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v14

    add-float/2addr v11, v13

    iget-object v13, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getWidth()I

    move-result v13

    int-to-float v13, v13

    cmpg-float v11, v11, v13

    if-gez v11, :cond_12

    .line 686
    iget-object v11, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->lastVisibleViewsTmp:Ljava/util/HashSet;

    invoke-virtual {v11, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_11

    .line 687
    invoke-virtual {v4, v10}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->play(I)Z

    add-int/lit8 v10, v10, 0x1e

    .line 690
    :cond_11
    iget-object v11, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->lastVisibleViews:Ljava/util/HashSet;

    invoke-virtual {v11, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 691
    :cond_12
    invoke-static {v4}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->access$1500(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;)Z

    move-result v11

    if-nez v11, :cond_13

    .line 692
    invoke-virtual {v4}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->resetAnimation()V

    .line 694
    :cond_13
    :goto_7
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v11

    if-le v11, v9, :cond_f

    .line 695
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v4

    move v9, v4

    goto :goto_6

    .line 698
    :cond_14
    iget-object v4, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->premiumLockContainer:Landroid/widget/FrameLayout;

    if-ne v11, v4, :cond_18

    .line 699
    invoke-virtual {v11}, Landroid/view/View;->getX()F

    move-result v4

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    int-to-float v13, v13

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    add-float/2addr v4, v13

    const/4 v13, 0x0

    cmpl-float v4, v4, v13

    if-lez v4, :cond_17

    invoke-virtual {v11}, Landroid/view/View;->getX()F

    move-result v4

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v14

    add-float/2addr v4, v13

    iget-object v13, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getWidth()I

    move-result v13

    int-to-float v13, v13

    cmpg-float v4, v4, v13

    if-gez v4, :cond_17

    .line 700
    iget-object v4, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->lastVisibleViewsTmp:Ljava/util/HashSet;

    invoke-virtual {v4, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 701
    iget v4, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->transitionProgress:F

    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v13

    if-eqz v4, :cond_15

    .line 702
    iget-object v4, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->premiumLockIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->resetAnimation()V

    .line 704
    :cond_15
    iget-object v4, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->premiumLockIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->play(I)V

    add-int/lit8 v10, v10, 0x1e

    .line 707
    :cond_16
    iget-object v4, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->lastVisibleViews:Ljava/util/HashSet;

    invoke-virtual {v4, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 709
    :cond_17
    iget-object v4, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->premiumLockIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->resetAnimation()V

    .line 712
    :cond_18
    :goto_8
    iget-object v4, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->customReactionsContainer:Landroid/widget/FrameLayout;

    if-ne v11, v4, :cond_1c

    .line 713
    invoke-virtual {v11}, Landroid/view/View;->getX()F

    move-result v4

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    int-to-float v13, v13

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    add-float/2addr v4, v13

    const/4 v13, 0x0

    cmpl-float v4, v4, v13

    if-lez v4, :cond_1b

    invoke-virtual {v11}, Landroid/view/View;->getX()F

    move-result v4

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v14

    add-float/2addr v4, v13

    iget-object v13, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getWidth()I

    move-result v13

    int-to-float v13, v13

    cmpg-float v4, v4, v13

    if-gez v4, :cond_1b

    .line 714
    iget-object v4, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->lastVisibleViewsTmp:Ljava/util/HashSet;

    invoke-virtual {v4, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    .line 715
    iget v4, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->transitionProgress:F

    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v13

    if-eqz v4, :cond_19

    .line 716
    iget-object v4, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->customEmojiReactionsIconView:Lorg/telegram/ui/Components/ReactionsContainerLayout$InternalImageView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ReactionsContainerLayout$InternalImageView;->resetAnimation()V

    .line 718
    :cond_19
    iget-object v4, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->customEmojiReactionsIconView:Lorg/telegram/ui/Components/ReactionsContainerLayout$InternalImageView;

    invoke-virtual {v4, v10}, Lorg/telegram/ui/Components/ReactionsContainerLayout$InternalImageView;->play(I)V

    add-int/lit8 v10, v10, 0x1e

    .line 721
    :cond_1a
    iget-object v4, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->lastVisibleViews:Ljava/util/HashSet;

    invoke-virtual {v4, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 723
    :cond_1b
    iget-object v4, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->customEmojiReactionsIconView:Lorg/telegram/ui/Components/ReactionsContainerLayout$InternalImageView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ReactionsContainerLayout$InternalImageView;->resetAnimation()V

    goto :goto_9

    :cond_1c
    const/high16 v14, 0x40000000    # 2.0f

    .line 726
    :goto_9
    invoke-direct {v6, v11}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->checkPressedProgressForOtherViews(Landroid/view/View;)V

    :goto_a
    add-int/lit8 v5, v5, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    goto/16 :goto_5

    :cond_1d
    const/4 v4, 0x0

    cmpl-float v5, v12, v4

    if-lez v5, :cond_1f

    .line 730
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getPullingLeftProgress()F

    move-result v4

    const/16 v5, 0x20

    .line 731
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    .line 732
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v10

    const/16 v11, 0x22

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    sub-int/2addr v10, v11

    int-to-float v10, v10

    div-float v10, v9, v10

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v10, v12, v11}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v10

    mul-float v10, v10, v4

    .line 733
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    mul-float v10, v10, v5

    .line 735
    iget-object v5, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->nextRecentReaction:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1e

    .line 736
    iget-object v5, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->nextRecentReaction:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 737
    iget-object v5, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->nextRecentReaction:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->resetAnimation()V

    .line 738
    iget-object v5, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->nextRecentReaction:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    invoke-virtual {v5, v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->play(I)Z

    :cond_1e
    const/4 v5, 0x0

    .line 740
    invoke-static {v4, v12, v5}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v4

    .line 741
    iget-object v5, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->nextRecentReaction:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 742
    iget-object v5, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->nextRecentReaction:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    invoke-virtual {v5, v4}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 743
    iget-object v4, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->nextRecentReaction:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    iget-object v5, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getX()F

    move-result v5

    add-float/2addr v5, v9

    sub-float/2addr v5, v10

    const/16 v9, 0x14

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v5, v9

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 744
    iget-object v4, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->nextRecentReaction:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_b

    .line 746
    :cond_1f
    iget-object v1, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->nextRecentReaction:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 747
    iget-object v1, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->nextRecentReaction:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 748
    iget-object v1, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->nextRecentReaction:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 753
    :cond_20
    :goto_b
    iget-boolean v1, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->skipDraw:Z

    if-eqz v1, :cond_21

    iget-object v1, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->reactionsWindow:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    if-eqz v1, :cond_21

    .line 754
    iget v0, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->customEmojiReactionsEnterProgress:F

    const v1, 0x3e4ccccd    # 0.2f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v5, v1, v0

    const/4 v0, 0x0

    invoke-static {v5, v1, v0}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    iget v4, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->customEmojiReactionsEnterProgress:F

    sub-float v5, v1, v4

    mul-float v0, v0, v5

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v0, v0, v1

    float-to-int v5, v0

    .line 755
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v4, v8

    .line 756
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->drawBubbles(Landroid/graphics/Canvas;FFFI)V

    .line 757
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    .line 761
    :cond_21
    iget-object v1, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->mPath:Landroid/graphics/Path;

    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 762
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v1, :cond_23

    iget-boolean v1, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->mirrorX:Z

    if-eqz v1, :cond_22

    goto :goto_c

    :cond_22
    const/4 v1, 0x1

    goto :goto_d

    :cond_23
    :goto_c
    const/4 v1, -0x1

    :goto_d
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    mul-int v1, v1, v4

    int-to-float v1, v1

    iget v4, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->transitionProgress:F

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v4, v5, v4

    mul-float v1, v1, v4

    const/4 v4, 0x0

    invoke-virtual {v7, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 763
    iget-object v1, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    move/from16 v14, v17

    neg-float v5, v14

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 764
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 766
    iget-object v1, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->leftShadowPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_24

    .line 767
    iget v1, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->leftAlpha:F

    iget v5, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->transitionProgress:F

    mul-float v1, v1, v5

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v1, v5, v4}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    .line 768
    iget-object v4, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->leftShadowPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float v1, v1, v5

    float-to-int v1, v1

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 769
    iget-object v1, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rect:Landroid/graphics/RectF;

    iget-object v4, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->leftShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 771
    :cond_24
    iget-object v1, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rightShadowPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_25

    .line 772
    iget v1, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rightAlpha:F

    iget v4, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->transitionProgress:F

    mul-float v1, v1, v4

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v1, v5, v4}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    .line 773
    iget-object v4, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rightShadowPaint:Landroid/graphics/Paint;

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float v1, v1, v5

    float-to-int v1, v1

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 774
    iget-object v1, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rect:Landroid/graphics/RectF;

    iget-object v4, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rightShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 776
    :cond_25
    invoke-virtual {v7, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    const/16 v5, 0xff

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v4, v8

    .line 778
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->drawBubbles(Landroid/graphics/Canvas;FFFI)V

    .line 779
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public drawBubbles(Landroid/graphics/Canvas;)V
    .locals 9

    .line 783
    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->transitionProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sub-float/2addr v0, v2

    const/high16 v2, 0x3f400000    # 0.75f

    div-float v6, v0, v2

    .line 784
    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->bigCircleRadius:F

    mul-float v5, v0, v6

    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->smallCircleRadius:F

    mul-float v7, v0, v6

    .line 785
    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->customEmojiReactionsEnterProgress:F

    const v2, 0x3e4ccccd    # 0.2f

    div-float/2addr v0, v2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    iget v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->customEmojiReactionsEnterProgress:F

    sub-float/2addr v1, v2

    mul-float v0, v0, v1

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v0, v0, v1

    float-to-int v8, v0

    move-object v3, p0

    move-object v4, p1

    .line 786
    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->drawBubbles(Landroid/graphics/Canvas;FFFI)V

    return-void
.end method

.method public expandSize()F
    .locals 2

    .line 1666
    invoke-direct {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getPullingLeftProgress()F

    move-result v0

    const/4 v1, 0x6

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    return v0
.end method

.method public getItemsCount()I
    .locals 2

    .line 1069
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->visibleReactionsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->showCustomEmojiReaction()Z

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getTotalWidth()I
    .locals 3

    .line 1060
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getItemsCount()I

    move-result v0

    .line 1061
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->showCustomEmojiReaction()Z

    move-result v1

    const/16 v2, 0x24

    if-nez v1, :cond_0

    .line 1062
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    mul-int v1, v1, v0

    const/4 v2, 0x2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/lit8 v0, v0, -0x1

    mul-int v2, v2, v0

    add-int/2addr v1, v2

    const/16 v0, 0x10

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr v1, v0

    return v1

    .line 1064
    :cond_0
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    mul-int v1, v1, v0

    const/4 v0, 0x4

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method public isFlippedVertically()Z
    .locals 1

    .line 533
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->isFlippedVertically:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1547
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1548
    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onCustomEmojiWindowOpened()V
    .locals 0

    .line 1125
    invoke-direct {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->animatePullingBack()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1553
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1554
    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onReactionClicked(Landroid/view/View;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;Z)V
    .locals 2

    .line 1088
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->delegate:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 1089
    invoke-interface {v0, p1, p2, p3, v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;->onReactionClicked(Landroid/view/View;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;ZZ)V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 910
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 911
    invoke-direct {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->invalidateShaders()V

    return-void
.end method

.method public prepareAnimation(Z)V
    .locals 0

    .line 1096
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->prepareAnimation:Z

    .line 1097
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setAlpha(F)V
    .locals 2

    .line 1571
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    .line 1572
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->lastVisibleViews:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    const/4 v0, 0x0

    .line 1573
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1574
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    if-eqz v1, :cond_0

    .line 1575
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    .line 1576
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->resetAnimation()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1580
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method public setChatScrimView(Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;)V
    .locals 0

    .line 1152
    iput-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->chatScrimPopupContainerLayout:Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;

    return-void
.end method

.method public setCustomEmojiEnterProgress(F)V
    .locals 2

    .line 1073
    iput p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->customEmojiReactionsEnterProgress:F

    .line 1074
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->chatScrimPopupContainerLayout:Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;

    if-eqz v0, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    .line 1075
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->setPopupAlpha(F)V

    .line 1077
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;)V
    .locals 0

    .line 529
    iput-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->delegate:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;

    return-void
.end method

.method public setFlippedVertically(Z)V
    .locals 0

    .line 537
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->isFlippedVertically:Z

    .line 538
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setMessage(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 6

    .line 935
    iput-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->messageObject:Lorg/telegram/messenger/MessageObject;

    .line 937
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 938
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isForwardedChannelPost()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 939
    iget p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v4

    neg-long v4, v4

    invoke-virtual {p2, v4, v5}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p2

    if-nez p2, :cond_0

    .line 941
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v0

    neg-long v0, v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->waitingLoadingChatId:J

    .line 942
    iget p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v0

    neg-long v0, v0

    invoke-virtual {p2, v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->loadFullChat(JIZ)V

    const/4 p1, 0x4

    .line 943
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void

    :cond_0
    if-eqz p2, :cond_7

    .line 948
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$ChatFull;->available_reactions:Lorg/telegram/tgnet/TLRPC$ChatReactions;

    instance-of v4, v1, Lorg/telegram/tgnet/TLRPC$TL_chatReactionsAll;

    if-eqz v4, :cond_2

    .line 949
    iget v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v4, p2, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1, p2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 950
    invoke-static {p2}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 951
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->allReactionsAvailable:Z

    goto :goto_0

    .line 953
    :cond_1
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->allReactionsAvailable:Z

    .line 955
    :goto_0
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->fillRecentReactionsList(Ljava/util/List;)V

    goto/16 :goto_2

    .line 956
    :cond_2
    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_chatReactionsSome;

    if-eqz v3, :cond_6

    .line 957
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_chatReactionsSome;

    .line 958
    iget-object p2, v1, Lorg/telegram/tgnet/TLRPC$TL_chatReactionsSome;->reactions:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Reaction;

    .line 959
    iget v3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MediaDataController;->getEnabledReactionsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    .line 960
    instance-of v5, v1, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    if-eqz v5, :cond_5

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->reaction:Ljava/lang/String;

    move-object v5, v1

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;->emoticon:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 961
    invoke-static {v1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTLReaction(Lorg/telegram/tgnet/TLRPC$Reaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 963
    :cond_5
    instance-of v4, v1, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;

    if-eqz v4, :cond_4

    .line 964
    invoke-static {v1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTLReaction(Lorg/telegram/tgnet/TLRPC$Reaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 970
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown chat reactions type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$ChatFull;->available_reactions:Lorg/telegram/tgnet/TLRPC$ChatReactions;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 973
    :cond_7
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->allReactionsAvailable:Z

    .line 974
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->fillRecentReactionsList(Ljava/util/List;)V

    .line 977
    :cond_8
    :goto_2
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setVisibleReactionsList(Ljava/util/List;)V

    .line 979
    iget-object p2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    if-eqz p2, :cond_a

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$MessageReactions;->results:Ljava/util/ArrayList;

    if-eqz p2, :cond_a

    .line 980
    :goto_3
    iget-object p2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$MessageReactions;->results:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v2, p2, :cond_a

    .line 981
    iget-object p2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$MessageReactions;->results:Ljava/util/ArrayList;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$ReactionCount;

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$ReactionCount;->chosen:Z

    if-eqz p2, :cond_9

    .line 982
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->selectedReactions:Ljava/util/HashSet;

    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageReactions;->results:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$ReactionCount;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ReactionCount;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-static {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTLReaction(Lorg/telegram/tgnet/TLRPC$Reaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_a
    return-void
.end method

.method public setMirrorX(Z)V
    .locals 0

    .line 542
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->mirrorX:Z

    .line 543
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setParentLayout(Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;)V
    .locals 0

    .line 1670
    iput-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->parentLayout:Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;

    return-void
.end method

.method public setSkipDraw(Z)V
    .locals 4

    .line 1103
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->skipDraw:Z

    if-eq v0, p1, :cond_4

    .line 1104
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->skipDraw:Z

    if-nez p1, :cond_3

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 1106
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1107
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    if-eqz v1, :cond_2

    .line 1108
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    .line 1109
    iget-boolean v2, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->hasEnterAnimation:Z

    if-eqz v2, :cond_1

    iget-object v2, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1110
    :cond_0
    iget-object v2, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1111
    iget-object v2, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1112
    iget-boolean v2, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->shouldSwitchToLoopView:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 1113
    iput-boolean v2, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->switchedToLoopView:Z

    .line 1116
    :cond_1
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1120
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_4
    return-void
.end method

.method public setTransitionProgress(F)V
    .locals 2

    .line 927
    iput p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->transitionProgress:F

    .line 928
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->parentLayout:Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->getPopupWindowLayout()Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 929
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->parentLayout:Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->getPopupWindowLayout()Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    move-result-object v0

    iget-boolean v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->animatePopup:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->setReactionsTransitionProgress(F)V

    .line 931
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setTranslationX(F)V
    .locals 1

    .line 1585
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1586
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    :cond_0
    return-void
.end method

.method public showCustomEmojiReaction()Z
    .locals 1

    .line 507
    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-boolean v0, v0, Lorg/telegram/messenger/MessagesController;->premiumLocked:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->allReactionsAvailable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public startEnterAnimation(Z)V
    .locals 2

    .line 1051
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->animatePopup:Z

    const/4 p1, 0x0

    .line 1052
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setTransitionProgress(F)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 1053
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setAlpha(F)V

    .line 1054
    sget-object p1, Lorg/telegram/ui/Components/ReactionsContainerLayout;->TRANSITION_PROGRESS_VALUE:Landroid/util/Property;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x15e

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 1055
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1056
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
