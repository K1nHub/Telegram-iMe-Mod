.class Lorg/telegram/ui/Components/EmojiPacksAlert$3;
.super Landroid/widget/FrameLayout;
.source "EmojiPacksAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiPacksAlert;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/EmojiPacksAlert$3$DrawingInBackgroundLine;
    }
.end annotation


# instance fields
.field attached:Z

.field private lastOpen:Ljava/lang/Boolean;

.field lineDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/EmojiPacksAlert$3$DrawingInBackgroundLine;",
            ">;"
        }
    .end annotation
.end field

.field lineDrawablesTmp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/EmojiPacksAlert$3$DrawingInBackgroundLine;",
            ">;"
        }
    .end annotation
.end field

.field private paint:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;

.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

.field unusedArrays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiImageView;",
            ">;>;"
        }
    .end annotation
.end field

.field unusedLineDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/EmojiPacksAlert$3$DrawingInBackgroundLine;",
            ">;"
        }
    .end annotation
.end field

.field viewsGroupedByLines:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiImageView;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiPacksAlert;Landroid/content/Context;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 263
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->paint:Landroid/graphics/Paint;

    .line 264
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->path:Landroid/graphics/Path;

    const/4 p1, 0x0

    .line 265
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->lastOpen:Ljava/lang/Boolean;

    .line 267
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->viewsGroupedByLines:Landroid/util/SparseArray;

    .line 268
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->lineDrawables:Ljava/util/ArrayList;

    .line 269
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->lineDrawablesTmp:Ljava/util/ArrayList;

    .line 270
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->unusedArrays:Ljava/util/ArrayList;

    .line 271
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->unusedLineDrawables:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    .line 275
    iget-boolean v1, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->attached:Z

    if-nez v1, :cond_0

    return-void

    .line 278
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->paint:Landroid/graphics/Paint;

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    const-string v3, "dialogBackground"

    invoke-static {v2, v3}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$1200(Lorg/telegram/ui/Components/EmojiPacksAlert;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 279
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->paint:Landroid/graphics/Paint;

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->applyDefaultShadow(Landroid/graphics/Paint;)V

    .line 280
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->path:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 281
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$1400(Lorg/telegram/ui/Components/EmojiPacksAlert;)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$1302(Lorg/telegram/ui/Components/EmojiPacksAlert;F)F

    move-result v1

    .line 283
    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$1500(Lorg/telegram/ui/Components/EmojiPacksAlert;)Ljava/lang/Float;

    move-result-object v2

    const/4 v9, 0x0

    if-eqz v2, :cond_1

    .line 285
    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$1500(Lorg/telegram/ui/Components/EmojiPacksAlert;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$1600(Lorg/telegram/ui/Components/EmojiPacksAlert;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getY()F

    move-result v3

    add-float/2addr v3, v1

    iget-object v4, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$1700(Lorg/telegram/ui/Components/EmojiPacksAlert;)F

    move-result v4

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v2

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$1800(Lorg/telegram/ui/Components/EmojiPacksAlert;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    sub-float v1, v2, v1

    move/from16 v20, v2

    move v2, v1

    move/from16 v1, v20

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 288
    :goto_0
    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$1900(Lorg/telegram/ui/Components/EmojiPacksAlert;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v1, v3

    const/16 v4, 0x20

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v3, v9, v10}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v3

    sub-float v3, v10, v3

    .line 289
    iget-object v4, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$2000(Lorg/telegram/ui/Components/EmojiPacksAlert;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v3

    sub-float/2addr v1, v4

    sub-float v4, v10, v3

    const/high16 v5, 0x41600000    # 14.0f

    mul-float v4, v4, v5

    .line 290
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    .line 291
    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v11

    sub-int/2addr v7, v11

    int-to-float v7, v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v11, v4

    invoke-virtual {v5, v6, v1, v7, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 292
    iget-object v6, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->path:Landroid/graphics/Path;

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v6, v5, v4, v4, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 293
    iget-object v4, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->path:Landroid/graphics/Path;

    iget-object v6, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->paint:Landroid/graphics/Paint;

    invoke-virtual {v8, v4, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/high16 v4, 0x3f400000    # 0.75f

    const/4 v11, 0x1

    const/4 v12, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 296
    :goto_1
    iget-object v4, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->lastOpen:Ljava/lang/Boolean;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eq v3, v4, :cond_4

    .line 297
    :cond_3
    iget-object v4, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->lastOpen:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v4, v3}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$2100(Lorg/telegram/ui/Components/EmojiPacksAlert;Z)V

    .line 300
    :cond_4
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    iget-object v4, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    const-string v6, "key_sheet_scrollUp"

    invoke-static {v4, v6}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$2200(Lorg/telegram/ui/Components/EmojiPacksAlert;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 301
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    const/16 v4, 0x14

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    div-float v4, v1, v4

    invoke-static {v4, v9, v10}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v4

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getAlpha()I

    move-result v6

    int-to-float v6, v6

    mul-float v4, v4, v6

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    const/16 v3, 0x24

    .line 302
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    const/16 v4, 0xa

    .line 303
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    add-float v13, v1, v4

    .line 304
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v1, v3

    const/4 v14, 0x2

    div-int/2addr v1, v14

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v3

    div-int/2addr v4, v14

    int-to-float v3, v4

    const/4 v4, 0x4

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v13

    invoke-virtual {v5, v1, v13, v3, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 305
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    sget-object v6, Lorg/telegram/ui/ActionBar/Theme;->dialogs_onlineCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v5, v1, v3, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 307
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$2400(Lorg/telegram/ui/Components/EmojiPacksAlert;)Landroid/view/View;

    move-result-object v1

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$1100(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3, v11}, Lorg/telegram/ui/Components/RecyclerListView;->canScrollVertically(I)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$2300(Lorg/telegram/ui/Components/EmojiPacksAlert;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    const/4 v4, 0x0

    :cond_6
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 308
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$1100(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 309
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 310
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$1100(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$1100(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v2

    invoke-virtual {v8, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 311
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$1100(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$1100(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    invoke-virtual {v8, v12, v12, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 312
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$1100(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v4, v1

    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$1100(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$1100(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v1

    const/high16 v15, 0x437f0000    # 255.0f

    mul-float v1, v1, v15

    float-to-int v6, v1

    const/16 v7, 0x1f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    const/4 v1, 0x0

    .line 314
    :goto_2
    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->viewsGroupedByLines:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 315
    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->viewsGroupedByLines:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 316
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 317
    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->unusedArrays:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 319
    :cond_7
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->viewsGroupedByLines:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    const/4 v1, 0x0

    .line 320
    :goto_3
    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$1100(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v7, 0x3

    if-ge v1, v2, :cond_e

    .line 321
    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$1100(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 322
    instance-of v3, v2, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiImageView;

    if-eqz v3, :cond_d

    .line 323
    move-object v3, v2

    check-cast v3, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiImageView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiImageView;->updatePressedProgress()V

    .line 324
    iget-object v4, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$2500(Lorg/telegram/ui/Components/EmojiPacksAlert;)Landroid/util/LongSparseArray;

    move-result-object v4

    if-nez v4, :cond_8

    .line 325
    iget-object v4, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    new-instance v5, Landroid/util/LongSparseArray;

    invoke-direct {v5}, Landroid/util/LongSparseArray;-><init>()V

    invoke-static {v4, v5}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$2502(Lorg/telegram/ui/Components/EmojiPacksAlert;Landroid/util/LongSparseArray;)Landroid/util/LongSparseArray;

    .line 327
    :cond_8
    iget-object v3, v3, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiImageView;->span:Lorg/telegram/ui/Components/AnimatedEmojiSpan;

    if-nez v3, :cond_9

    goto/16 :goto_5

    .line 331
    :cond_9
    invoke-virtual {v3}, Lorg/telegram/ui/Components/AnimatedEmojiSpan;->getDocumentId()J

    move-result-wide v3

    .line 332
    iget-object v5, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$2500(Lorg/telegram/ui/Components/EmojiPacksAlert;)Landroid/util/LongSparseArray;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    if-nez v5, :cond_a

    .line 334
    iget-object v5, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$2500(Lorg/telegram/ui/Components/EmojiPacksAlert;)Landroid/util/LongSparseArray;

    move-result-object v5

    iget-object v6, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$2600(Lorg/telegram/ui/Components/EmojiPacksAlert;)I

    move-result v6

    invoke-static {v6, v7, v3, v4}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->make(IIJ)Lorg/telegram/ui/Components/AnimatedEmojiDrawable;

    move-result-object v6

    invoke-virtual {v5, v3, v4, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    move-object v5, v6

    .line 336
    :cond_a
    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_animatedEmojiTextColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v5, v3}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 337
    invoke-virtual {v5, v0}, Lorg/telegram/ui/Components/AnimatedEmojiDrawable;->addView(Landroid/view/View;)V

    .line 338
    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->viewsGroupedByLines:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-nez v3, :cond_c

    .line 340
    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->unusedArrays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    .line 341
    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->unusedArrays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v11

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    goto :goto_4

    .line 343
    :cond_b
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 345
    :goto_4
    iget-object v4, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->viewsGroupedByLines:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 347
    :cond_c
    check-cast v2, Lorg/telegram/ui/Components/EmojiPacksAlert$EmojiImageView;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 349
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 350
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v8, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 351
    invoke-virtual {v2, v8}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 352
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .line 356
    :cond_e
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 357
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->lineDrawablesTmp:Ljava/util/ArrayList;

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->lineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 358
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->lineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 360
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    const/4 v6, 0x0

    .line 361
    :goto_6
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->viewsGroupedByLines:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v6, v1, :cond_13

    .line 362
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->viewsGroupedByLines:Landroid/util/SparseArray;

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 363
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 364
    iget-object v4, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$1100(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v4

    const/4 v5, 0x0

    .line 366
    :goto_7
    iget-object v7, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_10

    .line 367
    iget-object v7, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/ui/Components/EmojiPacksAlert$3$DrawingInBackgroundLine;

    iget v7, v7, Lorg/telegram/ui/Components/EmojiPacksAlert$3$DrawingInBackgroundLine;->position:I

    if-ne v7, v4, :cond_f

    .line 368
    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/EmojiPacksAlert$3$DrawingInBackgroundLine;

    .line 369
    iget-object v7, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_8

    :cond_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_10
    :goto_8
    if-nez v2, :cond_12

    .line 374
    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->unusedLineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11

    .line 375
    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->unusedLineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v11

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/EmojiPacksAlert$3$DrawingInBackgroundLine;

    goto :goto_9

    .line 377
    :cond_11
    new-instance v2, Lorg/telegram/ui/Components/EmojiPacksAlert$3$DrawingInBackgroundLine;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/EmojiPacksAlert$3$DrawingInBackgroundLine;-><init>(Lorg/telegram/ui/Components/EmojiPacksAlert$3;)V

    const/4 v5, 0x7

    .line 378
    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->setLayerNum(I)V

    .line 380
    :goto_9
    iput v4, v2, Lorg/telegram/ui/Components/EmojiPacksAlert$3$DrawingInBackgroundLine;->position:I

    .line 381
    invoke-virtual {v2}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->onAttachToWindow()V

    .line 383
    :cond_12
    iget-object v4, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->lineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    iput-object v1, v2, Lorg/telegram/ui/Components/EmojiPacksAlert$3$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    .line 385
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 386
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v1, v4

    invoke-virtual {v8, v9, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 387
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int v7, v1, v3

    const/high16 v18, 0x3f800000    # 1.0f

    move-object v1, v2

    move-object/from16 v2, p1

    move-wide/from16 v3, v16

    move/from16 v19, v6

    move v6, v7

    const/4 v9, 0x3

    move/from16 v7, v18

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/ui/Components/EmojiPacksAlert$3$DrawingInBackgroundLine;->draw(Landroid/graphics/Canvas;JIIF)V

    .line 388
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v6, v19, 0x1

    const/4 v7, 0x3

    const/4 v9, 0x0

    goto/16 :goto_6

    :cond_13
    const/4 v9, 0x3

    .line 391
    :goto_a
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v12, v1, :cond_15

    .line 392
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->unusedLineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v9, :cond_14

    .line 393
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->unusedLineDrawables:Ljava/util/ArrayList;

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/Components/EmojiPacksAlert$3$DrawingInBackgroundLine;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/EmojiPacksAlert$3$DrawingInBackgroundLine;

    iput-object v2, v1, Lorg/telegram/ui/Components/EmojiPacksAlert$3$DrawingInBackgroundLine;->imageViewEmojis:Ljava/util/ArrayList;

    .line 395
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/EmojiPacksAlert$3$DrawingInBackgroundLine;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->reset()V

    goto :goto_b

    .line 398
    :cond_14
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/EmojiPacksAlert$3$DrawingInBackgroundLine;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->onDetachFromWindow()V

    :goto_b
    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    .line 401
    :cond_15
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->lineDrawablesTmp:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 402
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 403
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 405
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$1100(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v1

    cmpg-float v1, v1, v10

    if-gez v1, :cond_16

    .line 406
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    div-int/2addr v1, v14

    float-to-int v2, v13

    .line 407
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    div-int/2addr v2, v14

    const/16 v3, 0x10

    .line 408
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    .line 409
    iget-object v4, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$2700(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/CircularProgressDrawable;

    move-result-object v4

    iget-object v5, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$1100(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v5

    sub-float/2addr v10, v5

    mul-float v10, v10, v15

    float-to-int v5, v10

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/CircularProgressDrawable;->setAlpha(I)V

    .line 410
    iget-object v4, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$2700(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/CircularProgressDrawable;

    move-result-object v4

    sub-int v5, v1, v3

    sub-int v6, v2, v3

    add-int/2addr v1, v3

    add-int/2addr v2, v3

    invoke-virtual {v4, v5, v6, v1, v2}, Lorg/telegram/ui/Components/CircularProgressDrawable;->setBounds(IIII)V

    .line 411
    iget-object v1, v0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$2700(Lorg/telegram/ui/Components/EmojiPacksAlert;)Lorg/telegram/ui/Components/CircularProgressDrawable;

    move-result-object v1

    invoke-virtual {v1, v8}, Lorg/telegram/ui/Components/CircularProgressDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 412
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 415
    :cond_16
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 420
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiPacksAlert;->access$1400(Lorg/telegram/ui/Components/EmojiPacksAlert;)I

    move-result v1

    const/4 v2, 0x6

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 421
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->this$0:Lorg/telegram/ui/Components/EmojiPacksAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiPacksAlert;->dismiss()V

    .line 423
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 538
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 539
    iput-boolean v0, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->attached:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 544
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 545
    iput-boolean v0, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->attached:Z

    const/4 v1, 0x0

    .line 546
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->lineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 547
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->lineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/ui/Components/EmojiPacksAlert$3$DrawingInBackgroundLine;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->onDetachFromWindow()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 549
    :cond_0
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->unusedLineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 550
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->unusedLineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/EmojiPacksAlert$3$DrawingInBackgroundLine;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/DrawingInBackgroundThreadDrawable;->onDetachFromWindow()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 552
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiPacksAlert$3;->lineDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
