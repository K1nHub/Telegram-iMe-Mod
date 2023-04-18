.class Lorg/telegram/ui/ProfileActivity$TopView;
.super Landroid/view/View;
.source "ProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TopView"
.end annotation


# instance fields
.field private currentColor:I

.field private paint:Landroid/graphics/Paint;

.field final synthetic this$0:Lorg/telegram/ui/ProfileActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ProfileActivity;Landroid/content/Context;)V
    .locals 0

    .line 1239
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$TopView;->this$0:Lorg/telegram/ui/ProfileActivity;

    .line 1240
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1237
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$TopView;->paint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v8, p1

    .line 1259
    invoke-static {}, Lorg/telegram/ui/ActionBar/ActionBar;->getCurrentActionBarHeight()I

    move-result v1

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$TopView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$700(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/ActionBar;->getOccupyStatusBar()Z

    move-result v2

    const/4 v9, 0x0

    if-eqz v2, :cond_0

    sget v2, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_0

    :cond_0
    move v2, v9

    :goto_0
    add-int/2addr v1, v2

    .line 1260
    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$TopView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v2}, Lorg/telegram/ui/ProfileActivity;->access$800(Lorg/telegram/ui/ProfileActivity;)F

    move-result v2

    int-to-float v1, v1

    add-float/2addr v2, v1

    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$TopView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$900(Lorg/telegram/ui/ProfileActivity;)I

    move-result v1

    int-to-float v1, v1

    add-float v10, v2, v1

    .line 1262
    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$TopView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$1000(Lorg/telegram/ui/ProfileActivity;)F

    move-result v1

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v1, v7, v1

    mul-float/2addr v1, v10

    float-to-int v11, v1

    const/high16 v12, 0x437f0000    # 255.0f

    if-eqz v11, :cond_4

    .line 1265
    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$TopView;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v1, v1, Lorg/telegram/ui/ProfileActivity;->previousTransitionFragment:Lorg/telegram/ui/Components/ChatActivityInterface;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lorg/telegram/ui/Components/ChatActivityInterface;->getContentView()Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1266
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v4, v9, v9, v1, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 1267
    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$TopView;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v1, v1, Lorg/telegram/ui/ProfileActivity;->previousTransitionFragment:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {v1}, Lorg/telegram/ui/Components/ChatActivityInterface;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$TopView;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v1, v1, Lorg/telegram/ui/ProfileActivity;->previousTransitionFragment:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {v1}, Lorg/telegram/ui/Components/ChatActivityInterface;->getContentView()Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->blurWasDrawn()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$TopView;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v1, v1, Lorg/telegram/ui/ProfileActivity;->previousTransitionFragment:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {v1}, Lorg/telegram/ui/Components/ChatActivityInterface;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1268
    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$TopView;->paint:Landroid/graphics/Paint;

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$TopView;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v2, v2, Lorg/telegram/ui/ProfileActivity;->previousTransitionFragment:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {v2}, Lorg/telegram/ui/Components/ChatActivityInterface;->getResourceProvider()Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    move-result-object v2

    const-string v3, "actionBarDefault"

    invoke-static {v3, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1269
    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$TopView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v8, v4, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 1271
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$TopView;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v1, v1, Lorg/telegram/ui/ProfileActivity;->previousTransitionFragment:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {v1}, Lorg/telegram/ui/Components/ChatActivityInterface;->getContentView()Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v3

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$TopView;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v2, v2, Lorg/telegram/ui/ProfileActivity;->previousTransitionFragment:Lorg/telegram/ui/Components/ChatActivityInterface;

    invoke-interface {v2}, Lorg/telegram/ui/Components/ChatActivityInterface;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v2

    iget-object v5, v2, Lorg/telegram/ui/ActionBar/ActionBar;->blurScrimPaint:Landroid/graphics/Paint;

    const/4 v6, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->drawBlurRect(Landroid/graphics/Canvas;FLandroid/graphics/Rect;Landroid/graphics/Paint;Z)V

    .line 1274
    :cond_2
    :goto_1
    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$TopView;->paint:Landroid/graphics/Paint;

    iget v2, v0, Lorg/telegram/ui/ProfileActivity$TopView;->currentColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1275
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    int-to-float v5, v11

    iget-object v6, v0, Lorg/telegram/ui/ProfileActivity$TopView;->paint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1276
    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$TopView;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget-object v1, v1, Lorg/telegram/ui/ProfileActivity;->previousTransitionFragment:Lorg/telegram/ui/Components/ChatActivityInterface;

    if-eqz v1, :cond_4

    .line 1277
    invoke-interface {v1}, Lorg/telegram/ui/Components/ChatActivityInterface;->getActionBar()Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v1

    .line 1278
    iget-object v2, v1, Lorg/telegram/ui/ActionBar/ActionBar;->menu:Lorg/telegram/ui/ActionBar/ActionBarMenu;

    if-nez v2, :cond_3

    .line 1281
    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/ActionBar;->createMenu()Lorg/telegram/ui/ActionBar/ActionBarMenu;

    move-result-object v2

    :cond_3
    move-object v13, v2

    .line 1284
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v14

    .line 1285
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getX()F

    move-result v2

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getX()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getY()F

    move-result v1

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getY()F

    move-result v3

    add-float/2addr v1, v3

    invoke-virtual {v8, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1286
    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$TopView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$1100(Lorg/telegram/ui/ProfileActivity;)F

    move-result v1

    sub-float/2addr v7, v1

    mul-float/2addr v7, v12

    float-to-int v6, v7

    const/16 v7, 0x1f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 1287
    invoke-virtual {v13, v8}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1288
    invoke-virtual {v8, v14}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_4
    int-to-float v1, v11

    cmpl-float v1, v1, v10

    if-eqz v1, :cond_5

    .line 1292
    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$TopView;->this$0:Lorg/telegram/ui/ProfileActivity;

    const-string v2, "windowBackgroundWhite"

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ProfileActivity;->getThemedColor(Ljava/lang/String;)I

    move-result v1

    .line 1293
    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$TopView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1294
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->rectTmp2:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    float-to-int v2, v10

    invoke-virtual {v4, v9, v11, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1295
    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$TopView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$1200(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ProfileActivity$NestedFrameLayout;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v3

    iget-object v5, v0, Lorg/telegram/ui/ProfileActivity$TopView;->paint:Landroid/graphics/Paint;

    const/4 v6, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->drawBlurRect(Landroid/graphics/Canvas;FLandroid/graphics/Rect;Landroid/graphics/Paint;Z)V

    .line 1298
    :cond_5
    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$TopView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$1300(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1299
    iget-object v1, v0, Lorg/telegram/ui/ProfileActivity$TopView;->this$0:Lorg/telegram/ui/ProfileActivity;

    invoke-static {v1}, Lorg/telegram/ui/ProfileActivity;->access$1400(Lorg/telegram/ui/ProfileActivity;)Lorg/telegram/ui/ActionBar/INavigationLayout;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/ui/ProfileActivity$TopView;->this$0:Lorg/telegram/ui/ProfileActivity;

    iget v2, v2, Lorg/telegram/ui/ProfileActivity;->headerShadowAlpha:F

    mul-float/2addr v2, v12

    float-to-int v2, v2

    float-to-int v3, v10

    invoke-interface {v1, v8, v2, v3}, Lorg/telegram/ui/ActionBar/INavigationLayout;->drawHeaderShadow(Landroid/graphics/Canvas;II)V

    :cond_6
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1245
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/4 v0, 0x3

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 1250
    iget v0, p0, Lorg/telegram/ui/ProfileActivity$TopView;->currentColor:I

    if-eq p1, v0, :cond_0

    .line 1251
    iput p1, p0, Lorg/telegram/ui/ProfileActivity$TopView;->currentColor:I

    .line 1252
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$TopView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1253
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method
