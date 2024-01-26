.class public Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;
.super Ljava/lang/Object;
.source "StoryRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/recorder/StoryRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SourceView"
.end annotation


# instance fields
.field backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field backgroundImageReceiver:Lorg/telegram/messenger/ImageReceiver;

.field backgroundPaint:Landroid/graphics/Paint;

.field hasShadow:Z

.field iconDrawable:Landroid/graphics/drawable/Drawable;

.field iconSize:I

.field rounding:F

.field screenRect:Landroid/graphics/RectF;

.field type:I

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 264
    iput v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->type:I

    .line 266
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->screenRect:Landroid/graphics/RectF;

    return-void
.end method

.method public static fromAvatarImage(Lorg/telegram/ui/ProfileActivity$AvatarImageView;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;
    .locals 9

    if-eqz p0, :cond_1

    .line 280
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 283
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    .line 284
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v1

    mul-float/2addr v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v1, v2

    .line 286
    new-instance v4, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView$1;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView$1;-><init>(Lorg/telegram/ui/ProfileActivity$AvatarImageView;)V

    const/4 v5, 0x2

    new-array v6, v5, [I

    new-array v5, v5, [F

    .line 301
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 302
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-static {p0, v7, v5}, Lorg/telegram/messenger/AndroidUtilities;->getViewPositionInParent(Landroid/view/View;Landroid/view/ViewGroup;[F)V

    const/4 v7, 0x0

    .line 303
    aget v8, v6, v7

    int-to-float v8, v8

    aget v7, v5, v7

    add-float/2addr v8, v7

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v7

    mul-float/2addr v7, v0

    add-float/2addr v8, v7

    const/4 v7, 0x1

    .line 304
    aget v6, v6, v7

    int-to-float v6, v6

    aget v5, v5, v7

    add-float/2addr v6, v5

    invoke-virtual {p0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v5

    mul-float/2addr v5, v0

    add-float/2addr v6, v5

    .line 306
    iget-object v0, v4, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->screenRect:Landroid/graphics/RectF;

    add-float v5, v8, v1

    add-float/2addr v1, v6

    invoke-virtual {v0, v8, v6, v5, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 307
    invoke-virtual {p0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p0

    iput-object p0, v4, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->backgroundImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    mul-float/2addr v3, v2

    .line 308
    iput v3, v4, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->rounding:F

    return-object v4

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static fromFloatingButton(Landroid/widget/FrameLayout;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;
    .locals 1

    const/4 v0, 0x0

    .line 259
    invoke-static {p0, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->fromFloatingButton(Landroid/widget/FrameLayout;Z)Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;

    move-result-object p0

    return-object p0
.end method

.method public static fromFloatingButton(Landroid/widget/FrameLayout;Z)Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;
    .locals 9

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 353
    :cond_0
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView$3;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView$3;-><init>(Landroid/widget/FrameLayout;)V

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 366
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 367
    invoke-virtual {v3, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 368
    iget-object v4, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->screenRect:Landroid/graphics/RectF;

    aget v5, v1, v2

    int-to-float v5, v5

    const/4 v6, 0x1

    aget v7, v1, v6

    int-to-float v7, v7

    aget v2, v1, v2

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v2, v8

    int-to-float v2, v2

    aget v1, v1, v6

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {v4, v5, v7, v2, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 369
    iput-boolean v6, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->hasShadow:Z

    .line 370
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->backgroundPaint:Landroid/graphics/Paint;

    .line 371
    sget v2, Lorg/telegram/ui/ActionBar/Theme;->key_chats_actionBackground:I

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 372
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p1, :cond_1

    sget v1, Lorg/telegram/messenger/R$drawable;->ic_ab_other:I

    goto :goto_0

    :cond_1
    sget v1, Lorg/telegram/messenger/R$drawable;->story_camera:I

    :goto_0
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iput-object p0, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->iconDrawable:Landroid/graphics/drawable/Drawable;

    const/16 p0, 0x38

    .line 373
    invoke-static {p0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p0

    iput p0, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->iconSize:I

    if-eqz p1, :cond_2

    .line 376
    iget-object p0, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->iconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    iput p0, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->iconSize:I

    .line 379
    :cond_2
    iget-object p0, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->screenRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p0

    iget-object p1, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->screenRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p0, p1

    iput p0, v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->rounding:F

    return-object v0
.end method

.method public static fromShareCell(Lorg/telegram/ui/Cells/ShareDialogCell;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;
    .locals 11

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 387
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/ShareDialogCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v1

    .line 388
    new-instance v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView$4;

    invoke-direct {v2, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView$4;-><init>(Lorg/telegram/ui/Components/BackupImageView;)V

    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 401
    invoke-virtual {v1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 402
    iget-object v4, v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->screenRect:Landroid/graphics/RectF;

    const/4 v5, 0x0

    aget v6, v3, v5

    int-to-float v6, v6

    const/4 v7, 0x1

    aget v8, v3, v7

    int-to-float v8, v8

    aget v9, v3, v5

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    aget v3, v3, v7

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v3, v7

    int-to-float v3, v3

    invoke-virtual {v4, v6, v8, v9, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 403
    new-instance v3, Lorg/telegram/ui/Cells/ShareDialogCell$RepostStoryDrawable;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p0, p0, Lorg/telegram/ui/Cells/ShareDialogCell;->resourcesProvider:Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;

    invoke-direct {v3, v1, v0, v5, p0}, Lorg/telegram/ui/Cells/ShareDialogCell$RepostStoryDrawable;-><init>(Landroid/content/Context;Landroid/view/View;ZLorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    iput-object v3, v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 409
    iget-object p0, v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->screenRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p0

    iget-object v0, v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->screenRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    iput p0, v2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->rounding:F

    return-object v2
.end method

.method public static fromStoryCell(Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;
    .locals 7

    if-eqz p0, :cond_1

    .line 414
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 417
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, v0, v1

    .line 419
    new-instance v3, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView$5;

    invoke-direct {v3, p0, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView$5;-><init>(Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;F)V

    const/4 v2, 0x2

    new-array v4, v2, [I

    new-array v2, v2, [F

    .line 441
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 442
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-static {p0, v5, v2}, Lorg/telegram/messenger/AndroidUtilities;->getViewPositionInParent(Landroid/view/View;Landroid/view/ViewGroup;[F)V

    const/4 v5, 0x0

    .line 443
    aget v6, v4, v5

    int-to-float v6, v6

    aget v5, v2, v5

    add-float/2addr v6, v5

    iget-object v5, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v5}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v5

    add-float/2addr v6, v5

    const/4 v5, 0x1

    .line 444
    aget v4, v4, v5

    int-to-float v4, v4

    aget v2, v2, v5

    add-float/2addr v4, v2

    iget-object v2, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v2

    add-float/2addr v4, v2

    .line 446
    iget-object v2, v3, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->screenRect:Landroid/graphics/RectF;

    add-float v5, v6, v0

    add-float/2addr v0, v4

    invoke-virtual {v2, v6, v4, v5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 447
    iget-object p0, p0, Lorg/telegram/ui/Stories/DialogStoriesCell$StoryCell;->avatarImage:Lorg/telegram/messenger/ImageReceiver;

    iput-object p0, v3, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->backgroundImageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 448
    iget-object p0, v3, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->screenRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p0

    iget-object v0, v3, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->screenRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    div-float/2addr p0, v1

    iput p0, v3, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->rounding:F

    return-object v3

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static fromStoryViewer(Lorg/telegram/ui/Stories/StoryViewer;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 316
    :cond_0
    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView$2;-><init>(Lorg/telegram/ui/Stories/StoryViewer;)V

    .line 337
    iget-object v2, v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->screenRect:Landroid/graphics/RectF;

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Stories/StoryViewer;->getStoryRect(Landroid/graphics/RectF;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x1

    .line 340
    iput v0, v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->type:I

    const/16 v0, 0x8

    .line 341
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->rounding:F

    .line 342
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/StoryViewer;->getCurrentPeerView()Lorg/telegram/ui/Stories/PeerStoriesView;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 344
    iget-object p0, p0, Lorg/telegram/ui/Stories/PeerStoriesView;->storyContainer:Landroid/widget/FrameLayout;

    iput-object p0, v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$SourceView;->view:Landroid/view/View;

    :cond_2
    return-object v1
.end method


# virtual methods
.method protected drawAbove(Landroid/graphics/Canvas;F)V
    .locals 0

    return-void
.end method

.method protected hide()V
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method protected show()V
    .locals 0

    const p0, 0x0

    throw p0
.end method
