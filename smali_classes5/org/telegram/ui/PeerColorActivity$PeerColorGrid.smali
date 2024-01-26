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
.field private final backgroundPaint:Landroid/graphics/Paint;

.field private buttons:[Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

.field private final currentAccount:I

.field private final dividerPaint:Landroid/graphics/Paint;

.field private needDivider:Z

.field private onColorClick:Lorg/telegram/messenger/Utilities$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/telegram/messenger/Utilities$Callback<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final order:[I

.field private pressedButton:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

.field private final resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

.field private selectedColorId:I

.field private final type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 2

    .line 1691
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1555
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->backgroundPaint:Landroid/graphics/Paint;

    .line 1556
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 p1, 0x7

    new-array p1, p1, [I

    .line 1715
    fill-array-data p1, :array_0

    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->order:[I

    .line 1766
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->dividerPaint:Landroid/graphics/Paint;

    .line 1767
    iput-boolean v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->needDivider:Z

    const/4 p1, 0x0

    .line 1786
    iput p1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->selectedColorId:I

    .line 1692
    iput p2, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->type:I

    .line 1693
    iput p3, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->currentAccount:I

    .line 1694
    iput-object p4, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-void

    nop

    :array_0
    .array-data 4
        0x5
        0x3
        0x1
        0x0
        0x2
        0x4
        0x6
    .end array-data
.end method

.method static synthetic access$4100(Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;)Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;
    .locals 0

    .line 1553
    iget-object p0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    return-object p0
.end method

.method static synthetic access$4200(Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;)I
    .locals 0

    .line 1553
    iget p0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->type:I

    return p0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;)Landroid/graphics/Paint;
    .locals 0

    .line 1553
    iget-object p0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->backgroundPaint:Landroid/graphics/Paint;

    return-object p0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1775
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->buttons:[Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1776
    :goto_0
    iget-object v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->buttons:[Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 1777
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1780
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->needDivider:Z

    if-eqz v0, :cond_1

    .line 1781
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->dividerPaint:Landroid/graphics/Paint;

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_divider:I

    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v1, v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v0, 0x15

    .line 1782
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

    iget-object v7, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->dividerPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1808
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->buttons:[Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v0, v2

    .line 1809
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->buttons:[Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    array-length v4, v3

    if-ge v0, v4, :cond_1

    .line 1810
    aget-object v3, v3, v0

    iget-object v3, v3, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->clickBounds:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1811
    iget-object v3, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->buttons:[Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    aget-object v0, v3, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 1816
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_3

    .line 1817
    iput-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->pressedButton:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    if-eqz v0, :cond_2

    .line 1819
    invoke-virtual {v0, v4}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->setPressed(Z)V

    .line 1821
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 1822
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_3

    .line 1824
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_7

    .line 1825
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->pressedButton:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    if-eq p1, v0, :cond_b

    if-eqz p1, :cond_4

    .line 1827
    invoke-virtual {p1, v2}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->setPressed(Z)V

    :cond_4
    if-eqz v0, :cond_5

    .line 1830
    invoke-virtual {v0, v4}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->setPressed(Z)V

    .line 1832
    :cond_5
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->pressedButton:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    if-eqz p1, :cond_6

    if-eqz v0, :cond_6

    .line 1833
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->onColorClick:Lorg/telegram/messenger/Utilities$Callback;

    if-eqz p1, :cond_6

    .line 1834
    iget v1, v0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    .line 1837
    :cond_6
    iput-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->pressedButton:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    goto :goto_3

    .line 1839
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v4, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_b

    .line 1840
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v4, :cond_9

    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->pressedButton:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    if-eqz p1, :cond_9

    .line 1841
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->onColorClick:Lorg/telegram/messenger/Utilities$Callback;

    if-eqz v0, :cond_9

    .line 1842
    iget p1, p1, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    .line 1845
    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->buttons:[Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    if-eqz p1, :cond_a

    move p1, v2

    .line 1846
    :goto_2
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->buttons:[Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    array-length v3, v0

    if-ge p1, v3, :cond_a

    .line 1847
    aget-object v0, v0, p1

    invoke-virtual {v0, v2}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->setPressed(Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 1850
    :cond_a
    iput-object v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->pressedButton:Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    :cond_b
    :goto_3
    return v4
.end method

.method public getColorId()I
    .locals 1

    .line 1796
    iget v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->selectedColorId:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 12

    .line 1719
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 1721
    iget p2, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    .line 1722
    iget v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->type:I

    if-nez v0, :cond_0

    iget-object p2, p2, Lorg/telegram/messenger/MessagesController;->peerColors:Lorg/telegram/messenger/MessagesController$PeerColors;

    goto :goto_0

    :cond_0
    iget-object p2, p2, Lorg/telegram/messenger/MessagesController;->profilePeerColors:Lorg/telegram/messenger/MessagesController$PeerColors;

    :goto_0
    const/4 v0, 0x0

    if-nez p2, :cond_1

    move v1, v0

    goto :goto_1

    .line 1723
    :cond_1
    iget-object v1, p2, Lorg/telegram/messenger/MessagesController$PeerColors;->colors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1724
    :goto_1
    iget v2, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->type:I

    const/16 v3, 0x8

    if-nez v2, :cond_2

    const/4 v2, 0x7

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    const/16 v4, 0x36

    .line 1726
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    int-to-float v4, v4

    int-to-float v5, p1

    int-to-float v6, v2

    add-int/lit8 v7, v2, 0x1

    int-to-float v7, v7

    const v8, 0x3e943569

    mul-float v9, v7, v8

    add-float/2addr v9, v6

    div-float v9, v5, v9

    invoke-static {v4, v9}, Ljava/lang/Math;->min(FF)F

    move-result v4

    mul-float/2addr v8, v4

    .line 1727
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v8, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const v8, 0x3ea1af28

    mul-float/2addr v8, v4

    const v9, 0x413547ae    # 11.33f

    .line 1728
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 1730
    div-int v9, v1, v2

    int-to-float v10, v9

    mul-float/2addr v10, v4

    const/4 v11, 0x1

    add-int/2addr v9, v11

    int-to-float v9, v9

    mul-float/2addr v9, v8

    add-float/2addr v10, v9

    float-to-int v9, v10

    .line 1733
    invoke-virtual {p0, p1, v9}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 1735
    iget-object p1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->buttons:[Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    if-eqz p1, :cond_3

    array-length p1, p1

    if-eq p1, v1, :cond_5

    .line 1736
    :cond_3
    new-array p1, v1, [Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->buttons:[Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    move p1, v0

    :goto_3
    if-ge p1, v1, :cond_5

    .line 1738
    iget-object v9, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->buttons:[Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    new-instance v10, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    invoke-direct {v10, p0}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;-><init>(Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;)V

    aput-object v10, v9, p1

    if-eqz p2, :cond_4

    if-ltz p1, :cond_4

    .line 1739
    iget-object v9, p2, Lorg/telegram/messenger/MessagesController$PeerColors;->colors:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge p1, v9, :cond_4

    .line 1740
    iget-object v9, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->buttons:[Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    aget-object v9, v9, p1

    iget-object v10, p2, Lorg/telegram/messenger/MessagesController$PeerColors;->colors:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/messenger/MessagesController$PeerColor;

    iget v10, v10, Lorg/telegram/messenger/MessagesController$PeerColor;->id:I

    iput v10, v9, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->id:I

    .line 1741
    iget-object v9, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->buttons:[Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    aget-object v9, v9, p1

    iget-object v10, p2, Lorg/telegram/messenger/MessagesController$PeerColors;->colors:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/messenger/MessagesController$PeerColor;

    invoke-virtual {v9, v10}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->set(Lorg/telegram/messenger/MessagesController$PeerColor;)V

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_5
    mul-float/2addr v6, v4

    mul-float/2addr v7, v3

    add-float/2addr v6, v7

    sub-float/2addr v5, v6

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v5, p1

    add-float/2addr v5, v3

    .line 1747
    iget-object p2, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->buttons:[Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    if-eqz p2, :cond_8

    move p2, v0

    move v1, v5

    move v6, v8

    .line 1749
    :goto_4
    iget-object v7, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->buttons:[Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    array-length v7, v7

    if-ge p2, v7, :cond_8

    .line 1750
    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    add-float v9, v1, v4

    add-float v10, v6, v4

    invoke-virtual {v7, v1, v6, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1751
    iget-object v9, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->buttons:[Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    aget-object v9, v9, p2

    invoke-virtual {v9, v7}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->layout(Landroid/graphics/RectF;)V

    neg-float v9, v3

    div-float/2addr v9, p1

    neg-float v10, v8

    div-float/2addr v10, p1

    .line 1752
    invoke-virtual {v7, v9, v10}, Landroid/graphics/RectF;->inset(FF)V

    .line 1753
    iget-object v9, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->buttons:[Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    aget-object v9, v9, p2

    invoke-virtual {v9, v7}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->layoutClickBounds(Landroid/graphics/RectF;)V

    .line 1754
    iget-object v7, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->buttons:[Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    aget-object v9, v7, p2

    aget-object v7, v7, p2

    iget v7, v7, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->id:I

    iget v10, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->selectedColorId:I

    if-ne v7, v10, :cond_6

    move v7, v11

    goto :goto_5

    :cond_6
    move v7, v0

    :goto_5
    invoke-virtual {v9, v7, v0}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->setSelected(ZZ)V

    .line 1756
    rem-int v7, p2, v2

    add-int/lit8 v9, v2, -0x1

    if-ne v7, v9, :cond_7

    add-float v1, v4, v8

    add-float/2addr v6, v1

    move v1, v5

    goto :goto_6

    :cond_7
    add-float v7, v4, v3

    add-float/2addr v1, v7

    :goto_6
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_8
    return-void
.end method

.method public setDivider(Z)V
    .locals 0

    .line 1769
    iput-boolean p1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->needDivider:Z

    .line 1770
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

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

    .line 1801
    iput-object p1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->onColorClick:Lorg/telegram/messenger/Utilities$Callback;

    return-void
.end method

.method public setSelected(IZ)V
    .locals 4

    .line 1788
    iput p1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->selectedColorId:I

    .line 1789
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->buttons:[Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    .line 1790
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->buttons:[Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 1791
    aget-object v3, v2, v1

    aget-object v2, v2, v1

    iget v2, v2, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->id:I

    if-ne v2, p1, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    move v2, v0

    :goto_1
    invoke-virtual {v3, v2, p2}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->setSelected(ZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateColors()V
    .locals 6

    .line 1698
    iget-object v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->buttons:[Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    if-nez v0, :cond_0

    return-void

    .line 1699
    :cond_0
    iget v0, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    .line 1700
    iget v1, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->type:I

    if-nez v1, :cond_1

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->peerColors:Lorg/telegram/messenger/MessagesController$PeerColors;

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->profilePeerColors:Lorg/telegram/messenger/MessagesController$PeerColors;

    :goto_0
    const/4 v1, 0x0

    .line 1701
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->buttons:[Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    array-length v3, v2

    if-ge v1, v3, :cond_4

    const/4 v3, 0x7

    if-ge v1, v3, :cond_2

    .line 1702
    iget v3, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->type:I

    if-nez v3, :cond_2

    .line 1703
    aget-object v3, v2, v1

    iget-object v4, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->order:[I

    aget v5, v4, v1

    iput v5, v3, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->id:I

    .line 1704
    aget-object v2, v2, v1

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->keys_avatar_nameInMessage:[I

    aget v4, v4, v1

    aget v3, v3, v4

    iget-object v4, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-static {v3, v4}, Lorg/telegram/ui/ActionBar/Theme;->getColor(ILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->set(I)V

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    if-ltz v1, :cond_3

    .line 1707
    iget-object v2, v0, Lorg/telegram/messenger/MessagesController$PeerColors;->colors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 1708
    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->buttons:[Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    aget-object v2, v2, v1

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$PeerColors;->colors:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessagesController$PeerColor;

    iget v3, v3, Lorg/telegram/messenger/MessagesController$PeerColor;->id:I

    iput v3, v2, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->id:I

    .line 1709
    iget-object v2, p0, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid;->buttons:[Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;

    aget-object v2, v2, v1

    iget-object v3, v0, Lorg/telegram/messenger/MessagesController$PeerColors;->colors:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessagesController$PeerColor;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/PeerColorActivity$PeerColorGrid$ColorButton;->set(Lorg/telegram/messenger/MessagesController$PeerColor;)V

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1713
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
