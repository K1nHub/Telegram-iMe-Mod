.class Lorg/telegram/ui/Components/ClearHistoryAlert$1;
.super Landroidx/core/widget/NestedScrollView;
.source "ClearHistoryAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ClearHistoryAlert;-><init>(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$Chat;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private ignoreLayout:Z

.field final synthetic this$0:Lorg/telegram/ui/Components/ClearHistoryAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ClearHistoryAlert;Landroid/content/Context;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lorg/telegram/ui/Components/ClearHistoryAlert$1;->this$0:Lorg/telegram/ui/Components/ClearHistoryAlert;

    invoke-direct {p0, p2}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 203
    iget-object v0, p0, Lorg/telegram/ui/Components/ClearHistoryAlert$1;->this$0:Lorg/telegram/ui/Components/ClearHistoryAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ClearHistoryAlert;->access$000(Lorg/telegram/ui/Components/ClearHistoryAlert;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ClearHistoryAlert$1;->this$0:Lorg/telegram/ui/Components/ClearHistoryAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ClearHistoryAlert;->access$400(Lorg/telegram/ui/Components/ClearHistoryAlert;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getScrollY()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 204
    iget-object v1, p0, Lorg/telegram/ui/Components/ClearHistoryAlert$1;->this$0:Lorg/telegram/ui/Components/ClearHistoryAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ClearHistoryAlert;->access$600(Lorg/telegram/ui/Components/ClearHistoryAlert;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ClearHistoryAlert$1;->this$0:Lorg/telegram/ui/Components/ClearHistoryAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/ClearHistoryAlert;->access$200(Lorg/telegram/ui/Components/ClearHistoryAlert;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lorg/telegram/ui/Components/ClearHistoryAlert$1;->this$0:Lorg/telegram/ui/Components/ClearHistoryAlert;

    invoke-static {v4}, Lorg/telegram/ui/Components/ClearHistoryAlert;->access$500(Lorg/telegram/ui/Components/ClearHistoryAlert;)I

    move-result v4

    add-int/2addr v3, v4

    const/16 v4, 0x13

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 205
    iget-object v0, p0, Lorg/telegram/ui/Components/ClearHistoryAlert$1;->this$0:Lorg/telegram/ui/Components/ClearHistoryAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ClearHistoryAlert;->access$600(Lorg/telegram/ui/Components/ClearHistoryAlert;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 146
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ClearHistoryAlert$1;->this$0:Lorg/telegram/ui/Components/ClearHistoryAlert;

    invoke-static {v0}, Lorg/telegram/ui/Components/ClearHistoryAlert;->access$000(Lorg/telegram/ui/Components/ClearHistoryAlert;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ClearHistoryAlert$1;->this$0:Lorg/telegram/ui/Components/ClearHistoryAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ClearHistoryAlert;->access$000(Lorg/telegram/ui/Components/ClearHistoryAlert;)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 147
    iget-object p1, p0, Lorg/telegram/ui/Components/ClearHistoryAlert$1;->this$0:Lorg/telegram/ui/Components/ClearHistoryAlert;

    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet;->dismiss()V

    const/4 p1, 0x1

    return p1

    .line 150
    :cond_0
    invoke-super {p0, p1}, Landroidx/core/widget/NestedScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 189
    invoke-super/range {p0 .. p5}, Landroidx/core/widget/NestedScrollView;->onLayout(ZIIII)V

    .line 190
    iget-object p1, p0, Lorg/telegram/ui/Components/ClearHistoryAlert$1;->this$0:Lorg/telegram/ui/Components/ClearHistoryAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ClearHistoryAlert;->access$100(Lorg/telegram/ui/Components/ClearHistoryAlert;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .line 166
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 167
    iget-object v1, p0, Lorg/telegram/ui/Components/ClearHistoryAlert$1;->this$0:Lorg/telegram/ui/Components/ClearHistoryAlert;

    invoke-static {v1}, Lorg/telegram/ui/Components/ClearHistoryAlert;->access$200(Lorg/telegram/ui/Components/ClearHistoryAlert;)Landroid/widget/LinearLayout;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v4, p1

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Landroidx/core/widget/NestedScrollView;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 168
    iget-object p2, p0, Lorg/telegram/ui/Components/ClearHistoryAlert$1;->this$0:Lorg/telegram/ui/Components/ClearHistoryAlert;

    invoke-static {p2}, Lorg/telegram/ui/Components/ClearHistoryAlert;->access$200(Lorg/telegram/ui/Components/ClearHistoryAlert;)Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p2

    .line 169
    div-int/lit8 v1, v0, 0x5

    mul-int/lit8 v1, v1, 0x3

    sub-int v2, v0, v1

    .line 171
    iget-object v3, p0, Lorg/telegram/ui/Components/ClearHistoryAlert$1;->this$0:Lorg/telegram/ui/Components/ClearHistoryAlert;

    invoke-static {v3}, Lorg/telegram/ui/Components/ClearHistoryAlert;->access$300(Lorg/telegram/ui/Components/ClearHistoryAlert;)Z

    move-result v3

    if-nez v3, :cond_1

    sub-int v3, p2, v2

    const/16 v4, 0x5a

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    if-lt v3, v5, :cond_1

    div-int/lit8 v3, v0, 0x2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    add-int/2addr v3, v4

    if-ge p2, v3, :cond_0

    goto :goto_0

    .line 174
    :cond_0
    div-int/lit8 p2, p2, 0x2

    const/16 v3, 0x6c

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr p2, v3

    if-ge v2, p2, :cond_2

    :cond_1
    :goto_0
    sub-int v1, v0, p2

    .line 179
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result p2

    if-eq p2, v1, :cond_3

    const/4 p2, 0x1

    .line 180
    iput-boolean p2, p0, Lorg/telegram/ui/Components/ClearHistoryAlert$1;->ignoreLayout:Z

    const/4 p2, 0x0

    .line 181
    invoke-virtual {p0, p2, v1, p2, p2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 182
    iput-boolean p2, p0, Lorg/telegram/ui/Components/ClearHistoryAlert$1;->ignoreLayout:Z

    :cond_3
    const/high16 p2, 0x40000000    # 2.0f

    .line 184
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroidx/core/widget/NestedScrollView;->onMeasure(II)V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 210
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/core/widget/NestedScrollView;->onScrollChanged(IIII)V

    .line 211
    iget-object p1, p0, Lorg/telegram/ui/Components/ClearHistoryAlert$1;->this$0:Lorg/telegram/ui/Components/ClearHistoryAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ClearHistoryAlert;->access$100(Lorg/telegram/ui/Components/ClearHistoryAlert;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/telegram/ui/Components/ClearHistoryAlert$1;->this$0:Lorg/telegram/ui/Components/ClearHistoryAlert;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->isDismissed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroidx/core/widget/NestedScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public requestLayout()V
    .locals 1

    .line 195
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ClearHistoryAlert$1;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 198
    :cond_0
    invoke-super {p0}, Landroidx/core/widget/NestedScrollView;->requestLayout()V

    return-void
.end method

.method public setTranslationY(F)V
    .locals 0

    .line 160
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 161
    iget-object p1, p0, Lorg/telegram/ui/Components/ClearHistoryAlert$1;->this$0:Lorg/telegram/ui/Components/ClearHistoryAlert;

    invoke-static {p1}, Lorg/telegram/ui/Components/ClearHistoryAlert;->access$100(Lorg/telegram/ui/Components/ClearHistoryAlert;)V

    return-void
.end method
