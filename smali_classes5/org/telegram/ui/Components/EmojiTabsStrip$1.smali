.class Lorg/telegram/ui/Components/EmojiTabsStrip$1;
.super Landroid/widget/LinearLayout;
.source "EmojiTabsStrip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiTabsStrip;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;ZZILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private from:Landroid/graphics/RectF;

.field lastX:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private paint:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;

.field private rect:Landroid/graphics/RectF;

.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

.field private to:Landroid/graphics/RectF;

.field final synthetic val$includeAnimated:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiTabsStrip;Landroid/content/Context;Z)V
    .locals 0

    .line 115
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    iput-boolean p3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->val$includeAnimated:Z

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 117
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->lastX:Ljava/util/HashMap;

    .line 197
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->paint:Landroid/graphics/Paint;

    .line 198
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->from:Landroid/graphics/RectF;

    .line 199
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->to:Landroid/graphics/RectF;

    .line 200
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->rect:Landroid/graphics/RectF;

    .line 201
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->path:Landroid/graphics/Path;

    return-void
.end method

.method private getChildBounds(ILandroid/graphics/RectF;)V
    .locals 6

    .line 270
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroidx/core/math/MathUtils;->clamp(III)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 271
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 273
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v3

    mul-float v1, v1, v3

    sub-float/2addr v0, v1

    .line 274
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v2

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v4

    mul-float v3, v3, v4

    sub-float/2addr v1, v3

    .line 275
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v4, v2

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v5

    mul-float v4, v4, v5

    add-float/2addr v3, v4

    .line 276
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v5, v2

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result p1

    mul-float v5, v5, p1

    add-float/2addr v4, v5

    .line 272
    invoke-virtual {p2, v0, v1, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 204
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$200(Lorg/telegram/ui/Components/EmojiTabsStrip;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 205
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 207
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 208
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 209
    iget v4, v1, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, v1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 210
    invoke-virtual {v3}, Landroid/view/View;->getScaleX()F

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getScaleY()F

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    invoke-virtual {p1, v4, v5, v6, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 211
    invoke-virtual {v3, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 212
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 216
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$300(Lorg/telegram/ui/Components/EmojiTabsStrip;)Lorg/telegram/ui/Components/AnimatedFloat;

    move-result-object v0

    if-nez v0, :cond_2

    .line 217
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    new-instance v1, Lorg/telegram/ui/Components/AnimatedFloat;

    const-wide/16 v3, 0x15e

    sget-object v5, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-direct {v1, p0, v3, v4, v5}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JLandroid/animation/TimeInterpolator;)V

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$302(Lorg/telegram/ui/Components/EmojiTabsStrip;Lorg/telegram/ui/Components/AnimatedFloat;)Lorg/telegram/ui/Components/AnimatedFloat;

    .line 219
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$300(Lorg/telegram/ui/Components/EmojiTabsStrip;)Lorg/telegram/ui/Components/AnimatedFloat;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$400(Lorg/telegram/ui/Components/EmojiTabsStrip;)Z

    move-result v1

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v1, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(F)F

    move-result v0

    .line 221
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$500(Lorg/telegram/ui/Components/EmojiTabsStrip;)F

    move-result v1

    float-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v1, v5

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$500(Lorg/telegram/ui/Components/EmojiTabsStrip;)F

    move-result v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    .line 222
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->from:Landroid/graphics/RectF;

    invoke-direct {p0, v1, v6}, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->getChildBounds(ILandroid/graphics/RectF;)V

    .line 223
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->to:Landroid/graphics/RectF;

    invoke-direct {p0, v5, v6}, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->getChildBounds(ILandroid/graphics/RectF;)V

    .line 224
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->from:Landroid/graphics/RectF;

    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->to:Landroid/graphics/RectF;

    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-static {v7}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$500(Lorg/telegram/ui/Components/EmojiTabsStrip;)F

    move-result v7

    int-to-float v1, v1

    sub-float/2addr v7, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->rect:Landroid/graphics/RectF;

    invoke-static {v5, v6, v7, v1}, Lorg/telegram/messenger/AndroidUtilities;->lerp(Landroid/graphics/RectF;Landroid/graphics/RectF;FLandroid/graphics/RectF;)V

    .line 225
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$600(Lorg/telegram/ui/Components/EmojiTabsStrip;)Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$500(Lorg/telegram/ui/Components/EmojiTabsStrip;)F

    move-result v1

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float v1, v4, v1

    invoke-static {v1, v3, v4}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result v3

    :goto_2
    const/high16 v1, 0x40800000    # 4.0f

    .line 226
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$700(Lorg/telegram/ui/Components/EmojiTabsStrip;)F

    move-result v5

    mul-float v5, v5, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$700(Lorg/telegram/ui/Components/EmojiTabsStrip;)F

    move-result v1

    sub-float v1, v4, v1

    mul-float v5, v5, v1

    .line 227
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, v2

    const v6, 0x3e99999a    # 0.3f

    mul-float v6, v6, v5

    add-float/2addr v6, v4

    mul-float v1, v1, v6

    .line 228
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->rect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    div-float/2addr v6, v2

    const v7, 0x3d4ccccd    # 0.05f

    mul-float v5, v5, v7

    sub-float v5, v4, v5

    mul-float v6, v6, v5

    .line 229
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->rect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    sub-float/2addr v7, v1

    iget-object v8, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->rect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    sub-float/2addr v8, v6

    iget-object v9, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->rect:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerX()F

    move-result v9

    add-float/2addr v9, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->rect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    add-float/2addr v1, v6

    invoke-virtual {v5, v7, v8, v9, v1}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v1, 0x41000000    # 8.0f

    const/high16 v5, 0x41800000    # 16.0f

    .line 230
    invoke-static {v1, v5, v3}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    .line 231
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->paint:Landroid/graphics/Paint;

    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-static {v7}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$800(Lorg/telegram/ui/Components/EmojiTabsStrip;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 232
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$900(Lorg/telegram/ui/Components/EmojiTabsStrip;)Z

    move-result v6

    const/high16 v7, 0x3f000000    # 0.5f

    if-eqz v6, :cond_5

    .line 233
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->paint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getAlpha()I

    move-result v8

    int-to-float v8, v8

    mul-float v8, v8, v0

    mul-float v3, v3, v7

    sub-float/2addr v4, v3

    mul-float v8, v8, v4

    float-to-int v0, v8

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 236
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 237
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->path:Landroid/graphics/Path;

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->rect:Landroid/graphics/RectF;

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v3, v1, v1, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 238
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->path:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 240
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$900(Lorg/telegram/ui/Components/EmojiTabsStrip;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 241
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 242
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->rect:Landroid/graphics/RectF;

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->getChildBounds(ILandroid/graphics/RectF;)V

    .line 243
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->path:Landroid/graphics/Path;

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->rect:Landroid/graphics/RectF;

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v4

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v5

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 244
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->paint:Landroid/graphics/Paint;

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$800(Lorg/telegram/ui/Components/EmojiTabsStrip;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 245
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v7

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 246
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->path:Landroid/graphics/Path;

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 249
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$600(Lorg/telegram/ui/Components/EmojiTabsStrip;)Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 250
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->path:Landroid/graphics/Path;

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-static {v3}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$600(Lorg/telegram/ui/Components/EmojiTabsStrip;)Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/HorizontalScrollView;->getLeft()I

    move-result v3

    const/16 v4, 0xf

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    add-int/2addr v3, v5

    int-to-float v3, v3

    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-static {v5}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$600(Lorg/telegram/ui/Components/EmojiTabsStrip;)Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/HorizontalScrollView;->getTop()I

    move-result v5

    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-static {v6}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$600(Lorg/telegram/ui/Components/EmojiTabsStrip;)Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/HorizontalScrollView;->getBottom()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v3, v5, v2, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 253
    :cond_7
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 254
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-static {p1, v1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$1002(Lorg/telegram/ui/Components/EmojiTabsStrip;Z)Z

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    .line 259
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$600(Lorg/telegram/ui/Components/EmojiTabsStrip;)Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;

    move-result-object v0

    if-ne p2, v0, :cond_0

    .line 260
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 261
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->path:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 262
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p2

    .line 263
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return p2

    .line 266
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    sub-int/2addr p5, p3

    .line 121
    div-int/lit8 p5, p5, 0x2

    .line 122
    iget-boolean p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->val$includeAnimated:Z

    const/4 p3, 0x0

    if-eqz p1, :cond_c

    .line 123
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$000(Lorg/telegram/ui/Components/EmojiTabsStrip;)Z

    move-result v0

    const/16 v1, 0x21

    if-nez v0, :cond_0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sub-int/2addr p1, v0

    const/4 v0, 0x0

    .line 124
    :goto_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    if-ge v0, v2, :cond_8

    .line 125
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 126
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$100(Lorg/telegram/ui/Components/EmojiTabsStrip;)Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    move-result-object v4

    if-eq v2, v4, :cond_7

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-static {v4}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$200(Lorg/telegram/ui/Components/EmojiTabsStrip;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_3

    :cond_1
    if-eqz v2, :cond_7

    .line 130
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v4, p5, v4

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, p1

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, p5

    invoke-virtual {v2, p1, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 131
    instance-of v4, v2, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    if-eqz v4, :cond_2

    move-object v5, v2

    check-cast v5, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    iget-object v5, v5, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->id:Ljava/lang/Integer;

    goto :goto_2

    :cond_2
    instance-of v5, v2, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;

    if-eqz v5, :cond_3

    move-object v5, v2

    check-cast v5, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;

    iget v5, v5, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabsView;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    .line 132
    :goto_2
    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    iget-boolean v6, v6, Lorg/telegram/ui/Components/EmojiTabsStrip;->animateAppear:Z

    if-eqz v6, :cond_4

    if-eqz v4, :cond_4

    move-object v4, v2

    check-cast v4, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    iget-boolean v6, v4, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->newly:Z

    if-eqz v6, :cond_4

    .line 133
    iput-boolean p3, v4, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->newly:Z

    .line 134
    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleX(F)V

    .line 135
    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleY(F)V

    .line 136
    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 137
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v4, v6}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    sget-object v6, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v4, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_4
    if-eqz v5, :cond_6

    .line 140
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->lastX:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->lastX:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, p1, :cond_5

    .line 141
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->lastX:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v4, p1

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 142
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v6, 0xfa

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    sget-object v4, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 144
    :cond_5
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->lastX:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :cond_6
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    const/4 v3, 0x3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr p1, v2

    :cond_7
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 149
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$100(Lorg/telegram/ui/Components/EmojiTabsStrip;)Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 150
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$000(Lorg/telegram/ui/Components/EmojiTabsStrip;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p3

    :cond_9
    add-int/2addr p1, p3

    .line 151
    iget-object p3, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-static {p3}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$100(Lorg/telegram/ui/Components/EmojiTabsStrip;)Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    move-result-object p3

    iget-object p3, p3, Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;->id:Ljava/lang/Integer;

    .line 152
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$100(Lorg/telegram/ui/Components/EmojiTabsStrip;)Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v1

    if-gt v0, v1, :cond_a

    .line 153
    iget-object p1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-static {p1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$100(Lorg/telegram/ui/Components/EmojiTabsStrip;)Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    move-result-object p1

    sub-int/2addr p4, p2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result p2

    sub-int p2, p4, p2

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$100(Lorg/telegram/ui/Components/EmojiTabsStrip;)Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p2, v0

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$100(Lorg/telegram/ui/Components/EmojiTabsStrip;)Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p5, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr p4, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$100(Lorg/telegram/ui/Components/EmojiTabsStrip;)Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p5, v1

    invoke-virtual {p1, p2, v0, p4, p5}, Landroid/view/ViewGroup;->layout(IIII)V

    move p1, p2

    goto :goto_4

    .line 155
    :cond_a
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$100(Lorg/telegram/ui/Components/EmojiTabsStrip;)Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    move-result-object p2

    iget-object p4, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-static {p4}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$100(Lorg/telegram/ui/Components/EmojiTabsStrip;)Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    sub-int p4, p5, p4

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$100(Lorg/telegram/ui/Components/EmojiTabsStrip;)Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$100(Lorg/telegram/ui/Components/EmojiTabsStrip;)Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p5, v1

    invoke-virtual {p2, p1, p4, v0, p5}, Landroid/view/ViewGroup;->layout(IIII)V

    :goto_4
    if-eqz p3, :cond_e

    .line 158
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->lastX:Ljava/util/HashMap;

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_b

    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->lastX:Ljava/util/HashMap;

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eq p2, p1, :cond_b

    .line 159
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$100(Lorg/telegram/ui/Components/EmojiTabsStrip;)Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    move-result-object p2

    iget-object p4, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->lastX:Ljava/util/HashMap;

    invoke-virtual {p4, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    sub-int/2addr p4, p1

    int-to-float p4, p4

    invoke-virtual {p2, p4}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 160
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-static {p2}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$100(Lorg/telegram/ui/Components/EmojiTabsStrip;)Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const-wide/16 p4, 0x15e

    invoke-virtual {p2, p4, p5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 162
    :cond_b
    iget-object p2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->lastX:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 166
    :cond_c
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$000(Lorg/telegram/ui/Components/EmojiTabsStrip;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    sub-int/2addr p1, v0

    sub-int/2addr p4, p2

    .line 167
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p4, p2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result p2

    sub-int/2addr p4, p2

    const/16 p2, 0x1e

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    mul-int p2, p2, p1

    sub-int/2addr p4, p2

    int-to-float p2, p4

    add-int/lit8 p4, p1, -0x1

    invoke-static {v1, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    int-to-float p4, p4

    div-float/2addr p2, p4

    float-to-int p2, p2

    .line 168
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result p4

    :goto_5
    if-ge p3, p1, :cond_e

    .line 170
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$000(Lorg/telegram/ui/Components/EmojiTabsStrip;)Z

    move-result v0

    xor-int/2addr v0, v1

    add-int/2addr v0, p3

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 172
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v2, p5, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, p4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, p5

    invoke-virtual {v0, p4, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 173
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p2

    add-int/2addr p4, v0

    :cond_d
    add-int/lit8 p3, p3, 0x1

    goto :goto_5

    :cond_e
    :goto_6
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    const v0, 0x5f5e0ff

    const/high16 v1, -0x80000000

    .line 181
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 182
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiTabsStrip;->access$000(Lorg/telegram/ui/Components/EmojiTabsStrip;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->this$0:Lorg/telegram/ui/Components/EmojiTabsStrip;

    iget-object v2, v2, Lorg/telegram/ui/Components/EmojiTabsStrip;->recentTab:Lorg/telegram/ui/Components/EmojiTabsStrip$EmojiTabButton;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v2

    const/16 v3, 0x21

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    mul-float v2, v2, v3

    :goto_0
    float-to-int v2, v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 183
    :goto_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 184
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 186
    invoke-virtual {v4, v0, p2}, Landroid/view/View;->measure(II)V

    .line 187
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_1

    const/4 v5, 0x3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    :goto_2
    add-int/2addr v4, v5

    add-int/2addr v1, v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 190
    :cond_3
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiTabsStrip$1;->val$includeAnimated:Z

    if-nez v0, :cond_4

    .line 191
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    return-void

    .line 194
    :cond_4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    return-void
.end method
