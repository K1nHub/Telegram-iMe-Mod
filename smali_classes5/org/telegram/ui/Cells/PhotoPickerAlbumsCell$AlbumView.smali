.class Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;
.super Landroid/widget/FrameLayout;
.source "PhotoPickerAlbumsCell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumView"
.end annotation


# instance fields
.field private countTextView:Landroid/widget/TextView;

.field private imageView:Lorg/telegram/ui/Components/BackupImageView;

.field private nameTextView:Landroid/widget/TextView;

.field private selector:Landroid/view/View;

.field final synthetic this$0:Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;Landroid/content/Context;)V
    .locals 13

    .line 50
    iput-object p1, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->this$0:Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;

    .line 51
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 53
    new-instance p1, Lorg/telegram/ui/Components/BackupImageView;

    invoke-direct {p1, p2}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    const/4 v0, -0x1

    .line 54
    invoke-static {v0, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    new-instance p1, Landroid/widget/LinearLayout;

    invoke-direct {p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 57
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 58
    sget v2, Lorg/telegram/messenger/R$drawable;->album_shadow:I

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const/16 v2, 0x3c

    const/16 v3, 0x53

    .line 59
    invoke-static {v0, v2, v3}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->nameTextView:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41500000    # 13.0f

    .line 62
    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 63
    iget-object v2, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 64
    iget-object v2, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 65
    iget-object v2, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->nameTextView:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 66
    iget-object v2, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 67
    iget-object v2, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->nameTextView:Landroid/widget/TextView;

    const/16 v5, 0x50

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 68
    iget-object v2, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->nameTextView:Landroid/widget/TextView;

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/high16 v8, 0x3f800000    # 1.0f

    const/16 v9, 0x8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x5

    invoke-static/range {v6 .. v12}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIFIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {p1, v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->countTextView:Landroid/widget/TextView;

    .line 71
    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 72
    iget-object v2, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->countTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    iget-object v2, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->countTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 74
    iget-object v2, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->countTextView:Landroid/widget/TextView;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 75
    iget-object v2, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->countTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 76
    iget-object v2, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->countTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 77
    iget-object v2, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->countTextView:Landroid/widget/TextView;

    const/4 v3, -0x2

    const/4 v4, -0x1

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x7

    const/4 v8, 0x5

    invoke-static/range {v3 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIIIII)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    new-instance p1, Landroid/view/View;

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->selector:Landroid/view/View;

    .line 80
    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getSelectorDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    iget-object p1, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->selector:Landroid/view/View;

    invoke-static {v0, v0}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;)Lorg/telegram/ui/Components/BackupImageView;
    .locals 0

    .line 43
    iget-object p0, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    return-object p0
.end method

.method static synthetic access$200(Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;)Landroid/widget/TextView;
    .locals 0

    .line 43
    iget-object p0, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->nameTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;)Landroid/widget/TextView;
    .locals 0

    .line 43
    iget-object p0, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->countTextView:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 94
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->hasNotThumb()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getCurrentAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 95
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->this$0:Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;->access$000(Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;)Landroid/graphics/Paint;

    move-result-object v0

    sget v1, Lorg/telegram/ui/ActionBar/Theme;->key_chat_attachPhotoBackground:I

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 96
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v5, v0

    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->imageView:Lorg/telegram/ui/Components/BackupImageView;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->this$0:Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;

    invoke-static {v0}, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;->access$000(Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;)Landroid/graphics/Paint;

    move-result-object v7

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 86
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 87
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->selector:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 89
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
