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

.field private bubblesOffset:F

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

.field private hasHint:Z

.field public hintView:Landroid/widget/TextView;

.field private isFlippedVertically:Z

.field public isHiddenNextReaction:Z

.field private isTop:Z

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

.field final notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

.field private onSwitchedToLoopView:Ljava/lang/Runnable;

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

.field rectF:Landroid/graphics/RectF;

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

.field private showExpandableReactions:Z

.field skipDraw:Z

.field public skipEnterAnimation:Z

.field private smallCircleRadius:F

.field private transitionProgress:F

.field private final type:I

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

.method public static synthetic $r8$lambda$VQcrhy5x05AuGPdaxQpdQFBASzk(Lorg/telegram/ui/Components/ReactionsContainerLayout;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->lambda$reset$5(Landroid/view/View;)V

    return-void
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

    .line 82
    new-instance v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$1;

    const-class v1, Ljava/lang/Float;

    const-string v2, "transitionProgress"

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/ReactionsContainerLayout$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->TRANSITION_PROGRESS_VALUE:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(ILorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 6

    .line 187
    invoke-direct {p0, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 105
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->bgPaint:Landroid/graphics/Paint;

    .line 106
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->leftShadowPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rightShadowPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 109
    iput v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->transitionProgress:F

    .line 110
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rect:Landroid/graphics/RectF;

    .line 111
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->mPath:Landroid/graphics/Path;

    const/16 v2, 0x48

    .line 112
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->radius:F

    const/16 v2, 0x8

    .line 113
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->bigCircleRadius:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 114
    iput v3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->smallCircleRadius:F

    const/16 v3, 0x24

    .line 115
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->bigCircleOffset:I

    .line 130
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0x14

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->visibleReactionsList:Ljava/util/List;

    .line 131
    new-instance v3, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->premiumLockedReactions:Ljava/util/List;

    .line 132
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->allReactionsList:Ljava/util/List;

    .line 136
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rectF:Landroid/graphics/RectF;

    .line 138
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->selectedReactions:Ljava/util/HashSet;

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 140
    iput-object v4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->location:[I

    .line 144
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->shadowPad:Landroid/graphics/Rect;

    .line 148
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 169
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->lastVisibleViews:Ljava/util/HashSet;

    .line 170
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->lastVisibleViewsTmp:Ljava/util/HashSet;

    .line 177
    new-instance v4, Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-direct {v4}, Lorg/telegram/messenger/AnimationNotificationsLocker;-><init>()V

    iput-object v4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    .line 180
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->isHiddenNextReaction:Z

    .line 188
    iput p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->type:I

    .line 189
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "animator_duration_scale"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->durationScale:F

    .line 190
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->selectedPaint:Landroid/graphics/Paint;

    .line 191
    sget v4, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v4, p5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 192
    iput-object p5, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    .line 193
    iput p4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->currentAccount:I

    .line 194
    iput-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 196
    new-instance p2, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p3, v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;-><init>(Lorg/telegram/ui/Components/ReactionsContainerLayout;Landroid/content/Context;Z)V

    iput-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->nextRecentReaction:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    .line 197
    invoke-virtual {p2, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 198
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->nextRecentReaction:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    iput-boolean v0, p2, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->touchable:Z

    .line 199
    iget-object p2, p2, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->pressedBackupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 201
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->nextRecentReaction:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 203
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->animationsEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->animationEnabled:Z

    .line 205
    sget p2, Lorg/telegram/messenger/R$drawable;->reactions_bubble_shadow:I

    invoke-static {p3, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->shadow:Landroid/graphics/drawable/Drawable;

    .line 206
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->shadowPad:Landroid/graphics/Rect;

    const/4 v1, 0x7

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    iput v1, p2, Landroid/graphics/Rect;->right:I

    iput v1, p2, Landroid/graphics/Rect;->top:I

    iput v1, p2, Landroid/graphics/Rect;->left:I

    .line 207
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->shadow:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chat_messagePanelShadow:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 209
    new-instance p2, Lorg/telegram/ui/Components/ReactionsContainerLayout$2;

    invoke-direct {p2, p0, p3}, Lorg/telegram/ui/Components/ReactionsContainerLayout$2;-><init>(Lorg/telegram/ui/Components/ReactionsContainerLayout;Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 231
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 232
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 233
    new-instance v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$3;

    invoke-direct {v1, p0, p3, v0, v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$3;-><init>(Lorg/telegram/ui/Components/ReactionsContainerLayout;Landroid/content/Context;IZ)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 285
    new-instance v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$4;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$4;-><init>(Lorg/telegram/ui/Components/ReactionsContainerLayout;)V

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 308
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 309
    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 310
    new-instance v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$5;

    invoke-direct {v1, p0, p3, p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout$5;-><init>(Lorg/telegram/ui/Components/ReactionsContainerLayout;Landroid/content/Context;I)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->listAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 437
    new-instance p3, Lorg/telegram/ui/Components/ReactionsContainerLayout$LeftRightShadowsListener;

    const/4 v1, 0x0

    invoke-direct {p3, p0, v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout$LeftRightShadowsListener;-><init>(Lorg/telegram/ui/Components/ReactionsContainerLayout;Lorg/telegram/ui/Components/ReactionsContainerLayout$1;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 438
    new-instance p3, Lorg/telegram/ui/Components/ReactionsContainerLayout$6;

    invoke-direct {p3, p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$6;-><init>(Lorg/telegram/ui/Components/ReactionsContainerLayout;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 472
    new-instance p3, Lorg/telegram/ui/Components/ReactionsContainerLayout$7;

    invoke-direct {p3, p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$7;-><init>(Lorg/telegram/ui/Components/ReactionsContainerLayout;)V

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 483
    new-instance p3, Lorg/telegram/ui/Components/ReactionsContainerLayout$$ExternalSyntheticLambda4;

    invoke-direct {p3, p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Components/ReactionsContainerLayout;)V

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 489
    new-instance p3, Lorg/telegram/ui/Components/ReactionsContainerLayout$$ExternalSyntheticLambda5;

    invoke-direct {p3, p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Components/ReactionsContainerLayout;)V

    invoke-virtual {p2, p3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    const/4 p3, -0x1

    .line 497
    invoke-static {p3, p3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 498
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 499
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 500
    invoke-direct {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->invalidateShaders()V

    .line 502
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p2

    sub-int/2addr v0, p2

    .line 503
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->nextRecentReaction:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    const/16 v1, 0xc

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int v1, v0, v1

    iput v1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 504
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->nextRecentReaction:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne p1, v3, :cond_1

    .line 507
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->bgPaint:Landroid/graphics/Paint;

    const/high16 p2, -0x1000000

    const p5, 0x3e051eb8    # 0.13f

    invoke-static {p2, p3, p5}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 509
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->bgPaint:Landroid/graphics/Paint;

    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    invoke-static {p2, p5}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 511
    :goto_1
    invoke-static {p4}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaDataController;->preloadDefaultReactions()V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/ReactionsContainerLayout;)F
    .locals 0

    .line 80
    iget p0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->transitionProgress:F

    return p0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;
    .locals 0

    .line 80
    iget-object p0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Ljava/util/List;
    .locals 0

    .line 80
    iget-object p0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->visibleReactionsList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/ReactionsContainerLayout;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;
    .locals 0

    .line 80
    iput-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/ReactionsContainerLayout;FF)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->showUnlockPremium(FF)V

    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/ReactionsContainerLayout;)[I
    .locals 0

    .line 80
    iget-object p0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->location:[I

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/ReactionsContainerLayout;Landroid/view/View;F)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setChildScale(Landroid/view/View;F)V

    return-void
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 80
    iget-object p0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->linearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/ReactionsContainerLayout;)F
    .locals 0

    .line 80
    iget p0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->leftAlpha:F

    return p0
.end method

.method static synthetic access$1702(Lorg/telegram/ui/Components/ReactionsContainerLayout;F)F
    .locals 0

    .line 80
    iput p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->leftAlpha:F

    return p1
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/ReactionsContainerLayout;)F
    .locals 0

    .line 80
    iget p0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rightAlpha:F

    return p0
.end method

.method static synthetic access$1802(Lorg/telegram/ui/Components/ReactionsContainerLayout;F)F
    .locals 0

    .line 80
    iput p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rightAlpha:F

    return p1
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Landroid/graphics/Paint;
    .locals 0

    .line 80
    iget-object p0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rightShadowPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/ReactionsContainerLayout;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->showCustomEmojiReactionDialog()V

    return-void
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Landroid/graphics/Paint;
    .locals 0

    .line 80
    iget-object p0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->leftShadowPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Ljava/lang/Runnable;
    .locals 0

    .line 80
    iget-object p0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->onSwitchedToLoopView:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Z
    .locals 0

    .line 80
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->allReactionsIsDefault:Z

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/ReactionsContainerLayout;)I
    .locals 0

    .line 80
    iget p0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->currentAccount:I

    return p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Z
    .locals 0

    .line 80
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->animationEnabled:Z

    return p0
.end method

.method static synthetic access$2502(Lorg/telegram/ui/Components/ReactionsContainerLayout;I)I
    .locals 0

    .line 80
    iput p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedReactionPosition:I

    return p1
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/ReactionsContainerLayout;)F
    .locals 0

    .line 80
    iget p0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedProgress:F

    return p0
.end method

.method static synthetic access$2602(Lorg/telegram/ui/Components/ReactionsContainerLayout;F)F
    .locals 0

    .line 80
    iput p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedProgress:F

    return p1
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;
    .locals 0

    .line 80
    iget-object p0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->delegate:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;

    return-object p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Z
    .locals 0

    .line 80
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->clicked:Z

    return p0
.end method

.method static synthetic access$2802(Lorg/telegram/ui/Components/ReactionsContainerLayout;Z)Z
    .locals 0

    .line 80
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->clicked:Z

    return p1
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/ReactionsContainerLayout;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->cancelPressed()V

    return-void
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/ReactionsContainerLayout;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->animatePullingBack()V

    return-void
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Landroid/graphics/Paint;
    .locals 0

    .line 80
    iget-object p0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->selectedPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/ReactionsContainerLayout;)F
    .locals 0

    .line 80
    iget p0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->cancelPressedProgress:F

    return p0
.end method

.method static synthetic access$3102(Lorg/telegram/ui/Components/ReactionsContainerLayout;F)F
    .locals 0

    .line 80
    iput p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->cancelPressedProgress:F

    return p1
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/ReactionsContainerLayout;)I
    .locals 0

    .line 80
    iget p0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->type:I

    return p0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 0

    .line 80
    iget-object p0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->listAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-object p0
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Z
    .locals 0

    .line 80
    invoke-direct {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->showUnlockPremiumButton()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Lorg/telegram/ui/Components/Premium/PremiumLockIconView;
    .locals 0

    .line 80
    iget-object p0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->premiumLockIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    return-object p0
.end method

.method static synthetic access$602(Lorg/telegram/ui/Components/ReactionsContainerLayout;Lorg/telegram/ui/Components/Premium/PremiumLockIconView;)Lorg/telegram/ui/Components/Premium/PremiumLockIconView;
    .locals 0

    .line 80
    iput-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->premiumLockIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    return-object p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Lorg/telegram/ui/Components/ReactionsContainerLayout$InternalImageView;
    .locals 0

    .line 80
    iget-object p0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->customEmojiReactionsIconView:Lorg/telegram/ui/Components/ReactionsContainerLayout$InternalImageView;

    return-object p0
.end method

.method static synthetic access$702(Lorg/telegram/ui/Components/ReactionsContainerLayout;Lorg/telegram/ui/Components/ReactionsContainerLayout$InternalImageView;)Lorg/telegram/ui/Components/ReactionsContainerLayout$InternalImageView;
    .locals 0

    .line 80
    iput-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->customEmojiReactionsIconView:Lorg/telegram/ui/Components/ReactionsContainerLayout$InternalImageView;

    return-object p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/ReactionsContainerLayout;)Z
    .locals 0

    .line 80
    iget-boolean p0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->hasHint:Z

    return p0
.end method

.method public static allowSmoothEnterTransition()Z
    .locals 1

    .line 2099
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->deviceIsHigh()Z

    move-result v0

    return v0
.end method

.method private animatePullingBack()V
    .locals 4

    .line 519
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

    .line 520
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pullingDownBackAnimator:Landroid/animation/ValueAnimator;

    .line 521
    new-instance v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/ReactionsContainerLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 528
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pullingDownBackAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 529
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pullingDownBackAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method private cancelPressed()V
    .locals 3

    .line 1901
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1902
    iput v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->cancelPressedProgress:F

    .line 1903
    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedProgress:F

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 1904
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->cancelPressedAnimation:Landroid/animation/ValueAnimator;

    .line 1905
    new-instance v2, Lorg/telegram/ui/Components/ReactionsContainerLayout$9;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$9;-><init>(Lorg/telegram/ui/Components/ReactionsContainerLayout;F)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1913
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->cancelPressedAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$10;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$10;-><init>(Lorg/telegram/ui/Components/ReactionsContainerLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1923
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->cancelPressedAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1924
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->cancelPressedAnimation:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1925
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
    .locals 11

    .line 944
    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pullingLeftOffset:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    .line 945
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getPullingLeftProgress()F

    move-result v0

    .line 946
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

    invoke-static {v3, v2, v1}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v3

    mul-float/2addr v3, v0

    const/16 v0, 0x2e

    .line 947
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v3, v0

    goto :goto_0

    :cond_0
    move v3, v1

    .line 949
    :goto_0
    iget-object v0, p2, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->currentReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iget-object v4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-virtual {v0, v4}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_8

    .line 950
    iget-object v0, p2, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p2, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    goto :goto_1

    :cond_1
    iget-object v0, p2, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    .line 951
    :goto_1
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    shr-int/2addr v5, v4

    int-to-float v5, v5

    invoke-virtual {p2, v5}, Landroid/widget/FrameLayout;->setPivotX(F)V

    .line 952
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-virtual {p2, v5}, Landroid/widget/FrameLayout;->setPivotY(F)V

    .line 953
    iget v5, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedViewScale:F

    invoke-virtual {p2, v5}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 954
    iget v5, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedViewScale:F

    invoke-virtual {p2, v5}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 956
    iget-boolean v5, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->clicked:Z

    if-nez v5, :cond_5

    .line 957
    iget-object v5, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->cancelPressedAnimation:Landroid/animation/ValueAnimator;

    const/4 v6, 0x0

    if-nez v5, :cond_3

    .line 958
    iget-object v5, p2, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->pressedBackupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 959
    iget-object v5, p2, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->pressedBackupImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v5, v2}, Landroid/view/View;->setAlpha(F)V

    .line 960
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

    .line 961
    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    .line 964
    :cond_3
    iget-object v5, p2, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->pressedBackupImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget v7, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->cancelPressedProgress:F

    sub-float v7, v2, v7

    invoke-virtual {v5, v7}, Landroid/view/View;->setAlpha(F)V

    .line 965
    iget v5, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->cancelPressedProgress:F

    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 967
    :cond_4
    :goto_2
    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedProgress:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_5

    .line 968
    iput-boolean v4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->clicked:Z

    .line 969
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->lastReactionSentTime:J

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x12c

    cmp-long v0, v7, v9

    if-lez v0, :cond_5

    .line 970
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->lastReactionSentTime:J

    .line 971
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->delegate:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;

    iget-object v2, p2, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->currentReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-interface {v0, p2, v2, v4, v6}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;->onReactionClicked(Landroid/view/View;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;ZZ)V

    .line 976
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 977
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getX()F

    move-result v2

    add-float/2addr v0, v2

    .line 978
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v4

    mul-float/2addr v2, v4

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    sub-float v4, v0, v2

    cmpg-float v5, v4, v1

    if-gez v5, :cond_6

    .line 979
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v5

    cmpl-float v5, v5, v1

    if-ltz v5, :cond_6

    neg-float v0, v4

    sub-float/2addr v0, v3

    .line 980
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    goto :goto_3

    .line 981
    :cond_6
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v0

    add-float/2addr v4, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_7

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v4

    cmpg-float v4, v4, v1

    if-gtz v4, :cond_7

    .line 982
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v0

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v1, v0

    sub-float/2addr v1, v2

    sub-float/2addr v1, v3

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    goto :goto_3

    :cond_7
    sub-float/2addr v1, v3

    .line 984
    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 986
    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getX()F

    move-result v1

    add-float/2addr v0, v1

    .line 987
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getY()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 988
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v0

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getScaleY()F

    move-result v1

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getPivotX()F

    move-result v2

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getPivotY()F

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 989
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 990
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_5

    .line 992
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    .line 994
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v5, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedViewScale:F

    sub-float/2addr v5, v2

    mul-float/2addr v0, v5

    const/high16 v5, 0x40400000    # 3.0f

    div-float/2addr v0, v5

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->otherViewsScale:F

    sub-float v6, v2, v6

    mul-float/2addr v5, v6

    iget v6, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedReactionPosition:I

    sub-int/2addr v6, p1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    sub-int/2addr v6, v4

    int-to-float v4, v6

    mul-float/2addr v5, v4

    sub-float/2addr v0, v5

    .line 996
    iget v4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedReactionPosition:I

    if-ge p1, v4, :cond_9

    .line 997
    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setPivotX(F)V

    neg-float p1, v0

    .line 998
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    goto :goto_4

    .line 1000
    :cond_9
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p1, v3

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setPivotX(F)V

    sub-float/2addr v0, v3

    .line 1001
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 1003
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

    .line 1004
    iget p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->otherViewsScale:F

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 1005
    iget p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->otherViewsScale:F

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 1006
    iget-object p1, p2, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget v0, p2, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->sideScale:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 1007
    iget-object p1, p2, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    iget v0, p2, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->sideScale:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 1008
    iget-object p1, p2, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->pressedBackupImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1010
    iget-object p1, p2, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    :goto_5
    return-void
.end method

.method private checkPressedProgressForOtherViews(Landroid/view/View;)V
    .locals 5

    .line 927
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    .line 929
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedViewScale:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    iget v4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->otherViewsScale:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    iget v3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedReactionPosition:I

    sub-int/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 931
    iget v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedReactionPosition:I

    if-ge v0, v2, :cond_0

    const/4 v0, 0x0

    .line 932
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    neg-float v0, v1

    .line 933
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    .line 935
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 936
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 938
    :goto_0
    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->otherViewsScale:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 939
    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->otherViewsScale:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private drawBubbles(Landroid/graphics/Canvas;FFFI)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p4

    move/from16 v12, p5

    .line 883
    iget v1, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->type:I

    const/4 v13, 0x1

    if-ne v1, v13, :cond_0

    return-void

    .line 886
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 887
    iget-boolean v1, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->isTop:Z

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 888
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v5, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    sget-object v7, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v8, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->flipVerticalProgress:F

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v7

    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float/2addr v6, v2

    iget v2, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->transitionProgress:F

    sub-float v2, v3, v2

    mul-float/2addr v6, v2

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v2, v6

    int-to-float v2, v2

    sub-float/2addr v5, v2

    add-float/2addr v5, v3

    invoke-virtual {v9, v4, v4, v1, v5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    goto :goto_0

    .line 890
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sget-object v5, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v6, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->flipVerticalProgress:F

    invoke-virtual {v5, v6}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v6

    invoke-static {v1, v4, v6}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    iget-object v6, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float/2addr v6, v2

    iget v2, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->transitionProgress:F

    sub-float v2, v3, v2

    mul-float/2addr v6, v2

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v2, v6

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sub-float/2addr v1, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    const/16 v6, 0x8

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v3, v6

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->expandSize()F

    move-result v7

    sub-float/2addr v6, v7

    iget v7, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->flipVerticalProgress:F

    invoke-virtual {v5, v7}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v5

    invoke-static {v3, v6, v5}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v3

    invoke-virtual {v9, v4, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 892
    :goto_0
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v1, :cond_3

    iget-boolean v1, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->mirrorX:Z

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    iget v2, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->bigCircleOffset:I

    sub-int/2addr v1, v2

    goto :goto_2

    :cond_3
    :goto_1
    iget v1, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->bigCircleOffset:I

    :goto_2
    int-to-float v1, v1

    .line 893
    iget v2, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->bubblesOffset:F

    add-float/2addr v1, v2

    .line 894
    iget-boolean v2, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->isTop:Z

    if-eqz v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->expandSize()F

    move-result v3

    sub-float/2addr v2, v3

    goto :goto_3

    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->expandSize()F

    move-result v3

    add-float/2addr v2, v3

    :goto_3
    const/4 v3, 0x3

    .line 895
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    .line 896
    iget-object v4, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->shadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v12}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 897
    iget-object v4, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 898
    iget-object v4, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->shadow:Landroid/graphics/drawable/Drawable;

    sub-float v5, v1, v10

    int-to-float v14, v3

    mul-float v3, v14, p3

    sub-float v6, v5, v3

    float-to-int v6, v6

    sub-float v7, v2, v10

    sub-float v8, v7, v3

    float-to-int v8, v8

    add-float v15, v1, v10

    add-float v13, v15, v3

    float-to-int v13, v13

    add-float v12, v2, v10

    add-float/2addr v3, v12

    float-to-int v3, v3

    invoke-virtual {v4, v6, v8, v13, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 899
    iget-object v3, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->shadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 900
    iget-object v3, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->delegate:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;

    invoke-interface {v3}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;->drawBackground()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 901
    iget-object v1, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v1, v5, v7, v15, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 902
    iget-object v1, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->delegate:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;

    iget-object v3, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rectF:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getX()F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getY()F

    move-result v6

    const/4 v8, 0x0

    move-object/from16 v2, p1

    move/from16 v4, p2

    move/from16 v7, p5

    invoke-interface/range {v1 .. v8}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;->drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFFIZ)V

    goto :goto_4

    .line 904
    :cond_5
    iget-object v3, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v1, v2, v10, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 907
    :goto_4
    sget-boolean v1, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v1, :cond_7

    iget-boolean v1, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->mirrorX:Z

    if-eqz v1, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    iget v2, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->bigCircleOffset:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->bigCircleRadius:F

    add-float/2addr v1, v2

    goto :goto_6

    :cond_7
    :goto_5
    iget v1, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->bigCircleOffset:I

    int-to-float v1, v1

    iget v2, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->bigCircleRadius:F

    sub-float/2addr v1, v2

    .line 908
    :goto_6
    iget v2, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->bubblesOffset:F

    add-float/2addr v1, v2

    .line 909
    iget-boolean v2, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->isTop:Z

    if-eqz v2, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->expandSize()F

    move-result v3

    sub-float/2addr v2, v3

    const/16 v3, 0x10

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    goto :goto_7

    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->smallCircleRadius:F

    sub-float/2addr v2, v3

    sub-float/2addr v2, v14

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->expandSize()F

    move-result v3

    add-float/2addr v2, v3

    .line 910
    :goto_7
    iget v3, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->smallCircleRadius:F

    add-float/2addr v3, v14

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->expandSize()F

    move-result v4

    sub-float/2addr v3, v4

    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v5, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->flipVerticalProgress:F

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v4

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    const/4 v3, 0x1

    .line 911
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    neg-int v3, v3

    .line 912
    iget-object v4, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->shadow:Landroid/graphics/drawable/Drawable;

    sub-float v5, v1, v10

    int-to-float v3, v3

    mul-float v3, v3, p3

    sub-float/2addr v5, v3

    float-to-int v5, v5

    sub-float v6, v2, v10

    sub-float/2addr v6, v3

    float-to-int v6, v6

    add-float v7, v1, v10

    add-float/2addr v7, v3

    float-to-int v7, v7

    add-float v8, v2, v10

    add-float/2addr v8, v3

    float-to-int v3, v8

    invoke-virtual {v4, v5, v6, v7, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 913
    iget-object v3, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->shadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 914
    iget-object v3, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->delegate:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;

    invoke-interface {v3}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;->drawBackground()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 915
    iget-object v3, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rectF:Landroid/graphics/RectF;

    sub-float v4, v1, v11

    sub-float v5, v2, v11

    add-float/2addr v1, v11

    add-float/2addr v2, v11

    invoke-virtual {v3, v4, v5, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 916
    iget-object v1, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->delegate:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;

    iget-object v3, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rectF:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getX()F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getY()F

    move-result v6

    const/4 v8, 0x0

    move-object/from16 v2, p1

    move/from16 v4, p4

    move/from16 v7, p5

    invoke-interface/range {v1 .. v8}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;->drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFFIZ)V

    goto :goto_8

    .line 918
    :cond_9
    iget-object v3, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v1, v2, v11, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 920
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 922
    iget-object v1, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->shadow:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 923
    iget-object v1, v0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method private fillRecentReactionsList(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;",
            ">;)V"
        }
    .end annotation

    .line 1133
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->allReactionsAvailable:Z

    const/16 v1, 0x10

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-nez v0, :cond_4

    .line 1134
    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->type:I

    if-ne v0, v2, :cond_2

    .line 1135
    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->getSavedReactions()Ljava/util/ArrayList;

    move-result-object v0

    .line 1136
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move v4, v3

    .line 1138
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 1139
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-static {v5}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTLReaction(Lorg/telegram/tgnet/TLRPC$Reaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v5

    .line 1140
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1141
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1142
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    :cond_0
    if-ne v4, v1, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1151
    :cond_2
    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->getEnabledReactionsList()Ljava/util/List;

    move-result-object v0

    .line 1152
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_3

    .line 1153
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    invoke-static {v1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromEmojicon(Lorg/telegram/tgnet/TLRPC$TL_availableReaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v1

    .line 1154
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void

    .line 1161
    :cond_4
    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->type:I

    if-ne v0, v2, :cond_5

    .line 1162
    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->getSavedReactions()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_3

    .line 1164
    :cond_5
    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->getTopReactions()Ljava/util/ArrayList;

    move-result-object v0

    .line 1166
    :goto_3
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 1168
    iget v5, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->type:I

    if-ne v5, v2, :cond_8

    .line 1169
    iget v5, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/MessagesController;->getSavedReactionTags()Lorg/telegram/tgnet/TLRPC$TL_messages_savedReactionsTags;

    move-result-object v5

    if-eqz v5, :cond_8

    move v6, v3

    move v7, v6

    .line 1171
    :goto_4
    iget-object v8, v5, Lorg/telegram/tgnet/TLRPC$messages_SavedReactionTags;->tags:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_9

    .line 1172
    iget-object v8, v5, Lorg/telegram/tgnet/TLRPC$messages_SavedReactionTags;->tags:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_savedReactionTag;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$TL_savedReactionTag;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-static {v8}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTLReaction(Lorg/telegram/tgnet/TLRPC$Reaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v8

    .line 1173
    invoke-virtual {v4, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 1174
    invoke-virtual {v4, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1175
    invoke-interface {p1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    :cond_6
    if-ne v7, v1, :cond_7

    goto :goto_5

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_8
    move v7, v3

    :cond_9
    :goto_5
    move v5, v3

    .line 1184
    :goto_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_d

    .line 1185
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-static {v6}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTLReaction(Lorg/telegram/tgnet/TLRPC$Reaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v6

    .line 1186
    invoke-virtual {v4, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    iget v8, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->type:I

    if-eq v8, v2, :cond_a

    iget v8, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->currentAccount:I

    invoke-static {v8}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v8

    if-nez v8, :cond_a

    iget-wide v8, v6, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_b

    .line 1187
    :cond_a
    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1188
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    :cond_b
    if-ne v7, v1, :cond_c

    goto :goto_7

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 1196
    :cond_d
    :goto_7
    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->type:I

    if-ne v0, v2, :cond_e

    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1197
    :cond_e
    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->getRecentReactions()Ljava/util/ArrayList;

    move-result-object v0

    move v1, v3

    .line 1198
    :goto_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_10

    .line 1199
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-static {v2}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTLReaction(Lorg/telegram/tgnet/TLRPC$Reaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v2

    .line 1200
    invoke-virtual {v4, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    .line 1201
    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1202
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1207
    :cond_10
    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaDataController;->getEnabledReactionsList()Ljava/util/List;

    move-result-object v0

    .line 1208
    :goto_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_12

    .line 1209
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    invoke-static {v1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromEmojicon(Lorg/telegram/tgnet/TLRPC$TL_availableReaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v1

    .line 1210
    invoke-virtual {v4, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 1211
    invoke-virtual {v4, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1212
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_12
    return-void
.end method

.method private filterReactions(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;",
            ">;)V"
        }
    .end annotation

    .line 1122
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    .line 1123
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1124
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 1126
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1128
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private invalidateLoopViews()V
    .locals 3

    const/4 v0, 0x0

    .line 562
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 563
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 564
    instance-of v2, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    if-eqz v2, :cond_0

    .line 565
    check-cast v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    iget-object v1, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private invalidateShaders()V
    .locals 13

    const/16 v0, 0x18

    .line 1028
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    .line 1029
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 1030
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_actionBarDefaultSubmenuBackground:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    .line 1031
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

    .line 1032
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

    .line 1033
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private synthetic lambda$animatePullingBack$2(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 522
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pullingDownBackAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pullingLeftOffset:F

    .line 523
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->customReactionsContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    .line 524
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 526
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private synthetic lambda$clearRecentReactions$4(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1344
    iget p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/MediaDataController;->clearRecentReactions()V

    .line 1345
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1346
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->fillRecentReactionsList(Ljava/util/List;)V

    .line 1347
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setVisibleReactionsList(Ljava/util/List;)V

    .line 1348
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->lastVisibleViews:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->clear()V

    .line 1349
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->reactionsWindow:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->setRecentReactions(Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;I)V
    .locals 1

    .line 484
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->delegate:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;

    if-eqz p2, :cond_0

    instance-of v0, p1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    if-eqz v0, :cond_0

    .line 485
    check-cast p1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    .line 486
    iget-object p1, p1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->currentReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    const/4 v0, 0x0

    invoke-interface {p2, p0, p1, v0, v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;->onReactionClicked(Landroid/view/View;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;ZZ)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;I)Z
    .locals 2

    .line 490
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->delegate:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    instance-of v1, p1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    if-eqz v1, :cond_0

    .line 491
    check-cast p1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    .line 492
    iget-object p1, p1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->currentReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    const/4 v1, 0x1

    invoke-interface {p2, p0, p1, v1, v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;->onReactionClicked(Landroid/view/View;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;ZZ)V

    return v1

    :cond_0
    return v0
.end method

.method private synthetic lambda$reset$5(Landroid/view/View;)V
    .locals 2

    .line 1386
    instance-of v0, p1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    if-eqz v0, :cond_1

    .line 1387
    check-cast p1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    const/4 v0, 0x0

    .line 1388
    iput-boolean v0, p1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->pressed:Z

    .line 1389
    iget-object v0, p1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1390
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->skipEnterAnimation:Z

    if-eqz v0, :cond_0

    .line 1391
    iget-object v0, p1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 1392
    iget-object p1, p1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    .line 1394
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->resetAnimation()V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$showCustomEmojiReactionDialog$3()V
    .locals 1

    const/4 v0, 0x0

    .line 552
    iput-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->reactionsWindow:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    .line 553
    invoke-direct {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->invalidateLoopViews()V

    .line 554
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->delegate:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;

    if-eqz v0, :cond_0

    .line 555
    invoke-interface {v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;->onEmojiWindowDismissed()V

    :cond_0
    return-void
.end method

.method private setChildScale(Landroid/view/View;F)V
    .locals 1

    .line 584
    instance-of v0, p1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    if-eqz v0, :cond_0

    .line 585
    check-cast p1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    iput p2, p1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->sideScale:F

    goto :goto_0

    .line 587
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 588
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleY(F)V

    :goto_0
    return-void
.end method

.method private setVisibleReactionsList(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;",
            ">;)V"
        }
    .end annotation

    .line 612
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->visibleReactionsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 613
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->showCustomEmojiReaction()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 615
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

    move v0, v3

    :cond_0
    move v3, v1

    if-ge v0, v2, :cond_1

    move v0, v2

    .line 622
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 623
    iget-object v4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->visibleReactionsList:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 625
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    .line 626
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->nextRecentReaction:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    const/4 v4, -0x1

    invoke-static {v0, v3, v4}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->access$900(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;I)V

    goto :goto_1

    .line 629
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->visibleReactionsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 631
    :cond_4
    :goto_1
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->allReactionsIsDefault:Z

    move v0, v1

    .line 632
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->visibleReactionsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 633
    iget-object v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->visibleReactionsList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    iget-wide v2, v2, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->documentId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    .line 634
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->allReactionsIsDefault:Z

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 637
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->allReactionsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 638
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->allReactionsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 640
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->hasHint:Z

    if-eqz v2, :cond_7

    const/16 v1, 0x14

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    :cond_7
    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 641
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    mul-int/2addr v0, p1

    const/16 p1, 0xc8

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    if-ge v0, p1, :cond_8

    .line 642
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v0, -0x2

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 645
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->listAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private showCustomEmojiReactionDialog()V
    .locals 8

    .line 546
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->reactionsWindow:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 549
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    iget v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->type:I

    iget-object v3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    iget-object v4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->allReactionsList:Ljava/util/List;

    iget-object v5, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->selectedReactions:Ljava/util/HashSet;

    iget-object v7, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-object v1, v0

    move-object v6, p0

    invoke-direct/range {v1 .. v7}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;-><init>(ILorg/telegram/ui/ActionBar/BaseFragment;Ljava/util/List;Ljava/util/HashSet;Lorg/telegram/ui/Components/ReactionsContainerLayout;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->reactionsWindow:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    .line 550
    invoke-direct {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->invalidateLoopViews()V

    .line 551
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->reactionsWindow:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    new-instance v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Components/ReactionsContainerLayout;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->onDismissListener(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private showUnlockPremium(FF)V
    .locals 2

    .line 579
    new-instance p1, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;

    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-direct {p1, p2, v0, v1}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;IZ)V

    .line 580
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Premium/PremiumFeatureBottomSheet;->show()V

    return-void
.end method

.method private showUnlockPremiumButton()Z
    .locals 1

    .line 575
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->premiumLockedReactions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesController;->premiumFeaturesBlocked()Z

    move-result v0

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

    .line 1340
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lorg/telegram/messenger/R$string;->ClearRecentReactionsAlertTitle:I

    .line 1341
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->ClearRecentReactionsAlertMessage:I

    .line 1342
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->ClearButton:I

    .line 1343
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/ReactionsContainerLayout$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Components/ReactionsContainerLayout;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->Cancel:I

    .line 1351
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    move-result-object v0

    .line 1352
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v0

    .line 1353
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V

    const/4 v1, -0x1

    .line 1354
    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog;->getButton(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1356
    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_text_RedBold:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 4

    .line 1967
    sget p2, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    .line 1968
    aget-object p2, p3, p1

    check-cast p2, Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 1969
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

    .line 1970
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->messageObject:Lorg/telegram/messenger/MessageObject;

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p3}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setMessage(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    .line 1971
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1972
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->startEnterAnimation(Z)V

    :cond_0
    return-void
.end method

.method public dismissParent(Z)V
    .locals 1

    .line 1280
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->reactionsWindow:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    if-eqz v0, :cond_0

    .line 1281
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->dismiss(Z)V

    const/4 p1, 0x0

    .line 1282
    iput-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->reactionsWindow:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    :cond_0
    return-void
.end method

.method public dismissWindow()V
    .locals 1

    .line 538
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->reactionsWindow:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;->dismiss()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 23

    move-object/from16 v6, p0

    move-object/from16 v15, p1

    .line 651
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->lastUpdate:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x10

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 652
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->lastUpdate:J

    .line 654
    iget-boolean v2, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->isFlippedVertically:Z

    const/high16 v3, 0x435c0000    # 220.0f

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v2, :cond_0

    iget v7, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->flipVerticalProgress:F

    cmpl-float v8, v7, v5

    if-eqz v8, :cond_0

    long-to-float v0, v0

    div-float/2addr v0, v3

    add-float/2addr v7, v0

    .line 655
    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->flipVerticalProgress:F

    .line 656
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    .line 657
    iget v2, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->flipVerticalProgress:F

    cmpl-float v7, v2, v4

    if-eqz v7, :cond_1

    long-to-float v0, v0

    div-float/2addr v0, v3

    sub-float/2addr v2, v0

    .line 658
    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->flipVerticalProgress:F

    .line 659
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 662
    :cond_1
    :goto_0
    iget-object v0, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->hintView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 663
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->expandSize()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 666
    :cond_2
    iget v0, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->transitionProgress:F

    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    sub-float/2addr v0, v1

    const/high16 v2, 0x3f400000    # 0.75f

    div-float v3, v0, v2

    .line 667
    iget v0, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->bigCircleRadius:F

    mul-float v2, v0, v3

    iget v0, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->smallCircleRadius:F

    mul-float v16, v0, v3

    .line 669
    iget-object v0, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->lastVisibleViewsTmp:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 670
    iget-object v0, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->lastVisibleViewsTmp:Ljava/util/HashSet;

    iget-object v7, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->lastVisibleViews:Ljava/util/HashSet;

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 671
    iget-object v0, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->lastVisibleViews:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 673
    iget-boolean v0, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->prepareAnimation:Z

    if-eqz v0, :cond_3

    .line 674
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 677
    :cond_3
    iget-object v0, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    if-eqz v0, :cond_5

    .line 678
    iget v0, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedProgress:F

    cmpl-float v7, v0, v5

    if-eqz v7, :cond_5

    const v7, 0x3c2ec33e

    add-float/2addr v0, v7

    .line 679
    iput v0, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedProgress:F

    cmpl-float v0, v0, v5

    if-ltz v0, :cond_4

    .line 681
    iput v5, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedProgress:F

    .line 683
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 688
    :cond_5
    iget v0, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedProgress:F

    const/high16 v17, 0x40000000    # 2.0f

    mul-float v7, v0, v17

    add-float/2addr v7, v5

    iput v7, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedViewScale:F

    const v7, 0x3e19999a    # 0.15f

    mul-float/2addr v0, v7

    sub-float v0, v5, v0

    .line 689
    iput v0, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->otherViewsScale:F

    .line 691
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 692
    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v7, :cond_7

    iget-boolean v7, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->mirrorX:Z

    if-eqz v7, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x3f600000    # 0.875f

    goto :goto_2

    :cond_7
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x3e000000    # 0.125f

    :goto_2
    mul-float/2addr v7, v8

    move v14, v7

    .line 694
    iget v7, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->transitionProgress:F

    cmpl-float v8, v7, v5

    if-eqz v8, :cond_8

    .line 696
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float v8, v8, v17

    invoke-virtual {v15, v7, v7, v14, v8}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 700
    :cond_8
    sget-boolean v7, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v7, :cond_a

    iget-boolean v7, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->mirrorX:Z

    if-eqz v7, :cond_9

    goto :goto_3

    .line 703
    :cond_9
    iget v7, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->transitionProgress:F

    invoke-static {v1, v7}, Ljava/lang/Math;->max(FF)F

    move-result v1

    sub-float v1, v5, v1

    move v7, v5

    goto :goto_4

    .line 701
    :cond_a
    :goto_3
    iget v7, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->transitionProgress:F

    invoke-static {v1, v7}, Ljava/lang/Math;->max(FF)F

    move-result v1

    move v7, v1

    move v1, v4

    .line 705
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getPullingLeftProgress()F

    move-result v18

    .line 706
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->expandSize()F

    move-result v8

    .line 707
    iget-object v9, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->chatScrimPopupContainerLayout:Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;

    if-eqz v9, :cond_b

    .line 708
    invoke-virtual {v9, v8}, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->setExpandSize(F)V

    .line 710
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    invoke-static {v5, v1}, Ljava/lang/Math;->min(FF)F

    move-result v10

    mul-float v13, v9, v10

    .line 711
    iget-boolean v9, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->hasHint:Z

    const/16 v19, 0x14

    if-eqz v9, :cond_c

    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v9

    goto :goto_5

    :cond_c
    const/4 v9, 0x0

    :goto_5
    int-to-float v9, v9

    .line 712
    iget-object v10, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rect:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v11, v13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v12

    int-to-float v12, v12

    iget-object v4, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    move/from16 v20, v13

    iget v13, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->otherViewsScale:F

    sub-float v13, v5, v13

    mul-float/2addr v4, v13

    add-float/2addr v12, v4

    sub-float/2addr v12, v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v13

    sub-int/2addr v4, v13

    int-to-float v4, v4

    mul-float/2addr v4, v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v21

    sub-int v13, v13, v21

    int-to-float v13, v13

    add-float/2addr v13, v8

    invoke-virtual {v10, v11, v12, v4, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 713
    iget-object v4, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v9

    mul-float v9, v8, v17

    sub-float/2addr v4, v9

    div-float v4, v4, v17

    iput v4, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->radius:F

    .line 715
    iget v4, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->type:I

    const/high16 v21, 0x437f0000    # 255.0f

    const/4 v13, 0x1

    if-eq v4, v13, :cond_d

    .line 716
    iget-object v4, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->shadow:Landroid/graphics/drawable/Drawable;

    iget v9, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->customEmojiReactionsEnterProgress:F

    const v10, 0x3d4ccccd    # 0.05f

    div-float/2addr v9, v10

    sub-float v9, v5, v9

    const/4 v10, 0x0

    invoke-static {v9, v5, v10}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v9

    mul-float v9, v9, v21

    float-to-int v9, v9

    invoke-virtual {v4, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 717
    iget-object v4, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->shadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v11

    sub-int/2addr v10, v11

    iget-object v11, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->shadowPad:Landroid/graphics/Rect;

    iget v12, v11, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v12

    int-to-float v10, v10

    mul-float/2addr v10, v1

    add-float/2addr v9, v10

    iget v1, v11, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float/2addr v9, v1

    float-to-int v1, v9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v9

    iget-object v10, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->shadowPad:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    float-to-int v8, v8

    sub-int/2addr v9, v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v11

    sub-int/2addr v10, v11

    iget-object v11, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->shadowPad:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v11

    int-to-float v10, v10

    mul-float/2addr v10, v7

    float-to-int v7, v10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v11

    sub-int/2addr v10, v11

    iget-object v11, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->shadowPad:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v11

    add-int/2addr v10, v8

    invoke-virtual {v4, v1, v9, v7, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 718
    iget-object v1, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->shadow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v15}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 721
    :cond_d
    invoke-virtual {v15, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 723
    iget-boolean v0, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->skipDraw:Z

    if-nez v0, :cond_11

    .line 724
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 725
    iget v1, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->transitionProgress:F

    cmpl-float v4, v1, v5

    if-eqz v4, :cond_e

    .line 727
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v4, v17

    invoke-virtual {v15, v1, v1, v14, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 729
    :cond_e
    iget v1, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->type:I

    if-eq v1, v13, :cond_10

    iget-object v1, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->delegate:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;

    invoke-interface {v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;->drawBackground()Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_6

    .line 732
    :cond_f
    iget-object v1, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rect:Landroid/graphics/RectF;

    iget v4, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->radius:F

    iget-object v7, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {v15, v1, v4, v4, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    move v1, v14

    move/from16 v22, v20

    goto :goto_7

    .line 730
    :cond_10
    :goto_6
    iget-object v7, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->delegate:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;

    iget-object v9, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rect:Landroid/graphics/RectF;

    iget v10, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->radius:F

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getX()F

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getY()F

    move-result v12

    const/16 v1, 0xff

    const/4 v4, 0x0

    move-object/from16 v8, p1

    move/from16 v22, v20

    move v13, v1

    move v1, v14

    move v14, v4

    invoke-interface/range {v7 .. v14}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;->drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FFFIZ)V

    .line 735
    :goto_7
    invoke-virtual {v15, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_8

    :cond_11
    move v1, v14

    move/from16 v22, v20

    .line 738
    :goto_8
    iget-object v0, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 739
    iget-object v0, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->mPath:Landroid/graphics/Path;

    iget-object v4, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rect:Landroid/graphics/RectF;

    iget v7, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->radius:F

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v4, v7, v7, v8}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 741
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 742
    iget v4, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->transitionProgress:F

    cmpl-float v7, v4, v5

    if-eqz v7, :cond_12

    .line 744
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float v7, v7, v17

    invoke-virtual {v15, v4, v4, v1, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 747
    :cond_12
    iget v1, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->transitionProgress:F

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_29

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v5

    if-nez v1, :cond_29

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v12, 0x0

    .line 750
    :goto_9
    iget-object v7, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v12, v7, :cond_24

    .line 751
    iget-object v7, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 752
    iget v8, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->transitionProgress:F

    cmpl-float v8, v8, v5

    if-eqz v8, :cond_13

    invoke-static {}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->allowSmoothEnterTransition()Z

    move-result v8

    if-eqz v8, :cond_13

    .line 753
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    div-float v8, v8, v17

    add-float/2addr v4, v8

    const/high16 v8, 0x43480000    # 200.0f

    .line 754
    iget-object v9, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v4, v9

    const v9, 0x3f4ccccd    # 0.8f

    sub-float/2addr v4, v9

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v4, v8

    float-to-int v4, v4

    .line 756
    :cond_13
    instance-of v8, v7, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    if-eqz v8, :cond_19

    .line 757
    iget-object v8, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v8, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    .line 758
    invoke-direct {v6, v15, v8}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->checkPressedProgress(Landroid/graphics/Canvas;Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;)V

    .line 759
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v9

    if-le v9, v1, :cond_14

    .line 760
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 762
    :cond_14
    iget-boolean v7, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->skipEnterAnimation:Z

    if-nez v7, :cond_18

    iget-boolean v7, v8, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->hasEnterAnimation:Z

    if-eqz v7, :cond_15

    iget-object v7, v8, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v7}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v7

    if-nez v7, :cond_15

    goto :goto_a

    .line 765
    :cond_15
    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getX()F

    move-result v7

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    div-float v9, v9, v17

    add-float/2addr v7, v9

    const/4 v9, 0x0

    cmpl-float v7, v7, v9

    if-lez v7, :cond_17

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getX()F

    move-result v7

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    div-float v9, v9, v17

    add-float/2addr v7, v9

    iget-object v9, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getWidth()I

    move-result v9

    int-to-float v9, v9

    cmpg-float v7, v7, v9

    if-gez v7, :cond_17

    .line 766
    iget-object v7, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->lastVisibleViewsTmp:Ljava/util/HashSet;

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_16

    .line 767
    invoke-virtual {v8, v4}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->play(I)Z

    add-int/lit8 v4, v4, 0x1e

    .line 770
    :cond_16
    iget-object v7, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->lastVisibleViews:Ljava/util/HashSet;

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 771
    :cond_17
    invoke-static {v8}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->access$1500(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;)Z

    move-result v7

    if-nez v7, :cond_18

    .line 772
    invoke-virtual {v8}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->resetAnimation()V

    :cond_18
    :goto_a
    const/4 v10, 0x1

    goto/16 :goto_10

    .line 775
    :cond_19
    iget-object v8, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->premiumLockContainer:Landroid/widget/FrameLayout;

    if-ne v7, v8, :cond_1d

    .line 776
    invoke-virtual {v7}, Landroid/view/View;->getX()F

    move-result v8

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    div-float v9, v9, v17

    add-float/2addr v8, v9

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_1c

    invoke-virtual {v7}, Landroid/view/View;->getX()F

    move-result v8

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    div-float v9, v9, v17

    add-float/2addr v8, v9

    iget-object v9, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getWidth()I

    move-result v9

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_1c

    .line 777
    iget-object v8, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->lastVisibleViewsTmp:Ljava/util/HashSet;

    invoke-virtual {v8, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1b

    .line 778
    iget v8, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->transitionProgress:F

    cmpl-float v8, v8, v5

    if-eqz v8, :cond_1a

    .line 779
    iget-object v8, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->premiumLockIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->resetAnimation()V

    .line 781
    :cond_1a
    iget-object v8, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->premiumLockIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v8, v4}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->play(I)V

    add-int/lit8 v4, v4, 0x1e

    .line 784
    :cond_1b
    iget-object v8, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->lastVisibleViews:Ljava/util/HashSet;

    invoke-virtual {v8, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 786
    :cond_1c
    iget-object v8, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->premiumLockIconView:Lorg/telegram/ui/Components/Premium/PremiumLockIconView;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/Premium/PremiumLockIconView;->resetAnimation()V

    .line 789
    :cond_1d
    :goto_b
    iget-object v8, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->customReactionsContainer:Landroid/widget/FrameLayout;

    if-ne v7, v8, :cond_23

    .line 790
    invoke-virtual {v7}, Landroid/view/View;->getX()F

    move-result v8

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    div-float v9, v9, v17

    add-float/2addr v8, v9

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_22

    invoke-virtual {v7}, Landroid/view/View;->getX()F

    move-result v8

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    div-float v9, v9, v17

    add-float/2addr v8, v9

    iget-object v9, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getWidth()I

    move-result v9

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_22

    .line 791
    iget-object v8, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->lastVisibleViewsTmp:Ljava/util/HashSet;

    invoke-virtual {v8, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_21

    .line 792
    iget v8, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->transitionProgress:F

    cmpl-float v8, v8, v5

    if-eqz v8, :cond_1e

    .line 793
    iget-object v8, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->customEmojiReactionsIconView:Lorg/telegram/ui/Components/ReactionsContainerLayout$InternalImageView;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/ReactionsContainerLayout$InternalImageView;->resetAnimation()V

    .line 795
    :cond_1e
    iget-object v8, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->customEmojiReactionsIconView:Lorg/telegram/ui/Components/ReactionsContainerLayout$InternalImageView;

    const/16 v9, 0x2008

    invoke-static {v9}, Lorg/telegram/messenger/LiteMode;->isEnabled(I)Z

    move-result v9

    if-nez v9, :cond_20

    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->getDevicePerformanceClass()I

    move-result v9

    const/4 v10, 0x1

    if-lt v9, v10, :cond_1f

    goto :goto_c

    :cond_1f
    const/4 v9, 0x0

    goto :goto_d

    :cond_20
    const/4 v10, 0x1

    :goto_c
    move v9, v10

    :goto_d
    invoke-virtual {v8, v4, v9}, Lorg/telegram/ui/Components/ReactionsContainerLayout$InternalImageView;->play(IZ)V

    add-int/lit8 v4, v4, 0x1e

    goto :goto_e

    :cond_21
    const/4 v10, 0x1

    .line 798
    :goto_e
    iget-object v8, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->lastVisibleViews:Ljava/util/HashSet;

    invoke-virtual {v8, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_22
    const/4 v10, 0x1

    .line 800
    iget-object v8, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->customEmojiReactionsIconView:Lorg/telegram/ui/Components/ReactionsContainerLayout$InternalImageView;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/ReactionsContainerLayout$InternalImageView;->resetAnimation()V

    goto :goto_f

    :cond_23
    const/4 v10, 0x1

    .line 803
    :goto_f
    invoke-direct {v6, v7}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->checkPressedProgressForOtherViews(Landroid/view/View;)V

    :goto_10
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_9

    :cond_24
    const/4 v4, 0x0

    const/4 v10, 0x1

    cmpl-float v7, v18, v4

    const/16 v4, 0x8

    if-lez v7, :cond_27

    .line 807
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getPullingLeftProgress()F

    move-result v7

    .line 808
    iget-object v8, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->nextRecentReaction:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v8

    const/4 v9, 0x2

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v11

    sub-int/2addr v8, v11

    add-int/2addr v1, v8

    int-to-float v1, v1

    .line 810
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v11

    iget-object v12, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->nextRecentReaction:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v12

    sub-int/2addr v11, v12

    int-to-float v11, v11

    div-float v11, v1, v11

    const/4 v12, 0x0

    invoke-static {v11, v5, v12}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v11

    mul-float/2addr v11, v7

    int-to-float v8, v8

    mul-float/2addr v11, v8

    .line 813
    iget-object v8, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->nextRecentReaction:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_25

    .line 814
    iget-object v8, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->nextRecentReaction:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 815
    iget-object v8, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->nextRecentReaction:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    invoke-virtual {v8}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->resetAnimation()V

    .line 816
    iget-object v8, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->nextRecentReaction:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->play(I)Z

    goto :goto_11

    :cond_25
    const/4 v12, 0x0

    :goto_11
    const/4 v8, 0x0

    .line 818
    invoke-static {v7, v5, v8}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v7

    .line 819
    iget-object v8, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->nextRecentReaction:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    invoke-virtual {v8, v7}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 820
    iget-object v8, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->nextRecentReaction:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    invoke-virtual {v8, v7}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 822
    iget v7, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->type:I

    if-eq v7, v10, :cond_26

    if-eq v7, v9, :cond_26

    .line 823
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    goto :goto_12

    .line 825
    :cond_26
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    :goto_12
    neg-int v4, v4

    int-to-float v4, v4

    .line 827
    iget-object v7, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->nextRecentReaction:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    iget-object v8, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getX()F

    move-result v8

    add-float/2addr v8, v1

    sub-float/2addr v8, v11

    add-float/2addr v8, v4

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 828
    iget-object v1, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->nextRecentReaction:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2a

    .line 829
    iget-object v1, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->nextRecentReaction:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    invoke-virtual {v1, v12}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_13

    .line 832
    :cond_27
    iget-object v1, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->nextRecentReaction:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-eq v1, v4, :cond_28

    iget-boolean v1, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->isHiddenNextReaction:Z

    if-eqz v1, :cond_28

    .line 833
    iget-object v1, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->nextRecentReaction:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 835
    :cond_28
    iget-object v1, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->nextRecentReaction:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 836
    iget-object v1, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->nextRecentReaction:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    goto :goto_13

    :cond_29
    const/4 v10, 0x1

    .line 841
    :cond_2a
    :goto_13
    iget-boolean v1, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->skipDraw:Z

    if-eqz v1, :cond_2b

    iget-object v1, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->reactionsWindow:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    if-eqz v1, :cond_2b

    .line 842
    iget v0, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->customEmojiReactionsEnterProgress:F

    const v1, 0x3e4ccccd    # 0.2f

    div-float/2addr v0, v1

    sub-float v0, v5, v0

    const/4 v1, 0x0

    invoke-static {v0, v5, v1}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    iget v1, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->customEmojiReactionsEnterProgress:F

    sub-float/2addr v5, v1

    mul-float/2addr v0, v5

    mul-float v0, v0, v21

    float-to-int v5, v0

    .line 843
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v4, v16

    .line 844
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->drawBubbles(Landroid/graphics/Canvas;FFFI)V

    .line 845
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    .line 849
    :cond_2b
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->showCustomEmojiReaction()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 851
    iget-object v4, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->mPath:Landroid/graphics/Path;

    invoke-virtual {v15, v4}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 853
    :cond_2c
    sget-boolean v4, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v4, :cond_2e

    iget-boolean v4, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->mirrorX:Z

    if-eqz v4, :cond_2d

    goto :goto_14

    :cond_2d
    move v13, v10

    goto :goto_15

    :cond_2e
    :goto_14
    const/4 v13, -0x1

    :goto_15
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    mul-int/2addr v13, v4

    int-to-float v4, v13

    iget v7, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->transitionProgress:F

    sub-float v7, v5, v7

    mul-float/2addr v4, v7

    const/4 v7, 0x0

    invoke-virtual {v15, v4, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 854
    iget-object v4, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    move/from16 v9, v22

    neg-float v8, v9

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 855
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    if-nez v1, :cond_30

    .line 858
    iget-object v1, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->leftShadowPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_2f

    .line 859
    iget v1, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->leftAlpha:F

    iget v4, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->transitionProgress:F

    mul-float/2addr v1, v4

    invoke-static {v1, v5, v7}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    .line 860
    iget-object v4, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->leftShadowPaint:Landroid/graphics/Paint;

    mul-float v1, v1, v21

    float-to-int v1, v1

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 861
    iget-object v1, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rect:Landroid/graphics/RectF;

    iget-object v4, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->leftShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v15, v1, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 863
    :cond_2f
    iget-object v1, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rightShadowPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_30

    .line 864
    iget v1, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rightAlpha:F

    iget v4, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->transitionProgress:F

    mul-float/2addr v1, v4

    const/4 v4, 0x0

    invoke-static {v1, v5, v4}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v1

    .line 865
    iget-object v4, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rightShadowPaint:Landroid/graphics/Paint;

    mul-float v1, v1, v21

    float-to-int v1, v1

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 866
    iget-object v1, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rect:Landroid/graphics/RectF;

    iget-object v4, v6, Lorg/telegram/ui/Components/ReactionsContainerLayout;->rightShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v15, v1, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 869
    :cond_30
    invoke-virtual {v15, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    const/16 v5, 0xff

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v4, v16

    .line 871
    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->drawBubbles(Landroid/graphics/Canvas;FFFI)V

    .line 872
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1979
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1982
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public drawBubbles(Landroid/graphics/Canvas;)V
    .locals 9

    .line 876
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

    .line 877
    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->bigCircleRadius:F

    mul-float v5, v0, v6

    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->smallCircleRadius:F

    mul-float v7, v0, v6

    .line 878
    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->customEmojiReactionsEnterProgress:F

    const v2, 0x3e4ccccd    # 0.2f

    div-float/2addr v0, v2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v0

    iget v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->customEmojiReactionsEnterProgress:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v8, v0

    move-object v3, p0

    move-object v4, p1

    .line 879
    invoke-direct/range {v3 .. v8}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->drawBubbles(Landroid/graphics/Canvas;FFFI)V

    return-void
.end method

.method public expandSize()F
    .locals 2

    .line 2091
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getPullingLeftProgress()F

    move-result v0

    const/4 v1, 0x6

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    return v0
.end method

.method public getDelegate()Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;
    .locals 1

    .line 1367
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->delegate:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;

    return-object v0
.end method

.method public getItemsCount()I
    .locals 2

    .line 1268
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->visibleReactionsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->showCustomEmojiReaction()Z

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getPullingLeftProgress()F
    .locals 3

    .line 1015
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

.method public getReactionsWindow()Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;
    .locals 1

    .line 542
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->reactionsWindow:Lorg/telegram/ui/Components/Reactions/CustomEmojiReactionsWindow;

    return-object v0
.end method

.method public getTopOffset()F
    .locals 1

    .line 1426
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->hasHint:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getTotalWidth()I
    .locals 3

    .line 1259
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->getItemsCount()I

    move-result v0

    .line 1260
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->showCustomEmojiReaction()Z

    move-result v1

    const/16 v2, 0x24

    if-nez v1, :cond_0

    .line 1261
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    mul-int/2addr v1, v0

    const/4 v2, 0x2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/lit8 v0, v0, -0x1

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    const/16 v0, 0x10

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr v1, v0

    return v1

    .line 1263
    :cond_0
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    mul-int/2addr v1, v0

    const/4 v0, 0x4

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method public isFlippedVertically()Z
    .locals 1

    .line 597
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->isFlippedVertically:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1955
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1956
    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onCustomEmojiWindowOpened()V
    .locals 1

    const/4 v0, 0x0

    .line 1332
    iput v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pullingLeftOffset:F

    .line 1333
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->customReactionsContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 1334
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1336
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1961
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1962
    iget v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->chatInfoDidLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    return-void
.end method

.method public onReactionClicked(Landroid/view/View;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;Z)V
    .locals 2

    .line 1287
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->delegate:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 1288
    invoke-interface {v0, p1, p2, p3, v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;->onReactionClicked(Landroid/view/View;Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;ZZ)V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1020
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1021
    invoke-direct {p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->invalidateShaders()V

    return-void
.end method

.method public prepareAnimation(Z)V
    .locals 0

    .line 1295
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->prepareAnimation:Z

    .line 1296
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x1

    .line 1379
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->isHiddenNextReaction:Z

    const/4 v0, 0x0

    .line 1380
    iput v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedReactionPosition:I

    const/4 v1, 0x0

    .line 1381
    iput v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedProgress:F

    .line 1382
    iput v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pullingLeftOffset:F

    const/4 v1, 0x0

    .line 1383
    iput-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->pressedReaction:Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    .line 1384
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->clicked:Z

    .line 1385
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Components/ReactionsContainerLayout;)V

    invoke-static {v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->forEachViews(Landroidx/recyclerview/widget/RecyclerView;Lcom/google/android/exoplayer2/util/Consumer;)V

    .line 1399
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->lastVisibleViews:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1400
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 1401
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->customReactionsContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 1402
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1404
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setAlpha(F)V
    .locals 2

    .line 1987
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    .line 1988
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->lastVisibleViews:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    const/4 v0, 0x0

    .line 1989
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1990
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    if-eqz v1, :cond_0

    .line 1991
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    .line 1992
    invoke-virtual {v1}, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->resetAnimation()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1996
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method public setBubbleOffset(F)V
    .locals 0

    .line 1430
    iput p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->bubblesOffset:F

    return-void
.end method

.method public setChatScrimView(Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;)V
    .locals 0

    .line 1363
    iput-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->chatScrimPopupContainerLayout:Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;

    return-void
.end method

.method public setCurrentAccount(I)V
    .locals 0

    .line 1371
    iput p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->currentAccount:I

    return-void
.end method

.method public setCustomEmojiEnterProgress(F)V
    .locals 2

    .line 1272
    iput p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->customEmojiReactionsEnterProgress:F

    .line 1273
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->chatScrimPopupContainerLayout:Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;

    if-eqz v0, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    .line 1274
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->setPopupAlpha(F)V

    .line 1276
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setCustomEmojiReactionsBackground(Z)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1301
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->customEmojiReactionsIconView:Lorg/telegram/ui/Components/ReactionsContainerLayout$InternalImageView;

    const/16 v0, 0x1c

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    const/4 v1, 0x0

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_listSelector:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    const/16 v3, 0x28

    invoke-static {v2, v3}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->createSimpleSelectorCircleDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1303
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->customEmojiReactionsIconView:Lorg/telegram/ui/Components/ReactionsContainerLayout$InternalImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;)V
    .locals 0

    .line 593
    iput-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->delegate:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionsContainerDelegate;

    return-void
.end method

.method public setFlippedVertically(Z)V
    .locals 0

    .line 601
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->isFlippedVertically:Z

    .line 602
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V
    .locals 0

    .line 1375
    iput-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->fragment:Lorg/telegram/ui/ActionBar/BaseFragment;

    return-void
.end method

.method public setHint(Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x1

    .line 1408
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->hasHint:Z

    .line 1409
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->hintView:Landroid/widget/TextView;

    const/high16 v2, 0x41400000    # 12.0f

    .line 1410
    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1411
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->hintView:Landroid/widget/TextView;

    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteBlackText:I

    iget-object v3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v2, v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1412
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->hintView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1413
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->hintView:Landroid/widget/TextView;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1414
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->hintView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 1415
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->hintView:Landroid/widget/TextView;

    const/4 v0, -0x1

    const/4 v1, -0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1417
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->nextRecentReaction:Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v0, 0x14

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1418
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    return-void
.end method

.method public setMessage(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 7

    .line 1045
    iput-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->messageObject:Lorg/telegram/messenger/MessageObject;

    .line 1047
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 1048
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isForwardedChannelPost()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1049
    iget p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v3

    neg-long v3, v3

    invoke-virtual {p2, v3, v4}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p2

    if-nez p2, :cond_0

    .line 1051
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v3

    neg-long v3, v3

    iput-wide v3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->waitingLoadingChatId:J

    .line 1052
    iget p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getFromChatId()J

    move-result-wide v3

    neg-long v3, v3

    invoke-virtual {p2, v3, v4, v1, v2}, Lorg/telegram/messenger/MessagesController;->loadFullChat(JIZ)V

    const/4 p1, 0x4

    .line 1053
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void

    .line 1057
    :cond_0
    iget v3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 1058
    iget p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p2

    iput-boolean p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->allReactionsAvailable:Z

    .line 1059
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->fillRecentReactionsList(Ljava/util/List;)V

    goto/16 :goto_2

    :cond_1
    if-eqz p2, :cond_9

    .line 1061
    iget-object v3, p2, Lorg/telegram/tgnet/TLRPC$ChatFull;->available_reactions:Lorg/telegram/tgnet/TLRPC$ChatReactions;

    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_chatReactionsAll;

    if-eqz v4, :cond_3

    .line 1062
    iget v3, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    iget-wide v4, p2, Lorg/telegram/tgnet/TLRPC$ChatFull;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v3, p2}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 1063
    invoke-static {p2}, Lorg/telegram/messenger/ChatObject;->isChannelAndNotMegaGroup(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 1064
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->allReactionsAvailable:Z

    goto :goto_0

    .line 1066
    :cond_2
    iput-boolean v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->allReactionsAvailable:Z

    .line 1068
    :goto_0
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->fillRecentReactionsList(Ljava/util/List;)V

    goto/16 :goto_2

    .line 1069
    :cond_3
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_chatReactionsSome;

    if-eqz v4, :cond_7

    .line 1070
    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_chatReactionsSome;

    .line 1071
    iget-object p2, v3, Lorg/telegram/tgnet/TLRPC$TL_chatReactionsSome;->reactions:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Reaction;

    .line 1072
    iget v4, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MediaDataController;->getInstance(I)Lorg/telegram/messenger/MediaDataController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MediaDataController;->getEnabledReactionsList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;

    .line 1073
    instance-of v6, v3, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    if-eqz v6, :cond_6

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$TL_availableReaction;->reaction:Ljava/lang/String;

    move-object v6, v3

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_reactionEmoji;->emoticon:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1074
    invoke-static {v3}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTLReaction(Lorg/telegram/tgnet/TLRPC$Reaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1076
    :cond_6
    instance-of v5, v3, Lorg/telegram/tgnet/TLRPC$TL_reactionCustomEmoji;

    if-eqz v5, :cond_5

    .line 1077
    invoke-static {v3}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTLReaction(Lorg/telegram/tgnet/TLRPC$Reaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1083
    :cond_7
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    if-nez v3, :cond_8

    goto :goto_2

    .line 1084
    :cond_8
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

    .line 1088
    :cond_9
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->allReactionsAvailable:Z

    .line 1089
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->fillRecentReactionsList(Ljava/util/List;)V

    .line 1091
    :cond_a
    :goto_2
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->filterReactions(Ljava/util/List;)V

    .line 1092
    iget-boolean p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->allReactionsAvailable:Z

    if-nez p2, :cond_b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    const/16 v3, 0x10

    if-gt p2, v3, :cond_d

    :cond_b
    iget-boolean p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->allReactionsAvailable:Z

    if-eqz p2, :cond_c

    iget p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p2

    if-nez p2, :cond_c

    iget p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/MessagesController;->premiumFeaturesBlocked()Z

    move-result p2

    if-eqz p2, :cond_c

    goto :goto_3

    :cond_c
    move v2, v1

    :cond_d
    :goto_3
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->showExpandableReactions:Z

    .line 1093
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setVisibleReactionsList(Ljava/util/List;)V

    if-eqz p1, :cond_f

    .line 1095
    iget-object p2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    if-eqz p2, :cond_f

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$MessageReactions;->results:Ljava/util/ArrayList;

    if-eqz p2, :cond_f

    .line 1096
    :goto_4
    iget-object p2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$MessageReactions;->results:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v1, p2, :cond_f

    .line 1097
    iget-object p2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$MessageReactions;->results:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$ReactionCount;

    iget-boolean p2, p2, Lorg/telegram/tgnet/TLRPC$ReactionCount;->chosen:Z

    if-eqz p2, :cond_e

    .line 1098
    iget-object p2, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->selectedReactions:Ljava/util/HashSet;

    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->reactions:Lorg/telegram/tgnet/TLRPC$TL_messageReactions;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageReactions;->results:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$ReactionCount;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$ReactionCount;->reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    invoke-static {v0}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTLReaction(Lorg/telegram/tgnet/TLRPC$Reaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_f
    return-void
.end method

.method public setMirrorX(Z)V
    .locals 0

    .line 606
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->mirrorX:Z

    .line 607
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setOnSwitchedToLoopView(Ljava/lang/Runnable;)V
    .locals 0

    .line 534
    iput-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->onSwitchedToLoopView:Ljava/lang/Runnable;

    return-void
.end method

.method public setParentLayout(Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;)V
    .locals 0

    .line 2095
    iput-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->parentLayout:Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;

    return-void
.end method

.method public setSelectedReaction(Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;)V
    .locals 1

    .line 1114
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->selectedReactions:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    if-eqz p1, :cond_0

    .line 1116
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->selectedReactions:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1118
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->listAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setSkipDraw(Z)V
    .locals 4

    .line 1310
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->skipDraw:Z

    if-eq v0, p1, :cond_4

    .line 1311
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->skipDraw:Z

    if-nez p1, :cond_3

    const/4 p1, 0x0

    move v0, p1

    .line 1313
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1314
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    if-eqz v1, :cond_2

    .line 1315
    iget-object v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->recyclerListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;

    .line 1316
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

    .line 1317
    :cond_0
    iget-object v2, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->loopImageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1318
    iget-object v2, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->enterImageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1319
    iget-boolean v2, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->shouldSwitchToLoopView:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 1320
    iput-boolean v2, v1, Lorg/telegram/ui/Components/ReactionsContainerLayout$ReactionHolderView;->switchedToLoopView:Z

    .line 1323
    :cond_1
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1327
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_4
    return-void
.end method

.method public setStoryItem(Lorg/telegram/tgnet/tl/TL_stories$StoryItem;)V
    .locals 1

    .line 1105
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->selectedReactions:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    if-eqz p1, :cond_0

    .line 1106
    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->sent_reaction:Lorg/telegram/tgnet/TLRPC$Reaction;

    if-eqz p1, :cond_0

    .line 1107
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->selectedReactions:Ljava/util/HashSet;

    invoke-static {p1}, Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;->fromTLReaction(Lorg/telegram/tgnet/TLRPC$Reaction;)Lorg/telegram/ui/Components/Reactions/ReactionsLayoutInBubble$VisibleReaction;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1109
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->listAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setTop(Z)V
    .locals 0

    .line 1422
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->isTop:Z

    return-void
.end method

.method public setTransitionProgress(F)V
    .locals 2

    .line 1037
    iput p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->transitionProgress:F

    .line 1038
    iget-object v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->parentLayout:Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;

    if-eqz v0, :cond_1

    .line 1039
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->animatePopup:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->allowSmoothEnterTransition()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ChatScrimPopupContainerLayout;->setReactionsTransitionProgress(F)V

    .line 1041
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setTranslationX(F)V
    .locals 1

    .line 2001
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 2002
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    :cond_0
    return-void
.end method

.method public showCustomEmojiReaction()Z
    .locals 1

    .line 571
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->allReactionsAvailable:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->showExpandableReactions:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public showExpandableReactions()Z
    .locals 1

    .line 515
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->showExpandableReactions:Z

    return v0
.end method

.method public startEnterAnimation(Z)V
    .locals 4

    .line 1236
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->animatePopup:Z

    const/4 p1, 0x0

    .line 1237
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setTransitionProgress(F)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 1238
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->setAlpha(F)V

    .line 1239
    iget-object p1, p0, Lorg/telegram/ui/Components/ReactionsContainerLayout;->notificationsLocker:Lorg/telegram/messenger/AnimationNotificationsLocker;

    invoke-virtual {p1}, Lorg/telegram/messenger/AnimationNotificationsLocker;->lock()V

    .line 1241
    invoke-static {}, Lorg/telegram/ui/Components/ReactionsContainerLayout;->allowSmoothEnterTransition()Z

    move-result p1

    const/high16 v0, 0x3f000000    # 0.5f

    const-wide/16 v1, 0xfa

    const/4 v3, 0x2

    if-eqz p1, :cond_0

    .line 1242
    sget-object p1, Lorg/telegram/ui/Components/ReactionsContainerLayout;->TRANSITION_PROGRESS_VALUE:Landroid/util/Property;

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {p0, p1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 1243
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1, v0}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0

    .line 1245
    :cond_0
    sget-object p1, Lorg/telegram/ui/Components/ReactionsContainerLayout;->TRANSITION_PROGRESS_VALUE:Landroid/util/Property;

    new-array v3, v3, [F

    fill-array-data v3, :array_1

    invoke-static {p0, p1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 1246
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1, v0}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1248
    :goto_0
    new-instance v0, Lorg/telegram/ui/Components/ReactionsContainerLayout$8;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ReactionsContainerLayout$8;-><init>(Lorg/telegram/ui/Components/ReactionsContainerLayout;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1255
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
