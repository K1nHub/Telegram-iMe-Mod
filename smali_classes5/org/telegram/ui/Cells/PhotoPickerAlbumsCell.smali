.class public Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;
.super Landroid/widget/FrameLayout;
.source "PhotoPickerAlbumsCell.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;,
        Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$PhotoPickerAlbumsCellDelegate;
    }
.end annotation


# instance fields
.field private albumEntries:[Lorg/telegram/messenger/MediaController$AlbumEntry;

.field private albumViews:[Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;

.field private albumsCount:I

.field private backgroundPaint:Landroid/graphics/Paint;

.field private delegate:Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$PhotoPickerAlbumsCellDelegate;


# direct methods
.method public static synthetic $r8$lambda$bTA9ys7joYC2Oh1oVmLbcO8d0mc(Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 102
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;->backgroundPaint:Landroid/graphics/Paint;

    const/4 v0, 0x4

    new-array v1, v0, [Lorg/telegram/messenger/MediaController$AlbumEntry;

    .line 103
    iput-object v1, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;->albumEntries:[Lorg/telegram/messenger/MediaController$AlbumEntry;

    new-array v1, v0, [Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;

    .line 104
    iput-object v1, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;->albumViews:[Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 106
    iget-object v2, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;->albumViews:[Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;

    new-instance v3, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;-><init>(Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;Landroid/content/Context;)V

    aput-object v3, v2, v1

    .line 107
    iget-object v2, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;->albumViews:[Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 108
    iget-object v2, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;->albumViews:[Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 109
    iget-object v2, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;->albumViews:[Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;

    aget-object v2, v2, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 110
    iget-object v2, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;->albumViews:[Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;

    aget-object v2, v2, v1

    new-instance v3, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;)Landroid/graphics/Paint;
    .locals 0

    .line 31
    iget-object p0, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;->backgroundPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 2

    .line 111
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;->delegate:Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$PhotoPickerAlbumsCellDelegate;

    if-eqz v0, :cond_0

    .line 112
    iget-object v1, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;->albumEntries:[Lorg/telegram/messenger/MediaController$AlbumEntry;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aget-object p1, v1, p1

    invoke-interface {v0, p1}, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$PhotoPickerAlbumsCellDelegate;->didSelectAlbum(Lorg/telegram/messenger/MediaController$AlbumEntry;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 4

    .line 155
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result p2

    const/16 v0, 0xc

    const/4 v1, 0x4

    if-eqz p2, :cond_0

    const/16 p2, 0x1ea

    .line 156
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p2

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr p2, v0

    iget v0, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;->albumsCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    mul-int/2addr v0, v2

    sub-int/2addr p2, v0

    iget v0, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;->albumsCount:I

    div-int/2addr p2, v0

    goto :goto_0

    .line 158
    :cond_0
    sget-object p2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int/2addr p2, v0

    iget v0, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;->albumsCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    mul-int/2addr v0, v2

    sub-int/2addr p2, v0

    iget v0, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;->albumsCount:I

    div-int/2addr p2, v0

    :goto_0
    const/4 v0, 0x0

    .line 161
    :goto_1
    iget v2, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;->albumsCount:I

    if-ge v0, v2, :cond_1

    .line 162
    iget-object v2, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;->albumViews:[Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 163
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 164
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v3, p2

    mul-int/2addr v3, v0

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 165
    iput p2, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 166
    iput p2, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v3, 0x33

    .line 167
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 168
    iget-object v3, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;->albumViews:[Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 171
    :cond_1
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr v0, p2

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setAlbum(ILorg/telegram/messenger/MediaController$AlbumEntry;)V
    .locals 7

    .line 130
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;->albumEntries:[Lorg/telegram/messenger/MediaController$AlbumEntry;

    aput-object p2, v0, p1

    if-eqz p2, :cond_2

    .line 133
    iget-object v0, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;->albumViews:[Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;

    aget-object p1, v0, p1

    .line 134
    invoke-static {p1}, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->access$100(Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/BackupImageView;->setOrientation(IZ)V

    .line 135
    iget-object v0, p2, Lorg/telegram/messenger/MediaController$AlbumEntry;->coverPhoto:Lorg/telegram/messenger/MediaController$PhotoEntry;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 136
    invoke-static {p1}, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->access$100(Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    iget-object v3, p2, Lorg/telegram/messenger/MediaController$AlbumEntry;->coverPhoto:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget v4, v3, Lorg/telegram/messenger/MediaController$PhotoEntry;->orientation:I

    iget v3, v3, Lorg/telegram/messenger/MediaController$PhotoEntry;->invert:I

    invoke-virtual {v0, v4, v3, v2}, Lorg/telegram/ui/Components/BackupImageView;->setOrientation(IIZ)V

    .line 137
    iget-object v0, p2, Lorg/telegram/messenger/MediaController$AlbumEntry;->coverPhoto:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-boolean v0, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->isVideo:Z

    const/4 v3, 0x0

    const-string v4, ":"

    if-eqz v0, :cond_0

    .line 138
    invoke-static {p1}, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->access$100(Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "vthumb://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p2, Lorg/telegram/messenger/MediaController$AlbumEntry;->coverPhoto:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget v6, v6, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Lorg/telegram/messenger/MediaController$AlbumEntry;->coverPhoto:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v4, v4, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_attachEmptyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4, v3, v5}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 140
    :cond_0
    invoke-static {p1}, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->access$100(Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "thumb://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p2, Lorg/telegram/messenger/MediaController$AlbumEntry;->coverPhoto:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget v6, v6, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Lorg/telegram/messenger/MediaController$AlbumEntry;->coverPhoto:Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget-object v4, v4, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lorg/telegram/ui/ActionBar/Theme;->chat_attachEmptyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4, v3, v5}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 143
    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->access$100(Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    sget-object v3, Lorg/telegram/ui/ActionBar/Theme;->chat_attachEmptyDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/BackupImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 145
    :goto_0
    invoke-static {p1}, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->access$200(Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p2, Lorg/telegram/messenger/MediaController$AlbumEntry;->bucketName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    invoke-static {p1}, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;->access$300(Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;)Landroid/widget/TextView;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    iget-object p2, p2, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    const-string p2, "%d"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 148
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;->albumViews:[Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;

    aget-object p1, p2, p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public setAlbumsCount(I)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 119
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;->albumViews:[Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$AlbumView;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 120
    aget-object v2, v2, v1

    if-ge v1, p1, :cond_0

    move v3, v0

    goto :goto_1

    :cond_0
    const/4 v3, 0x4

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 122
    :cond_1
    iput p1, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;->albumsCount:I

    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$PhotoPickerAlbumsCellDelegate;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell;->delegate:Lorg/telegram/ui/Cells/PhotoPickerAlbumsCell$PhotoPickerAlbumsCellDelegate;

    return-void
.end method
