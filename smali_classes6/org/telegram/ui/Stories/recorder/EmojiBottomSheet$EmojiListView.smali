.class Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "EmojiBottomSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmojiListView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$DrawingInBackgroundLine;,
        Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;
    }
.end annotation


# instance fields
.field private bottomBound:F

.field private final lineDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$DrawingInBackgroundLine;",
            ">;"
        }
    .end annotation
.end field

.field private final lineDrawablesTmp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$DrawingInBackgroundLine;",
            ">;"
        }
    .end annotation
.end field

.field private scrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

.field public smoothScrolling:Z

.field private topBound:F

.field private final unusedArrays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;",
            ">;>;"
        }
    .end annotation
.end field

.field private final unusedLineDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$DrawingInBackgroundLine;",
            ">;"
        }
    .end annotation
.end field

.field private final viewsGroupedByLines:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;",
            ">;>;"
        }
    .end annotation
.end field

.field private final whiteFilter:Landroid/graphics/ColorFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1223
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 1281
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->smoothScrolling:Z

    .line 1283
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->viewsGroupedByLines:Landroid/util/SparseArray;

    .line 1284
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->unusedArrays:Ljava/util/ArrayList;

    .line 1285
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->unusedLineDrawables:Ljava/util/ArrayList;

    .line 1286
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->lineDrawables:Ljava/util/ArrayList;

    .line 1287
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->lineDrawablesTmp:Ljava/util/ArrayList;

    .line 1416
    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v0}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->whiteFilter:Landroid/graphics/ColorFilter;

    return-void
.end method

.method static synthetic access$3900(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;)Landroid/graphics/ColorFilter;
    .locals 0

    .line 1052
    iget-object p0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->whiteFilter:Landroid/graphics/ColorFilter;

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;II)V
    .locals 0

    .line 1052
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->scrollToPosition(II)V

    return-void
.end method

