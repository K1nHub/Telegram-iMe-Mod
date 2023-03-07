.class public Lorg/telegram/ui/Cells/ArchiveHintInnerCell;
.super Landroid/widget/FrameLayout;
.source "ArchiveHintInnerCell.java"


# instance fields
.field private headerTextView:Landroid/widget/TextView;

.field private imageView:Landroid/widget/ImageView;

.field private imageView2:Landroid/widget/ImageView;

.field private messageTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 10

    .line 27
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ArchiveHintInnerCell;->imageView:Landroid/widget/ImageView;

    .line 30
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const-string v2, "chats_nameMessage_threeLines"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 32
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ArchiveHintInnerCell;->headerTextView:Landroid/widget/TextView;

    .line 33
    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 34
    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchiveHintInnerCell;->headerTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 35
    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchiveHintInnerCell;->headerTextView:Landroid/widget/TextView;

    const-string v2, "fonts/rmedium.ttf"

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 36
    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchiveHintInnerCell;->headerTextView:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 37
    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchiveHintInnerCell;->headerTextView:Landroid/widget/TextView;

    const/4 v3, -0x1

    const/4 v4, -0x2

    const/16 v5, 0x33

    const/16 v6, 0x34

    const/16 v7, 0x4b

    const/16 v8, 0x34

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/ArchiveHintInnerCell;->messageTextView:Landroid/widget/TextView;

    const-string v3, "chats_message"

    .line 40
    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 41
    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchiveHintInnerCell;->messageTextView:Landroid/widget/TextView;

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 42
    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchiveHintInnerCell;->messageTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 43
    iget-object v0, p0, Lorg/telegram/ui/Cells/ArchiveHintInnerCell;->messageTextView:Landroid/widget/TextView;

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/16 v4, 0x33

    const/16 v5, 0x34

    const/16 v6, 0x6e

    const/16 v7, 0x34

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p2, :cond_2

    if-eq p2, v1, :cond_1

    const/4 p1, 0x2

    if-eq p2, p1, :cond_0

    goto/16 :goto_0

    .line 67
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Cells/ArchiveHintInnerCell;->imageView:Landroid/widget/ImageView;

    const/4 v0, -0x2

    const/4 v1, -0x2

    const/16 v2, 0x31

    const/4 v3, 0x0

    const/16 v4, 0x12

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    iget-object p1, p0, Lorg/telegram/ui/Cells/ArchiveHintInnerCell;->headerTextView:Landroid/widget/TextView;

    sget p2, Lorg/telegram/messenger/R$string;->ArchiveHintHeader3:I

    const-string v0, "ArchiveHintHeader3"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object p1, p0, Lorg/telegram/ui/Cells/ArchiveHintInnerCell;->messageTextView:Landroid/widget/TextView;

    sget p2, Lorg/telegram/messenger/R$string;->ArchiveHintText3:I

    const-string v0, "ArchiveHintText3"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object p1, p0, Lorg/telegram/ui/Cells/ArchiveHintInnerCell;->imageView:Landroid/widget/ImageView;

    sget p2, Lorg/telegram/messenger/R$drawable;->chats_archive_pin:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 60
    :cond_1
    iget-object p1, p0, Lorg/telegram/ui/Cells/ArchiveHintInnerCell;->imageView:Landroid/widget/ImageView;

    const/4 v0, -0x2

    const/4 v1, -0x2

    const/16 v2, 0x31

    const/4 v3, 0x0

    const/16 v4, 0x12

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    iget-object p1, p0, Lorg/telegram/ui/Cells/ArchiveHintInnerCell;->headerTextView:Landroid/widget/TextView;

    sget p2, Lorg/telegram/messenger/R$string;->ArchiveHintHeader2:I

    const-string v0, "ArchiveHintHeader2"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object p1, p0, Lorg/telegram/ui/Cells/ArchiveHintInnerCell;->messageTextView:Landroid/widget/TextView;

    sget p2, Lorg/telegram/messenger/R$string;->ArchiveHintText2:I

    const-string v0, "ArchiveHintText2"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object p1, p0, Lorg/telegram/ui/Cells/ArchiveHintInnerCell;->imageView:Landroid/widget/ImageView;

    sget p2, Lorg/telegram/messenger/R$drawable;->chats_archive_muted:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 47
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Cells/ArchiveHintInnerCell;->imageView:Landroid/widget/ImageView;

    const/4 v0, -0x2

    const/4 v1, -0x2

    const/16 v2, 0x31

    const/4 v3, 0x0

    const/16 v4, 0x14

    const/16 v5, 0x8

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    new-instance p2, Landroid/widget/ImageView;

    invoke-direct {p2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lorg/telegram/ui/Cells/ArchiveHintInnerCell;->imageView2:Landroid/widget/ImageView;

    .line 50
    sget p1, Lorg/telegram/messenger/R$drawable;->chats_archive_arrow:I

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 51
    iget-object p1, p0, Lorg/telegram/ui/Cells/ArchiveHintInnerCell;->imageView2:Landroid/widget/ImageView;

    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    const-string v0, "chats_unreadCounter"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, v0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 52
    iget-object p1, p0, Lorg/telegram/ui/Cells/ArchiveHintInnerCell;->imageView2:Landroid/widget/ImageView;

    const/4 v0, -0x2

    const/4 v1, -0x2

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IIIIIII)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    iget-object p1, p0, Lorg/telegram/ui/Cells/ArchiveHintInnerCell;->headerTextView:Landroid/widget/TextView;

    sget p2, Lorg/telegram/messenger/R$string;->ArchiveHintHeader1:I

    const-string v0, "ArchiveHintHeader1"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object p1, p0, Lorg/telegram/ui/Cells/ArchiveHintInnerCell;->messageTextView:Landroid/widget/TextView;

    sget p2, Lorg/telegram/messenger/R$string;->ArchiveHintText1:I

    const-string v0, "ArchiveHintText1"

    invoke-static {v0, p2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object p1, p0, Lorg/telegram/ui/Cells/ArchiveHintInnerCell;->imageView:Landroid/widget/ImageView;

    sget p2, Lorg/telegram/messenger/R$drawable;->chats_archive_box:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method
