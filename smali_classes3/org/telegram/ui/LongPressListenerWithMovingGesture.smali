.class public Lorg/telegram/ui/LongPressListenerWithMovingGesture;
.super Ljava/lang/Object;
.source "LongPressListenerWithMovingGesture.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field gestureDetector2:Lorg/telegram/ui/Components/GestureDetector2;

.field private location:[I

.field rect:Landroid/graphics/Rect;

.field private selectedMenuView:Landroid/view/View;

.field subItemClicked:Z

.field submenu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->rect:Landroid/graphics/Rect;

    .line 19
    new-instance v0, Lorg/telegram/ui/Components/GestureDetector2;

    new-instance v1, Lorg/telegram/ui/LongPressListenerWithMovingGesture$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/LongPressListenerWithMovingGesture$1;-><init>(Lorg/telegram/ui/LongPressListenerWithMovingGesture;)V

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/GestureDetector2;-><init>(Lorg/telegram/ui/Components/GestureDetector2$OnGestureListener;)V

    iput-object v0, p0, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->gestureDetector2:Lorg/telegram/ui/Components/GestureDetector2;

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 81
    iput-object v1, p0, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->location:[I

    const/4 v1, 0x1

    .line 85
    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/GestureDetector2;->setIsLongpressEnabled(Z)V

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/LongPressListenerWithMovingGesture;)Landroid/view/View;
    .locals 0

    .line 12
    iget-object p0, p0, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->selectedMenuView:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public onLongPress()V
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    .line 91
    iput-object p1, p0, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->view:Landroid/view/View;

    .line 92
    iget-object p1, p0, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->gestureDetector2:Lorg/telegram/ui/Components/GestureDetector2;

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/GestureDetector2;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 93
    iget-object p1, p0, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->submenu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->subItemClicked:Z

    if-nez p1, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 94
    iget-object p1, p0, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->view:Landroid/view/View;

    iget-object v1, p0, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->location:[I

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 95
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object v1, p0, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->location:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    add-float/2addr p1, v1

    .line 96
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v3, p0, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->location:[I

    aget v3, v3, v0

    int-to-float v3, v3

    add-float/2addr v1, v3

    .line 97
    iget-object v3, p0, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->submenu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->location:[I

    invoke-virtual {v3, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 98
    iget-object v3, p0, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->location:[I

    aget v4, v3, v2

    int-to-float v4, v4

    sub-float/2addr p1, v4

    .line 99
    aget v3, v3, v0

    int-to-float v3, v3

    sub-float/2addr v1, v3

    const/4 v3, 0x0

    .line 100
    iput-object v3, p0, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->selectedMenuView:Landroid/view/View;

    .line 101
    iget-object v3, p0, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->submenu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;

    const/4 v4, 0x0

    .line 102
    :goto_0
    invoke-virtual {v3}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemsCount()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 103
    invoke-virtual {v3, v4}, Lorg/telegram/ui/ActionBar/ActionBarPopupWindow$ActionBarPopupWindowLayout;->getItemAt(I)Landroid/view/View;

    move-result-object v5

    .line 104
    iget-object v6, p0, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->rect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 105
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 106
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v5}, Landroid/view/View;->isClickable()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 107
    iget-object v6, p0, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->rect:Landroid/graphics/Rect;

    float-to-int v7, p1

    float-to-int v8, v1

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    const/16 v7, 0x15

    if-nez v6, :cond_0

    .line 108
    invoke-virtual {v5, v2}, Landroid/view/View;->setPressed(Z)V

    .line 109
    invoke-virtual {v5, v2}, Landroid/view/View;->setSelected(Z)V

    .line 110
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v6, v7, :cond_3

    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 111
    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, v2, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    goto :goto_1

    .line 114
    :cond_0
    invoke-virtual {v5, v0}, Landroid/view/View;->setPressed(Z)V

    .line 115
    invoke-virtual {v5, v0}, Landroid/view/View;->setSelected(Z)V

    .line 116
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v7, :cond_2

    if-ne v6, v7, :cond_1

    .line 117
    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 118
    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6, v0, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 120
    :cond_1
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    int-to-float v6, v6

    sub-float v6, v1, v6

    invoke-virtual {v5, p1, v6}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 122
    :cond_2
    iput-object v5, p0, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->selectedMenuView:Landroid/view/View;

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 127
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v0, :cond_5

    iget-boolean p1, p0, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->subItemClicked:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->selectedMenuView:Landroid/view/View;

    if-eqz p1, :cond_5

    .line 128
    invoke-virtual {p1}, Landroid/view/View;->callOnClick()Z

    .line 129
    iput-boolean v0, p0, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->subItemClicked:Z

    :cond_5
    return v0
.end method

.method public setSubmenu(Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lorg/telegram/ui/LongPressListenerWithMovingGesture;->submenu:Lorg/telegram/ui/ActionBar/ActionBarPopupWindow;

    return-void
.end method
