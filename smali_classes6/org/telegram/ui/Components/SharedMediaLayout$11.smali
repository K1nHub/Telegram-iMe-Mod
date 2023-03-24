.class Lorg/telegram/ui/Components/SharedMediaLayout$11;
.super Lorg/telegram/ui/Components/BlurredRecyclerView;
.source "SharedMediaLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/SharedMediaLayout;-><init>(Landroid/content/Context;JLorg/telegram/ui/Components/SharedMediaLayout$SharedMediaPreloader;ILjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ChatFull;ZLorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/Components/SharedMediaLayout$Delegate;ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field drawingViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;",
            ">;"
        }
    .end annotation
.end field

.field drawingViews2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;",
            ">;"
        }
    .end annotation
.end field

.field drawingViews3:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;",
            ">;"
        }
    .end annotation
.end field

.field excludeDrawViews:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

.field final synthetic val$layoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

.field final synthetic val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/content/Context;Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Lorg/telegram/ui/Components/ExtendedGridLayoutManager;)V
    .locals 0

    .line 2007
    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iput-object p3, p0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    iput-object p4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->val$layoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/BlurredRecyclerView;-><init>(Landroid/content/Context;)V

    .line 2009
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->excludeDrawViews:Ljava/util/HashSet;

    .line 2010
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->drawingViews:Ljava/util/ArrayList;

    .line 2011
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->drawingViews2:Ljava/util/ArrayList;

    .line 2012
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->drawingViews3:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 2025
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$900(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    move-result-object v2

    const/high16 v12, 0x3f800000    # 1.0f

    .line 2273
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    if-ne v1, v2, :cond_2a

    .line 2033
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    .line 2034
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2400(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result v2

    const/4 v13, 0x1

    if-eqz v2, :cond_17

    const/4 v2, -0x1

    move v5, v2

    move v6, v5

    const/4 v4, 0x0

    .line 2037
    :goto_0
    iget-object v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {v7}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v4, v7, :cond_4

    .line 2038
    iget-object v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {v7}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v7

    iget-object v14, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {v14}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v14

    invoke-virtual {v14, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v7, v14}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v7

    if-ltz v7, :cond_1

    if-gt v7, v6, :cond_0

    if-ne v6, v2, :cond_1

    :cond_0
    move v6, v7

    :cond_1
    if-ltz v7, :cond_3

    if-lt v7, v5, :cond_2

    if-ne v5, v2, :cond_3

    :cond_2
    move v5, v7

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    move v7, v2

    move v14, v7

    const/4 v4, 0x0

    .line 2051
    :goto_1
    iget-object v15, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {v15}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$3400(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v15

    if-ge v4, v15, :cond_9

    .line 2052
    iget-object v15, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {v15}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$3400(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v15

    iget-object v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {v11}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$3400(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v15, v11}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v11

    if-ltz v11, :cond_6

    if-gt v11, v14, :cond_5

    if-ne v14, v2, :cond_6

    :cond_5
    move v14, v11

    :cond_6
    if-ltz v11, :cond_8

    if-lt v11, v7, :cond_7

    if-ne v7, v2, :cond_8

    :cond_7
    move v7, v11

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_9
    if-ltz v5, :cond_10

    if-ltz v7, :cond_10

    .line 2064
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget v4, v2, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchCenterPosition:I

    if-ltz v4, :cond_10

    .line 2065
    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$900(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->getItemCount()I

    move-result v2

    int-to-float v2, v2

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2500(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    float-to-double v9, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v2, v9

    .line 2066
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$900(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->getItemCount()I

    move-result v4

    int-to-float v4, v4

    iget-object v9, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v9}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4500(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v4, v9

    float-to-double v9, v4

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v4, v9

    .line 2067
    iget-object v9, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget v10, v9, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchCenterPosition:I

    invoke-static {v9}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4500(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v9

    div-int/2addr v10, v9

    iget-object v9, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v9}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4500(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v9

    div-int v9, v7, v9

    sub-int/2addr v10, v9

    iget-object v9, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget v11, v9, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchCenterPosition:I

    invoke-static {v9}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2500(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v9

    div-int/2addr v11, v9

    iget-object v9, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v9}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2500(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v9

    div-int v9, v5, v9

    sub-int/2addr v11, v9

    sub-int v9, v10, v11

    .line 2068
    iget-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v10}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2500(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v10

    div-int v10, v5, v10

    sub-int/2addr v10, v9

    if-gez v10, :cond_a

    iget-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v10}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4500(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v10

    iget-object v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v11}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2500(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v11

    if-lt v10, v11, :cond_b

    :cond_a
    iget-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v10}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4500(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v10

    div-int v10, v7, v10

    add-int/2addr v10, v9

    if-gez v10, :cond_c

    iget-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v10}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4500(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v10

    iget-object v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v11}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2500(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v11

    if-le v10, v11, :cond_c

    :cond_b
    const/4 v9, 0x0

    .line 2071
    :cond_c
    iget-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v10}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2500(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v10

    div-int/2addr v14, v10

    add-int/2addr v14, v9

    if-lt v14, v2, :cond_d

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4500(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v2

    iget-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v10}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2500(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v10

    if-gt v2, v10, :cond_e

    :cond_d
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4500(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v2

    div-int/2addr v6, v2

    sub-int/2addr v6, v9

    if-lt v6, v4, :cond_f

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4500(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v2

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2500(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v4

    if-ge v2, v4, :cond_f

    :cond_e
    const/4 v9, 0x0

    .line 2075
    :cond_f
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget v4, v2, Lorg/telegram/ui/Components/SharedMediaLayout;->pinchCenterPosition:I

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2500(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v2

    rem-int/2addr v4, v2

    int-to-float v2, v4

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2500(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v4

    sub-int/2addr v4, v13

    int-to-float v4, v4

    div-float/2addr v2, v4

    .line 2076
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4500(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v4

    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2500(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v6

    sub-int/2addr v4, v6

    int-to-float v4, v4

    mul-float/2addr v4, v2

    float-to-int v2, v4

    goto :goto_2

    :cond_10
    const/4 v2, 0x0

    const/4 v9, 0x0

    .line 2078
    :goto_2
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4600(Lorg/telegram/ui/Components/SharedMediaLayout;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 2079
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->excludeDrawViews:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 2080
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->drawingViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 2081
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->drawingViews2:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 2082
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->drawingViews3:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const/4 v4, 0x0

    .line 2083
    :goto_3
    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$3400(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v4, v6, :cond_13

    .line 2084
    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$3400(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2085
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v11

    if-gt v10, v11, :cond_12

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v10

    if-gez v10, :cond_11

    goto :goto_4

    .line 2088
    :cond_11
    instance-of v10, v6, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    if-eqz v10, :cond_12

    .line 2089
    iget-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v10}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4600(Lorg/telegram/ui/Components/SharedMediaLayout;)Ljava/util/ArrayList;

    move-result-object v10

    check-cast v6, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2092
    :cond_13
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->drawingViews:Ljava/util/ArrayList;

    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4600(Lorg/telegram/ui/Components/SharedMediaLayout;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2093
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/RecyclerListView;->getFastScroll()Lorg/telegram/ui/Components/RecyclerListView$FastScroll;

    move-result-object v4

    if-eqz v4, :cond_16

    .line 2094
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_16

    .line 2095
    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$900(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    move-result-object v6

    iget-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {v10}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v10

    invoke-virtual {v6, v10}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->getScrollProgress(Lorg/telegram/ui/Components/RecyclerListView;)F

    move-result v6

    .line 2096
    iget-object v10, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v10}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$3500(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    move-result-object v10

    iget-object v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {v11}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$3400(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->getScrollProgress(Lorg/telegram/ui/Components/RecyclerListView;)F

    move-result v10

    .line 2097
    iget-object v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v11}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$900(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    move-result-object v11

    iget-object v14, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {v14}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v14

    invoke-virtual {v11, v14}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->fastScrollIsVisible(Lorg/telegram/ui/Components/RecyclerListView;)Z

    move-result v11

    if-eqz v11, :cond_14

    move v11, v12

    goto :goto_5

    :cond_14
    const/4 v11, 0x0

    .line 2098
    :goto_5
    iget-object v14, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v14}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$3500(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    move-result-object v14

    iget-object v15, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {v15}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$3400(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;->fastScrollIsVisible(Lorg/telegram/ui/Components/RecyclerListView;)Z

    move-result v14

    if-eqz v14, :cond_15

    move v15, v12

    goto :goto_6

    :cond_15
    const/4 v15, 0x0

    .line 2099
    :goto_6
    iget-object v14, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v14}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4700(Lorg/telegram/ui/Components/SharedMediaLayout;)F

    move-result v14

    sub-float v14, v12, v14

    mul-float/2addr v6, v14

    iget-object v14, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v14}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4700(Lorg/telegram/ui/Components/SharedMediaLayout;)F

    move-result v14

    mul-float/2addr v10, v14

    add-float/2addr v6, v10

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->setProgress(F)V

    .line 2100
    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4700(Lorg/telegram/ui/Components/SharedMediaLayout;)F

    move-result v6

    sub-float v6, v12, v6

    mul-float/2addr v11, v6

    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4700(Lorg/telegram/ui/Components/SharedMediaLayout;)F

    move-result v6

    mul-float/2addr v15, v6

    add-float/2addr v11, v15

    invoke-virtual {v4, v11}, Lorg/telegram/ui/Components/RecyclerListView$FastScroll;->setVisibilityAlpha(F)V

    :cond_16
    move v10, v5

    move v14, v7

    move/from16 v18, v9

    move v9, v2

    goto :goto_7

    :cond_17
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x0

    const/16 v18, 0x0

    :goto_7
    move/from16 v19, v1

    const/4 v1, 0x0

    .line 2104
    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/high16 v20, 0x40000000    # 2.0f

    if-ge v1, v2, :cond_23

    .line 2105
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2106
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v5

    if-gt v4, v5, :cond_21

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v4

    if-gez v4, :cond_18

    goto/16 :goto_e

    .line 2116
    :cond_18
    instance-of v2, v2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    if-eqz v2, :cond_22

    .line 2117
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    .line 2119
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->getMessageId()I

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    iget v5, v5, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->highlightMessageId:I

    if-ne v4, v5, :cond_1c

    iget-object v4, v2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v4}, Lorg/telegram/messenger/ImageReceiver;->hasBitmapImage()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 2120
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    iget-boolean v5, v4, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->highlightAnimation:Z

    if-nez v5, :cond_19

    const/4 v5, 0x0

    .line 2121
    iput v5, v4, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->highlightProgress:F

    .line 2122
    iput-boolean v13, v4, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->highlightAnimation:Z

    .line 2125
    :cond_19
    iget v4, v4, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->highlightProgress:F

    const v5, 0x3e99999a    # 0.3f

    cmpg-float v6, v4, v5

    if-gez v6, :cond_1a

    :goto_9
    div-float/2addr v4, v5

    goto :goto_a

    :cond_1a
    const v6, 0x3f333333    # 0.7f

    cmpl-float v6, v4, v6

    if-lez v6, :cond_1b

    sub-float v4, v12, v4

    goto :goto_9

    :cond_1b
    move v4, v12

    .line 2130
    :goto_a
    invoke-virtual {v2, v4}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setHighlightProgress(F)V

    goto :goto_b

    :cond_1c
    const/4 v4, 0x0

    .line 2132
    invoke-virtual {v2, v4}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setHighlightProgress(F)V

    .line 2135
    :goto_b
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->getMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v4

    if-eqz v4, :cond_1d

    .line 2137
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v5, v5, Lorg/telegram/ui/Components/SharedMediaLayout;->messageAlphaEnter:Landroid/util/SparseArray;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1d

    .line 2138
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v5, v5, Lorg/telegram/ui/Components/SharedMediaLayout;->messageAlphaEnter:Landroid/util/SparseArray;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-virtual {v5, v4, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    goto :goto_c

    :cond_1d
    move v4, v12

    .line 2140
    :goto_c
    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2400(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result v5

    xor-int/2addr v5, v13

    invoke-virtual {v2, v4, v5}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setImageAlpha(FZ)V

    .line 2143
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2400(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 2146
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewAdapterPosition()I

    move-result v4

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2500(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v5

    rem-int/2addr v4, v5

    add-int/2addr v4, v9

    .line 2147
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewAdapterPosition()I

    move-result v5

    sub-int/2addr v5, v10

    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2500(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v6

    div-int/2addr v5, v6

    add-int v5, v5, v18

    .line 2148
    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4500(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v6

    mul-int/2addr v5, v6

    add-int/2addr v5, v4

    if-ltz v4, :cond_1f

    .line 2149
    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4500(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v6

    if-ge v4, v6, :cond_1f

    if-ltz v5, :cond_1f

    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4600(Lorg/telegram/ui/Components/SharedMediaLayout;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v5, v4, :cond_1f

    .line 2151
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4600(Lorg/telegram/ui/Components/SharedMediaLayout;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v6

    sub-float/2addr v4, v6

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v7

    sub-float/2addr v6, v7

    div-float/2addr v4, v6

    .line 2152
    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4700(Lorg/telegram/ui/Components/SharedMediaLayout;)F

    move-result v6

    sub-float v6, v12, v6

    mul-float/2addr v6, v12

    iget-object v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v7}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4700(Lorg/telegram/ui/Components/SharedMediaLayout;)F

    move-result v7

    mul-float/2addr v4, v7

    add-float/2addr v6, v4

    .line 2153
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    .line 2154
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v7

    int-to-float v7, v7

    .line 2155
    iget-object v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v11}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4600(Lorg/telegram/ui/Components/SharedMediaLayout;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v11

    int-to-float v11, v11

    .line 2156
    iget-object v15, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v15}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4600(Lorg/telegram/ui/Components/SharedMediaLayout;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v15

    int-to-float v15, v15

    const/4 v12, 0x0

    .line 2158
    invoke-virtual {v2, v12}, Landroid/view/View;->setPivotX(F)V

    .line 2159
    invoke-virtual {v2, v12}, Landroid/view/View;->setPivotY(F)V

    move v12, v15

    .line 2160
    iget-object v15, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v15}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2400(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result v15

    xor-int/2addr v15, v13

    invoke-virtual {v2, v6, v15}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setImageScale(FZ)V

    sub-float/2addr v11, v4

    .line 2161
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4700(Lorg/telegram/ui/Components/SharedMediaLayout;)F

    move-result v4

    mul-float/2addr v11, v4

    invoke-virtual {v2, v11}, Landroid/view/View;->setTranslationX(F)V

    sub-float v15, v12, v7

    .line 2162
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4700(Lorg/telegram/ui/Components/SharedMediaLayout;)F

    move-result v4

    mul-float/2addr v15, v4

    invoke-virtual {v2, v15}, Landroid/view/View;->setTranslationY(F)V

    .line 2163
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4600(Lorg/telegram/ui/Components/SharedMediaLayout;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4700(Lorg/telegram/ui/Components/SharedMediaLayout;)F

    move-result v6

    iget-object v7, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v7}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4500(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v7

    invoke-virtual {v2, v4, v6, v7}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setCrossfadeView(Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;FI)V

    .line 2164
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->excludeDrawViews:Ljava/util/HashSet;

    iget-object v6, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v6}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4600(Lorg/telegram/ui/Components/SharedMediaLayout;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2165
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->drawingViews3:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2166
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 2167
    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v5

    invoke-virtual {v8, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2168
    invoke-virtual {v2, v8}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 2169
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 2171
    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v4

    cmpg-float v4, v4, v19

    if-gez v4, :cond_1e

    .line 2172
    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v19

    :cond_1e
    move v4, v13

    goto :goto_d

    :cond_1f
    const/4 v4, 0x0

    :goto_d
    if-nez v4, :cond_22

    .line 2178
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2400(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 2179
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->drawingViews2:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 2181
    invoke-virtual {v2, v4, v5, v6}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setCrossfadeView(Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;FI)V

    .line 2182
    invoke-virtual {v2, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 2183
    invoke-virtual {v2, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 2184
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2400(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result v4

    xor-int/2addr v4, v13

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v2, v5, v4}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setImageScale(FZ)V

    goto :goto_f

    .line 2107
    :cond_21
    :goto_e
    instance-of v2, v2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    if-eqz v2, :cond_22

    .line 2108
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 2109
    invoke-virtual {v2, v4, v5, v6}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setCrossfadeView(Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;FI)V

    .line 2110
    invoke-virtual {v2, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 2111
    invoke-virtual {v2, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 2112
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2400(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result v4

    xor-int/2addr v4, v13

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v2, v5, v4}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setImageScale(FZ)V

    :cond_22
    :goto_f
    add-int/lit8 v1, v1, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    goto/16 :goto_8

    .line 2189
    :cond_23
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2400(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result v1

    const/high16 v12, 0x437f0000    # 255.0f

    if-eqz v1, :cond_26

    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->drawingViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_26

    .line 2190
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4500(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2500(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 2191
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4700(Lorg/telegram/ui/Components/SharedMediaLayout;)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    mul-float/2addr v1, v2

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4700(Lorg/telegram/ui/Components/SharedMediaLayout;)F

    move-result v2

    add-float v16, v1, v2

    .line 2193
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2500(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4500(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    .line 2194
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4700(Lorg/telegram/ui/Components/SharedMediaLayout;)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    mul-float/2addr v1, v2

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4700(Lorg/telegram/ui/Components/SharedMediaLayout;)F

    move-result v2

    add-float v7, v1, v2

    .line 2196
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2500(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v2

    int-to-float v2, v2

    div-float v17, v1, v2

    .line 2197
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4500(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v2

    int-to-float v2, v2

    div-float v22, v1, v2

    .line 2198
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4500(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    float-to-double v3, v3

    sub-double/2addr v1, v3

    float-to-double v3, v7

    mul-double/2addr v1, v3

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    float-to-double v3, v3

    add-double/2addr v1, v3

    double-to-float v6, v1

    const/4 v5, 0x0

    .line 2200
    :goto_10
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->drawingViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v5, v1, :cond_26

    .line 2201
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->drawingViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    .line 2202
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->excludeDrawViews:Ljava/util/HashSet;

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    move v11, v5

    move v15, v6

    move/from16 v24, v7

    goto/16 :goto_12

    :cond_24
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2205
    invoke-virtual {v4, v1, v2, v3}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setCrossfadeView(Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;FI)V

    .line 2206
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewAdapterPosition()I

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4500(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v2

    rem-int/2addr v1, v2

    sub-int v2, v1, v9

    .line 2208
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewAdapterPosition()I

    move-result v3

    sub-int/2addr v3, v14

    iget-object v11, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v11}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4500(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v11

    div-int/2addr v3, v11

    sub-int v3, v3, v18

    .line 2211
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    int-to-float v11, v2

    mul-float v11, v11, v17

    .line 2212
    iget-object v15, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v15}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4700(Lorg/telegram/ui/Components/SharedMediaLayout;)F

    move-result v15

    const/high16 v21, 0x3f800000    # 1.0f

    sub-float v15, v21, v15

    mul-float/2addr v11, v15

    int-to-float v1, v1

    mul-float v1, v1, v22

    iget-object v15, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v15}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4700(Lorg/telegram/ui/Components/SharedMediaLayout;)F

    move-result v15

    mul-float/2addr v1, v15

    add-float/2addr v11, v1

    int-to-float v1, v3

    mul-float/2addr v1, v6

    add-float v1, v19, v1

    invoke-virtual {v8, v11, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2213
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2400(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result v1

    xor-int/2addr v1, v13

    invoke-virtual {v4, v7, v1}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setImageScale(FZ)V

    .line 2214
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2500(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v1

    if-ge v2, v1, :cond_25

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2215
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v11, v1, v16

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v15, v1, v16

    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4700(Lorg/telegram/ui/Components/SharedMediaLayout;)F

    move-result v1

    mul-float/2addr v1, v12

    float-to-int v1, v1

    const/16 v23, 0x1f

    move/from16 v24, v1

    move-object/from16 v1, p1

    move-object v12, v4

    move v4, v11

    move v11, v5

    move v5, v15

    move v15, v6

    move/from16 v6, v24

    move/from16 v24, v7

    move/from16 v7, v23

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 2216
    invoke-virtual {v12, v8}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 2217
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_11

    :cond_25
    move-object v12, v4

    move v11, v5

    move v15, v6

    move/from16 v24, v7

    .line 2219
    invoke-virtual {v12, v8}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 2221
    :goto_11
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :goto_12
    add-int/lit8 v5, v11, 0x1

    move v6, v15

    move/from16 v7, v24

    const/high16 v12, 0x437f0000    # 255.0f

    goto/16 :goto_10

    .line 2225
    :cond_26
    invoke-super/range {p0 .. p1}, Lorg/telegram/ui/Components/BlurredRecyclerView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2227
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2400(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 2228
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2500(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4500(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 2229
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4700(Lorg/telegram/ui/Components/SharedMediaLayout;)F

    move-result v2

    mul-float/2addr v1, v2

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4700(Lorg/telegram/ui/Components/SharedMediaLayout;)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v12, v3, v2

    add-float v11, v1, v12

    .line 2231
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4500(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2500(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    .line 2232
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4700(Lorg/telegram/ui/Components/SharedMediaLayout;)F

    move-result v2

    mul-float/2addr v1, v2

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4700(Lorg/telegram/ui/Components/SharedMediaLayout;)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v12, v3, v2

    add-float/2addr v12, v1

    .line 2234
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2500(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    float-to-double v3, v3

    sub-double/2addr v1, v3

    float-to-double v3, v12

    mul-double/2addr v1, v3

    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v3

    float-to-double v3, v3

    add-double/2addr v1, v3

    double-to-float v14, v1

    .line 2235
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2500(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v2

    int-to-float v2, v2

    div-float v15, v1, v2

    .line 2236
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4500(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v2

    int-to-float v2, v2

    div-float v16, v1, v2

    const/4 v7, 0x0

    .line 2238
    :goto_13
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->drawingViews2:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v7, v1, :cond_28

    .line 2239
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->drawingViews2:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    .line 2240
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewAdapterPosition()I

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2500(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v2

    rem-int/2addr v1, v2

    .line 2241
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewAdapterPosition()I

    move-result v2

    sub-int/2addr v2, v10

    iget-object v3, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v3}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2500(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v3

    div-int/2addr v2, v3

    add-int v2, v2, v18

    add-int v3, v1, v9

    .line 2246
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 2247
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2400(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result v4

    xor-int/2addr v4, v13

    invoke-virtual {v6, v12, v4}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->setImageScale(FZ)V

    int-to-float v1, v1

    mul-float/2addr v1, v15

    .line 2248
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v4}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4700(Lorg/telegram/ui/Components/SharedMediaLayout;)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v4, v5, v4

    mul-float/2addr v1, v4

    int-to-float v4, v3

    mul-float v4, v4, v16

    iget-object v5, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v5}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4700(Lorg/telegram/ui/Components/SharedMediaLayout;)F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v1, v4

    int-to-float v2, v2

    mul-float/2addr v2, v14

    add-float v2, v19, v2

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2249
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4500(Lorg/telegram/ui/Components/SharedMediaLayout;)I

    move-result v1

    if-ge v3, v1, :cond_27

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2250
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v4, v1, v11

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v5, v1, v11

    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4700(Lorg/telegram/ui/Components/SharedMediaLayout;)F

    move-result v1

    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v1, v17, v1

    const/high16 v17, 0x437f0000    # 255.0f

    mul-float v1, v1, v17

    float-to-int v1, v1

    const/16 v17, 0x1f

    move/from16 v20, v1

    move-object/from16 v1, p1

    move-object v13, v6

    move/from16 v6, v20

    move/from16 v20, v7

    move/from16 v7, v17

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 2251
    invoke-virtual {v13, v8}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 2252
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_14

    :cond_27
    move-object v13, v6

    move/from16 v20, v7

    .line 2254
    invoke-virtual {v13, v8}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 2256
    :goto_14
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v7, v20, 0x1

    const/4 v13, 0x1

    goto/16 :goto_13

    .line 2259
    :cond_28
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->drawingViews3:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_30

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2260
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4700(Lorg/telegram/ui/Components/SharedMediaLayout;)F

    move-result v1

    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v1, v6

    float-to-int v6, v1

    const/16 v7, 0x1f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    const/4 v6, 0x0

    .line 2261
    :goto_15
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->drawingViews3:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v6, v1, :cond_29

    .line 2262
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->drawingViews3:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;->drawCrossafadeImage(Landroid/graphics/Canvas;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    .line 2264
    :cond_29
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_19

    :cond_2a
    const/4 v6, 0x0

    .line 2268
    :goto_16
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v6, v1, :cond_2f

    .line 2269
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2270
    iget-object v2, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v2, v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4800(Lorg/telegram/ui/Components/SharedMediaLayout;Landroid/view/View;)I

    move-result v2

    if-eqz v2, :cond_2b

    .line 2272
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v4, v4, Lorg/telegram/ui/Components/SharedMediaLayout;->messageAlphaEnter:Landroid/util/SparseArray;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2c

    .line 2273
    iget-object v4, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object v4, v4, Lorg/telegram/ui/Components/SharedMediaLayout;->messageAlphaEnter:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    goto :goto_17

    :cond_2b
    const/4 v5, 0x0

    :cond_2c
    const/high16 v2, 0x3f800000    # 1.0f

    .line 2275
    :goto_17
    instance-of v4, v1, Lorg/telegram/ui/Cells/SharedDocumentCell;

    if-eqz v4, :cond_2d

    .line 2276
    check-cast v1, Lorg/telegram/ui/Cells/SharedDocumentCell;

    .line 2277
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/SharedDocumentCell;->setEnterAnimationAlpha(F)V

    goto :goto_18

    .line 2278
    :cond_2d
    instance-of v4, v1, Lorg/telegram/ui/Cells/SharedAudioCell;

    if-eqz v4, :cond_2e

    .line 2279
    check-cast v1, Lorg/telegram/ui/Cells/SharedAudioCell;

    .line 2280
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Cells/SharedAudioCell;->setEnterAnimationAlpha(F)V

    :cond_2e
    :goto_18
    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    .line 2283
    :cond_2f
    invoke-super/range {p0 .. p1}, Lorg/telegram/ui/Components/BlurredRecyclerView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2287
    :cond_30
    :goto_19
    iget-object v1, v0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    iget-boolean v2, v1, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->highlightAnimation:Z

    if-eqz v2, :cond_32

    .line 2288
    iget v2, v1, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->highlightProgress:F

    const v3, 0x3c2ec33e

    add-float/2addr v2, v3

    iput v2, v1, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->highlightProgress:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_31

    const/4 v2, 0x0

    .line 2290
    iput v2, v1, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->highlightProgress:F

    const/4 v2, 0x0

    .line 2291
    iput-boolean v2, v1, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->highlightAnimation:Z

    .line 2292
    iput v2, v1, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->highlightMessageId:I

    .line 2294
    :cond_31
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_32
    return-void
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 2

    .line 2301
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v1}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$900(Lorg/telegram/ui/Components/SharedMediaLayout;)Lorg/telegram/ui/Components/SharedMediaLayout$SharedPhotoVideoAdapter;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2302
    iget-object v0, p0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    invoke-static {v0}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$2400(Lorg/telegram/ui/Components/SharedMediaLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p2, Lorg/telegram/ui/Cells/SharedPhotoVideoCell2;

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2306
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Components/BlurredRecyclerView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 2016
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Components/RecyclerListView;->onLayout(ZIIII)V

    .line 2017
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->this$0:Lorg/telegram/ui/Components/SharedMediaLayout;

    iget-object p2, p0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {p2}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$100(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)Lorg/telegram/ui/Components/BlurredRecyclerView;

    move-result-object p3

    iget-object p4, p0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->val$layoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    invoke-static {p1, p2, p3, p4}, Lorg/telegram/ui/Components/SharedMediaLayout;->access$4400(Lorg/telegram/ui/Components/SharedMediaLayout;Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;Lorg/telegram/ui/Components/RecyclerListView;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    .line 2018
    iget-object p1, p0, Lorg/telegram/ui/Components/SharedMediaLayout$11;->val$mediaPage:Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;

    invoke-static {p1}, Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;->access$000(Lorg/telegram/ui/Components/SharedMediaLayout$MediaPage;)I

    move-result p1

    if-nez p1, :cond_0

    .line 2019
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/PhotoViewer;->checkCurrentImageVisibility()V

    :cond_0
    return-void
.end method
