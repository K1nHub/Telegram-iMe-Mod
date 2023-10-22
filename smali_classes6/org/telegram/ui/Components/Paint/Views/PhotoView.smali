.class public Lorg/telegram/ui/Components/Paint/Views/PhotoView;
.super Lorg/telegram/ui/Components/Paint/Views/EntityView;
.source "PhotoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/Paint/Views/PhotoView$PhotoViewSelectionView;,
        Lorg/telegram/ui/Components/Paint/Views/PhotoView$FrameLayoutDrawer;
    }
.end annotation


# instance fields
.field private anchor:I

.field private baseSize:Lorg/telegram/ui/Components/Size;

.field public final centerImage:Lorg/telegram/messenger/ImageReceiver;

.field private containerView:Lorg/telegram/ui/Components/Paint/Views/PhotoView$FrameLayoutDrawer;

.field private final mirrorT:Lorg/telegram/ui/Components/AnimatedFloat;

.field private mirrored:Z

.field private object:Lorg/telegram/tgnet/TLObject;

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;FFLorg/telegram/ui/Components/Size;Ljava/lang/String;II)V
    .locals 12

    move-object v0, p0

    .line 55
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;)V

    const/4 v1, -0x1

    .line 46
    iput v1, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->anchor:I

    const/4 v2, 0x0

    .line 47
    iput-boolean v2, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->mirrored:Z

    .line 52
    new-instance v2, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v2}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v2, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    move v3, p3

    .line 56
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->setRotation(F)V

    move/from16 v3, p4

    .line 57
    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setScale(F)V

    move-object/from16 v3, p6

    .line 59
    iput-object v3, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->path:Ljava/lang/String;

    move-object/from16 v4, p5

    .line 60
    iput-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->baseSize:Lorg/telegram/ui/Components/Size;

    .line 62
    new-instance v4, Lorg/telegram/ui/Components/Paint/Views/PhotoView$FrameLayoutDrawer;

    move-object v5, p1

    invoke-direct {v4, p0, p1}, Lorg/telegram/ui/Components/Paint/Views/PhotoView$FrameLayoutDrawer;-><init>(Lorg/telegram/ui/Components/Paint/Views/PhotoView;Landroid/content/Context;)V

    iput-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->containerView:Lorg/telegram/ui/Components/Paint/Views/PhotoView$FrameLayoutDrawer;

    .line 63
    invoke-static {v1, v1}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v4, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    new-instance v1, Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v6, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->containerView:Lorg/telegram/ui/Components/Paint/Views/PhotoView$FrameLayoutDrawer;

    sget-object v11, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x1f4

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object v1, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->mirrorT:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 v1, 0x1

    .line 67
    invoke-virtual {v2, v1}, Lorg/telegram/messenger/ImageReceiver;->setAspectFit(Z)V

    .line 68
    invoke-virtual {v2, v1}, Lorg/telegram/messenger/ImageReceiver;->setInvalidateAll(Z)V

    .line 69
    iget-object v4, v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->containerView:Lorg/telegram/ui/Components/Paint/Views/PhotoView$FrameLayoutDrawer;

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    const/16 v4, 0xc

    .line 70
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    move/from16 v4, p7

    move/from16 v5, p8

    .line 71
    invoke-virtual {v2, v4, v5, v1}, Lorg/telegram/messenger/ImageReceiver;->setOrientation(IIZ)V

    .line 72
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    const v4, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v4

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 73
    invoke-static/range {p6 .. p6}, Lorg/telegram/messenger/ImageLocation;->getForPath(Ljava/lang/String;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object p1, v2

    move-object p2, v3

    move-object p3, v1

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move/from16 p7, v7

    invoke-virtual/range {p1 .. p7}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 74
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->updatePosition()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;FFLorg/telegram/ui/Components/Size;Lorg/telegram/tgnet/TLObject;)V
    .locals 9

    .line 78
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/Paint/Views/EntityView;-><init>(Landroid/content/Context;Lorg/telegram/ui/Components/Point;)V

    const/4 p2, -0x1

    .line 46
    iput p2, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->anchor:I

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->mirrored:Z

    .line 52
    new-instance v1, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v1}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    .line 79
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->setRotation(F)V

    .line 80
    invoke-virtual {p0, p4}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->setScale(F)V

    .line 82
    iput-object p6, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->object:Lorg/telegram/tgnet/TLObject;

    .line 83
    iput-object p5, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->baseSize:Lorg/telegram/ui/Components/Size;

    .line 85
    new-instance p3, Lorg/telegram/ui/Components/Paint/Views/PhotoView$FrameLayoutDrawer;

    invoke-direct {p3, p0, p1}, Lorg/telegram/ui/Components/Paint/Views/PhotoView$FrameLayoutDrawer;-><init>(Lorg/telegram/ui/Components/Paint/Views/PhotoView;Landroid/content/Context;)V

    iput-object p3, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->containerView:Lorg/telegram/ui/Components/Paint/Views/PhotoView$FrameLayoutDrawer;

    .line 86
    invoke-static {p2, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    new-instance p1, Lorg/telegram/ui/Components/AnimatedFloat;

    iget-object v3, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->containerView:Lorg/telegram/ui/Components/Paint/Views/PhotoView$FrameLayoutDrawer;

    sget-object v8, Lorg/telegram/ui/Components/CubicBezierInterpolator;->EASE_OUT_QUINT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x1f4

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lorg/telegram/ui/Components/AnimatedFloat;-><init>(Landroid/view/View;JJLandroid/animation/TimeInterpolator;)V

    iput-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->mirrorT:Lorg/telegram/ui/Components/AnimatedFloat;

    const/4 p1, 0x1

    .line 90
    invoke-virtual {v1, p1}, Lorg/telegram/messenger/ImageReceiver;->setAspectFit(Z)V

    .line 91
    invoke-virtual {v1, p1}, Lorg/telegram/messenger/ImageReceiver;->setInvalidateAll(Z)V

    .line 92
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->containerView:Lorg/telegram/ui/Components/Paint/Views/PhotoView$FrameLayoutDrawer;

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    const/16 p1, 0xc

    .line 93
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius(I)V

    .line 94
    sget-object p1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p2, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    const p2, 0x3f4ccccd    # 0.8f

    mul-float/2addr p1, p2

    sget p2, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 95
    iget-object p2, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->object:Lorg/telegram/tgnet/TLObject;

    instance-of p3, p2, Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz p3, :cond_0

    .line 96
    check-cast p2, Lorg/telegram/tgnet/TLRPC$Photo;

    .line 97
    iget-object p3, p2, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    const/16 p4, 0x3e8

    invoke-static {p3, p4}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object p3

    .line 98
    iget-object p4, p2, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    const/16 p5, 0x5a

    invoke-static {p4, p5}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object p4

    .line 99
    invoke-static {p3, p2}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, "_"

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p4, p2}, Lorg/telegram/messenger/ImageLocation;->getForPhoto(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Photo;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 101
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->updatePosition()V

    return-void
.end method


# virtual methods
.method protected createSelectionView()Lorg/telegram/ui/Components/Paint/Views/EntityView$SelectionView;
    .locals 2

    .line 192
    new-instance v0, Lorg/telegram/ui/Components/Paint/Views/PhotoView$PhotoViewSelectionView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/Components/Paint/Views/PhotoView$PhotoViewSelectionView;-><init>(Lorg/telegram/ui/Components/Paint/Views/PhotoView;Landroid/content/Context;)V

    return-object v0
.end method

.method public getAnchor()I
    .locals 1

    .line 117
    iget v0, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->anchor:I

    return v0
.end method

.method public getBaseSize()Lorg/telegram/ui/Components/Size;
    .locals 1

    .line 206
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->baseSize:Lorg/telegram/ui/Components/Size;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 159
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getLottieAnimation()Lorg/telegram/ui/Components/RLottieDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0}, Lorg/telegram/ui/Components/RLottieDrawable;->getDuration()J

    move-result-wide v0

    return-wide v0

    .line 163
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 165
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getDurationMs()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPath(I)Ljava/lang/String;
    .locals 2

    .line 196
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->object:Lorg/telegram/tgnet/TLObject;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v1, :cond_0

    .line 197
    check-cast v0, Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    .line 199
    :try_start_0
    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 202
    :catch_0
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->path:Ljava/lang/String;

    return-object p1
