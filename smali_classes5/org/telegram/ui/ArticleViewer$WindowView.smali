.class Lorg/telegram/ui/ArticleViewer$WindowView;
.super Landroid/widget/FrameLayout;
.source "ArticleViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WindowView"
.end annotation


# instance fields
.field private alpha:F

.field private bHeight:I

.field private bWidth:I

.field private bX:I

.field private bY:I

.field private final blackPaint:Landroid/graphics/Paint;

.field private innerTranslationX:F

.field private maybeStartTracking:Z

.field private movingPage:Z

.field private selfLayout:Z

.field private startMovingHeaderHeight:I

.field private startedTracking:Z

.field private startedTrackingPointerId:I

.field private startedTrackingX:I

.field private startedTrackingY:I

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;

.field private tracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V
    .locals 0

    .line 737
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    .line 738
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 720
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->blackPaint:Landroid/graphics/Paint;

    return-void
.end method

.method static synthetic access$4700(Lorg/telegram/ui/ArticleViewer$WindowView;)Z
    .locals 0

    .line 718
    iget-boolean p0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->movingPage:Z

    return p0
.end method

.method static synthetic access$4702(Lorg/telegram/ui/ArticleViewer$WindowView;Z)Z
    .locals 0

    .line 718
    iput-boolean p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->movingPage:Z

    return p1
.end method

.method static synthetic access$5302(Lorg/telegram/ui/ArticleViewer$WindowView;Z)Z
    .locals 0

    .line 718
    iput-boolean p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->startedTracking:Z

    return p1
.end method

.method static synthetic access$9000(Lorg/telegram/ui/ArticleViewer$WindowView;)I
    .locals 0

    .line 718
    iget p0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->startMovingHeaderHeight:I

    return p0
.end method

