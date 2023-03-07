.class Lorg/telegram/ui/ProfileActivity$7;
.super Lorg/telegram/ui/ProfileActivity$NestedFrameLayout;
.source "ProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private grayPaint:Landroid/graphics/Paint;

.field private ignoreLayout:Z

.field private final sortedChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;

.field private final viewComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private wasPortrait:Z


# direct methods
.method public static synthetic $r8$lambda$SmupgQdFCzucng9KvXxoX0WVSVQ(Lorg/telegram/ui/ProfileActivity$7;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$7;->lambda$onMeasure$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$l4-m4ZAhO6PnEO3gQnqKlTy8NJU(Landroid/view/View;Landroid/view/View;)I
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ProfileActivity$7;->lambda$$1(Landroid/view/View;Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method constructor <init>(Lorg/telegram/ui/ProfileActivity;Landroid/content/Context;)V
    .locals 0

    .line 2589
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ProfileActivity$NestedFrameLayout;-><init>(Lorg/telegram/ui/ProfileActivity;Landroid/content/Context;)V

    .line 2606
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$7;->grayPaint:Landroid/graphics/Paint;

    .line 2855
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$7;->sortedChildren:Ljava/util/ArrayList;

    .line 2856
    sget-object p1, Lorg/telegram/ui/ProfileActivity$7$$ExternalSyntheticLambda1;->INSTANCE:Lorg/telegram/ui/ProfileActivity$7$$ExternalSyntheticLambda1;

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$7;->viewComparator:Ljava/util/Comparator;

    return-void
.end method

.method private static synthetic lambda$$1(Landroid/view/View;Landroid/view/View;)I
    .locals 0

    .line 2856
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    sub-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method private synthetic lambda$onMeasure$0()V
    .locals 2

    .line 2824
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$12700(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2825
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$12700(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;->dismiss()V

    .line 2826
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ProfileActivity;->access$12702(Lorg/telegram/ui/ProfileActivity;Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    :cond_0
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 2861
    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$11200(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/Paint;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    const-string v3, "windowBackgroundWhite"

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2862
    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    const/high16 v8, 0x437f0000    # 255.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    if-nez v1, :cond_d

    .line 2863
    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$7;->grayPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    const-string v3, "windowBackgroundGray"

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 2864
    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$11300(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2865
    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$11200(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/Paint;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v2

    mul-float v2, v2, v8

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2867
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$11300(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2868
    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$7;->grayPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v2

    mul-float v2, v2, v8

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2871
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 2872
    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$7;->sortedChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 2875
    iget-object v4, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2876
    iget-object v5, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v5}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 2877
    iget-object v4, v0, Lorg/telegram/ui/ProfileActivity$7;->sortedChildren:Ljava/util/ArrayList;

    iget-object v5, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v5}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2882
    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$7;->sortedChildren:Ljava/util/ArrayList;

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$7;->viewComparator:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2884
    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    .line 2885
    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$7;->sortedChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 2886
    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$9300(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v2

    if-nez v2, :cond_4

    if-lez v12, :cond_4

    if-nez v3, :cond_4

    .line 2887
    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$7;->sortedChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v1, v2

    :cond_4
    move v13, v1

    const/4 v1, 0x0

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    :goto_2
    const/16 v6, 0xff

    if-ge v14, v12, :cond_a

    .line 2891
    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$7;->sortedChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/view/View;

    .line 2892
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_5

    const/4 v5, 0x1

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    .line 2893
    :goto_3
    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getY()F

    move-result v3

    add-float/2addr v2, v3

    float-to-int v4, v2

    if-ne v1, v5, :cond_6

    .line 2895
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v9

    if-nez v2, :cond_9

    const/high16 v15, 0x3f800000    # 1.0f

    goto/16 :goto_5

    :cond_6
    if-eqz v1, :cond_7

    .line 2901
    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v1

    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    add-float v6, v1, v3

    int-to-float v15, v4

    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity$7;->grayPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move-object/from16 v17, v3

    move v3, v13

    move v13, v4

    move v4, v6

    move/from16 v18, v5

    move v5, v15

    move-object/from16 v6, v17

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move v11, v13

    goto/16 :goto_4

    :cond_7
    move/from16 v18, v5

    move v5, v4

    cmpl-float v1, v15, v9

    if-eqz v1, :cond_8

    .line 2904
    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v1

    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    add-float v4, v1, v3

    int-to-float v3, v5

    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$7;->grayPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v1

    move-object/from16 v1, p1

    move/from16 v19, v3

    move v3, v13

    move v11, v5

    move/from16 v5, v19

    const/16 v10, 0xff

    move-object/from16 v6, v17

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2905
    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$11200(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/Paint;

    move-result-object v1

    mul-float v15, v15, v8

    float-to-int v2, v15

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2906
    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v1

    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    add-float v4, v1, v3

    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$11200(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/Paint;

    move-result-object v6

    move-object/from16 v1, p1

    move v3, v13

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2907
    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$11200(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_4

    :cond_8
    move v11, v5

    .line 2909
    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v1

    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    add-float v4, v1, v3

    int-to-float v5, v11

    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$11200(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/Paint;

    move-result-object v6

    move-object/from16 v1, p1

    move v3, v13

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_4
    int-to-float v13, v11

    .line 2914
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getAlpha()F

    move-result v15

    move/from16 v1, v18

    :cond_9
    :goto_5
    add-int/lit8 v14, v14, 0x1

    const/4 v11, 0x0

    goto/16 :goto_2

    :cond_a
    const/16 v10, 0xff

    if-eqz v1, :cond_b

    .line 2918
    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v1

    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    add-float v4, v1, v3

    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, v0, Lorg/telegram/ui/ProfileActivity$7;->grayPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v13

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    :cond_b
    cmpl-float v1, v15, v9

    if-eqz v1, :cond_c

    .line 2921
    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v1

    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    add-float v4, v1, v3

    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, v0, Lorg/telegram/ui/ProfileActivity$7;->grayPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v13

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2922
    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$11200(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/Paint;

    move-result-object v1

    mul-float v15, v15, v8

    float-to-int v2, v15

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2923
    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v1

    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    add-float v4, v1, v3

    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    int-to-float v5, v1

    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$11200(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/Paint;

    move-result-object v6

    move-object/from16 v1, p1

    move v3, v13

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2924
    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$11200(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_6

    .line 2926
    :cond_c
    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v1

    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    add-float v4, v1, v3

    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    int-to-float v5, v1

    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$11200(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/Paint;

    move-result-object v6

    move-object/from16 v1, p1

    move v3, v13

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_6

    .line 2930
    :cond_d
    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$8400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    const/4 v2, 0x0

    int-to-float v3, v1

    .line 2931
    iget-object v4, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$800(Lorg/telegram/ui/ProfileActivity;)F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v1, v5

    int-to-float v5, v1

    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$11200(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/Paint;

    move-result-object v6

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2933
    :goto_6
    invoke-super/range {p0 .. p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2934
    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-boolean v2, v1, Lorg/telegram/ui/ProfileActivity;->profileTransitionInProgress:Z

    if-eqz v2, :cond_f

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$11400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_f

    .line 2935
    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$11600(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$11500(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v2

    invoke-interface {v2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 2936
    instance-of v2, v1, Lorg/telegram/ui/ChatActivity;

    if-eqz v2, :cond_f

    .line 2937
    check-cast v1, Lorg/telegram/ui/ChatActivity;

    .line 2938
    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getFragmentContextView()Lorg/telegram/ui/Components/FragmentContextView;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 2940
    invoke-virtual {v1}, Lorg/telegram/ui/Components/FragmentContextView;->isCallStyle()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2941
    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$800(Lorg/telegram/ui/ProfileActivity;)F

    move-result v2

    invoke-virtual {v1}, Lorg/telegram/ui/Components/FragmentContextView;->getStyleHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    div-float/2addr v2, v3

    cmpl-float v3, v2, v9

    if-lez v3, :cond_e

    goto :goto_7

    :cond_e
    move v9, v2

    .line 2945
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 2946
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getX()F

    move-result v2

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getY()F

    move-result v3

    invoke-virtual {v7, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v2, 0x1

    .line 2947
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/FragmentContextView;->setDrawOverlay(Z)V

    .line 2948
    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$800(Lorg/telegram/ui/ProfileActivity;)F

    move-result v3

    invoke-virtual {v1, v2, v3, v9}, Lorg/telegram/ui/Components/FragmentContextView;->setCollapseTransition(ZFF)V

    .line 2949
    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2950
    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$800(Lorg/telegram/ui/ProfileActivity;)F

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v9}, Lorg/telegram/ui/Components/FragmentContextView;->setCollapseTransition(ZFF)V

    .line 2951
    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/FragmentContextView;->setDrawOverlay(Z)V

    .line 2952
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 2957
    :cond_f
    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$11700(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    if-lez v1, :cond_10

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2958
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$11700(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/Paint;

    move-result-object v6

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2960
    :cond_10
    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$11800(Lorg/telegram/ui/ProfileActivity;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 2961
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 2962
    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$11800(Lorg/telegram/ui/ProfileActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$11800(Lorg/telegram/ui/ProfileActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v7, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2963
    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$11800(Lorg/telegram/ui/ProfileActivity;)Landroid/view/View;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$11900(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBar;->getBackButton()Landroid/widget/ImageView;

    move-result-object v3

    if-ne v2, v3, :cond_11

    .line 2964
    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$11800(Lorg/telegram/ui/ProfileActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$11800(Lorg/telegram/ui/ProfileActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 2965
    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$12000(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    .line 2966
    iget-object v4, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$12000(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/Paint;

    move-result-object v4

    int-to-float v5, v3

    iget-object v6, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v6}, Lorg/telegram/ui/ProfileActivity;->access$11700(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Paint;->getAlpha()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v8

    mul-float v5, v5, v6

    const v6, 0x3e99999a    # 0.3f

    div-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    int-to-float v2, v2

    const v4, 0x3f333333    # 0.7f

    mul-float v4, v4, v2

    .line 2967
    iget-object v5, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v5}, Lorg/telegram/ui/ProfileActivity;->access$12000(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {v7, v2, v2, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 2968
    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$12000(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2970
    :cond_11
    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$11800(Lorg/telegram/ui/ProfileActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 2971
    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_12
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 2593
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->pinchToZoomHelper:Lorg/telegram/ui/PinchToZoomHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/PinchToZoomHelper;->isInOverlayMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2594
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->pinchToZoomHelper:Lorg/telegram/ui/PinchToZoomHelper;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/PinchToZoomHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 2596
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$2400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/SharedMediaLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$2400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/SharedMediaLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->isInFastScroll()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$2400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/SharedMediaLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->isPinnedToTop()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2597
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$2400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/SharedMediaLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->dispatchFastScrollEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 2599
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$2400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/SharedMediaLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$2400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/SharedMediaLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->checkPinchToZoom(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    return p1

    .line 2602
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    .line 2977
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->pinchToZoomHelper:Lorg/telegram/ui/PinchToZoomHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/PinchToZoomHelper;->isInOverlayMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$12100(Lorg/telegram/ui/ProfileActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$12200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$12300(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v0

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$12400(Lorg/telegram/ui/ProfileActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p2, v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 2980
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 2985
    invoke-super {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onAttachedToWindow()V

    .line 2986
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/ProfileActivity;->access$12502(Lorg/telegram/ui/ProfileActivity;Z)Z

    const/4 v0, 0x0

    .line 2987
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$12600(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 2988
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$12600(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v1

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 2989
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$12600(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->attach()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 2996
    invoke-super {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onDetachedFromWindow()V

    .line 2997
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ProfileActivity;->access$12502(Lorg/telegram/ui/ProfileActivity;Z)Z

    .line 2998
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$12600(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v0

    array-length v0, v0

    if-ge v1, v0, :cond_1

    .line 2999
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$12600(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 3000
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$12600(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;->detach()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 2840
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onLayout(ZIIII)V

    .line 2841
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    const/4 p2, -0x1

    iput p2, p1, Lorg/telegram/ui/ProfileActivity;->savedScrollPosition:I

    const/4 p2, 0x0

    .line 2842
    invoke-static {p1, p2}, Lorg/telegram/ui/ProfileActivity;->access$10702(Lorg/telegram/ui/ProfileActivity;Z)Z

    .line 2843
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1, p2}, Lorg/telegram/ui/ProfileActivity;->access$10902(Lorg/telegram/ui/ProfileActivity;Z)Z

    .line 2844
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$11100(Lorg/telegram/ui/ProfileActivity;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 17

    move-object/from16 v7, p0

    .line 2617
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v0

    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$8300(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->getOccupyStatusBar()Z

    move-result v1

    const/4 v8, 0x0

    if-eqz v1, :cond_0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 2618
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2619
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 2620
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-eq v2, v0, :cond_1

    .line 2621
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2624
    :cond_1
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$8400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2625
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$8400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 2626
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-eq v2, v0, :cond_2

    .line 2627
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2631
    :cond_2
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    const/high16 v1, 0x40000000    # 2.0f

    .line 2632
    invoke-static {v9, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    move/from16 v10, p1

    invoke-super {v7, v10, v2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 2635
    iget-object v2, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$8500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x58

    if-ne v2, v3, :cond_4

    iget-object v2, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$8600(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    if-eq v2, v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 2636
    :cond_4
    :goto_1
    iget-object v2, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$8500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$8500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    if-eq v2, v3, :cond_5

    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    .line 2637
    :goto_2
    iget-object v3, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3, v8}, Lorg/telegram/ui/ProfileActivity;->access$8702(Lorg/telegram/ui/ProfileActivity;I)I

    .line 2638
    iget-object v3, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$8800(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->getItemCount()I

    move-result v3

    .line 2639
    iget-object v6, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v12

    invoke-static {v6, v12}, Lorg/telegram/ui/ProfileActivity;->access$8502(Lorg/telegram/ui/ProfileActivity;I)I

    .line 2640
    iget-object v6, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v12

    invoke-static {v6, v12}, Lorg/telegram/ui/ProfileActivity;->access$8602(Lorg/telegram/ui/ProfileActivity;I)I

    .line 2641
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    invoke-static {v6, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 2642
    iget-object v6, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v6}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v6

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 2643
    iget-object v12, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v12}, Lorg/telegram/ui/ProfileActivity;->access$8900(Lorg/telegram/ui/ProfileActivity;)Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/HashMap;->clear()V

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v3, :cond_7

    .line 2645
    iget-object v13, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v13}, Lorg/telegram/ui/ProfileActivity;->access$8800(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-result-object v13

    invoke-virtual {v13, v12}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->getItemViewType(I)I

    move-result v13

    .line 2646
    iget-object v14, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v14}, Lorg/telegram/ui/ProfileActivity;->access$8900(Lorg/telegram/ui/ProfileActivity;)Ljava/util/HashMap;

    move-result-object v14

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iget-object v11, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v11}, Lorg/telegram/ui/ProfileActivity;->access$8700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v14, v15, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v11, 0xd

    if-ne v13, v11, :cond_6

    .line 2648
    iget-object v11, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v11}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v13

    invoke-static {v11, v13}, Lorg/telegram/ui/ProfileActivity;->access$8712(Lorg/telegram/ui/ProfileActivity;I)I

    goto :goto_4

    .line 2650
    :cond_6
    iget-object v11, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v11}, Lorg/telegram/ui/ProfileActivity;->access$8800(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-result-object v11

    invoke-virtual {v11, v4, v13}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->createViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v11

    .line 2651
    iget-object v13, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v13}, Lorg/telegram/ui/ProfileActivity;->access$8800(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-result-object v13

    invoke-virtual {v13, v11, v12}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 2652
    iget-object v13, v11, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v13, v1, v6}, Landroid/view/View;->measure(II)V

    .line 2653
    iget-object v13, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v11, v11, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    invoke-static {v13, v11}, Lorg/telegram/ui/ProfileActivity;->access$8712(Lorg/telegram/ui/ProfileActivity;I)I

    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 2657
    :cond_7
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$9000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 2658
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$9000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v3, v6

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2662
    :cond_8
    :goto_5
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity;->previousTransitionFragment:Lorg/telegram/ui/Components/ChatActivityInterface;

    if-eqz v3, :cond_9

    .line 2663
    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$9100(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v1

    aget-object v1, v1, v8

    iget-object v3, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$9100(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v3

    aget-object v3, v3, v8

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget-object v6, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v6, v6, Lorg/telegram/ui/ProfileActivity;->previousTransitionFragment:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {v6}, Lorg/telegram/ui/Components/ChatActivityInterface;->getAvatarContainer()Lorg/telegram/ui/Components/ChatAvatarContainer;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v3, v6

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightPadding(I)V

    .line 2666
    :cond_9
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$9200(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v1

    const-wide/16 v11, 0x0

    const/high16 v3, 0x42b00000    # 88.0f

    const/4 v6, -0x1

    if-nez v1, :cond_16

    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2700(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$9300(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$5800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    const/4 v14, 0x2

    if-ne v1, v14, :cond_16

    :cond_a
    const/4 v1, 0x1

    .line 2667
    iput-boolean v1, v7, Lorg/telegram/ui/ProfileActivity$7;->ignoreLayout:Z

    .line 2669
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2700(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_10

    .line 2670
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$3100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    const/16 v4, 0x8

    if-eqz v1, :cond_b

    .line 2671
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$3100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2672
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$3100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 2673
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$3100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2675
    :cond_b
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$9100(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v1

    const/4 v14, 0x1

    aget-object v1, v1, v14

    invoke-virtual {v1, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 2676
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$9100(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v1

    aget-object v1, v1, v14

    iget-object v15, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v15}, Lorg/telegram/ui/ProfileActivity;->access$9100(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v15

    aget-object v15, v15, v14

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v1, v15}, Landroid/view/View;->setPivotY(F)V

    .line 2677
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$9100(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v1

    aget-object v1, v1, v14

    const v15, 0x3fd5c28f    # 1.67f

    invoke-virtual {v1, v15}, Landroid/view/View;->setScaleX(F)V

    .line 2678
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$9100(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v1

    aget-object v1, v1, v14

    invoke-virtual {v1, v15}, Landroid/view/View;->setScaleY(F)V

    .line 2679
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$9400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/ScamDrawable;

    move-result-object v1

    const/16 v14, 0xb3

    const/16 v15, 0xff

    if-eqz v1, :cond_c

    .line 2680
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$9400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/ScamDrawable;

    move-result-object v1

    invoke-static {v14, v15, v15, v15}, Landroid/graphics/Color;->argb(IIII)I

    move-result v13

    invoke-virtual {v1, v13}, Lorg/telegram/ui/Components/ScamDrawable;->setColor(I)V

    .line 2682
    :cond_c
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$9500(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 2683
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$9500(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v6, v13}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2685
    :cond_d
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$9600(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/CrossfadeDrawable;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 2686
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$9600(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/CrossfadeDrawable;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/CrossfadeDrawable;->setProgress(F)V

    .line 2688
    :cond_e
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$9700(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/CrossfadeDrawable;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 2689
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$9700(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/CrossfadeDrawable;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/CrossfadeDrawable;->setProgress(F)V

    .line 2691
    :cond_f
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1, v2}, Lorg/telegram/ui/ProfileActivity;->access$9800(Lorg/telegram/ui/ProfileActivity;F)V

    .line 2692
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$9900(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v1

    const/4 v13, 0x1

    aget-object v1, v1, v13

    invoke-static {v14, v15, v15, v15}, Landroid/graphics/Color;->argb(IIII)I

    move-result v13

    invoke-virtual {v1, v13}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 2693
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$10000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    const v13, 0x40ffffff    # 7.9999995f

    invoke-virtual {v1, v13, v8}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 2694
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$10100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v6, v8}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 2695
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$4000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$OverlaysView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ProfileActivity$OverlaysView;->setOverlaysVisible()V

    .line 2696
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$4000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$OverlaysView;

    move-result-object v1

    invoke-virtual {v1, v2, v8}, Lorg/telegram/ui/ProfileActivity$OverlaysView;->setAlphaValue(FZ)V

    .line 2697
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->setForegroundAlpha(F)V

    .line 2698
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$500(Lorg/telegram/ui/ProfileActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2699
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$1800(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/ProfileGalleryView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ProfileGalleryView;->resetCurrentItem()V

    .line 2700
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$1800(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/ProfileGalleryView;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2701
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1, v8}, Lorg/telegram/ui/ProfileActivity;->access$2702(Lorg/telegram/ui/ProfileActivity;Z)Z

    .line 2704
    :cond_10
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    const/4 v4, 0x1

    invoke-static {v1, v4}, Lorg/telegram/ui/ProfileActivity;->access$10202(Lorg/telegram/ui/ProfileActivity;Z)Z

    .line 2705
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1, v4}, Lorg/telegram/ui/ProfileActivity;->access$4202(Lorg/telegram/ui/ProfileActivity;Z)Z

    .line 2706
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v6, Lorg/telegram/messenger/NotificationCenter;->needCheckSystemBarColors:I

    new-array v13, v4, [Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v13, v8

    invoke-virtual {v1, v6, v13}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2707
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$4100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 2708
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v4, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$4800(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/MessagesController;->isChatNoForwards(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    const/16 v4, 0x15

    if-nez v1, :cond_11

    .line 2709
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$4100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    goto :goto_6

    .line 2711
    :cond_11
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$4100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 2713
    :goto_6
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$600(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/ImageUpdater;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 2714
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$4100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    const/16 v4, 0x22

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 2715
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$4100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    const/16 v4, 0x23

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 2716
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$4100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    const/16 v4, 0x1f

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 2719
    :cond_12
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1, v2}, Lorg/telegram/ui/ProfileActivity;->access$10302(Lorg/telegram/ui/ProfileActivity;F)F

    .line 2723
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$10400(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2724
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/4 v2, 0x0

    goto :goto_7

    .line 2727
    :cond_13
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    .line 2728
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    iget-object v3, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$8700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, v0

    sub-int/2addr v2, v3

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2730
    :goto_7
    iget-object v3, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$10500(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v3

    cmp-long v5, v3, v11

    if-eqz v5, :cond_14

    const/16 v3, 0x30

    .line 2731
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v2, v4

    .line 2732
    iget-object v4, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setBottomGlowOffset(I)V

    goto :goto_8

    .line 2734
    :cond_14
    iget-object v3, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroidx/recyclerview/widget/RecyclerView;->setBottomGlowOffset(I)V

    .line 2736
    :goto_8
    iget-object v3, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    sub-int v4, v1, v0

    int-to-float v4, v4

    invoke-static {v3, v4}, Lorg/telegram/ui/ProfileActivity;->access$10602(Lorg/telegram/ui/ProfileActivity;F)F

    .line 2737
    iget-object v3, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$5800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-nez v3, :cond_15

    .line 2738
    iget-object v3, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$10600(Lorg/telegram/ui/ProfileActivity;)F

    move-result v4

    invoke-static {v3, v4}, Lorg/telegram/ui/ProfileActivity;->access$802(Lorg/telegram/ui/ProfileActivity;F)F

    .line 2740
    :cond_15
    iget-object v3, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$7700(Lorg/telegram/ui/ProfileActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v3

    neg-int v4, v0

    invoke-virtual {v3, v8, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 2741
    iget-object v3, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3, v8, v1, v8, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 2742
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 2743
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    iget-object v2, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    iget-object v3, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v1, v8, v0, v2, v3}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 2744
    iput-boolean v8, v7, Lorg/telegram/ui/ProfileActivity$7;->ignoreLayout:Z

    goto/16 :goto_15

    .line 2745
    :cond_16
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$9200(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$9300(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v1

    if-nez v1, :cond_28

    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$10700(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v1

    if-nez v1, :cond_28

    const/4 v13, 0x1

    .line 2746
    iput-boolean v13, v7, Lorg/telegram/ui/ProfileActivity$7;->ignoreLayout:Z

    .line 2750
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$10400(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v1

    if-nez v1, :cond_18

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_9

    .line 2754
    :cond_17
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    .line 2755
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    iget-object v14, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v14}, Lorg/telegram/ui/ProfileActivity;->access$8700(Lorg/telegram/ui/ProfileActivity;)I

    move-result v14

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v0

    sub-int/2addr v3, v14

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_a

    .line 2751
    :cond_18
    :goto_9
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/4 v3, 0x0

    .line 2757
    :goto_a
    iget-object v14, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v14}, Lorg/telegram/ui/ProfileActivity;->access$10500(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v14

    cmp-long v16, v14, v11

    if-eqz v16, :cond_19

    const/16 v11, 0x30

    .line 2758
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    add-int/2addr v3, v12

    .line 2759
    iget-object v12, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v12}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v12

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    invoke-virtual {v12, v14}, Landroidx/recyclerview/widget/RecyclerView;->setBottomGlowOffset(I)V

    goto :goto_b

    .line 2761
    :cond_19
    iget-object v11, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v11}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroidx/recyclerview/widget/RecyclerView;->setBottomGlowOffset(I)V

    .line 2763
    :goto_b
    iget-object v11, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v11}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v11

    const/4 v12, 0x0

    .line 2766
    :goto_c
    iget-object v14, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v14}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v14

    if-ge v12, v14, :cond_1b

    .line 2767
    iget-object v14, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v14}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    iget-object v15, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v15}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v15

    invoke-virtual {v15, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v14

    if-eq v14, v6, :cond_1a

    .line 2769
    iget-object v4, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    goto :goto_d

    :cond_1a
    add-int/lit8 v12, v12, 0x1

    goto :goto_c

    :cond_1b
    const/4 v14, -0x1

    :goto_d
    if-nez v4, :cond_1c

    .line 2775
    iget-object v4, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1c

    .line 2777
    iget-object v12, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v12}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v12

    invoke-virtual {v12, v4}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v12

    .line 2778
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v14

    if-ne v14, v6, :cond_1c

    .line 2780
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getPosition()I

    move-result v14

    :cond_1c
    if-eqz v4, :cond_1d

    .line 2787
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v6

    goto :goto_e

    :cond_1d
    move v6, v1

    .line 2790
    :goto_e
    iget-object v12, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v12}, Lorg/telegram/ui/ProfileActivity;->access$10800(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible()Z

    move-result v12

    if-eqz v12, :cond_1e

    iget-object v12, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v12}, Lorg/telegram/ui/ProfileActivity;->access$2500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v12

    if-ltz v12, :cond_1e

    .line 2791
    iget-object v2, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$7700(Lorg/telegram/ui/ProfileActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v2

    iget-object v4, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$2500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v4

    neg-int v5, v1

    invoke-virtual {v2, v4, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :goto_f
    const/4 v2, 0x1

    goto :goto_11

    .line 2793
    :cond_1e
    iget-object v12, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v12}, Lorg/telegram/ui/ProfileActivity;->access$10900(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v12

    if-nez v12, :cond_1f

    if-eq v11, v1, :cond_24

    .line 2794
    :cond_1f
    iget-object v12, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget v15, v12, Lorg/telegram/ui/ProfileActivity;->savedScrollPosition:I

    if-ltz v15, :cond_20

    .line 2795
    invoke-static {v12}, Lorg/telegram/ui/ProfileActivity;->access$7700(Lorg/telegram/ui/ProfileActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v2

    iget-object v4, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget v5, v4, Lorg/telegram/ui/ProfileActivity;->savedScrollPosition:I

    iget v4, v4, Lorg/telegram/ui/ProfileActivity;->savedScrollOffset:I

    sub-int/2addr v4, v1

    invoke-virtual {v2, v5, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_10

    :cond_20
    if-eqz v2, :cond_21

    .line 2796
    invoke-static {v12}, Lorg/telegram/ui/ProfileActivity;->access$10200(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v2

    if-nez v2, :cond_23

    :cond_21
    if-eqz v4, :cond_23

    if-nez v14, :cond_22

    .line 2797
    iget-object v2, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$10200(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v2

    if-nez v2, :cond_22

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    if-le v6, v2, :cond_22

    .line 2798
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    .line 2800
    :cond_22
    iget-object v2, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$7700(Lorg/telegram/ui/ProfileActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v2

    sub-int/2addr v6, v1

    invoke-virtual {v2, v14, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_f

    .line 2803
    :cond_23
    iget-object v2, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$7700(Lorg/telegram/ui/ProfileActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v2

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v2, v8, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_24
    :goto_10
    const/4 v2, 0x0

    :goto_11
    if-ne v11, v1, :cond_26

    .line 2806
    iget-object v4, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    if-eq v4, v3, :cond_25

    goto :goto_12

    :cond_25
    move v1, v2

    goto :goto_13

    .line 2807
    :cond_26
    :goto_12
    iget-object v2, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2, v8, v1, v8, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    const/4 v1, 0x1

    :goto_13
    if-eqz v1, :cond_27

    .line 2811
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 2813
    :try_start_0
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    iget-object v2, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    iget-object v3, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v1, v8, v0, v2, v3}, Landroid/view/ViewGroup;->layout(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_14

    :catch_0
    move-exception v0

    .line 2815
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2818
    :cond_27
    :goto_14
    iput-boolean v8, v7, Lorg/telegram/ui/ProfileActivity$7;->ignoreLayout:Z

    goto :goto_16

    :cond_28
    :goto_15
    const/4 v13, 0x1

    .line 2821
    :goto_16
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    if-le v9, v0, :cond_29

    const/4 v8, 0x1

    .line 2822
    :cond_29
    iget-boolean v0, v7, Lorg/telegram/ui/ProfileActivity$7;->wasPortrait:Z

    if-eq v8, v0, :cond_2a

    .line 2823
    new-instance v0, Lorg/telegram/ui/ProfileActivity$7$$ExternalSyntheticLambda0;

    invoke-direct {v0, v7}, Lorg/telegram/ui/ProfileActivity$7$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ProfileActivity$7;)V

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 2829
    iput-boolean v8, v7, Lorg/telegram/ui/ProfileActivity$7;->wasPortrait:Z

    .line 2832
    :cond_2a
    iget-object v0, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$3100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_2b

    iget-object v0, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$4300(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_2b

    const/16 v1, 0x30

    .line 2833
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    iget-object v0, v7, Lorg/telegram/ui/ProfileActivity$7;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$11000(Lorg/telegram/ui/ProfileActivity;)F

    :cond_2b
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 2849
    iget-boolean v0, p0, Lorg/telegram/ui/ProfileActivity$7;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 2852
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