.end method

.method protected getSelectionBounds()Lorg/telegram/ui/Components/Rect;
    .locals 7

    .line 178
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Lorg/telegram/ui/Components/Rect;

    invoke-direct {v0}, Lorg/telegram/ui/Components/Rect;-><init>()V

    return-object v0

    .line 182
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v0

    .line 183
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getScale()F

    move-result v2

    mul-float/2addr v1, v2

    const/16 v2, 0x40

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v0

    add-float/2addr v1, v3

    .line 184
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getScale()F

    move-result v4

    mul-float/2addr v3, v4

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v0

    add-float/2addr v3, v2

    .line 185
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPositionX()F

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, v1, v4

    sub-float/2addr v2, v5

    mul-float/2addr v2, v0

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    .line 187
    new-instance v5, Lorg/telegram/ui/Components/Rect;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPositionY()F

    move-result v6

    div-float v4, v3, v4

    sub-float/2addr v6, v4

    mul-float/2addr v6, v0

    sub-float/2addr v1, v2

    mul-float/2addr v3, v0

    invoke-direct {v5, v2, v6, v1, v3}, Lorg/telegram/ui/Components/Rect;-><init>(FFFF)V

    return-object v5
.end method

.method public isMirrored()Z
    .locals 1

    .line 133
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->mirrored:Z

    return v0
