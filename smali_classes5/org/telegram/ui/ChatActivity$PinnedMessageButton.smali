.class Lorg/telegram/ui/ChatActivity$PinnedMessageButton;
.super Landroid/widget/TextView;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PinnedMessageButton"
.end annotation


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;)V
    .locals 3

    .line 10386
    invoke-direct {p0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    .line 10388
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 10389
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setLines(I)V

    .line 10390
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 10391
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 10392
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_buttonText:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10393
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_featuredStickers_addButton:I

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BaseFragment;->getThemedColor(I)I

    move-result p1

    new-array v0, p2, [F

    const/high16 v1, 0x41800000    # 16.0f

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-static {p1, v0}, Lorg/telegram/ui/ActionBar/Theme$AdaptiveRipple;->filledRect(I[F)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/high16 p1, 0x41600000    # 14.0f

    .line 10394
    invoke-virtual {p0, p2, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string p1, "fonts/rmedium.ttf"

    .line 10395
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/16 p1, 0x11

    .line 10396
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    const/16 p1, 0xe

    .line 10397
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    invoke-virtual {p0, p2, v2, p1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2

    .line 10403
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    const v1, 0x3ee66666    # 0.45f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/high16 v0, -0x80000000

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 10402
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    return-void
.end method
