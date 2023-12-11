.class public Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;
.super Ljava/lang/Object;
.source "PeerColorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ColorButton"
.end annotation


# instance fields
.field private final backgroundPaint:Landroid/graphics/Paint;

.field private final bounce:Lorg/telegram/ui/Components/ButtonBounce;

.field private final bounds:Landroid/graphics/RectF;

.field private final circlePath:Landroid/graphics/Path;

.field public final clickBounds:Landroid/graphics/RectF;

.field private final color2Path:Landroid/graphics/Path;

.field private hasColor2:Z

.field private hasColor3:Z

.field public id:I

.field private final paint1:Landroid/graphics/Paint;

.field private final paint2:Landroid/graphics/Paint;

.field private final paint3:Landroid/graphics/Paint;

.field private selected:Z

.field private final selectedT:Lorg/telegram/ui/Components/AnimatedFloat;

.field final synthetic this$0:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;)V
    .locals 9

    .line 1204
    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->this$0:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1194
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->backgroundPaint:Landroid/graphics/Paint;

    .line 1195
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->paint1:Landroid/graphics/Paint;

    .line 1196
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->paint2:Landroid/graphics/Paint;

    .line 1197
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->paint3:Landroid/graphics/Paint;

    .line 1198
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->circlePath:Landroid/graphics/Path;

    .line 1199
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->color2Path:Landroid/graphics/Path;

    .line 1202
    new-instance v1, Lorg/telegram/ui/Components/ButtonBounce;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Components/ButtonBounce;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    .line 1241
    new-instance v1, Lorg/telegram/ui/Components/AnimatedFloat;

    sget-object v8, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x140

    move-object v2, v1

    move-object v3, p1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->selectedT:Lorg/telegram/ui/Components/AnimatedFloat;

    .line 1254
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    .line 1255
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->clickBounds:Landroid/graphics/RectF;

    .line 1205
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method protected draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1265
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1266
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    const v1, 0x3d4ccccd    # 0.05f

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ButtonBounce;->getScale(F)F

    move-result v0

    .line 1267
    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 1269
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1270
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->circlePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 1271
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->circlePath:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget-object v5, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float/2addr v5, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 1272
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->circlePath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 1273
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->paint1:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 1274
    iget-boolean v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->hasColor2:Z

    if-eqz v0, :cond_0

    .line 1275
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->color2Path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 1276
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->color2Path:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1277
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->color2Path:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1278
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->color2Path:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1279
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->color2Path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 1280
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->color2Path:Landroid/graphics/Path;

    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->paint2:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1282
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1284
    iget-boolean v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->hasColor3:Z

    if-eqz v0, :cond_1

    .line 1285
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1286
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const v1, 0x3ea147ae    # 0.315f

    mul-float/2addr v0, v1

    .line 1287
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    .line 1288
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    div-float/2addr v0, v4

    sub-float/2addr v2, v0

    iget-object v3, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    .line 1289
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    sub-float/2addr v3, v0

    iget-object v5, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    .line 1290
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    add-float/2addr v5, v0

    iget-object v6, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    .line 1291
    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    add-float/2addr v6, v0

    .line 1287
    invoke-virtual {v1, v2, v3, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    const/high16 v0, 0x42340000    # 45.0f

    .line 1293
    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {p1, v0, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    const v0, 0x40151eb8    # 2.33f

    .line 1294
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->paint3:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1295
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1298
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->selectedT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->selected:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    .line 1301
    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->backgroundPaint:Landroid/graphics/Paint;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dpf2(F)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1302
    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    .line 1303
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    .line 1304
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v4

    iget-object v5, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float/2addr v5, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v6, -0x40000000    # -2.0f

    invoke-static {v5, v6, v0}, Lorg/telegram/messenger/AndroidUtilities;->lerp(FFF)F

    move-result v0

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->backgroundPaint:Landroid/graphics/Paint;

    .line 1302
    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1309
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public layout(ILandroid/graphics/RectF;)V
    .locals 0

    .line 1257
    iput p1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->id:I

    .line 1258
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounds:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method

.method public layoutClickBounds(Landroid/graphics/RectF;)V
    .locals 1

    .line 1261
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->clickBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method

.method public set(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1213
    iput-boolean v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->hasColor3:Z

    iput-boolean v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->hasColor2:Z

    .line 1214
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->paint1:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public set(Lorg/telegram/messenger/MessagesController$PeerColor;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1228
    :cond_0
    invoke-static {}, Lorg/telegram/ui/ActionBar/Theme;->isCurrentThemeDark()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController$PeerColor;->hasColor2()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController$PeerColor;->hasColor3()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1229
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->paint1:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor2()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1230
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->paint2:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor1()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 1232
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->paint1:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor1()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1233
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->paint2:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor2()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1235
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->paint3:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController$PeerColor;->getColor3()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1236
    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController$PeerColor;->hasColor2()Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->hasColor2:Z

    .line 1237
    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesController$PeerColor;->hasColor3()Z

    move-result p1

    iput-boolean p1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->hasColor3:Z

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 1209
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->backgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setPressed(Z)V
    .locals 1

    .line 1318
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->bounce:Lorg/telegram/ui/Components/ButtonBounce;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ButtonBounce;->setPressed(Z)V

    return-void
.end method

.method public setSelected(ZZ)V
    .locals 1

    .line 1243
    iput-boolean p1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->selected:Z

    if-nez p2, :cond_0

    .line 1245
    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->selectedT:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lorg/telegram/ui/Components/AnimatedFloat;->set(ZZ)F

    .line 1247
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->this$0:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