.end method

.method public mirror()V
    .locals 1

    const/4 v0, 0x0

    .line 121
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->mirror(Z)V

    return-void
.end method

.method public mirror(Z)V
    .locals 2

    .line 125
    iget-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->mirrored:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->mirrored:Z

    if-nez p1, :cond_0

    .line 127
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->mirrorT:Lorg/telegram/ui/Components/AnimatedFloat;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(ZZ)F

    .line 129
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->containerView:Lorg/telegram/ui/Components/Paint/Views/PhotoView$FrameLayoutDrawer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 112
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 113
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 106
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 107
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 173
    iget-object p1, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->baseSize:Lorg/telegram/ui/Components/Size;

    iget p1, p1, Lorg/telegram/ui/Components/Size;->width:F

    float-to-int p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->baseSize:Lorg/telegram/ui/Components/Size;

    iget v0, v0, Lorg/telegram/ui/Components/Size;->height:F

    float-to-int v0, v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method protected stickerDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 145
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->containerView:Lorg/telegram/ui/Components/Paint/Views/PhotoView$FrameLayoutDrawer;

    if-nez v0, :cond_0

    return-void

    .line 149
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 150
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->mirrorT:Lorg/telegram/ui/Components/AnimatedFloat;

    iget-boolean v1, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->mirrored:Z

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFloat;->set(Z)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v2, v0, v1

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    .line 151
    iget-object v4, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->baseSize:Lorg/telegram/ui/Components/Size;

    iget v4, v4, Lorg/telegram/ui/Components/Size;->width:F

    div-float/2addr v4, v1

    const/4 v1, 0x0

    invoke-virtual {p1, v2, v3, v4, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v2, v0

    sub-float/2addr v3, v0

    mul-float/2addr v2, v3

    const/high16 v0, 0x3e800000    # 0.25f

    mul-float/2addr v2, v0

    .line 152
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->skew(FF)V

    .line 153
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v2, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->baseSize:Lorg/telegram/ui/Components/Size;

    iget v3, v2, Lorg/telegram/ui/Components/Size;->width:F

    float-to-int v3, v3

    int-to-float v3, v3

    iget v2, v2, Lorg/telegram/ui/Components/Size;->height:F

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v1, v3, v2}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 154
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 155
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected updatePosition()V
    .locals 3

    .line 137
    iget-object v0, p0, Lorg/telegram/ui/Components/Paint/Views/PhotoView;->baseSize:Lorg/telegram/ui/Components/Size;

    iget v1, v0, Lorg/telegram/ui/Components/Size;->width:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 138
    iget v0, v0, Lorg/telegram/ui/Components/Size;->height:F

    div-float/2addr v0, v2

    .line 139
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPositionX()F

    move-result v2

    sub-float/2addr v2, v1

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setX(F)V

    .line 140
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->getPositionY()F

    move-result v1

    sub-float/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setY(F)V

    .line 141
    invoke-virtual {p0}, Lorg/telegram/ui/Components/Paint/Views/EntityView;->updateSelectionView()V

    return-void
.end method
