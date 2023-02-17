.class Lorg/telegram/ui/Components/SharedMediaLayout$28;
.super Ljava/lang/Object;
.source "SharedMediaLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/SharedMediaLayout;->animateItemsEnter(Lorg/telegram/ui/Components/RecyclerListView;ILandroid/util/SparseBooleanArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

.field final synthetic val$addedMesages:Landroid/util/SparseBooleanArray;

.field final synthetic val$finalListView:Lorg/telegram/ui/Components/RecyclerListView;

.field final synthetic val$finalProgressView:Landroid/view/View;

.field final synthetic val$oldItemCount:I


# direct methods
.method public static synthetic $r8$lambda$I5zCS2lKzB7eKDuCb_OGzp1Retk(Lorg/telegram/ui/Components/SharedMediaLayout$28;ILorg/telegram/ui/Components/RecyclerListView;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/SharedMediaLayout$28;->lambda$onPreDraw$0(ILorg/telegram/ui/Components/RecyclerListView;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/ui/Components/RecyclerListView;Landroid/util/SparseBooleanArray;Landroid/view/View;I)V
    .locals 0

    .line 4544
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$28;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iput-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$28;->val$finalListView:Lorg/telegram/ui/Components/RecyclerListView;

    iput-object p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$28;->val$addedMesages:Landroid/util/SparseBooleanArray;

    iput-object p4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$28;->val$finalProgressView:Landroid/view/View;

    iput p5, p0, Lorg/telegram/ui/Components/SharedMediaLayout$28;->val$oldItemCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onPreDraw$0(ILorg/telegram/ui/Components/RecyclerListView;Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 4559
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$28;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v0, v0, Lorg/telegram/ui/Components/SharedMediaLayout;->messageAlphaEnter:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {v0, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4560
    invoke-virtual {p2}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 13

    .line 4547
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$28;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 4548
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$28;->val$finalListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 4549
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$28;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$900(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    move-result-object v1

    const/high16 v2, 0x42c80000    # 100.0f

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v0, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$28;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$7600(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    move-result-object v1

    if-eq v0, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$28;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$7700(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    move-result-object v1

    if-eq v0, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$28;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$7800(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$SharedDocumentsAdapter;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto/16 :goto_1

    .line 4579
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$28;->val$finalListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 4580
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v0, :cond_3

    .line 4582
    iget-object v8, p0, Lorg/telegram/ui/Components/SharedMediaLayout$28;->val$finalListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 4583
    iget-object v9, p0, Lorg/telegram/ui/Components/SharedMediaLayout$28;->val$finalProgressView:Landroid/view/View;

    if-eq v8, v9, :cond_1

    iget-object v9, p0, Lorg/telegram/ui/Components/SharedMediaLayout$28;->val$finalListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v9, v8}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v9

    iget v10, p0, Lorg/telegram/ui/Components/SharedMediaLayout$28;->val$oldItemCount:I

    sub-int/2addr v10, v5

    if-lt v9, v10, :cond_1

    .line 4584
    invoke-virtual {v8, v4}, Landroid/view/View;->setAlpha(F)V

    .line 4585
    iget-object v9, p0, Lorg/telegram/ui/Components/SharedMediaLayout$28;->val$finalListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    int-to-float v9, v9

    .line 4586
    iget-object v10, p0, Lorg/telegram/ui/Components/SharedMediaLayout$28;->val$finalListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    mul-float v9, v9, v2

    float-to-int v9, v9

    .line 4587
    sget-object v10, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v11, v3, [F

    fill-array-data v11, :array_0

    invoke-static {v8, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    int-to-long v9, v9

    .line 4588
    invoke-virtual {v8, v9, v10}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const-wide/16 v9, 0xc8

    .line 4589
    invoke-virtual {v8, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-array v9, v5, [Landroid/animation/Animator;

    aput-object v8, v9, v6

    .line 4590
    invoke-virtual {v1, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 4592
    :cond_1
    iget-object v8, p0, Lorg/telegram/ui/Components/SharedMediaLayout$28;->val$finalProgressView:Landroid/view/View;

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-nez v8, :cond_2

    .line 4593
    iget-object v8, p0, Lorg/telegram/ui/Components/SharedMediaLayout$28;->val$finalListView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v9, p0, Lorg/telegram/ui/Components/SharedMediaLayout$28;->val$finalProgressView:Landroid/view/View;

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4594
    iget-object v8, p0, Lorg/telegram/ui/Components/SharedMediaLayout$28;->val$finalListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v8}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 4596
    iget-object v9, p0, Lorg/telegram/ui/Components/SharedMediaLayout$28;->val$finalProgressView:Landroid/view/View;

    invoke-virtual {v8, v9}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->ignoreView(Landroid/view/View;)V

    .line 4597
    iget-object v9, p0, Lorg/telegram/ui/Components/SharedMediaLayout$28;->val$finalProgressView:Landroid/view/View;

    sget-object v10, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v11, v3, [F

    invoke-virtual {v9}, Landroid/view/View;->getAlpha()F

    move-result v12

    aput v12, v11, v6

    aput v4, v11, v5

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 4598
    new-instance v10, Lorg/telegram/ui/Components/SharedMediaLayout$28$2;

    invoke-direct {v10, p0, v8}, Lorg/telegram/ui/Components/SharedMediaLayout$28$2;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$28;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {v9, v10}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4606
    invoke-virtual {v9}, Landroid/animation/Animator;->start()V

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 4610
    :cond_3
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_3

    .line 4550
    :cond_4
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$28;->val$addedMesages:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_6

    .line 4551
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$28;->val$finalListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_6

    .line 4553
    iget-object v7, p0, Lorg/telegram/ui/Components/SharedMediaLayout$28;->val$finalListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 4554
    iget-object v8, p0, Lorg/telegram/ui/Components/SharedMediaLayout$28;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v8, v7}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4800(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/view/View;)I

    move-result v8

    if-eqz v8, :cond_5

    .line 4555
    iget-object v9, p0, Lorg/telegram/ui/Components/SharedMediaLayout$28;->val$addedMesages:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9, v8, v6}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 4556
    iget-object v9, p0, Lorg/telegram/ui/Components/SharedMediaLayout$28;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v9, v9, Lorg/telegram/ui/Components/SharedMediaLayout;->messageAlphaEnter:Landroid/util/SparseArray;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-array v9, v3, [F

    .line 4557
    fill-array-data v9, :array_1

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v9

    .line 4558
    iget-object v10, p0, Lorg/telegram/ui/Components/SharedMediaLayout$28;->val$finalListView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v11, Lorg/telegram/ui/Components/SharedMediaLayout$28$$ExternalSyntheticLambda0;

    invoke-direct {v11, p0, v8, v10}, Lorg/telegram/ui/Components/SharedMediaLayout$28$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$28;ILorg/telegram/ui/Components/RecyclerListView;)V

    invoke-virtual {v9, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4562
    new-instance v10, Lorg/telegram/ui/Components/SharedMediaLayout$28$1;

    invoke-direct {v10, p0, v8}, Lorg/telegram/ui/Components/SharedMediaLayout$28$1;-><init>(Lorg/telegram/ui/Components/SharedMediaLayout$28;I)V

    invoke-virtual {v9, v10}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4569
    iget-object v8, p0, Lorg/telegram/ui/Components/SharedMediaLayout$28;->val$finalListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v8

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    .line 4570
    iget-object v8, p0, Lorg/telegram/ui/Components/SharedMediaLayout$28;->val$finalListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    mul-float v7, v7, v2

    float-to-int v7, v7

    int-to-long v7, v7

    .line 4571
    invoke-virtual {v9, v7, v8}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-wide/16 v7, 0xfa

    .line 4572
    invoke-virtual {v9, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4573
    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->start()V

    .line 4575
    :cond_5
    iget-object v7, p0, Lorg/telegram/ui/Components/SharedMediaLayout$28;->val$finalListView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->invalidate()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    return v5

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
