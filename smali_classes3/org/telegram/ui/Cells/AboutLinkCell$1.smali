.class Lorg/telegram/ui/Cells/AboutLinkCell$1;
.super Landroid/widget/TextView;
.source "AboutLinkCell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Cells/AboutLinkCell;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private pressed:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/AboutLinkCell;Landroid/content/Context;)V
    .locals 0

    .line 160
    invoke-direct {p0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 161
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/AboutLinkCell$1;->pressed:Z

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 178
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/AboutLinkCell$1;->pressed:Z

    if-eqz v0, :cond_0

    .line 179
    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->rectTmp:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v1, 0x4

    .line 180
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    int-to-float v1, v1

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_urlPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 182
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 164
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/AboutLinkCell$1;->pressed:Z

    .line 165
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 166
    iput-boolean v3, p0, Lorg/telegram/ui/Cells/AboutLinkCell$1;->pressed:Z

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    .line 168
    iput-boolean v2, p0, Lorg/telegram/ui/Cells/AboutLinkCell$1;->pressed:Z

    .line 170
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lorg/telegram/ui/Cells/AboutLinkCell$1;->pressed:Z

    if-eq v0, v1, :cond_2

    .line 171
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 173
    :cond_2
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/AboutLinkCell$1;->pressed:Z

    if-nez v0, :cond_3

    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    const/4 v2, 0x1

    :cond_4
    return v2
.end method
