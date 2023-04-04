.class Lorg/telegram/ui/ProfileActivity$8;
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
.method public static synthetic $r8$lambda$QHtmhLRXss9RPnwUnrBMY5it-J8(Lorg/telegram/ui/ProfileActivity$8;)V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/ui/ProfileActivity$8;->lambda$onMeasure$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$YBY8kAHaSqTDJ9z3IZ2MLaa8AX0(Landroid/view/View;Landroid/view/View;)I
    .locals 0

    invoke-static {p0, p1}, Lorg/telegram/ui/ProfileActivity$8;->lambda$$1(Landroid/view/View;Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method constructor <init>(Lorg/telegram/ui/ProfileActivity;Landroid/content/Context;)V
    .locals 0

    .line 2780
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ProfileActivity$NestedFrameLayout;-><init>(Lorg/telegram/ui/ProfileActivity;Landroid/content/Context;)V

    .line 2797
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$8;->grayPaint:Landroid/graphics/Paint;

    .line 3046
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$8;->sortedChildren:Ljava/util/ArrayList;

    .line 3047
    sget-object p1, Lorg/telegram/ui/ProfileActivity$8$$ExternalSyntheticLambda1;->INSTANCE:Lorg/telegram/ui/ProfileActivity$8$$ExternalSyntheticLambda1;

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$8;->viewComparator:Ljava/util/Comparator;

    return-void
.end method

.method private static synthetic lambda$$1(Landroid/view/View;Landroid/view/View;)I
    .locals 0

    .line 3047
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

    .line 3015
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$13100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3016
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$13100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;->dismiss()V

    .line 3017
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ProfileActivity;->access$13102(Lorg/telegram/ui/ProfileActivity;Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;)Lorg/telegram/ui/SelectAnimatedEmojiDialog$SelectAnimatedEmojiDialogWindow;

    :cond_0
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 3052
    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$11600(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/Paint;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    const-string v3, "windowBackgroundWhite"

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3053
    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    const/high16 v8, 0x437f0000    # 255.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    if-nez v1, :cond_d

    .line 3054
    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$8;->grayPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    const-string v3, "windowBackgroundGray"

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3055
    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$11700(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3056
    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$11600(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/Paint;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v2

    mul-float/2addr v2, v8

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3058
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$11700(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3059
    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$8;->grayPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v2

    mul-float/2addr v2, v8

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3062
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 3063
    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$8;->sortedChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move v2, v11

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_3

    .line 3066
    iget-object v4, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3067
    iget-object v5, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v5}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 3068
    iget-object v4, v0, Lorg/telegram/ui/ProfileActivity$8;->sortedChildren:Ljava/util/ArrayList;

    iget-object v5, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

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

    .line 3073
    :cond_3
    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$8;->sortedChildren:Ljava/util/ArrayList;

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$8;->viewComparator:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3075
    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getY()F

    move-result v1

    .line 3076
    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$8;->sortedChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 3077
    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$9900(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v2

    if-nez v2, :cond_4

    if-lez v12, :cond_4

    if-nez v3, :cond_4

    .line 3078
    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$8;->sortedChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v1, v2

    :cond_4
    move v13, v1

    move v15, v9

    move v1, v11

    move v14, v1

    :goto_2
    const/16 v6, 0xff

    if-ge v14, v12, :cond_a

    .line 3082
    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$8;->sortedChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/view/View;

    .line 3083
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_5

    const/4 v5, 0x1

    goto :goto_3

    :cond_5
    move v5, v11

    .line 3084
    :goto_3
    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getY()F

    move-result v2

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getY()F

    move-result v3

    add-float/2addr v2, v3

    float-to-int v4, v2

    if-ne v1, v5, :cond_6

    .line 3086
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v9

    if-nez v2, :cond_9

    move v15, v9

    goto/16 :goto_5

    :cond_6
    if-eqz v1, :cond_7

    .line 3092
    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v1

    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    add-float v6, v1, v3

    int-to-float v15, v4

    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity$8;->grayPaint:Landroid/graphics/Paint;

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

    .line 3095
    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v1

    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    add-float v4, v1, v3

    int-to-float v3, v5

    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$8;->grayPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v1

    move-object/from16 v1, p1

    move/from16 v19, v3

    move v3, v13

    move v11, v5

    move/from16 v5, v19

    move v10, v6

    move-object/from16 v6, v17

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 3096
    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$11600(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/Paint;

    move-result-object v1

    mul-float/2addr v15, v8

    float-to-int v2, v15

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3097
    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v1

    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    add-float v4, v1, v3

    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$11600(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/Paint;

    move-result-object v6

    move-object/from16 v1, p1

    move v3, v13

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 3098
    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$11600(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_4

    :cond_8
    move v11, v5

    .line 3100
    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v1

    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    add-float v4, v1, v3

    int-to-float v5, v11

    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$11600(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/Paint;

    move-result-object v6

    move-object/from16 v1, p1

    move v3, v13

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_4
    int-to-float v13, v11

    .line 3105
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getAlpha()F

    move-result v15

    move/from16 v1, v18

    :cond_9
    :goto_5
    add-int/lit8 v14, v14, 0x1

    const/4 v11, 0x0

    goto/16 :goto_2

    :cond_a
    move v10, v6

    if-eqz v1, :cond_b

    .line 3109
    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v1

    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    add-float v4, v1, v3

    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, v0, Lorg/telegram/ui/ProfileActivity$8;->grayPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v13

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    :cond_b
    cmpl-float v1, v15, v9

    if-eqz v1, :cond_c

    .line 3112
    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v1

    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    add-float v4, v1, v3

    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, v0, Lorg/telegram/ui/ProfileActivity$8;->grayPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v13

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 3113
    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$11600(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/Paint;

    move-result-object v1

    mul-float/2addr v15, v8

    float-to-int v2, v15

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3114
    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v1

    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    add-float v4, v1, v3

    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    int-to-float v5, v1

    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$11600(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/Paint;

    move-result-object v6

    move-object/from16 v1, p1

    move v3, v13

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 3115
    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$11600(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_6

    .line 3117
    :cond_c
    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v2

    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v1

    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    add-float v4, v1, v3

    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    int-to-float v5, v1

    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$11600(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/Paint;

    move-result-object v6

    move-object/from16 v1, p1

    move v3, v13

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_6

    .line 3121
    :cond_d
    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$9000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    const/4 v2, 0x0

    int-to-float v3, v1

    .line 3122
    iget-object v4, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$800(Lorg/telegram/ui/ProfileActivity;)F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

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

    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$11600(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/Paint;

    move-result-object v6

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 3124
    :goto_6
    invoke-super/range {p0 .. p1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3125
    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-boolean v2, v1, Lorg/telegram/ui/ProfileActivity;->profileTransitionInProgress:Z

    if-eqz v2, :cond_f

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$11800(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_f

    .line 3126
    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$12000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$11900(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v2

    invoke-interface {v2}, Lorg/telegram/ui/ActionBar/INavigationLayout;->getFragmentStack()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/ActionBar/BaseFragment;

    .line 3127
    instance-of v2, v1, Lorg/telegram/ui/ChatActivity;

    if-eqz v2, :cond_f

    .line 3128
    check-cast v1, Lorg/telegram/ui/ChatActivity;

    .line 3129
    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getFragmentContextView()Lorg/telegram/ui/Components/FragmentContextView;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 3131
    invoke-virtual {v1}, Lorg/telegram/ui/Components/FragmentContextView;->isCallStyle()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 3132
    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

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

    .line 3136
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3137
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getX()F

    move-result v2

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getY()F

    move-result v3

    invoke-virtual {v7, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v2, 0x1

    .line 3138
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/FragmentContextView;->setDrawOverlay(Z)V

    .line 3139
    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$800(Lorg/telegram/ui/ProfileActivity;)F

    move-result v3

    invoke-virtual {v1, v2, v3, v9}, Lorg/telegram/ui/Components/FragmentContextView;->setCollapseTransition(ZFF)V

    .line 3140
    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 3141
    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$800(Lorg/telegram/ui/ProfileActivity;)F

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v9}, Lorg/telegram/ui/Components/FragmentContextView;->setCollapseTransition(ZFF)V

    .line 3142
    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/FragmentContextView;->setDrawOverlay(Z)V

    .line 3143
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 3148
    :cond_f
    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$12100(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    if-lez v1, :cond_10

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3149
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$12100(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/Paint;

    move-result-object v6

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 3151
    :cond_10
    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$12200(Lorg/telegram/ui/ProfileActivity;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 3152
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 3153
    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$12200(Lorg/telegram/ui/ProfileActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$12200(Lorg/telegram/ui/ProfileActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v7, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3154
    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$12200(Lorg/telegram/ui/ProfileActivity;)Landroid/view/View;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$12300(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBar;->getBackButton()Landroid/widget/ImageView;

    move-result-object v3

    if-ne v2, v3, :cond_11

    .line 3155
    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$12200(Lorg/telegram/ui/ProfileActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$12200(Lorg/telegram/ui/ProfileActivity;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 3156
    iget-object v3, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$12400(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    .line 3157
    iget-object v4, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$12400(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/Paint;

    move-result-object v4

    int-to-float v5, v3

    iget-object v6, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v6}, Lorg/telegram/ui/ProfileActivity;->access$12100(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Paint;->getAlpha()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v8

    mul-float/2addr v5, v6

    const v6, 0x3e99999a    # 0.3f

    div-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    int-to-float v2, v2

    const v4, 0x3f333333    # 0.7f

    mul-float/2addr v4, v2

    .line 3158
    iget-object v5, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v5}, Lorg/telegram/ui/ProfileActivity;->access$12400(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {v7, v2, v2, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 3159
    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$12400(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3161
    :cond_11
    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$12200(Lorg/telegram/ui/ProfileActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 3162
    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_12
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 2784
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->pinchToZoomHelper:Lorg/telegram/ui/PinchToZoomHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/PinchToZoomHelper;->isInOverlayMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2785
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->pinchToZoomHelper:Lorg/telegram/ui/PinchToZoomHelper;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/PinchToZoomHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 2787
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$2400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/SharedMediaLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$2400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/SharedMediaLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->isInFastScroll()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$2400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/SharedMediaLayout;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->isPinnedToTop()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2788
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$2400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/SharedMediaLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->dispatchFastScrollEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 2790
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$2400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/SharedMediaLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$2400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/SharedMediaLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/SharedMediaLayout;->checkPinchToZoom(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    return p1

    .line 2793
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    .line 3168
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v0, v0, Lorg/telegram/ui/ProfileActivity;->pinchToZoomHelper:Lorg/telegram/ui/PinchToZoomHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/PinchToZoomHelper;->isInOverlayMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$12500(Lorg/telegram/ui/ProfileActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$12600(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v0

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$12700(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RLottieImageView;

    move-result-object v0

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$12800(Lorg/telegram/ui/ProfileActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p2, v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 3171
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

    .line 3176
    invoke-super {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onAttachedToWindow()V

    .line 3177
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/ProfileActivity;->access$12902(Lorg/telegram/ui/ProfileActivity;Z)Z

    const/4 v0, 0x0

    .line 3178
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$13000(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 3179
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$13000(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v1

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 3180
    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$13000(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

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

    .line 3187
    invoke-super {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onDetachedFromWindow()V

    .line 3188
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ProfileActivity;->access$12902(Lorg/telegram/ui/ProfileActivity;Z)Z

    .line 3189
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$13000(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v0

    array-length v0, v0

    if-ge v1, v0, :cond_1

    .line 3190
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$13000(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

    move-result-object v0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 3191
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$13000(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/Components/AnimatedEmojiDrawable$SwapAnimatedEmojiDrawable;

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

    .line 3031
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->onLayout(ZIIII)V

    .line 3032
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    const/4 p2, -0x1

    iput p2, p1, Lorg/telegram/ui/ProfileActivity;->savedScrollPosition:I

    const/4 p2, 0x0

    .line 3033
    invoke-static {p1, p2}, Lorg/telegram/ui/ProfileActivity;->access$11102(Lorg/telegram/ui/ProfileActivity;Z)Z

    .line 3034
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1, p2}, Lorg/telegram/ui/ProfileActivity;->access$11302(Lorg/telegram/ui/ProfileActivity;Z)Z

    .line 3035
    iget-object p1, p0, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {p1}, Lorg/telegram/ui/ProfileActivity;->access$11500(Lorg/telegram/ui/ProfileActivity;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 16

    move-object/from16 v7, p0

    .line 2808
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v0

    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$8900(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->getOccupyStatusBar()Z

    move-result v1

    const/4 v8, 0x0

    if-eqz v1, :cond_0

    sget v1, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_0

    :cond_0
    move v1, v8

    :goto_0
    add-int/2addr v0, v1

    .line 2809
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2810
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 2811
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-eq v2, v0, :cond_1

    .line 2812
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2815
    :cond_1
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$9000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2816
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$9000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 2817
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-eq v2, v0, :cond_2

    .line 2818
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2822
    :cond_2
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    const/high16 v1, 0x40000000    # 2.0f

    .line 2823
    invoke-static {v9, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    move/from16 v10, p1

    invoke-super {v7, v10, v2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 2826
    iget-object v2, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$9100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x58

    if-ne v2, v3, :cond_4

    iget-object v2, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$9200(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    if-eq v2, v3, :cond_3

    goto :goto_1

    :cond_3
    move v2, v8

    goto/16 :goto_5

    .line 2827
    :cond_4
    :goto_1
    iget-object v2, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$9100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$9100(Lorg/telegram/ui/ProfileActivity;)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    if-eq v2, v3, :cond_5

    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    move v2, v8

    .line 2828
    :goto_2
    iget-object v3, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3, v8}, Lorg/telegram/ui/ProfileActivity;->access$9302(Lorg/telegram/ui/ProfileActivity;I)I

    .line 2829
    iget-object v3, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$9400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->getItemCount()I

    move-result v3

    .line 2830
    iget-object v6, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v12

    invoke-static {v6, v12}, Lorg/telegram/ui/ProfileActivity;->access$9102(Lorg/telegram/ui/ProfileActivity;I)I

    .line 2831
    iget-object v6, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v12

    invoke-static {v6, v12}, Lorg/telegram/ui/ProfileActivity;->access$9202(Lorg/telegram/ui/ProfileActivity;I)I

    .line 2832
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v6

    invoke-static {v6, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 2833
    iget-object v6, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v6}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v6

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 2834
    iget-object v12, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v12}, Lorg/telegram/ui/ProfileActivity;->access$9500(Lorg/telegram/ui/ProfileActivity;)Ljava/util/HashMap;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/HashMap;->clear()V

    move v12, v8

    :goto_3
    if-ge v12, v3, :cond_7

    .line 2836
    iget-object v13, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v13}, Lorg/telegram/ui/ProfileActivity;->access$9400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-result-object v13

    invoke-virtual {v13, v12}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->getItemViewType(I)I

    move-result v13

    .line 2837
    iget-object v14, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v14}, Lorg/telegram/ui/ProfileActivity;->access$9500(Lorg/telegram/ui/ProfileActivity;)Ljava/util/HashMap;

    move-result-object v14

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iget-object v11, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v11}, Lorg/telegram/ui/ProfileActivity;->access$9300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v14, v15, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v11, 0xd

    if-ne v13, v11, :cond_6

    .line 2839
    iget-object v11, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v11}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v13

    invoke-static {v11, v13}, Lorg/telegram/ui/ProfileActivity;->access$9312(Lorg/telegram/ui/ProfileActivity;I)I

    goto :goto_4

    .line 2841
    :cond_6
    iget-object v11, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v11}, Lorg/telegram/ui/ProfileActivity;->access$9400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-result-object v11

    invoke-virtual {v11, v4, v13}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->createViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v11

    .line 2842
    iget-object v13, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v13}, Lorg/telegram/ui/ProfileActivity;->access$9400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$ListAdapter;

    move-result-object v13

    invoke-virtual {v13, v11, v12}, Lorg/telegram/ui/ProfileActivity$ListAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 2843
    iget-object v13, v11, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v13, v1, v6}, Landroid/view/View;->measure(II)V

    .line 2844
    iget-object v13, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v11, v11, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    invoke-static {v13, v11}, Lorg/telegram/ui/ProfileActivity;->access$9312(Lorg/telegram/ui/ProfileActivity;I)I

    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 2848
    :cond_7
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$9600(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 2849
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$9600(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/StickerEmptyView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sget v6, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v3, v6

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 2853
    :cond_8
    :goto_5
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v3, v1, Lorg/telegram/ui/ProfileActivity;->previousTransitionFragment:Lorg/telegram/ui/Components/ChatActivityInterface;

    if-eqz v3, :cond_9

    .line 2854
    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$9700(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v1

    aget-object v1, v1, v8

    iget-object v3, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$9700(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v3

    aget-object v3, v3, v8

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget-object v6, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v6, v6, Lorg/telegram/ui/ProfileActivity;->previousTransitionFragment:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {v6}, Lorg/telegram/ui/Components/ChatActivityInterface;->getAvatarContainer()Lorg/telegram/ui/Components/ChatAvatarContainer;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ChatAvatarContainer;->getTitleTextView()Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v3, v6

    invoke-virtual {v1, v3}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightPadding(I)V

    .line 2857
    :cond_9
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$9800(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v1

    const-wide/16 v11, 0x0

    const/high16 v3, 0x42b00000    # 88.0f

    const/4 v6, -0x1

    if-nez v1, :cond_16

    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2700(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$9900(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$5800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    const/4 v14, 0x2

    if-ne v1, v14, :cond_16

    :cond_a
    const/4 v1, 0x1

    .line 2858
    iput-boolean v1, v7, Lorg/telegram/ui/ProfileActivity$8;->ignoreLayout:Z

    .line 2860
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2700(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_10

    .line 2861
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$3100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    const/16 v4, 0x8

    if-eqz v1, :cond_b

    .line 2862
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$3100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    const/4 v14, 0x0

    invoke-virtual {v1, v14}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 2863
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$3100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 2864
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$3100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2866
    :cond_b
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$9700(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v1

    const/4 v14, 0x1

    aget-object v1, v1, v14

    invoke-virtual {v1, v6}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 2867
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$9700(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v1

    aget-object v1, v1, v14

    iget-object v15, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v15}, Lorg/telegram/ui/ProfileActivity;->access$9700(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v15

    aget-object v15, v15, v14

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    int-to-float v15, v15

    invoke-virtual {v1, v15}, Landroid/view/View;->setPivotY(F)V

    .line 2868
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$9700(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v1

    aget-object v1, v1, v14

    const v15, 0x3fd5c28f    # 1.67f

    invoke-virtual {v1, v15}, Landroid/view/View;->setScaleX(F)V

    .line 2869
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$9700(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v1

    aget-object v1, v1, v14

    invoke-virtual {v1, v15}, Landroid/view/View;->setScaleY(F)V

    .line 2870
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$10000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/ScamDrawable;

    move-result-object v1

    const/16 v14, 0xb3

    const/16 v15, 0xff

    if-eqz v1, :cond_c

    .line 2871
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$10000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/ScamDrawable;

    move-result-object v1

    invoke-static {v14, v15, v15, v15}, Landroid/graphics/Color;->argb(IIII)I

    move-result v13

    invoke-virtual {v1, v13}, Lorg/telegram/ui/Components/ScamDrawable;->setColor(I)V

    .line 2873
    :cond_c
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$10100(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 2874
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$10100(Lorg/telegram/ui/ProfileActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v13, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v6, v13}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2876
    :cond_d
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$10200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/CrossfadeDrawable;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 2877
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$10200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/CrossfadeDrawable;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/CrossfadeDrawable;->setProgress(F)V

    .line 2879
    :cond_e
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$10300(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/CrossfadeDrawable;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 2880
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$10300(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/CrossfadeDrawable;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/CrossfadeDrawable;->setProgress(F)V

    .line 2882
    :cond_f
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1, v2}, Lorg/telegram/ui/ProfileActivity;->access$10400(Lorg/telegram/ui/ProfileActivity;F)V

    .line 2883
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$10500(Lorg/telegram/ui/ProfileActivity;)[Lorg/telegram/ui/ActionBar/SimpleTextView;

    move-result-object v1

    const/4 v13, 0x1

    aget-object v1, v1, v13

    invoke-static {v14, v15, v15, v15}, Landroid/graphics/Color;->argb(IIII)I

    move-result v13

    invoke-virtual {v1, v13}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 2884
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$10600(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    const v13, 0x40ffffff    # 7.9999995f

    invoke-virtual {v1, v13, v8}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsBackgroundColor(IZ)V

    .line 2885
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$10700(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v6, v8}, Lorg/telegram/ui/ActionBar/ActionBar;->setItemsColor(IZ)V

    .line 2886
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$4000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$OverlaysView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ProfileActivity$OverlaysView;->setOverlaysVisible()V

    .line 2887
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$4000(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$OverlaysView;

    move-result-object v1

    invoke-virtual {v1, v2, v8}, Lorg/telegram/ui/ProfileActivity$OverlaysView;->setAlphaValue(FZ)V

    .line 2888
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$AvatarImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ProfileActivity$AvatarImageView;->setForegroundAlpha(F)V

    .line 2889
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$500(Lorg/telegram/ui/ProfileActivity;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2890
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$1800(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/ProfileGalleryView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ProfileGalleryView;->resetCurrentItem()V

    .line 2891
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$1800(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/ProfileGalleryView;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2892
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1, v8}, Lorg/telegram/ui/ProfileActivity;->access$2702(Lorg/telegram/ui/ProfileActivity;Z)Z

    .line 2895
    :cond_10
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    const/4 v4, 0x1

    invoke-static {v1, v4}, Lorg/telegram/ui/ProfileActivity;->access$7502(Lorg/telegram/ui/ProfileActivity;Z)Z

    .line 2896
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1, v4}, Lorg/telegram/ui/ProfileActivity;->access$4202(Lorg/telegram/ui/ProfileActivity;Z)Z

    .line 2897
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v6, Lorg/telegram/messenger/NotificationCenter;->needCheckSystemBarColors:I

    new-array v13, v4, [Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v13, v8

    invoke-virtual {v1, v6, v13}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2898
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$4100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 2899
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v4, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$4800(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/MessagesController;->isChatNoForwards(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    const/16 v4, 0x15

    if-nez v1, :cond_11

    .line 2900
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$4100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    goto :goto_6

    .line 2902
    :cond_11
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$4100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 2904
    :goto_6
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$600(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/ImageUpdater;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 2905
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$4100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    const/16 v4, 0x22

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 2906
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$4100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    const/16 v4, 0x23

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->showSubItem(I)V

    .line 2907
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$4100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v1

    const/16 v4, 0x1f

    invoke-virtual {v1, v4}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->hideSubItem(I)V

    .line 2910
    :cond_12
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1, v2}, Lorg/telegram/ui/ProfileActivity;->access$10802(Lorg/telegram/ui/ProfileActivity;F)F

    .line 2914
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$7600(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2915
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    move v2, v8

    goto :goto_7

    .line 2918
    :cond_13
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    .line 2919
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    iget-object v3, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$9300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, v0

    sub-int/2addr v2, v3

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2921
    :goto_7
    iget-object v3, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$10900(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v3

    cmp-long v3, v3, v11

    if-eqz v3, :cond_14

    const/16 v3, 0x30

    .line 2922
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v2, v4

    .line 2923
    iget-object v4, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setBottomGlowOffset(I)V

    goto :goto_8

    .line 2925
    :cond_14
    iget-object v3, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroidx/recyclerview/widget/RecyclerView;->setBottomGlowOffset(I)V

    .line 2927
    :goto_8
    iget-object v3, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    sub-int v4, v1, v0

    int-to-float v4, v4

    invoke-static {v3, v4}, Lorg/telegram/ui/ProfileActivity;->access$11002(Lorg/telegram/ui/ProfileActivity;F)F

    .line 2928
    iget-object v3, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$5800(Lorg/telegram/ui/ProfileActivity;)I

    move-result v3

    if-nez v3, :cond_15

    .line 2929
    iget-object v3, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$11000(Lorg/telegram/ui/ProfileActivity;)F

    move-result v4

    invoke-static {v3, v4}, Lorg/telegram/ui/ProfileActivity;->access$802(Lorg/telegram/ui/ProfileActivity;F)F

    .line 2931
    :cond_15
    iget-object v3, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$8300(Lorg/telegram/ui/ProfileActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v3

    neg-int v4, v0

    invoke-virtual {v3, v8, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 2932
    iget-object v3, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3, v8, v1, v8, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 2933
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 2934
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    iget-object v2, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    iget-object v3, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v3}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v1, v8, v0, v2, v3}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 2935
    iput-boolean v8, v7, Lorg/telegram/ui/ProfileActivity$8;->ignoreLayout:Z

    goto/16 :goto_15

    .line 2936
    :cond_16
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$9800(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v1

    if-eqz v1, :cond_28

    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$9900(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v1

    if-nez v1, :cond_28

    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$11100(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v1

    if-nez v1, :cond_28

    const/4 v13, 0x1

    .line 2937
    iput-boolean v13, v7, Lorg/telegram/ui/ProfileActivity$8;->ignoreLayout:Z

    .line 2941
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$7600(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v1

    if-nez v1, :cond_18

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_9

    .line 2945
    :cond_17
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    .line 2946
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    iget-object v14, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v14}, Lorg/telegram/ui/ProfileActivity;->access$9300(Lorg/telegram/ui/ProfileActivity;)I

    move-result v14

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v15

    add-int/2addr v14, v15

    add-int/2addr v14, v0

    sub-int/2addr v3, v14

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_a

    .line 2942
    :cond_18
    :goto_9
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    move v3, v8

    .line 2948
    :goto_a
    iget-object v14, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v14}, Lorg/telegram/ui/ProfileActivity;->access$10900(Lorg/telegram/ui/ProfileActivity;)J

    move-result-wide v14

    cmp-long v11, v14, v11

    if-eqz v11, :cond_19

    const/16 v11, 0x30

    .line 2949
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v12

    add-int/2addr v3, v12

    .line 2950
    iget-object v12, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v12}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v12

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v14

    invoke-virtual {v12, v14}, Landroidx/recyclerview/widget/RecyclerView;->setBottomGlowOffset(I)V

    goto :goto_b

    .line 2952
    :cond_19
    iget-object v11, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v11}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroidx/recyclerview/widget/RecyclerView;->setBottomGlowOffset(I)V

    .line 2954
    :goto_b
    iget-object v11, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v11}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v11

    move v12, v8

    .line 2957
    :goto_c
    iget-object v14, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v14}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v14

    if-ge v12, v14, :cond_1b

    .line 2958
    iget-object v14, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v14}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v14

    iget-object v15, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v15}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v15

    invoke-virtual {v15, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v14

    if-eq v14, v6, :cond_1a

    .line 2960
    iget-object v4, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    goto :goto_d

    :cond_1a
    add-int/lit8 v12, v12, 0x1

    goto :goto_c

    :cond_1b
    move v14, v6

    :goto_d
    if-nez v4, :cond_1c

    .line 2966
    iget-object v4, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1c

    .line 2968
    iget-object v12, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v12}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v12

    invoke-virtual {v12, v4}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v12

    .line 2969
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v14

    if-ne v14, v6, :cond_1c

    .line 2971
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getPosition()I

    move-result v14

    :cond_1c
    if-eqz v4, :cond_1d

    .line 2978
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v6

    goto :goto_e

    :cond_1d
    move v6, v1

    .line 2981
    :goto_e
    iget-object v12, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v12}, Lorg/telegram/ui/ProfileActivity;->access$11200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v12

    invoke-virtual {v12}, Lorg/telegram/ui/ActionBar/ActionBar;->isSearchFieldVisible()Z

    move-result v12

    if-eqz v12, :cond_1e

    iget-object v12, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v12}, Lorg/telegram/ui/ProfileActivity;->access$2500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v12

    if-ltz v12, :cond_1e

    .line 2982
    iget-object v2, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$8300(Lorg/telegram/ui/ProfileActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v2

    iget-object v4, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$2500(Lorg/telegram/ui/ProfileActivity;)I

    move-result v4

    neg-int v5, v1

    invoke-virtual {v2, v4, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :goto_f
    move v2, v13

    goto :goto_11

    .line 2984
    :cond_1e
    iget-object v12, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v12}, Lorg/telegram/ui/ProfileActivity;->access$11300(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v12

    if-nez v12, :cond_1f

    if-eq v11, v1, :cond_24

    .line 2985
    :cond_1f
    iget-object v12, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget v15, v12, Lorg/telegram/ui/ProfileActivity;->savedScrollPosition:I

    if-ltz v15, :cond_20

    .line 2986
    invoke-static {v12}, Lorg/telegram/ui/ProfileActivity;->access$8300(Lorg/telegram/ui/ProfileActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v2

    iget-object v4, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget v5, v4, Lorg/telegram/ui/ProfileActivity;->savedScrollPosition:I

    iget v4, v4, Lorg/telegram/ui/ProfileActivity;->savedScrollOffset:I

    sub-int/2addr v4, v1

    invoke-virtual {v2, v5, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_10

    :cond_20
    if-eqz v2, :cond_21

    .line 2987
    invoke-static {v12}, Lorg/telegram/ui/ProfileActivity;->access$7500(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v2

    if-nez v2, :cond_23

    :cond_21
    if-eqz v4, :cond_23

    if-nez v14, :cond_22

    .line 2988
    iget-object v2, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$7500(Lorg/telegram/ui/ProfileActivity;)Z

    move-result v2

    if-nez v2, :cond_22

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    if-le v6, v2, :cond_22

    .line 2989
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    .line 2991
    :cond_22
    iget-object v2, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$8300(Lorg/telegram/ui/ProfileActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v2

    sub-int/2addr v6, v1

    invoke-virtual {v2, v14, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_f

    .line 2994
    :cond_23
    iget-object v2, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$8300(Lorg/telegram/ui/ProfileActivity;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v2

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v2, v8, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_24
    :goto_10
    move v2, v8

    :goto_11
    if-ne v11, v1, :cond_26

    .line 2997
    iget-object v4, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v4}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    if-eq v4, v3, :cond_25

    goto :goto_12

    :cond_25
    move v1, v2

    goto :goto_13

    .line 2998
    :cond_26
    :goto_12
    iget-object v2, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2, v8, v1, v8, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    move v1, v13

    :goto_13
    if-eqz v1, :cond_27

    .line 3002
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 3004
    :try_start_0
    iget-object v1, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    iget-object v2, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$2200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    iget-object v3, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

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

    .line 3006
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3009
    :cond_27
    :goto_14
    iput-boolean v8, v7, Lorg/telegram/ui/ProfileActivity$8;->ignoreLayout:Z

    goto :goto_16

    :cond_28
    :goto_15
    const/4 v13, 0x1

    .line 3012
    :goto_16
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    if-le v9, v0, :cond_29

    move v8, v13

    .line 3013
    :cond_29
    iget-boolean v0, v7, Lorg/telegram/ui/ProfileActivity$8;->wasPortrait:Z

    if-eq v8, v0, :cond_2a

    .line 3014
    new-instance v0, Lorg/telegram/ui/ProfileActivity$8$$ExternalSyntheticLambda0;

    invoke-direct {v0, v7}, Lorg/telegram/ui/ProfileActivity$8$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/ProfileActivity$8;)V

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 3020
    iput-boolean v8, v7, Lorg/telegram/ui/ProfileActivity$8;->wasPortrait:Z

    .line 3023
    :cond_2a
    iget-object v0, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$3100(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_2b

    iget-object v0, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$4300(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    if-eqz v0, :cond_2b

    const/16 v1, 0x30

    .line 3024
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    iget-object v0, v7, Lorg/telegram/ui/ProfileActivity$8;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v0}, Lorg/telegram/ui/ProfileActivity;->access$11400(Lorg/telegram/ui/ProfileActivity;)F

    :cond_2b
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 3040
    iget-boolean v0, p0, Lorg/telegram/ui/ProfileActivity$8;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 3043
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
