.class public Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;
.super Landroid/view/View;
.source "PeerColorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PeerColorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PeerColorGrid"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;
    }
.end annotation


# instance fields
.field private buttons:[Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

.field private currentAccount:I

.field private onColorClick:Lorg/telegram/messenger/Utilities$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private pressedButton:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

.field private selectedColorId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1327
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 1391
    iput p1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->selectedColorId:I

    .line 1328
    iput p2, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->currentAccount:I

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1383
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->buttons:[Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1384
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->buttons:[Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 1385
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x15

    .line 1388
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v3, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v4, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr v1, v0

    int-to-float v5, v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v6, v0

    sget-object v7, Lorg/telegram/ui/ActionBar/Theme;->dividerPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1413
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->buttons:[Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v0, v2

    .line 1414
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->buttons:[Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 1415
    aget-object v3, v3, v0

    iget-object v3, v3, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->clickBounds:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1416
    iget-object v3, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->buttons:[Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    aget-object v0, v3, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 1421
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_3

    .line 1422
    iput-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->pressedButton:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    if-eqz v0, :cond_2

    .line 1424
    invoke-virtual {v0, v4}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->setPressed(Z)V

    .line 1426
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 1427
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_3

    .line 1429
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_7

    .line 1430
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->pressedButton:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    if-eq p1, v0, :cond_b

    if-eqz p1, :cond_4

    .line 1432
    invoke-virtual {p1, v2}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->setPressed(Z)V

    :cond_4
    if-eqz v0, :cond_5

    .line 1435
    invoke-virtual {v0, v4}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->setPressed(Z)V

    .line 1437
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->pressedButton:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    if-eqz p1, :cond_6

    if-eqz v0, :cond_6

    .line 1438
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->onColorClick:Lorg/telegram/messenger/Utilities$Callback;

    if-eqz p1, :cond_6

    .line 1439
    iget v1, v0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    .line 1442
    :cond_6
    iput-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->pressedButton:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    goto :goto_3

    .line 1444
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v4, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_b

    .line 1445
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v4, :cond_9

    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->pressedButton:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    if-eqz p1, :cond_9

    .line 1446
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->onColorClick:Lorg/telegram/messenger/Utilities$Callback;

    if-eqz v0, :cond_9

    .line 1447
    iget p1, p1, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    .line 1450
    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->buttons:[Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    if-eqz p1, :cond_a

    move p1, v2

    .line 1451
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->buttons:[Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    array-length v3, v0

    if-ge p1, v3, :cond_a

    .line 1452
    aget-object v0, v0, p1

    invoke-virtual {v0, v2}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->setPressed(Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 1455
    :cond_a
    iput-object v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->pressedButton:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    :cond_b
    :goto_3
    return v4
.end method

.method public getColorId()I
    .locals 1

    .line 1401
    iget v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->selectedColorId:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 11

    .line 1333
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 1335
    iget p2, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object p2, p2, Lorg/telegram/messenger/MessagesController;->peerColors:Lorg/telegram/messenger/MessagesController$PeerColors;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move v1, v0

    goto :goto_0

    .line 1336
    :cond_0
    iget-object v1, p2, Lorg/telegram/messenger/MessagesController$PeerColors;->colors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    const/4 v2, 0x7

    add-int/2addr v1, v2

    const/16 v3, 0x36

    .line 1339
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, p1

    const v5, 0x41150d5a

    div-float v5, v4, v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const v5, 0x3e943569

    mul-float/2addr v5, v3

    const v6, 0x3ea1af28

    mul-float/2addr v6, v3

    .line 1343
    div-int/lit8 v7, v1, 0x7

    int-to-float v8, v7

    mul-float/2addr v8, v3

    const/4 v9, 0x1

    add-int/2addr v7, v9

    int-to-float v7, v7

    mul-float/2addr v7, v6

    add-float/2addr v8, v7

    float-to-int v7, v8

    .line 1346
    invoke-virtual {p0, p1, v7}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 1348
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->buttons:[Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    if-eqz p1, :cond_1

    array-length p1, p1

    if-eq p1, v1, :cond_4

    .line 1349
    :cond_1
    new-array p1, v1, [Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->buttons:[Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    move p1, v0

    :goto_1
    if-ge p1, v1, :cond_4

    .line 1351
    iget-object v7, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->buttons:[Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    new-instance v8, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    invoke-direct {v8, p0}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;-><init>(Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;)V

    aput-object v8, v7, p1

    .line 1352
    iget-object v7, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->buttons:[Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    aget-object v7, v7, p1

    sget v8, Lorg/telegram/ui/ActionBar/Theme;->key_windowBackgroundWhite:I

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->setBackgroundColor(I)V

    if-ge p1, v2, :cond_2

    .line 1354
    iget-object v7, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->buttons:[Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    aget-object v7, v7, p1

    sget-object v8, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_nameInMessage:[I

    aget v8, v8, p1

    invoke-static {v8}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->set(I)V

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_3

    .line 1356
    iget-object v7, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->buttons:[Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    aget-object v7, v7, p1

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/MessagesController$PeerColors;->getColor(I)Lorg/telegram/messenger/MessagesController$PeerColor;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->set(Lorg/telegram/messenger/MessagesController$PeerColor;)V

    :cond_3
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    const/high16 p1, 0x40e00000    # 7.0f

    mul-float/2addr p1, v3

    const/high16 p2, 0x41000000    # 8.0f

    mul-float/2addr p2, v5

    add-float/2addr p1, p2

    sub-float/2addr v4, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v4, p1

    add-float/2addr v4, v5

    .line 1362
    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->buttons:[Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    if-eqz p2, :cond_7

    move p2, v0

    move v1, v4

    move v2, v6

    .line 1364
    :goto_3
    iget-object v7, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->buttons:[Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    array-length v7, v7

    if-ge p2, v7, :cond_7

    .line 1365
    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    add-float v8, v1, v3

    add-float v10, v2, v3

    invoke-virtual {v7, v1, v2, v8, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1366
    iget-object v8, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->buttons:[Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    aget-object v8, v8, p2

    invoke-virtual {v8, p2, v7}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->layout(ILandroid/graphics/RectF;)V

    neg-float v8, v5

    div-float/2addr v8, p1

    neg-float v10, v6

    div-float/2addr v10, p1

    .line 1367
    invoke-virtual {v7, v8, v10}, Landroid/graphics/RectF;->inset(FF)V

    .line 1368
    iget-object v8, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->buttons:[Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    aget-object v8, v8, p2

    invoke-virtual {v8, v7}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->layoutClickBounds(Landroid/graphics/RectF;)V

    .line 1369
    iget-object v7, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->buttons:[Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    aget-object v7, v7, p2

    iget v8, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->selectedColorId:I

    if-ne p2, v8, :cond_5

    move v8, v9

    goto :goto_4

    :cond_5
    move v8, v0

    :goto_4
    invoke-virtual {v7, v8, v0}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->setSelected(ZZ)V

    .line 1371
    rem-int/lit8 v7, p2, 0x7

    const/4 v8, 0x6

    if-ne v7, v8, :cond_6

    add-float v1, v3, v6

    add-float/2addr v2, v1

    move v1, v4

    goto :goto_5

    :cond_6
    add-float v7, v3, v5

    add-float/2addr v1, v7

    :goto_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_7
    return-void
.end method

.method public setOnColorClick(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1406
    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->onColorClick:Lorg/telegram/messenger/Utilities$Callback;

    return-void
.end method

.method public setSelected(I)V
    .locals 5

    .line 1393
    iput p1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->selectedColorId:I

    .line 1394
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->buttons:[Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    .line 1395
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->buttons:[Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 1396
    aget-object v2, v2, v1

    const/4 v3, 0x1

    if-ne v1, p1, :cond_0

    move v4, v3

    goto :goto_1

    :cond_0
    move v4, v0

    :goto_1
    invoke-virtual {v2, v4, v3}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->setSelected(ZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
