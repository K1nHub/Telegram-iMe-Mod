.class public Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;
.super Landroid/widget/FrameLayout;
.source "SelectAnimatedEmojiDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/SelectAnimatedEmojiDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmojiPackExpand"
.end annotation


# instance fields
.field public textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
    .locals 3

    .line 2551
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2552
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;->textView:Landroid/widget/TextView;

    const/4 p1, 0x1

    const/high16 v1, 0x41400000    # 12.0f

    .line 2553
    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2554
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;->textView:Landroid/widget/TextView;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2555
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;->textView:Landroid/widget/TextView;

    const/16 v0, 0xb

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    const-string v1, "chat_emojiPanelStickerSetName"

    invoke-static {v1, p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)I

    move-result p2

    const/16 v1, 0x63

    invoke-static {p2, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p2

    invoke-static {v0, p2}, Lorg/telegram/ui/ActionBar/Theme;->createRoundRectDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2556
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;->textView:Landroid/widget/TextView;

    const-string p2, "fonts/rmedium.ttf"

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2557
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;->textView:Landroid/widget/TextView;

    const/4 p2, 0x4

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    const v1, 0x3fd47ae1    # 1.66f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 2558
    iget-object p1, p0, Lorg/telegram/ui/SelectAnimatedEmojiDialog$EmojiPackExpand;->textView:Landroid/widget/TextView;

    const/4 p2, -0x2

    const/16 v0, 0x11

    invoke-static {p2, p2, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
