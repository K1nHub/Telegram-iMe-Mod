.class Lorg/telegram/ui/CalendarActivity$4;
.super Landroid/view/View;
.source "CalendarActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/CalendarActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/CalendarActivity;

.field final synthetic val$daysOfWeek:[Ljava/lang/String;

.field final synthetic val$headerShadowDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lorg/telegram/ui/CalendarActivity;Landroid/content/Context;[Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lorg/telegram/ui/CalendarActivity$4;->this$0:Lorg/telegram/ui/CalendarActivity;

    iput-object p3, p0, Lorg/telegram/ui/CalendarActivity$4;->val$daysOfWeek:[Ljava/lang/String;

    iput-object p4, p0, Lorg/telegram/ui/CalendarActivity$4;->val$headerShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 229
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 230
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40e00000    # 7.0f

    div-float/2addr v0, v1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x7

    if-ge v2, v3, :cond_0

    int-to-float v3, v2

    mul-float/2addr v3, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, v0, v4

    add-float/2addr v3, v5

    .line 233
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    const/4 v6, 0x2

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v4

    .line 234
    iget-object v4, p0, Lorg/telegram/ui/CalendarActivity$4;->val$daysOfWeek:[Ljava/lang/String;

    aget-object v4, v4, v2

    const/4 v6, 0x5

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget-object v6, p0, Lorg/telegram/ui/CalendarActivity$4;->this$0:Lorg/telegram/ui/CalendarActivity;

    iget-object v6, v6, Lorg/telegram/ui/CalendarActivity;->textPaint2:Landroid/text/TextPaint;

    invoke-virtual {p1, v4, v3, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 236
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity$4;->val$headerShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const/4 v3, 0x3

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 237
    iget-object v0, p0, Lorg/telegram/ui/CalendarActivity$4;->val$headerShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method
