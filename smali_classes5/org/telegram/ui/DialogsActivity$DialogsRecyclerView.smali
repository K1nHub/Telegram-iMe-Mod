.class public Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;
.super Lorg/telegram/ui/Components/BlurredRecyclerView;
.source "DialogsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/DialogsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DialogsRecyclerView"
.end annotation


# instance fields
.field animateFromSelectorPosition:F

.field animateSwitchingSelector:Z

.field private animationSupportListView:Lorg/telegram/ui/Components/RecyclerListView;

.field animationSupportViewsByDialogId:Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LongSparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private appliedPaddingTop:I

.field private firstLayout:Z

.field private ignoreLayout:Z

.field lastDrawSelectorY:F

.field private lastListPadding:I

.field paint:Landroid/graphics/Paint;

.field private final parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

.field rectF:Landroid/graphics/RectF;

.field private rightFragmentOpenedProgress:F

.field private selectorPaint:Landroid/graphics/Paint;

.field selectorPositionProgress:F

.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;

.field public updateDialogsOnNextDraw:Z


# direct methods
.method public static synthetic $r8$lambda$g-JXdJPRqT8nH8uKhhG1HpzB_z8(Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->lambda$onTouchEvent$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/ui/DialogsActivity;Landroid/content/Context;Lorg/telegram/ui/DialogsActivity$ViewPage;)V
    .locals 0

    .line 2988
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    .line 2989
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/BlurredRecyclerView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2970
    iput-boolean p1, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->firstLayout:Z

    .line 2978
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->paint:Landroid/graphics/Paint;

    .line 2979
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->rectF:Landroid/graphics/RectF;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 2984
    iput p1, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->selectorPositionProgress:F

    .line 2990
    iput-object p3, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    const/16 p1, 0xc8

    .line 2991
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/Components/BlurredRecyclerView;->additionalClipBottom:I

    return-void
.end method

.method static synthetic access$20800(Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;ZLorg/telegram/ui/Cells/DialogCell;)V
    .locals 0

    .line 2967
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->toggleArchiveHidden(ZLorg/telegram/ui/Cells/DialogCell;)V

    return-void
.end method

.method static synthetic access$28600(Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;)V
    .locals 0

    .line 2967
    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->updatePullState()V

    return-void
.end method

.method private drawMovingViewsOverlayed()Z
    .locals 1

    .line 3262
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$onTouchEvent$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 3497
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->setViewsOffset(F)V

    return-void
.end method