.method private scrollToPosition(II)V
    .locals 4

    .line 1249
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->scrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-nez v0, :cond_0

    goto :goto_1

    .line 1252
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 1253
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    .line 1254
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    if-nez v1, :cond_1

    sub-int v1, p1, v2

    .line 1255
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x41100000    # 9.0f

    mul-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_2

    :cond_1
    invoke-static {}, Lorg/telegram/messenger/SharedConfig;->animationsEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1256
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->scrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, p1, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v3

    :goto_0
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->setScrollDirection(I)V

    .line 1257
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->scrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    invoke-virtual {v0, p1, p2, v2, v3}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->scrollToPosition(IIZZ)V

    goto :goto_1

    .line 1259
    :cond_4
    new-instance v1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$2;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v1, p0, v2, v3}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$2;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;Landroid/content/Context;I)V

    .line 1269
    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 1270
    invoke-virtual {v1, p2}, Landroidx/recyclerview/widget/LinearSmoothScrollerCustom;->setOffset(I)V

    .line 1271
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1292
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1296
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    .line 1298
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v1, 0x0

    .line 1299
    iget v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->topBound:F

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->bottomBound:F

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 1301
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1302
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1303
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1304
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorTransformer:Landroidx/core/util/Consumer;

    if-eqz v1, :cond_1

    .line 1305
    invoke-interface {v1, p1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 1307
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1308
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    const/4 v1, 0x0

    move v2, v1

    .line 1311
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->viewsGroupedByLines:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 1312
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->viewsGroupedByLines:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 1313
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1314
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->unusedArrays:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1316
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->viewsGroupedByLines:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    move v2, v1

    .line 1318
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_9

    .line 1319
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1320
    instance-of v4, v3, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;

    if-eqz v4, :cond_8

    .line 1321
    check-cast v3, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;

    .line 1323
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v4

    iget v5, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->bottomBound:F

    cmpl-float v4, v4, v5

    if-gez v4, :cond_8

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget v5, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->topBound:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_4

    goto :goto_4

    .line 1327
    :cond_4
    iget-boolean v4, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->smoothScrolling:Z

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v4

    float-to-int v4, v4

    goto :goto_2

    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    .line 1328
    :goto_2
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->viewsGroupedByLines:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    if-nez v5, :cond_7

    .line 1331
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->unusedArrays:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 1332
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->unusedArrays:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    goto :goto_3

    .line 1334
    :cond_6
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1336
    :goto_3
    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->viewsGroupedByLines:Landroid/util/SparseArray;

    invoke-virtual {v6, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1338
    :cond_7
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1342
    :cond_9
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1343
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->lineDrawablesTmp:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->lineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1344
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->lineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1346
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1347
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1349
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move v4, v1

    .line 1350
    :goto_5
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->viewsGroupedByLines:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    const/4 v6, 0x0

    if-ge v4, v5, :cond_f

    .line 1351
    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->viewsGroupedByLines:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 1352
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;

    .line 1353
    invoke-virtual {p0, v7}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v8

    move v9, v1

    .line 1355
    :goto_6
    iget-object v10, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_b

    .line 1356
    iget-object v10, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$DrawingInBackgroundLine;

    iget v10, v10, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$DrawingInBackgroundLine;->position:I

    if-ne v10, v8, :cond_a

    .line 1357
    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$DrawingInBackgroundLine;

    .line 1358
    iget-object v10, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_7

    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_b
    :goto_7
    if-nez v6, :cond_d

    .line 1363
    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->unusedLineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_c

    .line 1364
    iget-object v6, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->unusedLineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$DrawingInBackgroundLine;

    goto :goto_8

    .line 1366
    :cond_c
    new-instance v6, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$DrawingInBackgroundLine;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$DrawingInBackgroundLine;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;)V

    const/4 v9, 0x7

    .line 1367
    invoke-virtual {v6, v9}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->setLayerNum(I)V

    .line 1369
    :goto_8
    iput v8, v6, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$DrawingInBackgroundLine;->position:I

    .line 1370
    invoke-virtual {v6}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->onAttachToWindow()V

    .line 1372
    :cond_d
    iget-object v8, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->lineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1373
    iput-object v5, v6, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    .line 1374
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1375
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v7}, Landroid/view/View;->getY()F

    move-result v8

    invoke-virtual {p1, v5, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1376
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v5

    iput v5, v6, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$DrawingInBackgroundLine;->startOffset:I

    .line 1377
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    sub-int v9, v5, v8

    .line 1378
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    if-lez v9, :cond_e

    if-lez v10, :cond_e

    .line 1380
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v11

    move-object v5, v6

    move-object v6, p1

    move-wide v7, v2

    invoke-virtual/range {v5 .. v11}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$DrawingInBackgroundLine;->draw(Landroid/graphics/Canvas;JIIF)V

    .line 1382
    :cond_e
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_5

    :cond_f
    move v2, v1

    .line 1385
    :goto_9
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_11

    .line 1386
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->unusedLineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x3

    if-ge v3, v4, :cond_10

    .line 1387
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->unusedLineDrawables:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$DrawingInBackgroundLine;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1388
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$DrawingInBackgroundLine;

    iput-object v6, v3, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    .line 1389
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$DrawingInBackgroundLine;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->reset()V

    goto :goto_a

    .line 1391
    :cond_10
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$DrawingInBackgroundLine;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->onDetachFromWindow()V

    :goto_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1394
    :cond_11
    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1396
    :goto_b
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_14

    .line 1397
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 1398
    instance-of v3, v2, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$EmojiImageView;

    if-nez v3, :cond_13

    .line 1400
    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_13

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_12

    goto :goto_c

    .line 1404
    :cond_12
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1405
    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1406
    invoke-virtual {v2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1407
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_13
    :goto_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1411
    :cond_14
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1413
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public setBounds(FF)V
    .locals 0

    .line 1277
    iput p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->topBound:F

    .line 1278
    iput p2, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->bottomBound:F

    return-void
.end method

.method public setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 1

    .line 1228
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/4 v0, 0x0

    .line 1230
    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->scrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    .line 1231
    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_0

    .line 1232
    new-instance v0, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->scrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    .line 1233
    new-instance p1, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$1;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;)V

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->setAnimationCallback(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$AnimationCallback;)V

    .line 1244
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;->scrollHelper:Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;

    new-instance v0, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/EmojiBottomSheet$EmojiListView;)V

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper;->setScrollListener(Lorg/telegram/ui/Components/RecyclerAnimationScrollHelper$ScrollListener;)V

    :cond_0
    return-void
.end method