.method private prepareForMoving(Landroid/view/MotionEvent;)V
    .locals 3

    const/4 v0, 0x0

    .line 944
    iput-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->maybeStartTracking:Z

    const/4 v1, 0x1

    .line 945
    iput-boolean v1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->startedTracking:Z

    .line 946
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->startedTrackingX:I

    .line 947
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->access$4100(Lorg/telegram/ui/ArticleViewer;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, v1, :cond_0

    .line 948
    iput-boolean v1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->movingPage:Z

    .line 949
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->access$2700(Lorg/telegram/ui/ArticleViewer;)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->startMovingHeaderHeight:I

    .line 950
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->access$3300(Lorg/telegram/ui/ArticleViewer;)[Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    aget-object p1, p1, v1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 951
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->access$3300(Lorg/telegram/ui/ArticleViewer;)[Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    aget-object p1, p1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 952
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->access$3300(Lorg/telegram/ui/ArticleViewer;)[Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    aget-object p1, p1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 953
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->access$3300(Lorg/telegram/ui/ArticleViewer;)[Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    aget-object p1, p1, v0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$4200(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 954
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->access$4100(Lorg/telegram/ui/ArticleViewer;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer;->access$4100(Lorg/telegram/ui/ArticleViewer;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$WebPage;

    const/4 v2, -0x1

    invoke-static {p1, v0, v1, v2}, Lorg/telegram/ui/ArticleViewer;->access$4300(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLRPC$WebPage;ZI)V

    goto :goto_0

    .line 956
    :cond_0
    iput-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->movingPage:Z

    .line 958
    :goto_0
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-virtual {p1}, Lorg/telegram/ui/ArticleViewer;->cancelCheckLongPress()V

    return-void
.end method


# virtual methods
.method public dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3

    .line 744
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$2400(Lorg/telegram/ui/ArticleViewer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowInsets;

    .line 745
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v1, p1}, Lorg/telegram/ui/ArticleViewer;->access$2402(Lorg/telegram/ui/ArticleViewer;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 746
    invoke-virtual {v0}, Landroid/view/WindowInsets;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/WindowInsets;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 747
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$2300(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ArticleViewer$WindowView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 748
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$2300(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ArticleViewer$WindowView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 751
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$2500(Lorg/telegram/ui/ArticleViewer;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 752
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$2500(Lorg/telegram/ui/ArticleViewer;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 754
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 755
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 756
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-static {v1, v2}, Lorg/telegram/ui/ArticleViewer;->access$2602(Lorg/telegram/ui/ArticleViewer;Z)Z

    .line 760
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p1

    return-object p1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1102
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1103
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$2400(Lorg/telegram/ui/ArticleViewer;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1104
    :cond_0
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->bWidth:I

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->bHeight:I

    if-eqz v0, :cond_2

    .line 1105
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->blackPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer;->access$2300(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ArticleViewer$WindowView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ArticleViewer$WindowView;->getAlpha()F

    move-result v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1106
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->bX:I

    if-nez v0, :cond_1

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->bY:I

    if-nez v1, :cond_1

    int-to-float v3, v0

    int-to-float v4, v1

    .line 1107
    iget v2, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->bWidth:I

    add-int/2addr v0, v2

    int-to-float v5, v0

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->bHeight:I

    add-int/2addr v1, v0

    int-to-float v6, v1

    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->blackPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    int-to-float v0, v0

    .line 1109
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v1

    sub-float v3, v0, v1

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->bY:I

    int-to-float v4, v0

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->bX:I

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->bWidth:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v1

    sub-float v5, v0, v1

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->bY:I

    iget v1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->bHeight:I

    add-int/2addr v0, v1

    int-to-float v6, v0

    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->blackPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 1157
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1158
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->access$5600(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1159
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->access$5600(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    .line 1160
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->access$5600(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/Components/EditTextBoldCursor;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    goto :goto_0

    .line 1162
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Lorg/telegram/ui/ArticleViewer;->close(ZZ)V

    :goto_0
    return v1

    .line 1166
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 800
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->pinchToZoomHelper:Lorg/telegram/ui/PinchToZoomHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/PinchToZoomHelper;->isInOverlayMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 801
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$3000(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getX()F

    move-result v0

    neg-float v0, v0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$3000(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getY()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 802
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->pinchToZoomHelper:Lorg/telegram/ui/PinchToZoomHelper;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/PinchToZoomHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 804
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getOverlayView(Landroid/content/Context;)Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    move-result-object v0

    .line 805
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 806
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer;->access$3000(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getX()F

    move-result v2

    neg-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer;->access$3000(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getY()F

    move-result v3

    neg-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 808
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, v2, Lorg/telegram/ui/ArticleViewer;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInSelectionMode()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, v2, Lorg/telegram/ui/ArticleViewer;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getOverlayView(Landroid/content/Context;)Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v3

    .line 812
    :cond_1
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->checkOnTap(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 813
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 816
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer;->access$3000(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTop()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer;->access$3000(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_5

    .line 817
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/TextSelectionHelper;->getOverlayView(Landroid/content/Context;)Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/TextSelectionHelper$TextSelectionOverlay;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 818
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_4
    return v3

    .line 823
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 10

    .line 913
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    .line 914
    iget v1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->innerTranslationX:F

    float-to-int v1, v1

    .line 916
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 917
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4, v0, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 918
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p3

    .line 919
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    if-eqz v1, :cond_1

    .line 921
    iget-object p4, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p4}, Lorg/telegram/ui/ArticleViewer;->access$3000(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object p4

    if-ne p2, p4, :cond_1

    const p4, 0x3f4ccccd    # 0.8f

    sub-int v2, v0, v1

    int-to-float v2, v2

    int-to-float v0, v0

    div-float v0, v2, v0

    .line 922
    invoke-static {p4, v0}, Ljava/lang/Math;->min(FF)F

    move-result p4

    const/4 v0, 0x0

    cmpg-float v3, p4, v0

    if-gez v3, :cond_0

    move p4, v0

    .line 926
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer;->access$3900(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/Paint;

    move-result-object v3

    const/high16 v4, 0x43190000    # 153.0f

    mul-float/2addr p4, v4

    float-to-int p4, p4

    shl-int/lit8 p4, p4, 0x18

    invoke-virtual {v3, p4}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    int-to-float v7, v1

    .line 927
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p4

    int-to-float v8, p4

    iget-object p4, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p4}, Lorg/telegram/ui/ArticleViewer;->access$3900(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/Paint;

    move-result-object v9

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/16 p4, 0x14

    .line 929
    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p4

    int-to-float p4, p4

    div-float/2addr v2, p4

    const/high16 p4, 0x3f800000    # 1.0f

    invoke-static {v2, p4}, Ljava/lang/Math;->min(FF)F

    move-result p4

    invoke-static {v0, p4}, Ljava/lang/Math;->max(FF)F

    move-result p4

    .line 930
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$4000(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer;->access$4000(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int v2, v1, v2

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    invoke-virtual {v0, v2, v3, v1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 931
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p2}, Lorg/telegram/ui/ArticleViewer;->access$4000(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p4, v0

    float-to-int p4, p4

    invoke-virtual {p2, p4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 932
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p2}, Lorg/telegram/ui/ArticleViewer;->access$4000(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return p3
.end method

.method public getAlpha()F
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1152
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->alpha:F

    return v0
.end method

.method public getInnerTranslationX()F
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 940
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->innerTranslationX:F

    return v0
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 962
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$4400(Lorg/telegram/ui/ArticleViewer;)Landroid/animation/AnimatorSet;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$4500(Lorg/telegram/ui/ArticleViewer;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$3100(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInSelectionMode()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 963
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->startedTracking:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->maybeStartTracking:Z

    if-nez v2, :cond_0

    .line 964
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->startedTrackingPointerId:I

    .line 965
    iput-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->maybeStartTracking:Z

    .line 966
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->startedTrackingX:I

    .line 967
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->startedTrackingY:I

    .line 968
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->tracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_11

    .line 969
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_4

    :cond_0
    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz p1, :cond_4

    .line 971
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v3, :cond_4

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iget v6, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->startedTrackingPointerId:I

    if-ne v5, v6, :cond_4

    .line 972
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->tracker:Landroid/view/VelocityTracker;

    if-nez v3, :cond_1

    .line 973
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->tracker:Landroid/view/VelocityTracker;

    .line 975
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v5, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->startedTrackingX:I

    int-to-float v5, v5

    sub-float/2addr v3, v5

    float-to-int v3, v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 976
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    iget v6, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->startedTrackingY:I

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 977
    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->tracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 978
    iget-boolean v6, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->maybeStartTracking:Z

    if-eqz v6, :cond_2

    iget-boolean v6, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->startedTracking:Z

    if-nez v6, :cond_2

    int-to-float v6, v3

    const v7, 0x3ecccccd    # 0.4f

    invoke-static {v7, v0}, Lorg/telegram/messenger/AndroidUtilities;->getPixelsInCM(FZ)F

    move-result v0

    cmpl-float v0, v6, v0

    if-ltz v0, :cond_2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    div-int/2addr v0, v2

    if-le v0, v5, :cond_2

    .line 979
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer$WindowView;->prepareForMoving(Landroid/view/MotionEvent;)V

    goto/16 :goto_4

    .line 980
    :cond_2
    iget-boolean p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->startedTracking:Z

    if-eqz p1, :cond_11

    .line 981
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1, v4}, Lorg/telegram/ui/ArticleViewer;->access$1102(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$DrawingText;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    .line 982
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1, v4}, Lorg/telegram/ui/ArticleViewer;->access$4602(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;)Landroid/view/View;

    .line 983
    iget-boolean p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->movingPage:Z

    if-eqz p1, :cond_3

    .line 984
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->access$3300(Lorg/telegram/ui/ArticleViewer;)[Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    aget-object p1, p1, v1

    int-to-float v0, v3

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTranslationX(F)V

    goto/16 :goto_4

    .line 986
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->access$3000(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object p1

    int-to-float v0, v3

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 987
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ArticleViewer$WindowView;->setInnerTranslationX(F)V

    goto/16 :goto_4

    :cond_4
    if-eqz p1, :cond_f

    .line 990
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iget v6, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->startedTrackingPointerId:I

    if-ne v5, v6, :cond_f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-eq v5, v2, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v2, v0, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v5, 0x6

    if-ne v2, v5, :cond_f

    .line 991
    :cond_5
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->tracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_6

    .line 992
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->tracker:Landroid/view/VelocityTracker;

    .line 994
    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->tracker:Landroid/view/VelocityTracker;

    const/16 v5, 0x3e8

    invoke-virtual {v2, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 995
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->tracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    .line 996
    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->tracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v5

    .line 997
    iget-boolean v6, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->startedTracking:Z

    const v7, 0x455ac000    # 3500.0f

    if-nez v6, :cond_7

    cmpl-float v6, v2, v7

    if-ltz v6, :cond_7

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v2, v6

    if-lez v6, :cond_7

    .line 998
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer$WindowView;->prepareForMoving(Landroid/view/MotionEvent;)V

    .line 1000
    :cond_7
    iget-boolean p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->startedTracking:Z

    if-eqz p1, :cond_e

    .line 1001
    iget-boolean p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->movingPage:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->access$3300(Lorg/telegram/ui/ArticleViewer;)[Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    aget-object p1, p1, v1

    goto :goto_0

    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->access$3000(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object p1

    .line 1002
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v6

    .line 1003
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x40400000    # 3.0f

    div-float/2addr v8, v9

    cmpg-float v8, v6, v8

    if-gez v8, :cond_a

    cmpg-float v7, v2, v7

    if-ltz v7, :cond_9

    cmpg-float v2, v2, v5

    if-gez v2, :cond_a

    :cond_9
    move v2, v0

    goto :goto_1

    :cond_a
    move v2, v1

    .line 1005
    :goto_1
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    if-nez v2, :cond_c

    .line 1007
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    sub-float v6, v7, v6

    .line 1008
    iget-boolean v7, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->movingPage:Z

    if-eqz v7, :cond_b

    new-array v3, v0, [Landroid/animation/Animator;

    .line 1009
    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    .line 1010
    invoke-static {v7}, Lorg/telegram/ui/ArticleViewer;->access$3300(Lorg/telegram/ui/ArticleViewer;)[Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    aget-object v7, v7, v1

    sget-object v8, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v9, v0, [F

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    aput v10, v9, v1

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v3, v1

    .line 1009
    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_2

    :cond_b
    new-array v3, v3, [Landroid/animation/Animator;

    .line 1013
    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    .line 1014
    invoke-static {v7}, Lorg/telegram/ui/ArticleViewer;->access$3000(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object v7

    sget-object v8, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v9, v0, [F

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    int-to-float v10, v10

    aput v10, v9, v1

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v3, v1

    sget-object v7, Lorg/telegram/ui/ArticleViewer;->ARTICLE_VIEWER_INNER_TRANSLATION_X:Landroid/util/Property;

    new-array v8, v0, [F

    .line 1015
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    aput v9, v8, v1

    invoke-static {p0, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v3, v0

    .line 1013
    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_2

    .line 1020
    :cond_c
    iget-boolean v7, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->movingPage:Z

    const/4 v8, 0x0

    if-eqz v7, :cond_d

    new-array v3, v0, [Landroid/animation/Animator;

    .line 1021
    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    .line 1022
    invoke-static {v7}, Lorg/telegram/ui/ArticleViewer;->access$3300(Lorg/telegram/ui/ArticleViewer;)[Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v7

    aget-object v7, v7, v1

    sget-object v9, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v10, v0, [F

    aput v8, v10, v1

    invoke-static {v7, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v3, v1

    .line 1021
    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_2

    :cond_d
    new-array v3, v3, [Landroid/animation/Animator;

    .line 1025
    iget-object v7, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    .line 1026
    invoke-static {v7}, Lorg/telegram/ui/ArticleViewer;->access$3000(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object v7

    sget-object v9, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v10, v0, [F

    aput v8, v10, v1

    invoke-static {v7, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v3, v1

    sget-object v7, Lorg/telegram/ui/ArticleViewer;->ARTICLE_VIEWER_INNER_TRANSLATION_X:Landroid/util/Property;

    new-array v9, v0, [F

    aput v8, v9, v1

    .line 1027
    invoke-static {p0, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v3, v0

    .line 1025
    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_2
    const/high16 v1, 0x43480000    # 200.0f

    .line 1032
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v1, p1

    mul-float/2addr v1, v6

    float-to-int p1, v1

    const/16 v1, 0x32

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-long v6, p1

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1033
    new-instance p1, Lorg/telegram/ui/ArticleViewer$WindowView$1;

    invoke-direct {p1, p0, v2}, Lorg/telegram/ui/ArticleViewer$WindowView$1;-><init>(Lorg/telegram/ui/ArticleViewer$WindowView;Z)V

    invoke-virtual {v5, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1072
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 1073
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1, v0}, Lorg/telegram/ui/ArticleViewer;->access$4502(Lorg/telegram/ui/ArticleViewer;Z)Z

    goto :goto_3

    .line 1075
    :cond_e
    iput-boolean v1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->maybeStartTracking:Z

    .line 1076
    iput-boolean v1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->startedTracking:Z

    .line 1077
    iput-boolean v1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->movingPage:Z

    .line 1079
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->tracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_11

    .line 1080
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 1081
    iput-object v4, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->tracker:Landroid/view/VelocityTracker;

    goto :goto_4

    :cond_f
    if-nez p1, :cond_11

    .line 1084
    iput-boolean v1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->maybeStartTracking:Z

    .line 1085
    iput-boolean v1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->startedTracking:Z

    .line 1086
    iput-boolean v1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->movingPage:Z

    .line 1087
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->tracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_10

    .line 1088
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    .line 1089
    iput-object v4, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->tracker:Landroid/view/VelocityTracker;

    .line 1091
    :cond_10
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->isInSelectionMode()Z

    move-result p1

    if-nez p1, :cond_11

    .line 1092
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer;->textSelectionHelper:Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleTextSelectionHelper;

    invoke-virtual {p1}, Lorg/telegram/ui/Cells/TextSelectionHelper;->clear()V

    .line 1095
    :cond_11
    :goto_4
    iget-boolean p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->startedTracking:Z

    return p1

    :cond_12
    return v1
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 871
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 872
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/ArticleViewer;->access$3602(Lorg/telegram/ui/ArticleViewer;Z)Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 877
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 878
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/telegram/ui/ArticleViewer;->access$3602(Lorg/telegram/ui/ArticleViewer;Z)Z

    .line 879
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 880
    invoke-virtual {v0, v1}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->release(Ljava/lang/Runnable;)Z

    .line 881
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    iput-object v1, v0, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    .line 883
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    iput-object v1, v0, Lorg/telegram/ui/ArticleViewer;->currentPlayer:Lorg/telegram/ui/ArticleViewer$BlockVideoCell;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1117
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    .line 1118
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    .line 1119
    iget v3, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->innerTranslationX:F

    int-to-float v10, v0

    int-to-float v11, v1

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer;->access$4200(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/Paint;

    move-result-object v7

    const/4 v4, 0x0

    move-object v2, p1

    move v5, v10

    move v6, v11

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1120
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer;->access$2400(Lorg/telegram/ui/ArticleViewer;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1121
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer;->access$2400(Lorg/telegram/ui/ArticleViewer;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowInsets;

    .line 1122
    iget v5, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->innerTranslationX:F

    const/4 v6, 0x0

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v3

    int-to-float v8, v3

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer;->access$5400(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/Paint;

    move-result-object v9

    move-object v4, p1

    move v7, v10

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1123
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer;->access$2600(Lorg/telegram/ui/ArticleViewer;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1124
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v5, 0x0

    const/4 v6, 0x0

    int-to-float v7, v3

    .line 1126
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer;->access$5400(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/Paint;

    move-result-object v9

    move-object v4, p1

    move v8, v11

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1128
    :cond_0
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v3

    if-eqz v3, :cond_1

    sub-int/2addr v0, v3

    int-to-float v5, v0

    const/4 v6, 0x0

    .line 1130
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$5400(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/Paint;

    move-result-object v9

    move-object v4, p1

    move v7, v10

    move v8, v11

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    const/4 v5, 0x0

    .line 1133
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v0

    sub-int/2addr v1, v0

    int-to-float v6, v1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$5500(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/Paint;

    move-result-object v9

    move-object v4, p1

    move v7, v10

    move v8, v11

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 894
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$3700(Lorg/telegram/ui/ArticleViewer;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ArticleViewer$WindowView;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 829
    iget-boolean p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->selfLayout:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    sub-int/2addr p4, p2

    .line 833
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->access$3200(Lorg/telegram/ui/ArticleViewer;)I

    move-result p1

    const/4 p2, 0x0

    if-eq p1, p4, :cond_3

    move p1, p2

    .line 834
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$3300(Lorg/telegram/ui/ArticleViewer;)[Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_2

    .line 835
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$1700(Lorg/telegram/ui/ArticleViewer;)[Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$3400(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const/4 v2, -0x1

    .line 836
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 839
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1, p4}, Lorg/telegram/ui/ArticleViewer;->access$3202(Lorg/telegram/ui/ArticleViewer;I)I

    .line 843
    :cond_3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_6

    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->access$2400(Lorg/telegram/ui/ArticleViewer;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 844
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->access$2400(Lorg/telegram/ui/ArticleViewer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowInsets;

    .line 845
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    .line 847
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v1

    if-eqz v1, :cond_4

    .line 848
    iget p3, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->bWidth:I

    sub-int/2addr p4, p3

    iput p4, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->bX:I

    .line 849
    iput p2, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->bY:I

    goto :goto_2

    .line 850
    :cond_4
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result p4

    if-eqz p4, :cond_5

    .line 851
    iput p2, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->bX:I

    .line 852
    iput p2, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->bY:I

    goto :goto_2

    .line 854
    :cond_5
    iput p2, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->bX:I

    sub-int/2addr p5, p3

    .line 855
    iget p3, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->bHeight:I

    sub-int/2addr p5, p3

    iput p5, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->bY:I

    .line 857
    :goto_2
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result p1

    add-int/2addr p2, p1

    move p1, p2

    move p2, v0

    goto :goto_3

    :cond_6
    move p1, p2

    .line 861
    :goto_3
    iget-object p3, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p3}, Lorg/telegram/ui/ArticleViewer;->access$3000(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object p3

    iget-object p4, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p4}, Lorg/telegram/ui/ArticleViewer;->access$3000(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p2

    iget-object p5, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p5}, Lorg/telegram/ui/ArticleViewer;->access$3000(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object p5

    invoke-virtual {p5}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p5

    add-int/2addr p5, p1

    invoke-virtual {p3, p2, p1, p4, p5}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 862
    iget-object p3, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p3}, Lorg/telegram/ui/ArticleViewer;->access$3100(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object p3

    iget-object p4, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p4}, Lorg/telegram/ui/ArticleViewer;->access$3100(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p2

    iget-object p5, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p5}, Lorg/telegram/ui/ArticleViewer;->access$3100(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object p5

    invoke-virtual {p5}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p5

    add-int/2addr p5, p1

    invoke-virtual {p3, p2, p1, p4, p5}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 863
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->access$3500(Lorg/telegram/ui/ArticleViewer;)Landroid/animation/AnimatorSet;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 864
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->access$3500(Lorg/telegram/ui/ArticleViewer;)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 865
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/telegram/ui/ArticleViewer;->access$3502(Lorg/telegram/ui/ArticleViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    :cond_7
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 765
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 766
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 767
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer;->access$2400(Lorg/telegram/ui/ArticleViewer;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 768
    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 769
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer;->access$2400(Lorg/telegram/ui/ArticleViewer;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowInsets;

    .line 770
    sget-boolean v3, Lorg/telegram/messenger/AndroidUtilities;->incorrectDisplaySizeFix:Z

    if-eqz v3, :cond_1

    .line 771
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    if-le p2, v3, :cond_0

    move p2, v3

    .line 774
    :cond_0
    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr p2, v3

    .line 776
    :cond_1
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    sub-int/2addr p2, v3

    .line 777
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr p1, v3

    .line 778
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v3

    if-eqz v3, :cond_2

    .line 779
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->bWidth:I

    .line 780
    iput p2, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->bHeight:I

    goto :goto_0

    .line 781
    :cond_2
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v3

    if-eqz v3, :cond_3

    .line 782
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->bWidth:I

    .line 783
    iput p2, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->bHeight:I

    goto :goto_0

    .line 785
    :cond_3
    iput p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->bWidth:I

    .line 786
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v3

    iput v3, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->bHeight:I

    .line 788
    :goto_0
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    sub-int/2addr p2, v2

    goto :goto_1

    .line 790
    :cond_4
    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 792
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer;->access$2800(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer;->access$2700(Lorg/telegram/ui/ArticleViewer;)I

    move-result v3

    const/16 v4, 0x38

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    sub-int/2addr v3, v4

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    const/4 v4, 0x0

    if-ge v0, v1, :cond_5

    sget v0, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    goto :goto_2

    :cond_5
    move v0, v4

    :goto_2
    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setAdditionalYOffset(I)V

    .line 793
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    const/16 v2, 0x64

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    sub-int/2addr v1, v2

    if-ge p2, v1, :cond_6

    const/4 v4, 0x1

    :cond_6
    invoke-static {v0, v4}, Lorg/telegram/ui/ArticleViewer;->access$2902(Lorg/telegram/ui/ArticleViewer;Z)Z

    .line 794
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$3000(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->measure(II)V

    .line 795
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$3100(Lorg/telegram/ui/ArticleViewer;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/widget/FrameLayout;->measure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 899
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$3700(Lorg/telegram/ui/ArticleViewer;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ArticleViewer$WindowView;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 888
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ArticleViewer$WindowView;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    .line 889
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1140
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$4200(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1141
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$5400(Lorg/telegram/ui/ArticleViewer;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1142
    iput p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->alpha:F

    .line 1143
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->access$2500(Lorg/telegram/ui/ArticleViewer;)Landroid/app/Activity;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/LaunchActivity;

    if-eqz p1, :cond_2

    .line 1144
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->access$2500(Lorg/telegram/ui/ArticleViewer;)Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/LaunchActivity;

    iget-object p1, p1, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$3800(Lorg/telegram/ui/ArticleViewer;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->alpha:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->innerTranslationX:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowDrawContent(Z)V

    .line 1146
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setInnerTranslationX(F)V
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 904
    iput p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->innerTranslationX:F

    .line 905
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->access$2500(Lorg/telegram/ui/ArticleViewer;)Landroid/app/Activity;

    move-result-object p1

    instance-of p1, p1, Lorg/telegram/ui/LaunchActivity;

    if-eqz p1, :cond_2

    .line 906
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->access$2500(Lorg/telegram/ui/ArticleViewer;)Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/LaunchActivity;

    iget-object p1, p1, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$3800(Lorg/telegram/ui/ArticleViewer;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->alpha:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$WindowView;->innerTranslationX:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->setAllowDrawContent(Z)V

    .line 908
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
