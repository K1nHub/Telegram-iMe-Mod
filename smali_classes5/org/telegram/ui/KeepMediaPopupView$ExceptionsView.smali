.class Lorg/telegram/ui/KeepMediaPopupView$ExceptionsView;
.super Landroid/widget/FrameLayout;
.source "KeepMediaPopupView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/KeepMediaPopupView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExceptionsView"
.end annotation


# instance fields
.field avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

.field ignoreLayout:Z

.field final synthetic this$0:Lorg/telegram/ui/KeepMediaPopupView;

.field titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/KeepMediaPopupView;Landroid/content/Context;)V
    .locals 9

    .line 203
    iput-object p1, p0, Lorg/telegram/ui/KeepMediaPopupView$ExceptionsView;->this$0:Lorg/telegram/ui/KeepMediaPopupView;

    .line 204
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 205
    new-instance p1, Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-direct {p1, p2}, Lorg/telegram/ui/ActionBar/SimpleTextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/KeepMediaPopupView$ExceptionsView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v0, 0x10

    .line 206
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextSize(I)V

    .line 207
    iget-object p1, p0, Lorg/telegram/ui/KeepMediaPopupView$ExceptionsView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setEllipsizeByGradient(Z)V

    .line 208
    iget-object p1, p0, Lorg/telegram/ui/KeepMediaPopupView$ExceptionsView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v1, 0x44

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setRightPadding(I)V

    .line 209
    iget-object p1, p0, Lorg/telegram/ui/KeepMediaPopupView$ExceptionsView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const-string v1, "dialogTextBlack"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/ActionBar/SimpleTextView;->setTextColor(I)V

    .line 211
    iget-object p1, p0, Lorg/telegram/ui/KeepMediaPopupView$ExceptionsView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x0

    const/4 v2, -0x2

    const/16 v3, 0x13

    const/16 v4, 0x13

    const/4 v5, 0x0

    const/16 v6, 0x13

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    new-instance p1, Lorg/telegram/ui/Components/AvatarsImageView;

    const/4 v1, 0x0

    invoke-direct {p1, p2, v1}, Lorg/telegram/ui/Components/AvatarsImageView;-><init>(Landroid/content/Context;Z)V

    iput-object p1, p0, Lorg/telegram/ui/KeepMediaPopupView$ExceptionsView;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    .line 214
    iget-object p1, p1, Lorg/telegram/ui/Components/AvatarsImageView;->avatarsDrawable:Lorg/telegram/ui/Components/AvatarsDrawable;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/Components/AvatarsDrawable;->setShowSavedMessages(Z)V

    .line 215
    iget-object p1, p0, Lorg/telegram/ui/KeepMediaPopupView$ExceptionsView;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    const/16 p2, 0xb

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AvatarsImageView;->setStyle(I)V

    .line 216
    iget-object p1, p0, Lorg/telegram/ui/KeepMediaPopupView$ExceptionsView;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    const/16 p2, 0x16

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/telegram/ui/Components/AvatarsImageView;->setAvatarsTextSize(I)V

    .line 217
    iget-object p1, p0, Lorg/telegram/ui/KeepMediaPopupView$ExceptionsView;->avatarsImageView:Lorg/telegram/ui/Components/AvatarsImageView;

    const/16 v2, 0x38

    const/4 v3, -0x1

    const/16 v4, 0x15

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string p1, "listSelectorSDK21"

    .line 219
    invoke-static {p1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x4

    invoke-static {p1, v1, p2}, Lorg/telegram/ui/ActionBar/Theme;->createRadSelectorDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3

    .line 226
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_0

    .line 228
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_0
    const/4 v0, 0x1

    .line 230
    iput-boolean v0, p0, Lorg/telegram/ui/KeepMediaPopupView$ExceptionsView;->ignoreLayout:Z

    .line 231
    iget-object v0, p0, Lorg/telegram/ui/KeepMediaPopupView$ExceptionsView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 232
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 233
    iget-object v0, p0, Lorg/telegram/ui/KeepMediaPopupView$ExceptionsView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lorg/telegram/ui/KeepMediaPopupView$ExceptionsView;->titleView:Lorg/telegram/ui/ActionBar/SimpleTextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 235
    iput-boolean v1, p0, Lorg/telegram/ui/KeepMediaPopupView$ExceptionsView;->ignoreLayout:Z

    .line 236
    iget-object v0, p0, Lorg/telegram/ui/KeepMediaPopupView$ExceptionsView;->this$0:Lorg/telegram/ui/KeepMediaPopupView;

    invoke-static {v0}, Lorg/telegram/ui/KeepMediaPopupView;->access$100(Lorg/telegram/ui/KeepMediaPopupView;)V

    .line 237
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 242
    iget-boolean v0, p0, Lorg/telegram/ui/KeepMediaPopupView$ExceptionsView;->ignoreLayout:Z

    if-eqz v0, :cond_0

    return-void

    .line 245
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