.method private toggleArchiveHidden(ZLorg/telegram/ui/Cells/DialogCell;)V
    .locals 7

    .line 3369
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->toggleArchiveHidden()V

    .line 3370
    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->archiveHidden:Z

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    .line 3372
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->access$16802(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 3373
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->access$16902(Lorg/telegram/ui/DialogsActivity;Z)Z

    const/4 v0, 0x0

    .line 3374
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    sub-int/2addr p2, v3

    add-int/2addr v2, p2

    sget-object p2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p0, v0, v2, p2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    if-eqz p1, :cond_0

    .line 3376
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1, v1}, Lorg/telegram/ui/DialogsActivity;->access$17002(Lorg/telegram/ui/DialogsActivity;Z)Z

    goto :goto_0

    .line 3378
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->updatePullState()V

    .line 3381
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/DialogsActivity;->getUndoView()Lorg/telegram/ui/Components/UndoView;

    move-result-object v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 3383
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsActivity;->getUndoView()Lorg/telegram/ui/Components/UndoView;

    move-result-object v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/UndoView;->showWithAction(JILjava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 3384
    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->updatePullState()V

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 3386
    invoke-virtual {p2}, Lorg/telegram/ui/Cells/DialogCell;->resetPinnedArchiveState()V

    .line 3387
    invoke-virtual {p2}, Landroid/view/ViewGroup;->invalidate()V

    :cond_3
    :goto_1
    return-void
.end method

.method private updatePullState()V
    .locals 3

    .line 3393
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    sget-boolean v1, Lorg/telegram/messenger/SharedConfig;->archiveHidden:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$16202(Lorg/telegram/ui/DialogsActivity$ViewPage;I)I

    .line 3394
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15400(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/PullForegroundDrawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3395
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15400(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/PullForegroundDrawable;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$16200(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/PullForegroundDrawable;->setWillDraw(Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3028
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 3029
    sget p2, Lorg/telegram/ui/DialogsActivity;->viewOffset:F

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    const/4 p2, 0x0

    .line 3030
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 3031
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method protected allowSelectChildAtPosition(Landroid/view/View;)Z
    .locals 1

    .line 3530
    instance-of v0, p1, Lorg/telegram/ui/Cells/HeaderCell;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 3061
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3062
    iget v1, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->rightFragmentOpenedProgress:F

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    cmpl-float v1, v1, v9

    if-lez v1, :cond_0

    .line 3063
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    invoke-static {}, Lorg/telegram/ui/RightSlidingDialogContainer;->getRightPaddingSize()I

    move-result v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    iget v3, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->rightFragmentOpenedProgress:F

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v8, v10, v10, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 3064
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->paint:Landroid/graphics/Paint;

    const-string v2, "chats_pinnedOverlay"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3065
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->rightFragmentOpenedProgress:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3066
    invoke-static {}, Lorg/telegram/ui/RightSlidingDialogContainer;->getRightPaddingSize()I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 3069
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v7

    .line 3070
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    iget v2, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->rightFragmentOpenedProgress:F

    int-to-float v3, v7

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3071
    invoke-static {}, Lorg/telegram/ui/RightSlidingDialogContainer;->getRightPaddingSize()I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v2, v1

    const/4 v3, 0x0

    invoke-static {}, Lorg/telegram/ui/RightSlidingDialogContainer;->getRightPaddingSize()I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    sub-int/2addr v1, v11

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 3072
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_0
    const/high16 v1, -0x80000000

    const v2, 0x7fffffff

    .line 3078
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->animationSupportListView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v3, :cond_3

    .line 3079
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->animationSupportViewsByDialogId:Landroidx/collection/LongSparseArray;

    if-nez v3, :cond_1

    .line 3080
    new-instance v3, Landroidx/collection/LongSparseArray;

    invoke-direct {v3}, Landroidx/collection/LongSparseArray;-><init>()V

    iput-object v3, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->animationSupportViewsByDialogId:Landroidx/collection/LongSparseArray;

    :cond_1
    const/4 v3, 0x0

    .line 3083
    :goto_0
    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->animationSupportListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 3084
    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->animationSupportListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3085
    instance-of v5, v4, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v5

    if-lez v5, :cond_2

    .line 3086
    iget-object v5, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->animationSupportViewsByDialogId:Landroidx/collection/LongSparseArray;

    move-object v6, v4

    check-cast v6, Lorg/telegram/ui/Cells/DialogCell;

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/DialogCell;->getDialogId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7, v4}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    const/high16 v4, 0x4f000000

    const/high16 v5, -0x31000000

    const/4 v15, 0x0

    .line 3094
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    const/high16 v12, 0x3f800000    # 1.0f

    if-ge v15, v6, :cond_11

    .line 3095
    invoke-virtual {v0, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 3097
    instance-of v13, v6, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v13, :cond_d

    .line 3098
    move-object v13, v6

    check-cast v13, Lorg/telegram/ui/Cells/DialogCell;

    .line 3099
    iget v14, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->rightFragmentOpenedProgress:F

    invoke-virtual {v13, v14}, Lorg/telegram/ui/Cells/DialogCell;->setRightFragmentOpenedProgress(F)V

    .line 3100
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 3101
    invoke-virtual {v13}, Lorg/telegram/ui/Cells/DialogCell;->getDialogId()J

    move-result-wide v16

    iget-object v14, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v14}, Lorg/telegram/ui/DialogsActivity;->access$15500(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/messenger/MessagesStorage$TopicKey;

    move-result-object v14

    iget-wide v7, v14, Lorg/telegram/messenger/MessagesStorage$TopicKey;->dialogId:J

    cmp-long v14, v16, v7

    if-nez v14, :cond_4

    const/4 v7, 0x1

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v13, v7}, Lorg/telegram/ui/Cells/DialogCell;->setDialogSelected(Z)V

    .line 3103
    :cond_5
    iget-object v7, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->animationSupportViewsByDialogId:Landroidx/collection/LongSparseArray;

    if-eqz v7, :cond_9

    iget-object v8, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->animationSupportListView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v8, :cond_9

    .line 3104
    invoke-virtual {v13}, Lorg/telegram/ui/Cells/DialogCell;->getDialogId()J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 3106
    iget-object v9, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->animationSupportViewsByDialogId:Landroidx/collection/LongSparseArray;

    move v10, v15

    invoke-virtual {v13}, Lorg/telegram/ui/Cells/DialogCell;->getDialogId()J

    move-result-wide v14

    invoke-virtual {v9, v14, v15}, Landroidx/collection/LongSparseArray;->delete(J)V

    if-eqz v7, :cond_a

    .line 3108
    iget-object v9, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->animationSupportListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v9, v7}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v9

    if-le v9, v1, :cond_6

    move v1, v9

    :cond_6
    if-ge v9, v2, :cond_7

    move v2, v9

    .line 3115
    :cond_7
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getTop()I

    move-result v14

    sub-int/2addr v9, v14

    int-to-float v9, v9

    iget v14, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->rightFragmentOpenedProgress:F

    mul-float v9, v9, v14

    iput v9, v13, Lorg/telegram/ui/Cells/DialogCell;->collapseOffset:F

    .line 3117
    invoke-virtual {v13}, Landroid/view/ViewGroup;->getTop()I

    move-result v9

    int-to-float v9, v9

    iget v14, v13, Lorg/telegram/ui/Cells/DialogCell;->collapseOffset:F

    add-float/2addr v9, v14

    cmpg-float v9, v9, v4

    if-gez v9, :cond_8

    .line 3118
    invoke-virtual {v13}, Landroid/view/ViewGroup;->getTop()I

    move-result v4

    int-to-float v4, v4

    iget v9, v13, Lorg/telegram/ui/Cells/DialogCell;->collapseOffset:F

    add-float/2addr v4, v9

    .line 3120
    :cond_8
    invoke-virtual {v13}, Landroid/view/ViewGroup;->getTop()I

    move-result v9

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v14

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    iget v15, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->rightFragmentOpenedProgress:F

    invoke-static {v14, v7, v15}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v7

    add-int/2addr v9, v7

    int-to-float v7, v9

    .line 3121
    iget v9, v13, Lorg/telegram/ui/Cells/DialogCell;->collapseOffset:F

    add-float v14, v7, v9

    cmpl-float v14, v14, v5

    if-lez v14, :cond_a

    add-float/2addr v7, v9

    move v5, v7

    goto :goto_3

    :cond_9
    move v10, v15

    .line 3126
    :cond_a
    :goto_3
    iget-boolean v7, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->updateDialogsOnNextDraw:Z

    if-eqz v7, :cond_b

    const/4 v7, 0x0

    .line 3127
    invoke-virtual {v13, v7, v11}, Lorg/telegram/ui/Cells/DialogCell;->update(IZ)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 3128
    invoke-virtual {v0, v13}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v7

    if-ltz v7, :cond_b

    .line 3130
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 3134
    :cond_b
    invoke-virtual {v13}, Lorg/telegram/ui/Cells/DialogCell;->getDialogId()J

    move-result-wide v16

    iget-object v7, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v7, v7, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    invoke-virtual {v7}, Lorg/telegram/ui/RightSlidingDialogContainer;->getCurrentFragmetDialogId()J

    move-result-wide v19

    cmp-long v7, v16, v19

    move v9, v1

    if-nez v7, :cond_c

    move/from16 v16, v4

    move/from16 v17, v5

    move-object v7, v13

    move-object v15, v7

    goto :goto_4

    :cond_c
    move-object v15, v3

    move/from16 v16, v4

    move/from16 v17, v5

    move-object v7, v13

    :goto_4
    move v13, v2

    goto :goto_5

    :cond_d
    move v10, v15

    move v9, v1

    move v13, v2

    move-object v15, v3

    move/from16 v16, v4

    move/from16 v17, v5

    const/4 v7, 0x0

    .line 3138
    :goto_5
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->animationSupportListView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v1, :cond_10

    .line 3139
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 3140
    invoke-virtual {v6}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {v6}, Landroid/view/View;->getY()F

    move-result v2

    move-object/from16 v4, p1

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    if-nez v7, :cond_e

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3142
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    iget v14, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->rightFragmentOpenedProgress:F

    sub-float/2addr v12, v14

    const/high16 v14, 0x437f0000    # 255.0f

    mul-float v12, v12, v14

    float-to-int v12, v12

    const/16 v14, 0x1f

    move/from16 v18, v1

    move-object/from16 v1, p1

    move-object v11, v4

    move/from16 v4, v18

    move/from16 v21, v5

    move v5, v8

    move-object v8, v6

    move v6, v12

    move-object v12, v7

    move v7, v14

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    goto :goto_6

    :cond_e
    move-object v11, v4

    move/from16 v21, v5

    move-object v8, v6

    move-object v12, v7

    .line 3144
    :goto_6
    invoke-virtual {v8, v11}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    if-eqz v12, :cond_f

    if-eq v12, v15, :cond_f

    const/4 v1, 0x0

    .line 3147
    iput v1, v12, Lorg/telegram/ui/Cells/DialogCell;->collapseOffset:F

    :cond_f
    move/from16 v1, v21

    .line 3149
    invoke-virtual {v11, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_7

    :cond_10
    move-object/from16 v11, p1

    :goto_7
    add-int/lit8 v1, v10, 0x1

    move-object v8, v11

    move v2, v13

    move-object v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    const/4 v10, 0x0

    const/4 v11, 0x1

    move v15, v1

    move v1, v9

    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_11
    move-object v11, v8

    if-eqz v3, :cond_19

    .line 3155
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3156
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getY()F

    move-result v4

    iget v6, v3, Lorg/telegram/ui/Cells/DialogCell;->collapseOffset:F

    add-float/2addr v4, v6

    iget-object v6, v3, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v6}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v6

    add-float/2addr v4, v6

    iput v4, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->lastDrawSelectorY:F

    const/4 v4, 0x0

    .line 3157
    iput v4, v3, Lorg/telegram/ui/Cells/DialogCell;->collapseOffset:F

    .line 3158
    iget v6, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->selectorPositionProgress:F

    cmpl-float v7, v6, v12

    if-eqz v7, :cond_12

    const v7, 0x3da3d70a    # 0.08f

    add-float/2addr v6, v7

    .line 3159
    iput v6, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->selectorPositionProgress:F

    .line 3160
    invoke-static {v6, v12, v4}, Lorg/telegram/messenger/Utilities;->clamp(FFF)F

    move-result v4

    iput v4, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->selectorPositionProgress:F

    .line 3161
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 3163
    :cond_12
    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    iget v6, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->selectorPositionProgress:F

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/CubicBezierInterpolator;->getInterpolation(F)F

    move-result v4

    cmpl-float v6, v4, v12

    if-eqz v6, :cond_14

    .line 3165
    iget v6, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->animateFromSelectorPosition:F

    const/high16 v7, -0x31000000

    cmpl-float v8, v6, v7

    if-eqz v8, :cond_14

    .line 3166
    iget v7, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->lastDrawSelectorY:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    const v8, 0x3ecccccd    # 0.4f

    mul-float v7, v7, v8

    cmpg-float v6, v6, v7

    if-gez v6, :cond_13

    .line 3167
    iget v6, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->animateFromSelectorPosition:F

    iget v7, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->lastDrawSelectorY:F

    invoke-static {v6, v7, v4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v6

    iput v6, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->lastDrawSelectorY:F

    goto :goto_8

    :cond_13
    const/4 v14, 0x1

    goto :goto_9

    :cond_14
    :goto_8
    const/4 v14, 0x0

    .line 3173
    :goto_9
    iget-boolean v6, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->animateSwitchingSelector:Z

    if-eqz v6, :cond_15

    if-nez v14, :cond_16

    iget v6, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->animateFromSelectorPosition:F

    const/high16 v7, -0x31000000

    cmpl-float v6, v6, v7

    if-nez v6, :cond_15

    goto :goto_a

    :cond_15
    iget v4, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->rightFragmentOpenedProgress:F

    :cond_16
    :goto_a
    sub-float v4, v12, v4

    cmpl-float v6, v4, v12

    if-nez v6, :cond_17

    const/high16 v6, -0x31000000

    .line 3175
    iput v6, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->lastDrawSelectorY:F

    :cond_17
    const/4 v6, 0x5

    .line 3177
    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    mul-float v6, v6, v4

    .line 3178
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    const/4 v7, 0x4

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    add-float/2addr v8, v6

    iget v9, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->lastDrawSelectorY:F

    const/4 v10, 0x1

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v9, v13

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v13, v6

    iget v6, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->lastDrawSelectorY:F

    iget-object v3, v3, Lorg/telegram/ui/Cells/DialogCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v3

    add-float/2addr v6, v3

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v6, v3

    invoke-virtual {v4, v8, v9, v13, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3179
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->selectorPaint:Landroid/graphics/Paint;

    if-nez v3, :cond_18

    .line 3180
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v10}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->selectorPaint:Landroid/graphics/Paint;

    .line 3182
    :cond_18
    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->selectorPaint:Landroid/graphics/Paint;

    const-string v6, "featuredStickers_addButton"

    invoke-static {v6}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 3183
    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->selectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v11, v4, v3, v6, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 3184
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    const/high16 v3, -0x31000000

    goto :goto_b

    :cond_19
    const/high16 v3, -0x31000000

    .line 3186
    iput v3, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->lastDrawSelectorY:F

    .line 3190
    :goto_b
    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->animationSupportViewsByDialogId:Landroidx/collection/LongSparseArray;

    if-eqz v4, :cond_20

    const/high16 v13, 0x4f000000

    const/4 v14, 0x0

    .line 3193
    :goto_c
    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->animationSupportViewsByDialogId:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4}, Landroidx/collection/LongSparseArray;->size()I

    move-result v4

    if-ge v14, v4, :cond_1c

    .line 3194
    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->animationSupportViewsByDialogId:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4, v14}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 3195
    iget-object v6, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->animationSupportListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6, v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v6

    if-ge v6, v2, :cond_1a

    .line 3196
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v7, v7, v3

    if-lez v7, :cond_1a

    .line 3197
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    :cond_1a
    if-le v6, v1, :cond_1b

    .line 3199
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v6, v6, v13

    if-gez v6, :cond_1b

    .line 3200
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    move v13, v4

    :cond_1b
    add-int/lit8 v14, v14, 0x1

    goto :goto_c

    :cond_1c
    const/4 v2, 0x0

    .line 3203
    :goto_d
    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->animationSupportViewsByDialogId:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4}, Landroidx/collection/LongSparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_1f

    .line 3204
    iget-object v4, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->animationSupportViewsByDialogId:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4, v2}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 3205
    instance-of v6, v4, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v6, :cond_1e

    .line 3206
    iget-object v6, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->animationSupportListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6, v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v6

    .line 3207
    move-object v7, v4

    check-cast v7, Lorg/telegram/ui/Cells/DialogCell;

    const/4 v8, 0x0

    .line 3208
    iput-boolean v8, v7, Lorg/telegram/ui/Cells/DialogCell;->isTransitionSupport:Z

    .line 3209
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/DialogCell;->buildLayout()V

    const/4 v8, 0x1

    .line 3210
    iput-boolean v8, v7, Lorg/telegram/ui/Cells/DialogCell;->isTransitionSupport:Z

    .line 3211
    iget v9, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->rightFragmentOpenedProgress:F

    invoke-virtual {v7, v9}, Lorg/telegram/ui/Cells/DialogCell;->setRightFragmentOpenedProgress(F)V

    .line 3213
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    if-le v6, v1, :cond_1d

    .line 3215
    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v6

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v9, v5

    sub-float/2addr v9, v13

    invoke-virtual {v11, v6, v9}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_e

    .line 3217
    :cond_1d
    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v6

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v9, v5

    sub-float/2addr v9, v3

    invoke-virtual {v11, v6, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3219
    :goto_e
    invoke-virtual {v4, v11}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 3221
    invoke-virtual {v11, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_f

    :cond_1e
    const/4 v8, 0x1

    :goto_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 3224
    :cond_1f
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->animationSupportViewsByDialogId:Landroidx/collection/LongSparseArray;

    invoke-virtual {v1}, Landroidx/collection/LongSparseArray;->clear()V

    :cond_20
    const/4 v1, 0x0

    .line 3227
    iput-boolean v1, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->updateDialogsOnNextDraw:Z

    .line 3228
    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->animationSupportListView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v2, :cond_21

    .line 3229
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 3232
    :cond_21
    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->animationSupportListView:Lorg/telegram/ui/Components/RecyclerListView;

    if-nez v2, :cond_22

    .line 3233
    invoke-super/range {p0 .. p1}, Lorg/telegram/ui/Components/BlurredRecyclerView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3236
    :cond_22
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->drawMovingViewsOverlayed()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 3237
    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->paint:Landroid/graphics/Paint;

    const-string v3, "windowBackgroundWhite"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v10, 0x0

    .line 3238
    :goto_10
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v10, v1, :cond_27

    .line 3239
    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3241
    instance-of v1, v7, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v1, :cond_23

    move-object v1, v7

    check-cast v1, Lorg/telegram/ui/Cells/DialogCell;

    invoke-virtual {v1}, Lorg/telegram/ui/Cells/DialogCell;->isMoving()Z

    move-result v1

    if-nez v1, :cond_24

    :cond_23
    instance-of v1, v7, Lorg/telegram/ui/Adapters/DialogsAdapter$LastEmptyView;

    if-eqz v1, :cond_26

    move-object v1, v7

    check-cast v1, Lorg/telegram/ui/Adapters/DialogsAdapter$LastEmptyView;

    iget-boolean v1, v1, Lorg/telegram/ui/Adapters/DialogsAdapter$LastEmptyView;->moving:Z

    if-eqz v1, :cond_26

    .line 3242
    :cond_24
    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v12

    if-eqz v1, :cond_25

    .line 3243
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/view/View;->getX()F

    move-result v2

    invoke-virtual {v7}, Landroid/view/View;->getY()F

    move-result v3

    invoke-virtual {v7}, Landroid/view/View;->getX()F

    move-result v4

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v7}, Landroid/view/View;->getY()F

    move-result v5

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3244
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    move-result v2

    const/high16 v8, 0x437f0000    # 255.0f

    mul-float v2, v2, v8

    float-to-int v2, v2

    const/16 v3, 0x1f

    invoke-virtual {v11, v1, v2, v3}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    goto :goto_11

    :cond_25
    const/high16 v8, 0x437f0000    # 255.0f

    .line 3246
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3248
    :goto_11
    invoke-virtual {v7}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {v7}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {v11, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3249
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 3250
    invoke-virtual {v7, v11}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 3251
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_12

    :cond_26
    const/high16 v8, 0x437f0000    # 255.0f

    :goto_12
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_10

    .line 3254
    :cond_27
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 3256
    :cond_28
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$15600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Cells/DialogCell;

    move-result-object v1

    if-eqz v1, :cond_29

    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$15700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/PacmanAnimation;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 3257
    iget-object v1, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$15700(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/PacmanAnimation;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$15600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Cells/DialogCell;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTop()I

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$15600(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Cells/DialogCell;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-virtual {v1, v11, v2}, Lorg/telegram/ui/Components/PacmanAnimation;->draw(Landroid/graphics/Canvas;I)V

    :cond_29
    return-void
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    .line 3267
    invoke-direct {p0}, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->drawMovingViewsOverlayed()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p2, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/telegram/ui/Cells/DialogCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/DialogCell;->isMoving()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 3270
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/BlurredRecyclerView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public getViewOffset()F
    .locals 1

    .line 3023
    sget v0, Lorg/telegram/ui/DialogsActivity;->viewOffset:F

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 3275
    invoke-super {p0}, Lorg/telegram/ui/Components/RecyclerListView;->onDetachedFromWindow()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 3044
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15400(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/PullForegroundDrawable;

    move-result-object v0

    if-eqz v0, :cond_1

    sget v0, Lorg/telegram/ui/DialogsActivity;->viewOffset:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 3045
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3047
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v2, v0

    .line 3048
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3050
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15400(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/PullForegroundDrawable;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/telegram/ui/Components/PullForegroundDrawable;->drawOverScroll(Landroid/graphics/Canvas;)V

    if-eqz v0, :cond_1

    .line 3052
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 3055
    :cond_1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 3519
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScrollAnimationRunning:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$16900(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$18900(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/DialogsItemAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/DialogsItemAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3522
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 3523
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$19100(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->isActionModeShowed()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/DialogsActivity;->access$19002(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 3525
    :cond_1
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 3340
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Components/RecyclerListView;->onLayout(ZIIII)V

    .line 3341
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->lastListPadding:I

    .line 3343
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/telegram/ui/DialogsActivity;->access$16302(Lorg/telegram/ui/DialogsActivity;F)F

    .line 3345
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {p1}, Lorg/telegram/ui/DialogsActivity;->isArchive()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-boolean p1, Lorg/telegram/messenger/SharedConfig;->isFilterTabsAtBottomEnabled:Z

    if-nez p1, :cond_1

    .line 3346
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    .line 3349
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    .line 3350
    invoke-virtual {p4}, Landroid/view/View;->getBottom()I

    move-result p4

    .line 3351
    invoke-static {p4, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 3353
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p2

    sub-int/2addr p1, p2

    if-ge p3, p1, :cond_1

    .line 3354
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$16700(Lorg/telegram/ui/DialogsActivity;)V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 3287
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$10100(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 3288
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$3200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$3200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->isFilterTabsAtBottomEnabled:Z

    if-nez v0, :cond_0

    const/16 v0, 0x2c

    .line 3289
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    goto :goto_0

    .line 3291
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$15800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3295
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15900(Lorg/telegram/ui/DialogsActivity$ViewPage;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v2, v3, :cond_3

    .line 3296
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$16000(Lorg/telegram/ui/DialogsActivity$ViewPage;)Landroidx/recyclerview/widget/ItemTouchHelper;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/recyclerview/widget/ItemTouchHelper;->isIdle()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3297
    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15100(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 3299
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    .line 3300
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$16100(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity;->access$2200(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$16200(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 3301
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 3303
    :cond_2
    iput-boolean v4, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->ignoreLayout:Z

    .line 3304
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15900(Lorg/telegram/ui/DialogsActivity$ViewPage;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v5

    iget v6, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->lastListPadding:I

    sub-int/2addr v3, v6

    int-to-float v3, v3

    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6}, Lorg/telegram/ui/DialogsActivity;->access$16300(Lorg/telegram/ui/DialogsActivity;)F

    move-result v6

    add-float/2addr v3, v6

    float-to-int v3, v3

    invoke-virtual {v5, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 3305
    iput-boolean v1, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->ignoreLayout:Z

    .line 3308
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$10100(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 3309
    iput-boolean v4, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->ignoreLayout:Z

    .line 3310
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$3200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$3200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    sget-boolean v0, Lorg/telegram/messenger/SharedConfig;->isFilterTabsAtBottomEnabled:Z

    if-nez v0, :cond_5

    .line 3311
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$16400(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->getOccupyStatusBar()Z

    move-result v2

    if-eqz v2, :cond_4

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    goto :goto_2

    .line 3313
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$16500(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_6

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    .line 3315
    :goto_2
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setTopGlowOffset(I)V

    .line 3316
    invoke-virtual {p0, v1, v0, v1, v1}, Lorg/telegram/ui/Components/BlurredRecyclerView;->setPadding(IIII)V

    .line 3317
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$16600(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/FlickerLoadingView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/telegram/ui/Components/FlickerLoadingView;->setPaddingTop(I)V

    .line 3318
    iput-boolean v1, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->ignoreLayout:Z

    .line 3321
    :cond_7
    iget-boolean v2, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->firstLayout:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget-boolean v2, v2, Lorg/telegram/messenger/MessagesController;->dialogsLoaded:Z

    if-eqz v2, :cond_9

    .line 3322
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$16100(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity;->access$2200(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3323
    iput-boolean v4, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->ignoreLayout:Z

    .line 3324
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 3325
    invoke-virtual {v2, v4, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 3326
    iput-boolean v1, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->ignoreLayout:Z

    .line 3328
    :cond_8
    iput-boolean v1, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->firstLayout:Z

    .line 3330
    :cond_9
    invoke-super {p0, p1, p2}, Lorg/telegram/ui/Components/BlurredRecyclerView;->onMeasure(II)V

    .line 3331
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$10100(Lorg/telegram/ui/DialogsActivity;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 3332
    iget p1, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->appliedPaddingTop:I

    if-eq p1, v0, :cond_c

    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p1

    array-length p1, p1

    if-le p1, v4, :cond_c

    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$3400(Lorg/telegram/ui/DialogsActivity;)Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$4700(Lorg/telegram/ui/DialogsActivity;)Landroid/animation/AnimatorSet;

    move-result-object p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$4700(Lorg/telegram/ui/DialogsActivity;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result p1

    if-nez p1, :cond_c

    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$4500(Lorg/telegram/ui/DialogsActivity;)Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$3200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$3200(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Components/FilterTabsView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/FilterTabsView;->isAnimatingIndicator()Z

    move-result p1

    if-nez p1, :cond_c

    .line 3333
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p1}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p1

    aget-object p1, p1, v4

    iget-object p2, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {p2}, Lorg/telegram/ui/DialogsActivity;->access$3700(Lorg/telegram/ui/DialogsActivity;)[Lorg/telegram/ui/DialogsActivity$ViewPage;

    move-result-object p2

    aget-object p2, p2, v1

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    :cond_c
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    .line 3401
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->fastScrollAnimationRunning:Z

    const/4 v1, 0x0

    if-nez v0, :cond_15

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$16900(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$17100(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_7

    .line 3404
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 3406
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    :cond_1
    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    if-ne v0, v2, :cond_b

    .line 3409
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$16000(Lorg/telegram/ui/DialogsActivity$ViewPage;)Landroidx/recyclerview/widget/ItemTouchHelper;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/recyclerview/widget/ItemTouchHelper;->isIdle()Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$17200(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/DialogsActivity$SwipeController;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity$SwipeController;->access$17300(Lorg/telegram/ui/DialogsActivity$SwipeController;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 3410
    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$17200(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/DialogsActivity$SwipeController;

    move-result-object v4

    invoke-static {v4, v3}, Lorg/telegram/ui/DialogsActivity$SwipeController;->access$17402(Lorg/telegram/ui/DialogsActivity$SwipeController;Z)Z

    .line 3411
    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$16000(Lorg/telegram/ui/DialogsActivity$ViewPage;)Landroidx/recyclerview/widget/ItemTouchHelper;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-virtual {v4, v5, v6}, Landroidx/recyclerview/widget/ItemTouchHelper;->checkHorizontalSwipe(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)I

    move-result v4

    if-eqz v4, :cond_b

    .line 3412
    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$17200(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/DialogsActivity$SwipeController;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity$SwipeController;->access$17500(Lorg/telegram/ui/DialogsActivity$SwipeController;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 3413
    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$17200(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/DialogsActivity$SwipeController;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity$SwipeController;->access$17500(Lorg/telegram/ui/DialogsActivity$SwipeController;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    .line 3414
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v5, v4, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v5, :cond_b

    .line 3415
    check-cast v4, Lorg/telegram/ui/Cells/DialogCell;

    .line 3416
    invoke-virtual {v4}, Lorg/telegram/ui/Cells/DialogCell;->getDialogId()J

    move-result-wide v7

    .line 3417
    invoke-static {v7, v8}, Lorg/telegram/messenger/DialogObject;->isFolderDialogId(J)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3418
    invoke-direct {p0, v1, v4}, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->toggleArchiveHidden(ZLorg/telegram/ui/Cells/DialogCell;)V

    goto/16 :goto_3

    .line 3420
    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/messenger/MessagesController;->dialogs_dict:Landroidx/collection/LongSparseArray;

    invoke-virtual {v4, v7, v8}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Dialog;

    if-eqz v4, :cond_b

    .line 3422
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity;->access$17600(Lorg/telegram/ui/DialogsActivity;)I

    move-result v5

    invoke-static {v5}, Lorg/telegram/messenger/SharedConfig;->getChatSwipeAction(I)I

    move-result v5

    if-ne v5, v3, :cond_6

    .line 3423
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3424
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3425
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget v7, v4, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_count:I

    if-gtz v7, :cond_5

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$Dialog;->unread_mark:Z

    if-eqz v4, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v4, 0x1

    :goto_1
    invoke-static {v6, v4}, Lorg/telegram/ui/DialogsActivity;->access$17702(Lorg/telegram/ui/DialogsActivity;I)I

    .line 3426
    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/16 v6, 0x65

    invoke-static {v4, v5, v6, v3, v1}, Lorg/telegram/ui/DialogsActivity;->access$17800(Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;IZZ)V

    goto/16 :goto_3

    .line 3427
    :cond_6
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity;->access$17900(Lorg/telegram/ui/DialogsActivity;)I

    move-result v5

    invoke-static {v5}, Lorg/telegram/messenger/SharedConfig;->getChatSwipeAction(I)I

    move-result v5

    if-ne v5, v2, :cond_9

    .line 3428
    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4, v7, v8, v1}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(JI)Z

    move-result v4

    if-nez v4, :cond_7

    .line 3429
    sget v4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/NotificationsController;->getInstance(I)Lorg/telegram/messenger/NotificationsController;

    move-result-object v4

    invoke-virtual {v4, v7, v8, v1, v2}, Lorg/telegram/messenger/NotificationsController;->setDialogNotificationsSettings(JII)V

    .line 3430
    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/Components/BulletinFactory;->canShowBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 3431
    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4, v2}, Lorg/telegram/ui/Components/BulletinFactory;->createMuteBulletin(Lorg/telegram/ui/ActionBar/BaseFragment;I)Lorg/telegram/ui/Components/Bulletin;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    goto/16 :goto_3

    .line 3434
    :cond_7
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3435
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3436
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity;->access$18100(Lorg/telegram/ui/DialogsActivity;)I

    move-result v6

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    invoke-virtual {v6, v7, v8, v1}, Lorg/telegram/messenger/MessagesController;->isDialogMuted(JI)Z

    move-result v6

    xor-int/2addr v6, v3

    invoke-static {v5, v6}, Lorg/telegram/ui/DialogsActivity;->access$18002(Lorg/telegram/ui/DialogsActivity;I)I

    .line 3437
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity;->access$18000(Lorg/telegram/ui/DialogsActivity;)I

    move-result v6

    if-lez v6, :cond_8

    const/4 v6, 0x0

    goto :goto_2

    :cond_8
    const/4 v6, 0x1

    :goto_2
    invoke-static {v5, v6}, Lorg/telegram/ui/DialogsActivity;->access$18202(Lorg/telegram/ui/DialogsActivity;I)I

    .line 3438
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/16 v6, 0x68

    invoke-static {v5, v4, v6, v3, v1}, Lorg/telegram/ui/DialogsActivity;->access$17800(Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;IZZ)V

    goto :goto_3

    .line 3440
    :cond_9
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity;->access$18300(Lorg/telegram/ui/DialogsActivity;)I

    move-result v5

    invoke-static {v5}, Lorg/telegram/messenger/SharedConfig;->getChatSwipeAction(I)I

    move-result v5

    if-nez v5, :cond_a

    .line 3441
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3442
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3443
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v6, v4}, Lorg/telegram/ui/DialogsActivity;->access$18400(Lorg/telegram/ui/DialogsActivity;Lorg/telegram/tgnet/TLRPC$Dialog;)Z

    move-result v4

    .line 3444
    iget-object v6, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    xor-int/2addr v4, v3

    invoke-static {v6, v4}, Lorg/telegram/ui/DialogsActivity;->access$18502(Lorg/telegram/ui/DialogsActivity;I)I

    .line 3445
    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/16 v6, 0x64

    invoke-static {v4, v5, v6, v3, v1}, Lorg/telegram/ui/DialogsActivity;->access$17800(Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;IZZ)V

    goto :goto_3

    .line 3446
    :cond_a
    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$18600(Lorg/telegram/ui/DialogsActivity;)I

    move-result v4

    invoke-static {v4}, Lorg/telegram/messenger/SharedConfig;->getChatSwipeAction(I)I

    move-result v4

    if-ne v4, v6, :cond_b

    .line 3447
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3448
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3449
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/16 v6, 0x66

    invoke-static {v5, v4, v6, v3, v1}, Lorg/telegram/ui/DialogsActivity;->access$17800(Lorg/telegram/ui/DialogsActivity;Ljava/util/ArrayList;IZZ)V

    .line 3459
    :cond_b
    :goto_3
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    .line 3460
    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$16100(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v4

    if-nez v4, :cond_14

    if-eq v0, v3, :cond_c

    if-ne v0, v2, :cond_14

    :cond_c
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$16200(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_14

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$2200(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3461
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 3462
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v5

    if-nez v5, :cond_14

    .line 3464
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v6

    .line 3465
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 3466
    sget-boolean v5, Lorg/telegram/messenger/SharedConfig;->isDialogsCompactModeEnabled:Z

    if-eqz v5, :cond_d

    const/16 v5, 0x30

    goto :goto_4

    :cond_d
    sget-boolean v5, Lorg/telegram/messenger/SharedConfig;->useThreeLinesLayout:Z

    if-eqz v5, :cond_e

    const/16 v5, 0x4e

    goto :goto_4

    :cond_e
    const/16 v5, 0x48

    :goto_4
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    const v7, 0x3f59999a    # 0.85f

    mul-float v5, v5, v7

    float-to-int v5, v5

    .line 3467
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int/2addr v7, v6

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    .line 3468
    instance-of v8, v0, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v8, :cond_14

    .line 3469
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v10, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v10}, Lorg/telegram/ui/DialogsActivity;->access$18700(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    const/4 v10, 0x0

    if-lt v7, v5, :cond_12

    const-wide/16 v11, 0xc8

    cmp-long v5, v8, v11

    if-gez v5, :cond_f

    goto :goto_5

    .line 3475
    :cond_f
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$16200(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v5

    if-eq v5, v3, :cond_13

    .line 3476
    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->getViewOffset()F

    move-result v5

    cmpl-float v5, v5, v10

    if-nez v5, :cond_10

    .line 3477
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v5, v3}, Lorg/telegram/ui/DialogsActivity;->access$16802(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 3478
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int/2addr v5, v6

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p0, v1, v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    .line 3480
    :cond_10
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v5}, Lorg/telegram/ui/DialogsActivity;->access$18800(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v5

    if-nez v5, :cond_11

    .line 3481
    iget-object v5, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v5, v3}, Lorg/telegram/ui/DialogsActivity;->access$18802(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 3482
    invoke-virtual {p0, v2, v4}, Landroid/view/ViewGroup;->performHapticFeedback(II)Z

    .line 3483
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15400(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/PullForegroundDrawable;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 3484
    iget-object v2, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v2}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$15400(Lorg/telegram/ui/DialogsActivity$ViewPage;)Lorg/telegram/ui/Components/PullForegroundDrawable;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/PullForegroundDrawable;->colorize(Z)V

    .line 3487
    :cond_11
    check-cast v0, Lorg/telegram/ui/Cells/DialogCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/DialogCell;->startOutAnimation()V

    .line 3488
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v0, v3}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$16202(Lorg/telegram/ui/DialogsActivity$ViewPage;I)I

    .line 3489
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isAccessibilityScreenReaderEnabled()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3490
    sget v0, Lorg/telegram/messenger/R$string;->AccDescrArchivedChatsShown:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->makeAccessibilityAnnouncement(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 3471
    :cond_12
    :goto_5
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0, v3}, Lorg/telegram/ui/DialogsActivity;->access$16802(Lorg/telegram/ui/DialogsActivity;Z)Z

    .line 3472
    sget-object v0, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {p0, v1, v7, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    .line 3473
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v0, v4}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$16202(Lorg/telegram/ui/DialogsActivity$ViewPage;I)I

    .line 3495
    :cond_13
    :goto_6
    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->getViewOffset()F

    move-result v0

    cmpl-float v0, v0, v10

    if-eqz v0, :cond_14

    new-array v0, v4, [F

    .line 3496
    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->getViewOffset()F

    move-result v2

    aput v2, v0, v1

    aput v10, v0, v3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 3497
    new-instance v2, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v2, 0x64

    const/high16 v4, 0x43af0000    # 350.0f

    const/high16 v5, 0x42f00000    # 120.0f

    .line 3499
    invoke-virtual {p0}, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->getViewOffset()F

    move-result v6

    invoke-static {}, Lorg/telegram/ui/Components/PullForegroundDrawable;->getMaxOverscroll()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    mul-float v6, v6, v5

    sub-float/2addr v4, v6

    float-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3500
    sget-object v2, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3501
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setScrollEnabled(Z)V

    .line 3502
    new-instance v1, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView$1;-><init>(Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3509
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_14
    return p1

    :cond_15
    :goto_7
    return v1
.end method

.method public prepareSelectorForAnimation()V
    .locals 2

    const/4 v0, 0x0

    .line 2995
    iput v0, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->selectorPositionProgress:F

    .line 2996
    iget v1, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->lastDrawSelectorY:F

    iput v1, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->animateFromSelectorPosition:F

    .line 2997
    iget v1, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->rightFragmentOpenedProgress:F

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->animateSwitchingSelector:Z

    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .line 3036
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 3037
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 3038
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3039
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 3362
    iget-boolean v0, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 3365
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/Components/BlurredRecyclerView;->requestLayout()V

    return-void
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0

    .line 3280
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 p1, 0x1

    .line 3281
    iput-boolean p1, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->firstLayout:Z

    return-void
.end method

.method public setAnimationSupportView(Lorg/telegram/ui/Components/RecyclerListView;FZ)V
    .locals 15

    move-object v6, p0

    move-object/from16 v0, p1

    if-nez v0, :cond_0

    .line 3542
    iget-object v1, v6, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->animationSupportListView:Lorg/telegram/ui/Components/RecyclerListView;

    goto :goto_0

    :cond_0
    move-object v1, v6

    :goto_0
    if-nez v1, :cond_1

    .line 3546
    iput-object v0, v6, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->animationSupportListView:Lorg/telegram/ui/Components/RecyclerListView;

    return-void

    :cond_1
    const v2, 0x7fffffff

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v4

    const/4 v7, 0x0

    .line 3550
    :goto_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 3551
    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 3552
    instance-of v9, v8, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v9, :cond_3

    .line 3553
    move-object v9, v8

    check-cast v9, Lorg/telegram/ui/Cells/DialogCell;

    .line 3554
    invoke-virtual {v9}, Lorg/telegram/ui/Cells/DialogCell;->getDialogId()J

    move-result-wide v10

    iget-object v12, v6, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    iget-object v12, v12, Lorg/telegram/ui/DialogsActivity;->rightSlidingDialogContainer:Lorg/telegram/ui/RightSlidingDialogContainer;

    invoke-virtual {v12}, Lorg/telegram/ui/RightSlidingDialogContainer;->getCurrentFragmetDialogId()J

    move-result-wide v12

    cmp-long v14, v10, v12

    if-nez v14, :cond_2

    move-object v4, v9

    .line 3557
    :cond_2
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v11

    if-lt v10, v11, :cond_3

    invoke-virtual {v9}, Lorg/telegram/ui/Cells/DialogCell;->getDialogId()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v13, v9, v11

    if-eqz v13, :cond_3

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v9

    if-ge v9, v2, :cond_3

    .line 3558
    check-cast v8, Lorg/telegram/ui/Cells/DialogCell;

    .line 3559
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getTop()I

    move-result v2

    move-object v5, v8

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    if-eqz v4, :cond_5

    .line 3563
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    const/16 v7, 0x46

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v7

    mul-int v2, v2, v7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v7

    if-le v2, v7, :cond_5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v7

    sub-int/2addr v2, v7

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    cmpl-float v2, v2, v7

    if-lez v2, :cond_5

    move-object v7, v4

    goto :goto_2

    :cond_5
    move-object v7, v5

    .line 3566
    :goto_2
    iput-object v0, v6, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->animationSupportListView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v7, :cond_8

    if-eqz v0, :cond_7

    .line 3570
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    iget v4, v6, Lorg/telegram/ui/Components/BlurredRecyclerView;->topPadding:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v0, v2, v4, v5, v8}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 3572
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Adapters/DialogsAdapter;

    .line 3573
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/DialogCell;->getDialogId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/telegram/ui/Adapters/DialogsAdapter;->findDialogPosition(J)I

    move-result v8

    .line 3574
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getTop()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    sub-int/2addr v4, v1

    int-to-float v1, v4

    add-float v1, v1, p2

    float-to-int v4, v1

    if-ltz v8, :cond_7

    .line 3576
    invoke-virtual/range {p1 .. p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v0, v6, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$16100(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v6, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->parentPage:Lorg/telegram/ui/DialogsActivity$ViewPage;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity$ViewPage;->access$16200(Lorg/telegram/ui/DialogsActivity$ViewPage;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    iget-object v0, v6, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$2200(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    const/4 v5, 0x1

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    :goto_3
    move-object v0, v2

    move-object v1, p0

    move v2, v8

    move v3, v4

    move v4, v5

    move/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Adapters/DialogsAdapter;->fixScrollGap(Lorg/telegram/ui/Components/RecyclerListView;IIZZ)I

    move-result v0

    invoke-virtual {v9, v8, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 3580
    :cond_7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Adapters/DialogsAdapter;

    .line 3581
    invoke-virtual {v7}, Lorg/telegram/ui/Cells/DialogCell;->getDialogId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Adapters/DialogsAdapter;->findDialogPosition(J)I

    move-result v0

    .line 3582
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    if-ltz v0, :cond_8

    .line 3584
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2, v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_8
    return-void
.end method

.method public setOpenRightFragmentProgress(F)V
    .locals 0

    .line 3537
    iput p1, p0, Lorg/telegram/ui/DialogsActivity$DialogsRecyclerView;->rightFragmentOpenedProgress:F

    .line 3538
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public setViewsOffset(F)V
    .locals 5

    .line 3006
    sput p1, Lorg/telegram/ui/DialogsActivity;->viewOffset:F

    .line 3007
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3009
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setTranslationY(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3012
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 3013
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorPosition:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3015
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, p1

    float-to-int v3, v3

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p1

    float-to-int p1, v0

    invoke-virtual {v1, v2, v3, v4, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 3016
    iget-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3019
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method protected updateEmptyViewAnimated()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
