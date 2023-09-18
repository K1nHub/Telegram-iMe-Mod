.class public Lorg/telegram/ui/PinchToZoomHelper;
.super Ljava/lang/Object;
.source "PinchToZoomHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/PinchToZoomHelper$ClipBoundsListener;,
        Lorg/telegram/ui/PinchToZoomHelper$Callback;,
        Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;
    }
.end annotation


# instance fields
.field private blurImage:Lorg/telegram/messenger/ImageReceiver;

.field callback:Lorg/telegram/ui/PinchToZoomHelper$Callback;

.field private child:Landroid/view/View;

.field private childImage:Lorg/telegram/messenger/ImageReceiver;

.field private childTextureView:Landroid/view/TextureView;

.field clipBoundsListener:Lorg/telegram/ui/PinchToZoomHelper$ClipBoundsListener;

.field private clipTopBottom:[F

.field private enterProgress:F

.field private finishProgress:F

.field finishTransition:Landroid/animation/ValueAnimator;

.field fragmentOffsetX:F

.field fragmentOffsetY:F

.field private final fragmentView:Landroid/view/ViewGroup;

.field private fullImage:Lorg/telegram/messenger/ImageReceiver;

.field private fullImageHeight:F

.field private fullImageWidth:F

.field private hasMediaSpoiler:Z

.field private imageHeight:F

.field private imageWidth:F

.field private imageX:F

.field private imageY:F

.field private inOverlayMode:Z

.field private isHardwareVideo:Z

.field isInPinchToZoomTouchMode:Z

.field private final isSimple:Z

.field private mediaSpoilerEffect:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

.field private messageObject:Lorg/telegram/messenger/MessageObject;

.field private overlayView:Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;

.field parentOffsetX:F

.field parentOffsetY:F

.field private final parentView:Landroid/view/ViewGroup;

.field private path:Landroid/graphics/Path;

.field pinchCenterX:F

.field pinchCenterY:F

.field pinchScale:F

.field pinchStartCenterX:F

.field pinchStartCenterY:F

.field pinchStartDistance:F

.field pinchTranslationX:F

.field pinchTranslationY:F

.field private pointerId1:I

.field private pointerId2:I

.field private progressToFullView:F

.field private spoilerRadii:[F


# direct methods
.method public static synthetic $r8$lambda$4wQ2jMRy81WaSO-7VHZnPsR8EsI(Lorg/telegram/ui/PinchToZoomHelper;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/ui/PinchToZoomHelper;->lambda$finishZoom$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->fullImage:Lorg/telegram/messenger/ImageReceiver;

    .line 59
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->blurImage:Lorg/telegram/messenger/ImageReceiver;

    .line 61
    new-instance v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    invoke-direct {v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->mediaSpoilerEffect:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    .line 62
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->path:Landroid/graphics/Path;

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 63
    iput-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->spoilerRadii:[F

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 104
    iput-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->clipTopBottom:[F

    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->parentView:Landroid/view/ViewGroup;

    .line 116
    iput-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->fragmentView:Landroid/view/ViewGroup;

    const/4 v0, 0x1

    .line 117
    iput-boolean v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->isSimple:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->fullImage:Lorg/telegram/messenger/ImageReceiver;

    .line 59
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->blurImage:Lorg/telegram/messenger/ImageReceiver;

    .line 61
    new-instance v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    invoke-direct {v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->mediaSpoilerEffect:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    .line 62
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->path:Landroid/graphics/Path;

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 63
    iput-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->spoilerRadii:[F

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 104
    iput-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->clipTopBottom:[F

    .line 109
    iput-object p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->parentView:Landroid/view/ViewGroup;

    .line 110
    iput-object p2, p0, Lorg/telegram/ui/PinchToZoomHelper;->fragmentView:Landroid/view/ViewGroup;

    const/4 p1, 0x0

    .line 111
    iput-boolean p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->isSimple:Z

    return-void
.end method

.method static synthetic access$1000(Lorg/telegram/ui/PinchToZoomHelper;)Landroid/view/View;
    .locals 0

    .line 47
    iget-object p0, p0, Lorg/telegram/ui/PinchToZoomHelper;->child:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/PinchToZoomHelper;)Landroid/view/ViewGroup;
    .locals 0

    .line 47
    iget-object p0, p0, Lorg/telegram/ui/PinchToZoomHelper;->parentView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/PinchToZoomHelper;)Z
    .locals 0

    .line 47
    invoke-direct {p0}, Lorg/telegram/ui/PinchToZoomHelper;->updateViewsLocation()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/PinchToZoomHelper;)Lorg/telegram/messenger/ImageReceiver;
    .locals 0

    .line 47
    iget-object p0, p0, Lorg/telegram/ui/PinchToZoomHelper;->fullImage:Lorg/telegram/messenger/ImageReceiver;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/PinchToZoomHelper;)F
    .locals 0

    .line 47
    iget p0, p0, Lorg/telegram/ui/PinchToZoomHelper;->progressToFullView:F

    return p0
.end method

.method static synthetic access$1402(Lorg/telegram/ui/PinchToZoomHelper;F)F
    .locals 0

    .line 47
    iput p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->progressToFullView:F

    return p1
.end method

.method static synthetic access$1416(Lorg/telegram/ui/PinchToZoomHelper;F)F
    .locals 1

    .line 47
    iget v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->progressToFullView:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->progressToFullView:F

    return v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/PinchToZoomHelper;)F
    .locals 0

    .line 47
    iget p0, p0, Lorg/telegram/ui/PinchToZoomHelper;->imageX:F

    return p0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/PinchToZoomHelper;)F
    .locals 0

    .line 47
    iget p0, p0, Lorg/telegram/ui/PinchToZoomHelper;->imageY:F

    return p0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/PinchToZoomHelper;)F
    .locals 0

    .line 47
    iget p0, p0, Lorg/telegram/ui/PinchToZoomHelper;->imageHeight:F

    return p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/PinchToZoomHelper;)F
    .locals 0

    .line 47
    iget p0, p0, Lorg/telegram/ui/PinchToZoomHelper;->fullImageHeight:F

    return p0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/PinchToZoomHelper;)F
    .locals 0

    .line 47
    iget p0, p0, Lorg/telegram/ui/PinchToZoomHelper;->imageWidth:F

    return p0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/PinchToZoomHelper;)F
    .locals 0

    .line 47
    iget p0, p0, Lorg/telegram/ui/PinchToZoomHelper;->fullImageWidth:F

    return p0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/PinchToZoomHelper;)Lorg/telegram/messenger/ImageReceiver;
    .locals 0

    .line 47
    iget-object p0, p0, Lorg/telegram/ui/PinchToZoomHelper;->childImage:Lorg/telegram/messenger/ImageReceiver;

    return-object p0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/PinchToZoomHelper;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lorg/telegram/ui/PinchToZoomHelper;->isHardwareVideo:Z

    return p0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/PinchToZoomHelper;)Landroid/view/TextureView;
    .locals 0

    .line 47
    iget-object p0, p0, Lorg/telegram/ui/PinchToZoomHelper;->childTextureView:Landroid/view/TextureView;

    return-object p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/PinchToZoomHelper;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lorg/telegram/ui/PinchToZoomHelper;->hasMediaSpoiler:Z

    return p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/PinchToZoomHelper;)Lorg/telegram/messenger/ImageReceiver;
    .locals 0

    .line 47
    iget-object p0, p0, Lorg/telegram/ui/PinchToZoomHelper;->blurImage:Lorg/telegram/messenger/ImageReceiver;

    return-object p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/PinchToZoomHelper;)[F
    .locals 0

    .line 47
    iget-object p0, p0, Lorg/telegram/ui/PinchToZoomHelper;->spoilerRadii:[F

    return-object p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/PinchToZoomHelper;)Landroid/graphics/Path;
    .locals 0

    .line 47
    iget-object p0, p0, Lorg/telegram/ui/PinchToZoomHelper;->path:Landroid/graphics/Path;

    return-object p0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/PinchToZoomHelper;)Lorg/telegram/ui/Components/spoilers/SpoilerEffect;
    .locals 0

    .line 47
    iget-object p0, p0, Lorg/telegram/ui/PinchToZoomHelper;->mediaSpoilerEffect:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    return-object p0
