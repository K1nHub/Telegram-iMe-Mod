.class Lorg/telegram/ui/Components/SharedMediaLayout$13;
.super Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;
.source "SharedMediaLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/SharedMediaLayout;-><init>(Landroid/content/Context;JLorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;ILjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ChatFull;Lorg/telegram/tgnet/TLRPC$UserFull;ILorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private archivedHintLayout:Landroid/text/StaticLayout;

.field private archivedHintLayoutLeft:F

.field private archivedHintLayoutWidth:F

.field private archivedHintPaint:Landroid/text/TextPaint;

.field final drawingViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;",
            ">;"
        }
    .end annotation
.end field

.field final drawingViews2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;",
            ">;"
        }
    .end annotation
.end field

.field final drawingViews3:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;",
            ">;"
        }
    .end annotation
.end field

.field final excludeDrawViews:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;",
            ">;"
        }
    .end annotation
.end field

.field lastY:F

.field poller:Lorg/telegram/ui/Stories/UserListPoller;

.field startY:F

.field final synthetic this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

.field final synthetic val$layoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

.field final synthetic val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Lorg/telegram/ui/Components/ExtendedGridLayoutManager;)V
    .locals 0

    .line 2494
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iput-object p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    iput-object p4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->val$layoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;-><init>(Landroid/content/Context;)V

    .line 2496
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->excludeDrawViews:Ljava/util/HashSet;

    .line 2497
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->drawingViews:Ljava/util/ArrayList;

    .line 2498
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->drawingViews2:Ljava/util/ArrayList;

    .line 2499
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->drawingViews3:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 2537
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$3400(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    move-result-object v2

    const/16 v9, 0x9

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-ne v1, v2, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_5

    .line 2538
    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 2539
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    if-nez v2, :cond_5

    .line 2540
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 2541
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5300(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5400(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v2

    if-ne v2, v9, :cond_0

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$3900(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 2542
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$3900(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2543
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$3900(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v3

    if-nez v3, :cond_0

    .line 2544
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5500(Lorg/telegram/ui/Components/SharedMediaLayout;)F

    move-result v3

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(IIF)I

    move-result v1

    .line 2547
    :cond_0
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->archivedHintPaint:Landroid/text/TextPaint;

    if-nez v2, :cond_1

    .line 2548
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v12}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->archivedHintPaint:Landroid/text/TextPaint;

    const/16 v3, 0xe

    .line 2549
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 2550
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->archivedHintPaint:Landroid/text/TextPaint;

    sget v3, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhiteGrayText2:I

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->getThemedColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 2552
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    const/16 v3, 0x3c

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v2, v3

    .line 2553
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->archivedHintLayout:Landroid/text/StaticLayout;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getWidth()I

    move-result v3

    if-eq v3, v2, :cond_4

    .line 2554
    :cond_2
    new-instance v3, Landroid/text/StaticLayout;

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->isArchivedOnlyStoriesView()Z

    move-result v4

    if-eqz v4, :cond_3

    sget v4, Lorg/telegram/messenger/R$string;->ProfileStoriesArchiveChannelHint:I

    goto :goto_0

    :cond_3
    sget v4, Lorg/telegram/messenger/R$string;->ProfileStoriesArchiveHint:I

    :goto_0
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v15

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->archivedHintPaint:Landroid/text/TextPaint;

    sget-object v18, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v19, 0x3f800000    # 1.0f

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v14, v3

    move-object/from16 v16, v4

    move/from16 v17, v2

    invoke-direct/range {v14 .. v21}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->archivedHintLayout:Landroid/text/StaticLayout;

    .line 2555
    iput v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->archivedHintLayoutWidth:F

    int-to-float v2, v2

    .line 2556
    iput v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->archivedHintLayoutLeft:F

    move v2, v13

    .line 2557
    :goto_1
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->archivedHintLayout:Landroid/text/StaticLayout;

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 2558
    iget v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->archivedHintLayoutWidth:F

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->archivedHintLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4, v2}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->archivedHintLayoutWidth:F

    .line 2559
    iget v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->archivedHintLayoutLeft:F

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->archivedHintLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4, v2}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->archivedHintLayoutLeft:F

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2563
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 2565
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->archivedHintLayoutWidth:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v10

    iget v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->archivedHintLayoutLeft:F

    sub-float/2addr v2, v3

    int-to-float v1, v1

    const/16 v3, 0x40

    .line 2566
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->archivedHintLayout:Landroid/text/StaticLayout;

    invoke-virtual {v4}, Landroid/text/StaticLayout;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v10

    sub-float/2addr v1, v3

    .line 2564
    invoke-virtual {v8, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2568
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->archivedHintLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v8}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2569
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 2574
    :cond_5
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5400(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v1

    const/16 v14, 0x8

    if-ne v1, v14, :cond_6

    .line 2575
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$3300(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    move-result-object v1

    .line 2576
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4300(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    move-result-object v2

    :goto_2
    move v15, v12

    goto :goto_3

    .line 2578
    :cond_6
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5400(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v1

    if-ne v1, v9, :cond_7

    .line 2579
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$3400(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    move-result-object v1

    .line 2580
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4500(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    move-result-object v2

    goto :goto_2

    .line 2583
    :cond_7
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$1000(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    move-result-object v1

    .line 2584
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4000(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    move-result-object v2

    move v15, v13

    .line 2586
    :goto_3
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v3

    if-ne v0, v3, :cond_38

    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    if-ne v3, v1, :cond_38

    .line 2594
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    .line 2595
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5300(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result v4

    if-eqz v4, :cond_20

    const/4 v4, -0x1

    move v9, v4

    move v14, v9

    move v5, v13

    .line 2598
    :goto_4
    iget-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {v10}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    if-ge v5, v10, :cond_c

    .line 2599
    iget-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {v10}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v10

    iget-object v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {v7}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v10, v7}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v7

    if-ltz v7, :cond_9

    if-gt v7, v14, :cond_8

    if-ne v14, v4, :cond_9

    :cond_8
    move v14, v7

    :cond_9
    if-ltz v7, :cond_b

    if-lt v7, v9, :cond_a

    if-ne v9, v4, :cond_b

    :cond_a
    move v9, v7

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_c
    move v7, v4

    move v10, v7

    move v5, v13

    .line 2612
    :goto_5
    iget-object v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {v11}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$3900(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    if-ge v5, v11, :cond_11

    .line 2613
    iget-object v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {v11}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$3900(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v11

    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$3900(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v11, v6}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v6

    if-ltz v6, :cond_e

    if-gt v6, v10, :cond_d

    if-ne v10, v4, :cond_e

    :cond_d
    move v10, v6

    :cond_e
    if-ltz v6, :cond_10

    if-lt v6, v7, :cond_f

    if-ne v7, v4, :cond_10

    :cond_f
    move v7, v6

    :cond_10
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_11
    if-ltz v9, :cond_18

    if-ltz v7, :cond_18

    .line 2625
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget v4, v4, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchCenterPosition:I

    if-ltz v4, :cond_18

    .line 2626
    invoke-virtual {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->getItemCount()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2800(Lorg/telegram/ui/Components/SharedMediaLayout;)[I

    move-result-object v5

    aget v5, v5, v15

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 2627
    invoke-virtual {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->getItemCount()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5600(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    .line 2628
    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget v11, v6, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchCenterPosition:I

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5600(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v6

    div-int/2addr v11, v6

    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5600(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v6

    div-int v6, v7, v6

    sub-int/2addr v11, v6

    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget v6, v6, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchCenterPosition:I

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->getTopOffset()I

    move-result v22

    sub-int v6, v6, v22

    iget-object v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v13}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2800(Lorg/telegram/ui/Components/SharedMediaLayout;)[I

    move-result-object v13

    aget v13, v13, v15

    div-int/2addr v6, v13

    iget-object v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v13}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2800(Lorg/telegram/ui/Components/SharedMediaLayout;)[I

    move-result-object v13

    aget v13, v13, v15

    div-int v13, v9, v13

    sub-int/2addr v6, v13

    sub-int v6, v11, v6

    .line 2629
    iget-object v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v11}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2800(Lorg/telegram/ui/Components/SharedMediaLayout;)[I

    move-result-object v11

    aget v11, v11, v15

    div-int v11, v9, v11

    sub-int/2addr v11, v6

    if-gez v11, :cond_12

    iget-object v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v11}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5600(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v11

    iget-object v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v13}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2800(Lorg/telegram/ui/Components/SharedMediaLayout;)[I

    move-result-object v13

    aget v13, v13, v15

    if-lt v11, v13, :cond_13

    :cond_12
    iget-object v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v11}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5600(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v11

    div-int v11, v7, v11

    add-int/2addr v11, v6

    if-gez v11, :cond_14

    iget-object v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v11}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5600(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v11

    iget-object v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v13}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2800(Lorg/telegram/ui/Components/SharedMediaLayout;)[I

    move-result-object v13

    aget v13, v13, v15

    if-le v11, v13, :cond_14

    :cond_13
    const/4 v6, 0x0

    .line 2632
    :cond_14
    iget-object v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v11}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2800(Lorg/telegram/ui/Components/SharedMediaLayout;)[I

    move-result-object v11

    aget v11, v11, v15

    div-int/2addr v10, v11

    add-int/2addr v10, v6

    if-lt v10, v4, :cond_15

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5600(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v4

    iget-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v10}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2800(Lorg/telegram/ui/Components/SharedMediaLayout;)[I

    move-result-object v10

    aget v10, v10, v15

    if-gt v4, v10, :cond_16

    :cond_15
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5600(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v4

    div-int/2addr v14, v4

    sub-int/2addr v14, v6

    if-lt v14, v5, :cond_17

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5600(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2800(Lorg/telegram/ui/Components/SharedMediaLayout;)[I

    move-result-object v5

    aget v5, v5, v15

    if-ge v4, v5, :cond_17

    :cond_16
    const/4 v6, 0x0

    .line 2636
    :cond_17
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget v5, v4, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchCenterPosition:I

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2800(Lorg/telegram/ui/Components/SharedMediaLayout;)[I

    move-result-object v4

    aget v4, v4, v15

    rem-int/2addr v5, v4

    int-to-float v4, v5

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2800(Lorg/telegram/ui/Components/SharedMediaLayout;)[I

    move-result-object v5

    aget v5, v5, v15

    sub-int/2addr v5, v12

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 2637
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5600(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v5

    iget-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v10}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2800(Lorg/telegram/ui/Components/SharedMediaLayout;)[I

    move-result-object v10

    aget v10, v10, v15

    sub-int/2addr v5, v10

    int-to-float v5, v5

    mul-float/2addr v5, v4

    float-to-int v4, v5

    goto :goto_6

    :cond_18
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 2639
    :goto_6
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5700(Lorg/telegram/ui/Components/SharedMediaLayout;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 2640
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->excludeDrawViews:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    .line 2641
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->drawingViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 2642
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->drawingViews2:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 2643
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->drawingViews3:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 2644
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    const/4 v10, 0x0

    invoke-static {v5, v10}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5802(Lorg/telegram/ui/Components/SharedMediaLayout;I)I

    const/4 v5, 0x0

    .line 2645
    :goto_7
    iget-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {v10}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$3900(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    if-ge v5, v10, :cond_1c

    .line 2646
    iget-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {v10}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$3900(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v10

    invoke-virtual {v10, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 2647
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v13

    if-gt v11, v13, :cond_1b

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v11

    if-gez v11, :cond_19

    goto :goto_8

    .line 2650
    :cond_19
    instance-of v11, v10, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    if-eqz v11, :cond_1a

    .line 2651
    iget-object v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v11}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5700(Lorg/telegram/ui/Components/SharedMediaLayout;)Ljava/util/ArrayList;

    move-result-object v11

    check-cast v10, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 2652
    :cond_1a
    instance-of v10, v10, Landroid/widget/TextView;

    if-eqz v10, :cond_1b

    .line 2653
    iget-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v10}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5808(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    :cond_1b
    :goto_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 2656
    :cond_1c
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->drawingViews:Ljava/util/ArrayList;

    iget-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v10}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5700(Lorg/telegram/ui/Components/SharedMediaLayout;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2657
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/RecyclerListView;->getFastScroll()Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    move-result-object v5

    if-eqz v5, :cond_1f

    .line 2658
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_1f

    .line 2659
    iget-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {v10}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v10

    invoke-virtual {v1, v10}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->getScrollProgress(Lorg/telegram/ui/Components/RecyclerListView;)F

    move-result v10

    .line 2660
    iget-object v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {v11}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$3900(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v11

    invoke-virtual {v2, v11}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->getScrollProgress(Lorg/telegram/ui/Components/RecyclerListView;)F

    move-result v11

    .line 2661
    iget-object v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {v13}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v13

    invoke-virtual {v1, v13}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->fastScrollIsVisible(Lorg/telegram/ui/Components/RecyclerListView;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_9

    :cond_1d
    const/4 v1, 0x0

    .line 2662
    :goto_9
    iget-object v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {v13}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$3900(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v13

    invoke-virtual {v2, v13}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->fastScrollIsVisible(Lorg/telegram/ui/Components/RecyclerListView;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_a

    :cond_1e
    const/4 v2, 0x0

    .line 2663
    :goto_a
    iget-object v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v13}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5500(Lorg/telegram/ui/Components/SharedMediaLayout;)F

    move-result v13

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float v13, v14, v13

    mul-float/2addr v10, v13

    iget-object v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v13}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5500(Lorg/telegram/ui/Components/SharedMediaLayout;)F

    move-result v13

    mul-float/2addr v11, v13

    add-float/2addr v10, v11

    invoke-virtual {v5, v10}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->setProgress(F)V

    .line 2664
    iget-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v10}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5500(Lorg/telegram/ui/Components/SharedMediaLayout;)F

    move-result v10

    sub-float v10, v14, v10

    mul-float/2addr v1, v10

    iget-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v10}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5500(Lorg/telegram/ui/Components/SharedMediaLayout;)F

    move-result v10

    mul-float/2addr v2, v10

    add-float/2addr v1, v2

    invoke-virtual {v5, v1}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->setVisibilityAlpha(F)V

    :cond_1f
    move v10, v6

    move v11, v7

    move v13, v9

    move v9, v4

    goto :goto_b

    :cond_20
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    :goto_b
    move v14, v3

    const/4 v1, 0x0

    .line 2668
    :goto_c
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2d

    .line 2669
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2670
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    if-gt v3, v4, :cond_2b

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gez v3, :cond_21

    goto/16 :goto_11

    .line 2680
    :cond_21
    instance-of v2, v2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    if-eqz v2, :cond_2a

    .line 2681
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    .line 2683
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->getMessageId()I

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    iget v4, v4, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->highlightMessageId:I

    if-ne v3, v4, :cond_25

    iget-object v3, v2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->hasBitmapImage()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 2684
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    iget-boolean v4, v3, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->highlightAnimation:Z

    if-nez v4, :cond_22

    const/4 v4, 0x0

    .line 2685
    iput v4, v3, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->highlightProgress:F

    .line 2686
    iput-boolean v12, v3, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->highlightAnimation:Z

    .line 2689
    :cond_22
    iget v3, v3, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->highlightProgress:F

    const v4, 0x3e99999a    # 0.3f

    cmpg-float v5, v3, v4

    if-gez v5, :cond_23

    div-float/2addr v3, v4

    goto :goto_d

    :cond_23
    const v5, 0x3f333333    # 0.7f

    cmpl-float v5, v3, v5

    if-lez v5, :cond_24

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v6, v5, v3

    div-float v3, v6, v4

    goto :goto_d

    :cond_24
    const/high16 v3, 0x3f800000    # 1.0f

    .line 2694
    :goto_d
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setHighlightProgress(F)V

    goto :goto_e

    :cond_25
    const/4 v3, 0x0

    .line 2696
    invoke-virtual {v2, v3}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setHighlightProgress(F)V

    .line 2699
    :goto_e
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v3

    if-eqz v3, :cond_26

    .line 2701
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v4, v4, Lorg/telegram/ui/Components/SharedMediaLayout;->messageAlphaEnter:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_26

    .line 2702
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v4, v4, Lorg/telegram/ui/Components/SharedMediaLayout;->messageAlphaEnter:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v4, v3, v6}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    goto :goto_f

    :cond_26
    const/high16 v3, 0x3f800000    # 1.0f

    .line 2704
    :goto_f
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5300(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result v4

    xor-int/2addr v4, v12

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setImageAlpha(FZ)V

    .line 2707
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5300(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 2710
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewAdapterPosition()I

    move-result v3

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2800(Lorg/telegram/ui/Components/SharedMediaLayout;)[I

    move-result-object v4

    aget v4, v4, v15

    rem-int/2addr v3, v4

    add-int/2addr v3, v9

    .line 2711
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewAdapterPosition()I

    move-result v4

    sub-int/2addr v4, v13

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2800(Lorg/telegram/ui/Components/SharedMediaLayout;)[I

    move-result-object v5

    aget v5, v5, v15

    div-int/2addr v4, v5

    add-int/2addr v4, v10

    .line 2712
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5600(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v5

    mul-int/2addr v4, v5

    add-int/2addr v4, v3

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5800(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v5

    add-int/2addr v4, v5

    if-ltz v3, :cond_28

    .line 2713
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5600(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v5

    if-ge v3, v5, :cond_28

    if-ltz v4, :cond_28

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5700(Lorg/telegram/ui/Components/SharedMediaLayout;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v4, v3, :cond_28

    .line 2715
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5700(Lorg/telegram/ui/Components/SharedMediaLayout;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    sub-float/2addr v3, v6

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v7

    sub-float/2addr v6, v7

    div-float/2addr v3, v6

    .line 2716
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5500(Lorg/telegram/ui/Components/SharedMediaLayout;)F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v5, v6, v5

    mul-float/2addr v5, v6

    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5500(Lorg/telegram/ui/Components/SharedMediaLayout;)F

    move-result v6

    mul-float/2addr v3, v6

    add-float/2addr v5, v3

    .line 2717
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v3

    int-to-float v3, v3

    .line 2718
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTop()I

    move-result v6

    int-to-float v6, v6

    .line 2719
    iget-object v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v7}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5700(Lorg/telegram/ui/Components/SharedMediaLayout;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v7

    int-to-float v7, v7

    .line 2720
    iget-object v12, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v12}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5700(Lorg/telegram/ui/Components/SharedMediaLayout;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getTop()I

    move-result v12

    int-to-float v12, v12

    move/from16 v24, v13

    const/4 v13, 0x0

    .line 2722
    invoke-virtual {v2, v13}, Landroid/widget/FrameLayout;->setPivotX(F)V

    .line 2723
    invoke-virtual {v2, v13}, Landroid/widget/FrameLayout;->setPivotY(F)V

    .line 2724
    iget-object v13, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v13}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5300(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result v13

    const/16 v23, 0x1

    xor-int/lit8 v13, v13, 0x1

    invoke-virtual {v2, v5, v13}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setImageScale(FZ)V

    sub-float/2addr v7, v3

    .line 2725
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5500(Lorg/telegram/ui/Components/SharedMediaLayout;)F

    move-result v3

    mul-float/2addr v7, v3

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    sub-float/2addr v12, v6

    .line 2726
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5500(Lorg/telegram/ui/Components/SharedMediaLayout;)F

    move-result v3

    mul-float/2addr v12, v3

    invoke-virtual {v2, v12}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2727
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5700(Lorg/telegram/ui/Components/SharedMediaLayout;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5500(Lorg/telegram/ui/Components/SharedMediaLayout;)F

    move-result v5

    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5600(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v6

    invoke-virtual {v2, v3, v5, v6}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setCrossfadeView(Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;FI)V

    .line 2728
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->excludeDrawViews:Ljava/util/HashSet;

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5700(Lorg/telegram/ui/Components/SharedMediaLayout;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2729
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->drawingViews3:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2730
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 2731
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getX()F

    move-result v3

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getY()F

    move-result v4

    invoke-virtual {v8, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2732
    invoke-virtual {v2, v8}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2733
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 2735
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getY()F

    move-result v3

    cmpg-float v3, v3, v14

    if-gez v3, :cond_27

    .line 2736
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getY()F

    move-result v14

    :cond_27
    const/4 v3, 0x1

    goto :goto_10

    :cond_28
    move/from16 v24, v13

    const/4 v3, 0x0

    :goto_10
    if-nez v3, :cond_2c

    .line 2742
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5300(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 2743
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->drawingViews2:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_29
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2745
    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setCrossfadeView(Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;FI)V

    .line 2746
    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 2747
    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2748
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5300(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4, v3}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setImageScale(FZ)V

    goto :goto_12

    :cond_2a
    move/from16 v24, v13

    goto :goto_12

    :cond_2b
    :goto_11
    move/from16 v24, v13

    .line 2671
    instance-of v2, v2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    if-eqz v2, :cond_2c

    .line 2672
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2673
    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setCrossfadeView(Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;FI)V

    .line 2674
    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 2675
    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 2676
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5300(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4, v3}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setImageScale(FZ)V

    :cond_2c
    :goto_12
    add-int/lit8 v1, v1, 0x1

    move/from16 v13, v24

    const/4 v12, 0x1

    goto/16 :goto_c

    :cond_2d
    move/from16 v24, v13

    .line 2753
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5300(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result v1

    const/high16 v12, 0x3fa00000    # 1.25f

    const/high16 v13, 0x437f0000    # 255.0f

    if-eqz v1, :cond_32

    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->drawingViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_32

    .line 2754
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5600(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2800(Lorg/telegram/ui/Components/SharedMediaLayout;)[I

    move-result-object v2

    aget v2, v2, v15

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 2755
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5500(Lorg/telegram/ui/Components/SharedMediaLayout;)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v6, v3, v2

    mul-float/2addr v1, v6

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5500(Lorg/telegram/ui/Components/SharedMediaLayout;)F

    move-result v2

    add-float v25, v1, v2

    .line 2757
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2800(Lorg/telegram/ui/Components/SharedMediaLayout;)[I

    move-result-object v2

    aget v2, v2, v15

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    sub-float/2addr v1, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5600(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v1, v3

    .line 2758
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5500(Lorg/telegram/ui/Components/SharedMediaLayout;)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v6, v3, v2

    mul-float/2addr v1, v6

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5500(Lorg/telegram/ui/Components/SharedMediaLayout;)F

    move-result v2

    add-float v7, v1, v2

    .line 2760
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2800(Lorg/telegram/ui/Components/SharedMediaLayout;)[I

    move-result-object v2

    aget v2, v2, v15

    int-to-float v2, v2

    div-float v26, v1, v2

    .line 2761
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5600(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v2

    int-to-float v2, v2

    div-float v27, v1, v2

    .line 2762
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5600(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    float-to-double v4, v4

    sub-double/2addr v1, v4

    float-to-double v4, v7

    mul-double/2addr v1, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    float-to-double v3, v4

    add-double/2addr v1, v3

    double-to-float v1, v1

    .line 2763
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5400(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_2e

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5400(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_2f

    :cond_2e
    mul-float/2addr v1, v12

    :cond_2f
    move/from16 v28, v1

    const/4 v6, 0x0

    .line 2767
    :goto_13
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->drawingViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v6, v1, :cond_32

    .line 2768
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->drawingViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    .line 2769
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->excludeDrawViews:Ljava/util/HashSet;

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    move/from16 v21, v6

    move/from16 v19, v7

    const/high16 v12, 0x3f800000    # 1.0f

    goto/16 :goto_15

    :cond_30
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 2772
    invoke-virtual {v5, v4, v1, v2}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setCrossfadeView(Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;FI)V

    .line 2773
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewAdapterPosition()I

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5600(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v2

    rem-int/2addr v1, v2

    sub-int v2, v1, v9

    .line 2775
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewAdapterPosition()I

    move-result v3

    sub-int/2addr v3, v11

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5600(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v4

    div-int/2addr v3, v4

    sub-int/2addr v3, v10

    .line 2778
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v4, v2

    mul-float v4, v4, v26

    .line 2779
    iget-object v12, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v12}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5500(Lorg/telegram/ui/Components/SharedMediaLayout;)F

    move-result v12

    const/high16 v21, 0x3f800000    # 1.0f

    sub-float v12, v21, v12

    mul-float/2addr v4, v12

    int-to-float v1, v1

    mul-float v1, v1, v27

    iget-object v12, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v12}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5500(Lorg/telegram/ui/Components/SharedMediaLayout;)F

    move-result v12

    mul-float/2addr v1, v12

    add-float/2addr v4, v1

    int-to-float v1, v3

    mul-float v1, v1, v28

    add-float/2addr v1, v14

    invoke-virtual {v8, v4, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2780
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5300(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result v1

    const/4 v3, 0x1

    xor-int/2addr v1, v3

    invoke-virtual {v5, v7, v1}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setImageScale(FZ)V

    .line 2781
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2800(Lorg/telegram/ui/Components/SharedMediaLayout;)[I

    move-result-object v1

    aget v1, v1, v15

    if-ge v2, v1, :cond_31

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2782
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v4, v1, v25

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v12, v1, v25

    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5500(Lorg/telegram/ui/Components/SharedMediaLayout;)F

    move-result v1

    mul-float/2addr v1, v13

    float-to-int v1, v1

    const/16 v29, 0x1f

    move/from16 v30, v1

    move-object/from16 v1, p1

    const/16 v19, 0x0

    move-object v13, v5

    move v5, v12

    move/from16 v12, v21

    move/from16 v21, v6

    move/from16 v6, v30

    move/from16 v19, v7

    move/from16 v7, v29

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 2783
    invoke-virtual {v13, v8}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2784
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_14

    :cond_31
    move-object v13, v5

    move/from16 v19, v7

    move/from16 v12, v21

    move/from16 v21, v6

    .line 2786
    invoke-virtual {v13, v8}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2788
    :goto_14
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :goto_15
    add-int/lit8 v6, v21, 0x1

    move/from16 v7, v19

    const/high16 v12, 0x3fa00000    # 1.25f

    const/high16 v13, 0x437f0000    # 255.0f

    goto/16 :goto_13

    :cond_32
    const/high16 v12, 0x3f800000    # 1.0f

    .line 2792
    invoke-super/range {p0 .. p1}, Lorg/telegram/ui/Components/BlurredRecyclerView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2794
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5300(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 2795
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2800(Lorg/telegram/ui/Components/SharedMediaLayout;)[I

    move-result-object v1

    aget v1, v1, v15

    int-to-float v1, v1

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5600(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 2796
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5500(Lorg/telegram/ui/Components/SharedMediaLayout;)F

    move-result v2

    mul-float/2addr v1, v2

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5500(Lorg/telegram/ui/Components/SharedMediaLayout;)F

    move-result v2

    sub-float v6, v12, v2

    add-float v11, v1, v6

    .line 2798
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5600(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    sub-float/2addr v1, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2800(Lorg/telegram/ui/Components/SharedMediaLayout;)[I

    move-result-object v4

    aget v4, v4, v15

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v1, v3

    .line 2799
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5500(Lorg/telegram/ui/Components/SharedMediaLayout;)F

    move-result v2

    mul-float/2addr v1, v2

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5500(Lorg/telegram/ui/Components/SharedMediaLayout;)F

    move-result v2

    sub-float v6, v12, v2

    add-float v13, v1, v6

    .line 2801
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2800(Lorg/telegram/ui/Components/SharedMediaLayout;)[I

    move-result-object v2

    aget v2, v2, v15

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    float-to-double v4, v4

    sub-double/2addr v1, v4

    float-to-double v4, v13

    mul-double/2addr v1, v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    float-to-double v3, v3

    add-double/2addr v1, v3

    double-to-float v1, v1

    .line 2802
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5400(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_33

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5400(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_34

    :cond_33
    const/high16 v2, 0x3fa00000    # 1.25f

    mul-float/2addr v1, v2

    :cond_34
    move/from16 v16, v1

    .line 2805
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2800(Lorg/telegram/ui/Components/SharedMediaLayout;)[I

    move-result-object v2

    aget v2, v2, v15

    int-to-float v2, v2

    div-float v17, v1, v2

    .line 2806
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5600(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v2

    int-to-float v2, v2

    div-float v18, v1, v2

    const/4 v7, 0x0

    .line 2808
    :goto_16
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->drawingViews2:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v7, v1, :cond_36

    .line 2809
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->drawingViews2:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    .line 2810
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewAdapterPosition()I

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2800(Lorg/telegram/ui/Components/SharedMediaLayout;)[I

    move-result-object v2

    aget v2, v2, v15

    rem-int/2addr v1, v2

    .line 2811
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewAdapterPosition()I

    move-result v2

    sub-int v2, v2, v24

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2800(Lorg/telegram/ui/Components/SharedMediaLayout;)[I

    move-result-object v3

    aget v3, v3, v15

    div-int/2addr v2, v3

    add-int/2addr v2, v10

    add-int v3, v1, v9

    .line 2816
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 2817
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5300(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result v4

    const/16 v19, 0x1

    xor-int/lit8 v4, v4, 0x1

    invoke-virtual {v6, v13, v4}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setImageScale(FZ)V

    int-to-float v1, v1

    mul-float v1, v1, v17

    .line 2818
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5500(Lorg/telegram/ui/Components/SharedMediaLayout;)F

    move-result v4

    sub-float v4, v12, v4

    mul-float/2addr v1, v4

    int-to-float v4, v3

    mul-float v4, v4, v18

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5500(Lorg/telegram/ui/Components/SharedMediaLayout;)F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v1, v4

    int-to-float v2, v2

    mul-float v2, v2, v16

    add-float/2addr v2, v14

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2819
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5600(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v1

    if-ge v3, v1, :cond_35

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2820
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v4, v1, v11

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v5, v1, v11

    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5500(Lorg/telegram/ui/Components/SharedMediaLayout;)F

    move-result v1

    sub-float v1, v12, v1

    const/high16 v21, 0x437f0000    # 255.0f

    mul-float v1, v1, v21

    float-to-int v1, v1

    const/16 v21, 0x1f

    move/from16 v23, v1

    move-object/from16 v1, p1

    move-object v12, v6

    move/from16 v6, v23

    move/from16 v23, v7

    move/from16 v7, v21

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 2821
    invoke-virtual {v12, v8}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2822
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_17

    :cond_35
    move-object v12, v6

    move/from16 v23, v7

    .line 2824
    invoke-virtual {v12, v8}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2826
    :goto_17
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v7, v23, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    goto/16 :goto_16

    .line 2829
    :cond_36
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->drawingViews3:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3e

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2830
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5500(Lorg/telegram/ui/Components/SharedMediaLayout;)F

    move-result v1

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v1, v6

    float-to-int v6, v1

    const/16 v7, 0x1f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    const/4 v10, 0x0

    .line 2831
    :goto_18
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->drawingViews3:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_37

    .line 2832
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->drawingViews3:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->drawCrossafadeImage(Landroid/graphics/Canvas;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_18

    .line 2834
    :cond_37
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1c

    :cond_38
    const/4 v10, 0x0

    .line 2838
    :goto_19
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v10, v1, :cond_3d

    .line 2839
    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2840
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5900(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/view/View;)I

    move-result v2

    if-eqz v2, :cond_39

    .line 2842
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v3, v3, Lorg/telegram/ui/Components/SharedMediaLayout;->messageAlphaEnter:Landroid/util/SparseArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3a

    .line 2843
    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v3, v3, Lorg/telegram/ui/Components/SharedMediaLayout;->messageAlphaEnter:Landroid/util/SparseArray;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v3, v2, v6}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v6

    goto :goto_1a

    :cond_39
    const/4 v4, 0x0

    :cond_3a
    const/high16 v6, 0x3f800000    # 1.0f

    .line 2845
    :goto_1a
    instance-of v2, v1, Lorg/telegram/ui/Cells/SharedDocumentCell;

    if-eqz v2, :cond_3b

    .line 2846
    check-cast v1, Lorg/telegram/ui/Cells/SharedDocumentCell;

    .line 2847
    invoke-virtual {v1, v6}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setEnterAnimationAlpha(F)V

    goto :goto_1b

    .line 2848
    :cond_3b
    instance-of v2, v1, Lorg/telegram/ui/Cells/SharedAudioCell;

    if-eqz v2, :cond_3c

    .line 2849
    check-cast v1, Lorg/telegram/ui/Cells/SharedAudioCell;

    .line 2850
    invoke-virtual {v1, v6}, Lorg/telegram/ui/Cells/SharedAudioCell;->setEnterAnimationAlpha(F)V

    :cond_3c
    :goto_1b
    add-int/lit8 v10, v10, 0x1

    goto :goto_19

    .line 2853
    :cond_3d
    invoke-super/range {p0 .. p1}, Lorg/telegram/ui/Components/BlurredRecyclerView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2857
    :cond_3e
    :goto_1c
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    iget-boolean v2, v1, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->highlightAnimation:Z

    if-eqz v2, :cond_40

    .line 2858
    iget v2, v1, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->highlightProgress:F

    const v3, 0x3c2ec33e

    add-float/2addr v2, v3

    iput v2, v1, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->highlightProgress:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_3f

    const/4 v2, 0x0

    .line 2860
    iput v2, v1, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->highlightProgress:F

    const/4 v2, 0x0

    .line 2861
    iput-boolean v2, v1, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->highlightAnimation:Z

    .line 2862
    iput v2, v1, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->highlightMessageId:I

    .line 2864
    :cond_3f
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 2866
    :cond_40
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->poller:Lorg/telegram/ui/Stories/UserListPoller;

    if-nez v1, :cond_41

    .line 2867
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getCurrentAccount()I

    move-result v1

    invoke-static {v1}, Lorg/telegram/ui/Stories/UserListPoller;->getInstance(I)Lorg/telegram/ui/Stories/UserListPoller;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->poller:Lorg/telegram/ui/Stories/UserListPoller;

    .line 2869
    :cond_41
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->poller:Lorg/telegram/ui/Stories/UserListPoller;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Stories/UserListPoller;->checkList(Lorg/telegram/ui/Components/RecyclerListView;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 2519
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->isInPreviewMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2520
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->lastY:F

    .line 2521
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2522
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->finishPreviewFragment()V

    goto :goto_0

    .line 2523
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 2524
    iget p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->startY:F

    iget v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->lastY:F

    sub-float/2addr p1, v0

    .line 2525
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/ActionBar/BaseFragment;->movePreviewFragment(F)V

    const/4 v0, 0x0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    .line 2527
    iget p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->lastY:F

    iput p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->startY:F

    :cond_1
    :goto_0
    return v1

    .line 2532
    :cond_2
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 2

    .line 2875
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5400(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2876
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$3300(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    move-result-object v0

    goto :goto_0

    .line 2877
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5400(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 2878
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$3400(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$StoriesAdapter;

    move-result-object v0

    goto :goto_0

    .line 2880
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$1000(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    move-result-object v0

    .line 2882
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object v1

    if-ne v1, p0, :cond_2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    if-ne v1, v0, :cond_2

    .line 2883
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5300(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    return p1

    .line 2887
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/BlurredRecyclerView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public getSelectorColor(I)Ljava/lang/Integer;
    .locals 2

    .line 2892
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$6000(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$6000(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;->access$6100(Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$6000(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout$ChannelRecommendationsAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 2893
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 2895
    :cond_0
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;->getSelectorColor(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 2503
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Components/RecyclerListView;->onLayout(ZIIII)V

    .line 2504
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$200(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/SharedMediaLayout$InternalListView;

    move-result-object p3

    iget-object p4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->val$layoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    invoke-static {p1, p2, p3, p4}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$5200(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Lorg/telegram/ui/Components/RecyclerListView;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    .line 2505
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$13;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result p1

    if-nez p1, :cond_0

    .line 2506
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/PhotoViewer;->checkCurrentImageVisibility()V

    :cond_0
    return-void
.end method