.end method

.method static synthetic access$600(Lorg/telegram/ui/PinchToZoomHelper;)F
    .locals 0

    .line 47
    iget p0, p0, Lorg/telegram/ui/PinchToZoomHelper;->enterProgress:F

    return p0
.end method

.method static synthetic access$602(Lorg/telegram/ui/PinchToZoomHelper;F)F
    .locals 0

    .line 47
    iput p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->enterProgress:F

    return p1
.end method

.method static synthetic access$616(Lorg/telegram/ui/PinchToZoomHelper;F)F
    .locals 1

    .line 47
    iget v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->enterProgress:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->enterProgress:F

    return v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/PinchToZoomHelper;)F
    .locals 0

    .line 47
    iget p0, p0, Lorg/telegram/ui/PinchToZoomHelper;->finishProgress:F

    return p0
.end method

.method static synthetic access$800(Lorg/telegram/ui/PinchToZoomHelper;)[F
    .locals 0

    .line 47
    iget-object p0, p0, Lorg/telegram/ui/PinchToZoomHelper;->clipTopBottom:[F

    return-object p0
.end method

.method static synthetic access$900(Lorg/telegram/ui/PinchToZoomHelper;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lorg/telegram/ui/PinchToZoomHelper;->inOverlayMode:Z

    return p0
.end method

.method private checkPointerIds(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 785
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    return v1

    .line 788
    :cond_0
    iget v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->pointerId1:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    iget v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->pointerId2:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    if-ne v0, v2, :cond_1

    return v3

    .line 791
    :cond_1
    iget v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->pointerId1:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    if-ne v0, v2, :cond_2

    iget v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->pointerId2:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    if-ne v0, p1, :cond_2

    return v3

    :cond_2
    return v1
.end method

.method private getImageLocation(Lorg/telegram/messenger/MessageObject;[I)Lorg/telegram/messenger/ImageLocation;
    .locals 6

    .line 642
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 643
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionUserUpdatedPhoto;

    if-eqz v0, :cond_0

    return-object v2

    .line 646
    :cond_0
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    .line 649
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    aput v1, p2, v4

    .line 650
    aget v1, p2, v4

    if-nez v1, :cond_1

    .line 651
    aput v3, p2, v4

    .line 654
    :cond_1
    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->photoThumbsObject:Lorg/telegram/tgnet/TLObject;

    invoke-static {v0, p1}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;

    move-result-object p1

    return-object p1

    :cond_2
    if-eqz p2, :cond_c

    .line 656
    aput v3, p2, v4

    goto/16 :goto_0

    .line 659
    :cond_3
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-nez v1, :cond_5

    :cond_4
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v1, :cond_9

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v1, :cond_9

    .line 660
    :cond_5
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isGif()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 661
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object p1

    return-object p1

    .line 663
    :cond_6
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v1

    const/4 v5, 0x1

    invoke-static {v0, v1, v4, v2, v5}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZLorg/telegram/tgnet/TLRPC$PhotoSize;Z)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    if-eqz v0, :cond_8

    if-eqz p2, :cond_7

    .line 666
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    aput v1, p2, v4

    .line 667
    aget v1, p2, v4

    if-nez v1, :cond_7

    .line 668
    aput v3, p2, v4

    .line 671
    :cond_7
    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->photoThumbsObject:Lorg/telegram/tgnet/TLObject;

    invoke-static {v0, p1}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;

    move-result-object p1

    return-object p1

    :cond_8
    if-eqz p2, :cond_c

    .line 673
    aput v3, p2, v4

    goto :goto_0

    .line 676
    :cond_9
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    if-eqz v1, :cond_a

    .line 677
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    iget-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;->webPhoto:Lorg/telegram/tgnet/TLRPC$WebDocument;

    invoke-static {p1}, Lorg/telegram/messenger/WebFile;->createWithWebDocument(Lorg/telegram/tgnet/TLRPC$WebDocument;)Lorg/telegram/messenger/WebFile;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/ImageLocation;->getForWebFile(Lorg/telegram/messenger/WebFile;)Lorg/telegram/messenger/ImageLocation;

    move-result-object p1

    return-object p1

    .line 678
    :cond_a
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 679
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    .line 680
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->isDocumentHasThumb(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 681
    iget-object p1, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 v1, 0x5a

    invoke-static {p1, v1}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object p1

    if-eqz p2, :cond_b

    .line 683
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    aput v1, p2, v4

    .line 684
    aget v1, p2, v4

    if-nez v1, :cond_b

    .line 685
    aput v3, p2, v4

    .line 688
    :cond_b
    invoke-static {p1, v0}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object p1

    return-object p1

    :cond_c
    :goto_0
    return-object v2
.end method

.method private synthetic lambda$finishZoom$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 294
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->finishProgress:F

    .line 295
    invoke-virtual {p0}, Lorg/telegram/ui/PinchToZoomHelper;->invalidateViews()V

    return-void
.end method

.method private setFullImage(Lorg/telegram/messenger/MessageObject;)V
    .locals 13

    if-nez p1, :cond_0

    return-void

    .line 232
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isPhoto()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 236
    invoke-direct {p0, p1, v1}, Lorg/telegram/ui/PinchToZoomHelper;->getImageLocation(Lorg/telegram/messenger/MessageObject;[I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 238
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isWebpage()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    move v12, v0

    goto :goto_0

    :cond_2
    move v12, v4

    :goto_0
    const/4 v0, 0x0

    .line 243
    iget-object v2, p0, Lorg/telegram/ui/PinchToZoomHelper;->fullImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    aget v1, v1, v4

    int-to-long v8, v1

    const/4 v10, 0x0

    move-object v4, v0

    move-object v11, p1

    invoke-virtual/range {v2 .. v12}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    .line 244
    iget-object p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->fullImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeAlpha(B)V

    .line 247
    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/PinchToZoomHelper;->updateViewsLocation()Z

    return-void
.end method

.method private updateViewsLocation()Z
    .locals 7

    .line 253
    iget-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->child:Landroid/view/View;

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 254
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/PinchToZoomHelper;->parentView:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    if-eq v0, v4, :cond_1

    if-nez v0, :cond_0

    return v5

    .line 258
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    .line 259
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 260
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    .line 265
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->child:Landroid/view/View;

    move v4, v1

    .line 266
    :goto_1
    iget-object v6, p0, Lorg/telegram/ui/PinchToZoomHelper;->fragmentView:Landroid/view/ViewGroup;

    if-eq v0, v6, :cond_3

    if-nez v0, :cond_2

    return v5

    .line 270
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v1, v6

    .line 271
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v4, v6

    .line 272
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_1

    .line 275
    :cond_3
    iput v1, p0, Lorg/telegram/ui/PinchToZoomHelper;->fragmentOffsetX:F

    .line 276
    iput v4, p0, Lorg/telegram/ui/PinchToZoomHelper;->fragmentOffsetY:F

    .line 278
    iput v2, p0, Lorg/telegram/ui/PinchToZoomHelper;->parentOffsetX:F

    .line 279
    iput v3, p0, Lorg/telegram/ui/PinchToZoomHelper;->parentOffsetY:F

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public applyTransform(Landroid/graphics/Canvas;)V
    .locals 4

    .line 807
    iget-boolean v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->inOverlayMode:Z

    if-eqz v0, :cond_0

    .line 808
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 809
    iget v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->pinchScale:F

    iget v1, p0, Lorg/telegram/ui/PinchToZoomHelper;->finishProgress:F

    mul-float/2addr v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v0, v2

    sub-float/2addr v0, v1

    .line 810
    iget v1, p0, Lorg/telegram/ui/PinchToZoomHelper;->parentOffsetX:F

    iget v2, p0, Lorg/telegram/ui/PinchToZoomHelper;->pinchCenterX:F

    add-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/PinchToZoomHelper;->parentOffsetY:F

    iget v3, p0, Lorg/telegram/ui/PinchToZoomHelper;->pinchCenterY:F

    add-float/2addr v2, v3

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 811
    iget v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->parentOffsetX:F

    iget v1, p0, Lorg/telegram/ui/PinchToZoomHelper;->pinchTranslationX:F

    iget v2, p0, Lorg/telegram/ui/PinchToZoomHelper;->finishProgress:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/PinchToZoomHelper;->parentOffsetY:F

    iget v3, p0, Lorg/telegram/ui/PinchToZoomHelper;->pinchTranslationY:F

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_0
    return-void
.end method

.method public checkPinchToZoom(Landroid/view/MotionEvent;Landroid/view/View;Lorg/telegram/messenger/ImageReceiver;Landroid/view/TextureView;Lorg/telegram/messenger/MessageObject;)Z
    .locals 10

    .line 720
    invoke-virtual {p0, p2, p3}, Lorg/telegram/ui/PinchToZoomHelper;->zoomEnabled(Landroid/view/View;Lorg/telegram/messenger/ImageReceiver;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 723
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x2

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x1

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v6, 0x5

    if-ne v0, v6, :cond_1

    goto/16 :goto_2

    .line 734
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v3, :cond_8

    iget-boolean v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->isInPinchToZoomTouchMode:Z

    if-eqz v0, :cond_8

    const/4 v0, -0x1

    move v6, v0

    move v7, v6

    move v3, v1

    .line 737
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    if-ge v3, v8, :cond_4

    .line 738
    iget v8, p0, Lorg/telegram/ui/PinchToZoomHelper;->pointerId1:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    if-ne v8, v9, :cond_2

    move v6, v3

    .line 741
    :cond_2
    iget v8, p0, Lorg/telegram/ui/PinchToZoomHelper;->pointerId2:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    if-ne v8, v9, :cond_3

    move v7, v3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    if-eq v6, v0, :cond_7

    if-ne v7, v0, :cond_5

    goto/16 :goto_1

    .line 751
    :cond_5
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    sub-float/2addr v3, v8

    float-to-double v8, v3

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/PinchToZoomHelper;->pinchStartDistance:F

    div-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->pinchScale:F

    const v1, 0x3f80a3d7    # 1.005f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    .line 752
    invoke-virtual {p0}, Lorg/telegram/ui/PinchToZoomHelper;->isInOverlayMode()Z

    move-result v0

    if-nez v0, :cond_6

    .line 753
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    sub-float/2addr v3, v8

    float-to-double v8, v3

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->pinchStartDistance:F

    .line 754
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v0, v1

    div-float/2addr v0, v4

    iput v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->pinchCenterX:F

    iput v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->pinchStartCenterX:F

    .line 755
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v0, v1

    div-float/2addr v0, v4

    iput v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->pinchCenterY:F

    iput v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->pinchStartCenterY:F

    .line 756
    iput v2, p0, Lorg/telegram/ui/PinchToZoomHelper;->pinchScale:F

    const/4 v0, 0x0

    .line 757
    iput v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->pinchTranslationX:F

    .line 758
    iput v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->pinchTranslationY:F

    .line 759
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 760
    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/telegram/ui/PinchToZoomHelper;->startZoom(Landroid/view/View;Lorg/telegram/messenger/ImageReceiver;Landroid/view/TextureView;Lorg/telegram/messenger/MessageObject;)V

    .line 764
    :cond_6
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result p3

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result p4

    add-float/2addr p3, p4

    div-float/2addr p3, v4

    .line 765
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result p4

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p4, p1

    div-float/2addr p4, v4

    .line 769
    iget p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->pinchStartCenterX:F

    sub-float/2addr p1, p3

    .line 770
    iget p3, p0, Lorg/telegram/ui/PinchToZoomHelper;->pinchStartCenterY:F

    sub-float/2addr p3, p4

    neg-float p1, p1

    .line 771
    iget p4, p0, Lorg/telegram/ui/PinchToZoomHelper;->pinchScale:F

    div-float/2addr p1, p4

    iput p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->pinchTranslationX:F

    neg-float p1, p3

    div-float/2addr p1, p4

    .line 772
    iput p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->pinchTranslationY:F

    .line 773
    invoke-virtual {p0}, Lorg/telegram/ui/PinchToZoomHelper;->invalidateViews()V

    goto/16 :goto_3

    .line 746
    :cond_7
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/ui/PinchToZoomHelper;->isInPinchToZoomTouchMode:Z

    .line 747
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 748
    invoke-virtual {p0}, Lorg/telegram/ui/PinchToZoomHelper;->finishZoom()V

    return v1

    .line 774
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p3

    if-eq p3, v5, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p3

    const/4 p4, 0x6

    if-ne p3, p4, :cond_9

    invoke-direct {p0, p1}, Lorg/telegram/ui/PinchToZoomHelper;->checkPointerIds(Landroid/view/MotionEvent;)Z

    move-result p3

    if-nez p3, :cond_a

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 p3, 0x3

    if-ne p1, p3, :cond_d

    :cond_a
    iget-boolean p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->isInPinchToZoomTouchMode:Z

    if-eqz p1, :cond_d

    .line 775
    iput-boolean v1, p0, Lorg/telegram/ui/PinchToZoomHelper;->isInPinchToZoomTouchMode:Z

    if-eqz p2, :cond_b

    .line 776
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 777
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 779
    :cond_b
    invoke-virtual {p0}, Lorg/telegram/ui/PinchToZoomHelper;->finishZoom()V

    goto :goto_3

    .line 724
    :cond_c
    :goto_2
    iget-boolean p3, p0, Lorg/telegram/ui/PinchToZoomHelper;->isInPinchToZoomTouchMode:Z

    if-nez p3, :cond_d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p3

    if-ne p3, v3, :cond_d

    .line 725
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result p3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result p4

    sub-float/2addr p3, p4

    float-to-double p3, p3

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result p5

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    sub-float/2addr p5, v0

    float-to-double v6, p5

    invoke-static {p3, p4, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p3

    double-to-float p3, p3

    iput p3, p0, Lorg/telegram/ui/PinchToZoomHelper;->pinchStartDistance:F

    .line 726
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result p3

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result p4

    add-float/2addr p3, p4

    div-float/2addr p3, v4

    iput p3, p0, Lorg/telegram/ui/PinchToZoomHelper;->pinchCenterX:F

    iput p3, p0, Lorg/telegram/ui/PinchToZoomHelper;->pinchStartCenterX:F

    .line 727
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p3

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result p4

    add-float/2addr p3, p4

    div-float/2addr p3, v4

    iput p3, p0, Lorg/telegram/ui/PinchToZoomHelper;->pinchCenterY:F

    iput p3, p0, Lorg/telegram/ui/PinchToZoomHelper;->pinchStartCenterY:F

    .line 728
    iput v2, p0, Lorg/telegram/ui/PinchToZoomHelper;->pinchScale:F

    .line 730
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p3

    iput p3, p0, Lorg/telegram/ui/PinchToZoomHelper;->pointerId1:I

    .line 731
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->pointerId2:I

    .line 732
    iput-boolean v5, p0, Lorg/telegram/ui/PinchToZoomHelper;->isInPinchToZoomTouchMode:Z

    .line 781
    :cond_d
    :goto_3
    invoke-virtual {p0, p2}, Lorg/telegram/ui/PinchToZoomHelper;->isInOverlayModeFor(Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public clear()V
    .locals 2

    .line 313
    iget-boolean v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->inOverlayMode:Z

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->callback:Lorg/telegram/ui/PinchToZoomHelper$Callback;

    if-eqz v0, :cond_0

    .line 315
    iget-object v1, p0, Lorg/telegram/ui/PinchToZoomHelper;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-interface {v0, v1}, Lorg/telegram/ui/PinchToZoomHelper$Callback;->onZoomFinished(Lorg/telegram/messenger/MessageObject;)V

    :cond_0
    const/4 v0, 0x0

    .line 317
    iput-boolean v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->inOverlayMode:Z

    .line 319
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->overlayView:Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 320
    iget-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->parentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/PinchToZoomHelper;->overlayView:Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 321
    iget-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->overlayView:Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;

    invoke-static {v0}, Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;->access$300(Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    .line 323
    iget-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->childImage:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_2

    .line 324
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 325
    instance-of v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v1, :cond_2

    .line 326
    check-cast v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget-object v1, p0, Lorg/telegram/ui/PinchToZoomHelper;->overlayView:Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->removeSecondParentView(Landroid/view/View;)V

    .line 330
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->child:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 331
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 332
    iput-object v1, p0, Lorg/telegram/ui/PinchToZoomHelper;->child:Landroid/view/View;

    .line 334
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->childImage:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_4

    .line 335
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 336
    iget-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->childImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    .line 337
    iput-object v1, p0, Lorg/telegram/ui/PinchToZoomHelper;->childImage:Lorg/telegram/messenger/ImageReceiver;

    .line 339
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->fullImage:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_5

    .line 340
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 341
    iget-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->fullImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    .line 342
    iput-object v1, p0, Lorg/telegram/ui/PinchToZoomHelper;->fullImage:Lorg/telegram/messenger/ImageReceiver;

    .line 344
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->blurImage:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_6

    .line 345
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 346
    iget-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->blurImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    .line 347
    iput-object v1, p0, Lorg/telegram/ui/PinchToZoomHelper;->blurImage:Lorg/telegram/messenger/ImageReceiver;

    .line 350
    :cond_6
    iput-object v1, p0, Lorg/telegram/ui/PinchToZoomHelper;->messageObject:Lorg/telegram/messenger/MessageObject;

    return-void
.end method

.method protected drawOverlays(Landroid/graphics/Canvas;FFFFF)V
    .locals 0

    return-void
.end method

.method public finishZoom()V
    .locals 3

    .line 284
    iget-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->finishTransition:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->inOverlayMode:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 287
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->isSimple:Z

    if-nez v0, :cond_1

    .line 288
    invoke-direct {p0}, Lorg/telegram/ui/PinchToZoomHelper;->updateViewsLocation()Z

    move-result v0

    if-nez v0, :cond_1

    .line 289
    invoke-virtual {p0}, Lorg/telegram/ui/PinchToZoomHelper;->clear()V

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 292
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->finishTransition:Landroid/animation/ValueAnimator;

    .line 293
    new-instance v1, Lorg/telegram/ui/PinchToZoomHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PinchToZoomHelper$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PinchToZoomHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 297
    iget-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->finishTransition:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/PinchToZoomHelper$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PinchToZoomHelper$1;-><init>(Lorg/telegram/ui/PinchToZoomHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 307
    iget-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->finishTransition:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xdc

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 308
    iget-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->finishTransition:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 309
    iget-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->finishTransition:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public getChild()Landroid/view/View;
    .locals 1

    .line 816
    iget-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->child:Landroid/view/View;

    return-object v0
.end method

.method public getPhotoImage()Lorg/telegram/messenger/ImageReceiver;
    .locals 1

    .line 381
    iget-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->childImage:Lorg/telegram/messenger/ImageReceiver;

    return-object v0
.end method

.method public getVideoBitmap(II)Landroid/graphics/Bitmap;
    .locals 1

    .line 374
    iget-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->overlayView:Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 377
    :cond_0
    invoke-static {v0}, Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;->access$000(Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;)Landroid/view/TextureView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/TextureView;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected invalidateViews()V
    .locals 1

    .line 798
    iget-boolean v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->isSimple:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->child:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 799
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 801
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->overlayView:Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;

    if-eqz v0, :cond_1

    .line 802
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_1
    return-void
.end method

.method public isInOverlayMode()Z
    .locals 1

    .line 358
    iget-boolean v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->inOverlayMode:Z

    return v0
.end method

.method public isInOverlayModeFor(Landroid/view/View;)Z
    .locals 1

    .line 362
    iget-boolean v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->inOverlayMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->child:Landroid/view/View;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 366
    invoke-direct {p0}, Lorg/telegram/ui/PinchToZoomHelper;->updateViewsLocation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->child:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 367
    iget v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->fragmentOffsetX:F

    neg-float v0, v0

    iget v1, p0, Lorg/telegram/ui/PinchToZoomHelper;->fragmentOffsetY:F

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 368
    iget-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->child:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setCallback(Lorg/telegram/ui/PinchToZoomHelper$Callback;)V
    .locals 0

    .line 712
    iput-object p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->callback:Lorg/telegram/ui/PinchToZoomHelper$Callback;

    return-void
.end method

.method public setClipBoundsListener(Lorg/telegram/ui/PinchToZoomHelper$ClipBoundsListener;)V
    .locals 0

    .line 695
    iput-object p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->clipBoundsListener:Lorg/telegram/ui/PinchToZoomHelper$ClipBoundsListener;

    return-void
.end method

.method public startZoom(Landroid/view/View;Lorg/telegram/messenger/ImageReceiver;Landroid/view/TextureView;Lorg/telegram/messenger/MessageObject;)V
    .locals 9

    .line 121
    iput-object p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->child:Landroid/view/View;

    .line 122
    iput-object p4, p0, Lorg/telegram/ui/PinchToZoomHelper;->messageObject:Lorg/telegram/messenger/MessageObject;

    .line 124
    iget-object p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->overlayView:Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->isSimple:Z

    if-nez p1, :cond_0

    .line 125
    new-instance p1, Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;

    iget-object v1, p0, Lorg/telegram/ui/PinchToZoomHelper;->parentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, p0, v1}, Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;-><init>(Lorg/telegram/ui/PinchToZoomHelper;Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->overlayView:Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;

    .line 126
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 127
    iget-object p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->overlayView:Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 128
    iget-object p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->overlayView:Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 131
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->fullImage:Lorg/telegram/messenger/ImageReceiver;

    if-nez p1, :cond_1

    .line 132
    new-instance p1, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {p1}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->fullImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v1, 0x2

    .line 133
    invoke-virtual {p1, v1}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeAlpha(B)V

    .line 134
    iget-object p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->fullImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeWithOldImage(Z)V

    .line 135
    iget-object p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->fullImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 137
    new-instance p1, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {p1}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->blurImage:Lorg/telegram/messenger/ImageReceiver;

    .line 138
    invoke-virtual {p1, v1}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeAlpha(B)V

    .line 139
    iget-object p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->blurImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeWithOldImage(Z)V

    .line 140
    iget-object p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->blurImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    :cond_1
    const/4 p1, 0x1

    .line 143
    iput-boolean p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->inOverlayMode:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 144
    iput v1, p0, Lorg/telegram/ui/PinchToZoomHelper;->finishProgress:F

    const/4 v2, 0x0

    .line 145
    iput v2, p0, Lorg/telegram/ui/PinchToZoomHelper;->progressToFullView:F

    .line 147
    iget-boolean v3, p0, Lorg/telegram/ui/PinchToZoomHelper;->isSimple:Z

    if-nez v3, :cond_c

    .line 148
    iget-object v3, p0, Lorg/telegram/ui/PinchToZoomHelper;->parentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lorg/telegram/ui/PinchToZoomHelper;->overlayView:Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    if-eqz p4, :cond_2

    .line 150
    invoke-virtual {p4}, Lorg/telegram/messenger/MessageObject;->hasMediaSpoilers()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p4, Lorg/telegram/messenger/MessageObject;->isMediaSpoilersRevealed:Z

    if-nez v3, :cond_2

    move v3, p1

    goto :goto_0

    :cond_2
    move v3, v0

    :goto_0
    iput-boolean v3, p0, Lorg/telegram/ui/PinchToZoomHelper;->hasMediaSpoiler:Z

    .line 151
    iget-object v3, p0, Lorg/telegram/ui/PinchToZoomHelper;->blurImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 152
    iget-object v3, p0, Lorg/telegram/ui/PinchToZoomHelper;->blurImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 153
    iget-object v3, p0, Lorg/telegram/ui/PinchToZoomHelper;->blurImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 156
    :cond_3
    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lorg/telegram/ui/PinchToZoomHelper;->hasMediaSpoiler:Z

    if-eqz v3, :cond_4

    .line 157
    iget-object v3, p0, Lorg/telegram/ui/PinchToZoomHelper;->blurImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->stackBlurBitmapMax(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 160
    :cond_4
    invoke-direct {p0, p4}, Lorg/telegram/ui/PinchToZoomHelper;->setFullImage(Lorg/telegram/messenger/MessageObject;)V

    .line 162
    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v3

    iput v3, p0, Lorg/telegram/ui/PinchToZoomHelper;->imageX:F

    .line 163
    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v3

    iput v3, p0, Lorg/telegram/ui/PinchToZoomHelper;->imageY:F

    .line 164
    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v3

    iput v3, p0, Lorg/telegram/ui/PinchToZoomHelper;->imageHeight:F

    .line 165
    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v3

    iput v3, p0, Lorg/telegram/ui/PinchToZoomHelper;->imageWidth:F

    .line 166
    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getBitmapHeight()I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lorg/telegram/ui/PinchToZoomHelper;->fullImageHeight:F

    .line 167
    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getBitmapWidth()I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lorg/telegram/ui/PinchToZoomHelper;->fullImageWidth:F

    .line 169
    iget v4, p0, Lorg/telegram/ui/PinchToZoomHelper;->fullImageHeight:F

    div-float v5, v4, v3

    iget v6, p0, Lorg/telegram/ui/PinchToZoomHelper;->imageHeight:F

    iget v7, p0, Lorg/telegram/ui/PinchToZoomHelper;->imageWidth:F

    div-float v8, v6, v7

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_6

    div-float v5, v4, v3

    div-float v8, v6, v7

    cmpg-float v5, v5, v8

    if-gez v5, :cond_5

    div-float/2addr v3, v4

    mul-float/2addr v3, v6

    .line 171
    iput v3, p0, Lorg/telegram/ui/PinchToZoomHelper;->fullImageWidth:F

    .line 172
    iput v6, p0, Lorg/telegram/ui/PinchToZoomHelper;->fullImageHeight:F

    goto :goto_1

    :cond_5
    div-float/2addr v4, v3

    mul-float/2addr v4, v7

    .line 174
    iput v4, p0, Lorg/telegram/ui/PinchToZoomHelper;->fullImageHeight:F

    .line 175
    iput v7, p0, Lorg/telegram/ui/PinchToZoomHelper;->fullImageWidth:F

    goto :goto_1

    .line 178
    :cond_6
    iput v6, p0, Lorg/telegram/ui/PinchToZoomHelper;->fullImageHeight:F

    .line 179
    iput v7, p0, Lorg/telegram/ui/PinchToZoomHelper;->fullImageWidth:F

    :goto_1
    if-eqz p4, :cond_a

    .line 183
    invoke-virtual {p4}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    invoke-virtual {v3, p4}, Lorg/telegram/messenger/MediaController;->isPlayingMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 184
    iput-boolean p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->isHardwareVideo:Z

    .line 185
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object p3

    iget-object v3, p0, Lorg/telegram/ui/PinchToZoomHelper;->overlayView:Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;

    invoke-static {v3}, Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;->access$000(Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;)Landroid/view/TextureView;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/PinchToZoomHelper;->overlayView:Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;

    invoke-static {v4}, Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;->access$100(Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/PinchToZoomHelper;->overlayView:Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;

    invoke-static {v5}, Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;->access$200(Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;)Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-virtual {p3, v3, v4, v5, p1}, Lorg/telegram/messenger/MediaController;->setTextureView(Landroid/view/TextureView;Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;Landroid/widget/FrameLayout;Z)V

    .line 186
    iget-object p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->overlayView:Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;

    invoke-static {p1}, Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;->access$200(Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 187
    iget-object p3, p0, Lorg/telegram/ui/PinchToZoomHelper;->overlayView:Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;

    invoke-static {p3}, Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;->access$200(Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;)Landroid/widget/FrameLayout;

    move-result-object p3

    sget v3, Lorg/telegram/messenger/R$id;->parent_tag:I

    invoke-virtual {p3, v3, p2}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 188
    iget p3, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float p3, p3

    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v3

    cmpl-float p3, p3, v3

    if-nez p3, :cond_7

    iget p3, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float p3, p3

    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v3

    cmpl-float p3, p3, v3

    if-eqz p3, :cond_8

    .line 189
    :cond_7
    iget-object p3, p0, Lorg/telegram/ui/PinchToZoomHelper;->overlayView:Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;

    invoke-static {p3}, Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;->access$100(Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object p3

    const/4 v3, 0x3

    invoke-virtual {p3, v3}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setResizeMode(I)V

    .line 190
    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result p3

    float-to-int p3, p3

    iput p3, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 191
    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result p3

    float-to-int p3, p3

    iput p3, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 192
    iget-object p3, p0, Lorg/telegram/ui/PinchToZoomHelper;->overlayView:Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;

    invoke-static {p3}, Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;->access$200(Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;)Landroid/widget/FrameLayout;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->overlayView:Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;

    invoke-static {p1}, Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;->access$000(Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;)Landroid/view/TextureView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/TextureView;->setScaleX(F)V

    .line 195
    iget-object p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->overlayView:Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;

    invoke-static {p1}, Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;->access$000(Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;)Landroid/view/TextureView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/TextureView;->setScaleY(F)V

    .line 197
    iget-object p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->callback:Lorg/telegram/ui/PinchToZoomHelper$Callback;

    if-eqz p1, :cond_9

    .line 198
    iget-object p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->overlayView:Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;

    invoke-static {p1}, Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;->access$300(Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    iget-object p3, p0, Lorg/telegram/ui/PinchToZoomHelper;->callback:Lorg/telegram/ui/PinchToZoomHelper$Callback;

    invoke-interface {p3}, Lorg/telegram/ui/PinchToZoomHelper$Callback;->getCurrentTextureView()Landroid/view/TextureView;

    move-result-object p3

    iget v1, p0, Lorg/telegram/ui/PinchToZoomHelper;->fullImageWidth:F

    float-to-int v1, v1

    iget v3, p0, Lorg/telegram/ui/PinchToZoomHelper;->fullImageHeight:F

    float-to-int v3, v3

    invoke-virtual {p3, v1, v3}, Landroid/view/TextureView;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/telegram/ui/Components/BackupImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 199
    iget-object p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->overlayView:Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;

    invoke-static {p1}, Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;->access$300(Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    iget p3, p0, Lorg/telegram/ui/PinchToZoomHelper;->fullImageWidth:F

    float-to-int p3, p3

    iget v1, p0, Lorg/telegram/ui/PinchToZoomHelper;->fullImageHeight:F

    float-to-int v1, v1

    invoke-virtual {p1, p3, v1}, Lorg/telegram/ui/Components/BackupImageView;->setSize(II)V

    .line 200
    iget-object p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->overlayView:Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;

    invoke-static {p1}, Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;->access$300(Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()[I

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius([I)V

    .line 202
    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->overlayView:Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;

    invoke-static {p1}, Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;->access$200(Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_2

    .line 204
    :cond_a
    iput-boolean v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->isHardwareVideo:Z

    .line 205
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->childImage:Lorg/telegram/messenger/ImageReceiver;

    .line 206
    iput-object p3, p0, Lorg/telegram/ui/PinchToZoomHelper;->childTextureView:Landroid/view/TextureView;

    .line 207
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 208
    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 209
    iget-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->childImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p3}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    .line 210
    instance-of v0, p3, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_b

    .line 211
    check-cast p3, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->overlayView:Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;

    invoke-virtual {p3, v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->addSecondParentView(Landroid/view/View;)V

    .line 212
    invoke-virtual {p3, p1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setInvalidateParentViewWithSecond(Z)V

    .line 214
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->childImage:Lorg/telegram/messenger/ImageReceiver;

    iget p3, p0, Lorg/telegram/ui/PinchToZoomHelper;->imageX:F

    iget v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->imageY:F

    iget v1, p0, Lorg/telegram/ui/PinchToZoomHelper;->imageWidth:F

    iget v3, p0, Lorg/telegram/ui/PinchToZoomHelper;->imageHeight:F

    invoke-virtual {p1, p3, v0, v1, v3}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 215
    iget-object p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->childImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()[I

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius([I)V

    .line 217
    iget-object p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->fullImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()[I

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius([I)V

    .line 218
    iget-object p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->overlayView:Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;

    invoke-static {p1}, Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;->access$200(Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 222
    :cond_c
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->callback:Lorg/telegram/ui/PinchToZoomHelper$Callback;

    if-eqz p1, :cond_d

    .line 223
    invoke-interface {p1, p4}, Lorg/telegram/ui/PinchToZoomHelper$Callback;->onZoomStarted(Lorg/telegram/messenger/MessageObject;)V

    .line 225
    :cond_d
    iput v2, p0, Lorg/telegram/ui/PinchToZoomHelper;->enterProgress:F

    return-void
.end method

.method protected zoomEnabled(Landroid/view/View;Lorg/telegram/messenger/ImageReceiver;)Z
    .locals 1

    .line 385
    iget-boolean p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->isSimple:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    .line 388
    :cond_0
    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 389
    instance-of p1, p1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz p1, :cond_2

    .line 390
    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isLoadingStream()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    return v0

    .line 396
    :cond_2
    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->hasNotThumb()Z

    move-result p1

    return p1
.end method
