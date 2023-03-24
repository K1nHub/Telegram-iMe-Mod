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

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->fullImage:Lorg/telegram/messenger/ImageReceiver;

    .line 57
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->blurImage:Lorg/telegram/messenger/ImageReceiver;

    .line 59
    new-instance v0, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    invoke-direct {v0}, Lorg/telegram/ui/Components/spoilers/SpoilerEffect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->mediaSpoilerEffect:Lorg/telegram/ui/Components/spoilers/SpoilerEffect;

    .line 60
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->path:Landroid/graphics/Path;

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 61
    iput-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->spoilerRadii:[F

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 102
    iput-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->clipTopBottom:[F

    .line 107
    iput-object p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->parentView:Landroid/view/ViewGroup;

    .line 108
    iput-object p2, p0, Lorg/telegram/ui/PinchToZoomHelper;->fragmentView:Landroid/view/ViewGroup;

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

.method static synthetic access$2300(Lorg/telegram/ui/PinchToZoomHelper;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lorg/telegram/ui/PinchToZoomHelper;->hasMediaSpoiler:Z

    return p0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/PinchToZoomHelper;)Lorg/telegram/messenger/ImageReceiver;
    .locals 0

    .line 47
    iget-object p0, p0, Lorg/telegram/ui/PinchToZoomHelper;->blurImage:Lorg/telegram/messenger/ImageReceiver;

    return-object p0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/PinchToZoomHelper;)[F
    .locals 0

    .line 47
    iget-object p0, p0, Lorg/telegram/ui/PinchToZoomHelper;->spoilerRadii:[F

    return-object p0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/PinchToZoomHelper;)Landroid/graphics/Path;
    .locals 0

    .line 47
    iget-object p0, p0, Lorg/telegram/ui/PinchToZoomHelper;->path:Landroid/graphics/Path;

    return-object p0
.end method

.method static synthetic access$2700(Lorg/telegram/ui/PinchToZoomHelper;)Lorg/telegram/ui/Components/spoilers/SpoilerEffect;
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

    .line 762
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    return v1

    .line 765
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

    .line 768
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

    .line 619
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 620
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionUserUpdatedPhoto;

    if-eqz v0, :cond_0

    return-object v2

    .line 623
    :cond_0
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    .line 626
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    aput v1, p2, v4

    .line 627
    aget v1, p2, v4

    if-nez v1, :cond_1

    .line 628
    aput v3, p2, v4

    .line 631
    :cond_1
    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->photoThumbsObject:Lorg/telegram/tgnet/TLObject;

    invoke-static {v0, p1}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;

    move-result-object p1

    return-object p1

    :cond_2
    if-eqz p2, :cond_c

    .line 633
    aput v3, p2, v4

    goto/16 :goto_0

    .line 636
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

    .line 637
    :cond_5
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isGif()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 638
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object p1

    return-object p1

    .line 640
    :cond_6
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->photoThumbs:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v1

    const/4 v5, 0x1

    invoke-static {v0, v1, v4, v2, v5}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZLorg/telegram/tgnet/TLRPC$PhotoSize;Z)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    if-eqz v0, :cond_8

    if-eqz p2, :cond_7

    .line 643
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    aput v1, p2, v4

    .line 644
    aget v1, p2, v4

    if-nez v1, :cond_7

    .line 645
    aput v3, p2, v4

    .line 648
    :cond_7
    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->photoThumbsObject:Lorg/telegram/tgnet/TLObject;

    invoke-static {v0, p1}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;

    move-result-object p1

    return-object p1

    :cond_8
    if-eqz p2, :cond_c

    .line 650
    aput v3, p2, v4

    goto :goto_0

    .line 653
    :cond_9
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    if-eqz v1, :cond_a

    .line 654
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    iget-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;->webPhoto:Lorg/telegram/tgnet/TLRPC$WebDocument;

    invoke-static {p1}, Lorg/telegram/messenger/WebFile;->createWithWebDocument(Lorg/telegram/tgnet/TLRPC$WebDocument;)Lorg/telegram/messenger/WebFile;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/ImageLocation;->getForWebFile(Lorg/telegram/messenger/WebFile;)Lorg/telegram/messenger/ImageLocation;

    move-result-object p1

    return-object p1

    .line 655
    :cond_a
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 656
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    .line 657
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->isDocumentHasThumb(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 658
    iget-object p1, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 v1, 0x5a

    invoke-static {p1, v1}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object p1

    if-eqz p2, :cond_b

    .line 660
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    aput v1, p2, v4

    .line 661
    aget v1, p2, v4

    if-nez v1, :cond_b

    .line 662
    aput v3, p2, v4

    .line 665
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

    .line 279
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->finishProgress:F

    .line 280
    invoke-virtual {p0}, Lorg/telegram/ui/PinchToZoomHelper;->invalidateViews()V

    return-void
.end method

.method private setFullImage(Lorg/telegram/messenger/MessageObject;)V
    .locals 13

    if-nez p1, :cond_0

    return-void

    .line 219
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isPhoto()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 223
    invoke-direct {p0, p1, v1}, Lorg/telegram/ui/PinchToZoomHelper;->getImageLocation(Lorg/telegram/messenger/MessageObject;[I)Lorg/telegram/messenger/ImageLocation;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 225
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

    .line 230
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

    .line 231
    iget-object p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->fullImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeAlpha(B)V

    .line 234
    :cond_3
    invoke-direct {p0}, Lorg/telegram/ui/PinchToZoomHelper;->updateViewsLocation()Z

    return-void
.end method

.method private updateViewsLocation()Z
    .locals 7

    .line 240
    iget-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->child:Landroid/view/View;

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 241
    :goto_0
    iget-object v4, p0, Lorg/telegram/ui/PinchToZoomHelper;->parentView:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    if-eq v0, v4, :cond_1

    if-nez v0, :cond_0

    return v5

    .line 245
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    .line 246
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 247
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    .line 252
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->child:Landroid/view/View;

    move v4, v1

    .line 253
    :goto_1
    iget-object v6, p0, Lorg/telegram/ui/PinchToZoomHelper;->fragmentView:Landroid/view/ViewGroup;

    if-eq v0, v6, :cond_3

    if-nez v0, :cond_2

    return v5

    .line 257
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v1, v6

    .line 258
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v4, v6

    .line 259
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_1

    .line 262
    :cond_3
    iput v1, p0, Lorg/telegram/ui/PinchToZoomHelper;->fragmentOffsetX:F

    .line 263
    iput v4, p0, Lorg/telegram/ui/PinchToZoomHelper;->fragmentOffsetY:F

    .line 265
    iput v2, p0, Lorg/telegram/ui/PinchToZoomHelper;->parentOffsetX:F

    .line 266
    iput v3, p0, Lorg/telegram/ui/PinchToZoomHelper;->parentOffsetY:F

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public checkPinchToZoom(Landroid/view/MotionEvent;Landroid/view/View;Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/messenger/MessageObject;)Z
    .locals 10

    .line 697
    invoke-virtual {p0, p2, p3}, Lorg/telegram/ui/PinchToZoomHelper;->zoomEnabled(Landroid/view/View;Lorg/telegram/messenger/ImageReceiver;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 700
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

    .line 711
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

    .line 714
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    if-ge v3, v8, :cond_4

    .line 715
    iget v8, p0, Lorg/telegram/ui/PinchToZoomHelper;->pointerId1:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    if-ne v8, v9, :cond_2

    move v6, v3

    .line 718
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

    .line 728
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

    .line 729
    invoke-virtual {p0}, Lorg/telegram/ui/PinchToZoomHelper;->isInOverlayMode()Z

    move-result v0

    if-nez v0, :cond_6

    .line 730
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

    .line 731
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v0, v1

    div-float/2addr v0, v4

    iput v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->pinchCenterX:F

    iput v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->pinchStartCenterX:F

    .line 732
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v0, v1

    div-float/2addr v0, v4

    iput v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->pinchCenterY:F

    iput v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->pinchStartCenterY:F

    .line 733
    iput v2, p0, Lorg/telegram/ui/PinchToZoomHelper;->pinchScale:F

    const/4 v0, 0x0

    .line 734
    iput v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->pinchTranslationX:F

    .line 735
    iput v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->pinchTranslationY:F

    .line 736
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 737
    invoke-virtual {p0, p2, p3, p4}, Lorg/telegram/ui/PinchToZoomHelper;->startZoom(Landroid/view/View;Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/messenger/MessageObject;)V

    .line 741
    :cond_6
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result p3

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result p4

    add-float/2addr p3, p4

    div-float/2addr p3, v4

    .line 742
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result p4

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    add-float/2addr p4, p1

    div-float/2addr p4, v4

    .line 746
    iget p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->pinchStartCenterX:F

    sub-float/2addr p1, p3

    .line 747
    iget p3, p0, Lorg/telegram/ui/PinchToZoomHelper;->pinchStartCenterY:F

    sub-float/2addr p3, p4

    neg-float p1, p1

    .line 748
    iget p4, p0, Lorg/telegram/ui/PinchToZoomHelper;->pinchScale:F

    div-float/2addr p1, p4

    iput p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->pinchTranslationX:F

    neg-float p1, p3

    div-float/2addr p1, p4

    .line 749
    iput p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->pinchTranslationY:F

    .line 750
    invoke-virtual {p0}, Lorg/telegram/ui/PinchToZoomHelper;->invalidateViews()V

    goto/16 :goto_3

    .line 723
    :cond_7
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/ui/PinchToZoomHelper;->isInPinchToZoomTouchMode:Z

    .line 724
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 725
    invoke-virtual {p0}, Lorg/telegram/ui/PinchToZoomHelper;->finishZoom()V

    return v1

    .line 751
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

    .line 752
    iput-boolean v1, p0, Lorg/telegram/ui/PinchToZoomHelper;->isInPinchToZoomTouchMode:Z

    if-eqz p2, :cond_b

    .line 753
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 754
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 756
    :cond_b
    invoke-virtual {p0}, Lorg/telegram/ui/PinchToZoomHelper;->finishZoom()V

    goto :goto_3

    .line 701
    :cond_c
    :goto_2
    iget-boolean p3, p0, Lorg/telegram/ui/PinchToZoomHelper;->isInPinchToZoomTouchMode:Z

    if-nez p3, :cond_d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p3

    if-ne p3, v3, :cond_d

    .line 702
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result p3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result p4

    sub-float/2addr p3, p4

    float-to-double p3, p3

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float/2addr v0, v3

    float-to-double v6, v0

    invoke-static {p3, p4, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p3

    double-to-float p3, p3

    iput p3, p0, Lorg/telegram/ui/PinchToZoomHelper;->pinchStartDistance:F

    .line 703
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result p3

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result p4

    add-float/2addr p3, p4

    div-float/2addr p3, v4

    iput p3, p0, Lorg/telegram/ui/PinchToZoomHelper;->pinchCenterX:F

    iput p3, p0, Lorg/telegram/ui/PinchToZoomHelper;->pinchStartCenterX:F

    .line 704
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p3

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result p4

    add-float/2addr p3, p4

    div-float/2addr p3, v4

    iput p3, p0, Lorg/telegram/ui/PinchToZoomHelper;->pinchCenterY:F

    iput p3, p0, Lorg/telegram/ui/PinchToZoomHelper;->pinchStartCenterY:F

    .line 705
    iput v2, p0, Lorg/telegram/ui/PinchToZoomHelper;->pinchScale:F

    .line 707
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p3

    iput p3, p0, Lorg/telegram/ui/PinchToZoomHelper;->pointerId1:I

    .line 708
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->pointerId2:I

    .line 709
    iput-boolean v5, p0, Lorg/telegram/ui/PinchToZoomHelper;->isInPinchToZoomTouchMode:Z

    .line 758
    :cond_d
    :goto_3
    invoke-virtual {p0, p2}, Lorg/telegram/ui/PinchToZoomHelper;->isInOverlayModeFor(Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public clear()V
    .locals 2

    .line 298
    iget-boolean v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->inOverlayMode:Z

    if-eqz v0, :cond_1

    .line 299
    iget-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->callback:Lorg/telegram/ui/PinchToZoomHelper$Callback;

    if-eqz v0, :cond_0

    .line 300
    iget-object v1, p0, Lorg/telegram/ui/PinchToZoomHelper;->messageObject:Lorg/telegram/messenger/MessageObject;

    invoke-interface {v0, v1}, Lorg/telegram/ui/PinchToZoomHelper$Callback;->onZoomFinished(Lorg/telegram/messenger/MessageObject;)V

    :cond_0
    const/4 v0, 0x0

    .line 302
    iput-boolean v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->inOverlayMode:Z

    .line 304
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->overlayView:Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 305
    iget-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->parentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/PinchToZoomHelper;->overlayView:Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 306
    iget-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->overlayView:Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;

    invoke-static {v0}, Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;->access$300(Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    .line 308
    iget-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->childImage:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_2

    .line 309
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 310
    instance-of v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v1, :cond_2

    .line 311
    check-cast v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget-object v1, p0, Lorg/telegram/ui/PinchToZoomHelper;->overlayView:Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->removeSecondParentView(Landroid/view/View;)V

    .line 315
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->child:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 316
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 317
    iput-object v1, p0, Lorg/telegram/ui/PinchToZoomHelper;->child:Landroid/view/View;

    .line 319
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->childImage:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_4

    .line 320
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 321
    iget-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->childImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    .line 322
    iput-object v1, p0, Lorg/telegram/ui/PinchToZoomHelper;->childImage:Lorg/telegram/messenger/ImageReceiver;

    .line 324
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->fullImage:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_5

    .line 325
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 326
    iget-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->fullImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    .line 327
    iput-object v1, p0, Lorg/telegram/ui/PinchToZoomHelper;->fullImage:Lorg/telegram/messenger/ImageReceiver;

    .line 329
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->blurImage:Lorg/telegram/messenger/ImageReceiver;

    if-eqz v0, :cond_6

    .line 330
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 331
    iget-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->blurImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    .line 332
    iput-object v1, p0, Lorg/telegram/ui/PinchToZoomHelper;->blurImage:Lorg/telegram/messenger/ImageReceiver;

    .line 335
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

    .line 271
    iget-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->finishTransition:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->inOverlayMode:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 274
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/PinchToZoomHelper;->updateViewsLocation()Z

    move-result v0

    if-nez v0, :cond_1

    .line 275
    invoke-virtual {p0}, Lorg/telegram/ui/PinchToZoomHelper;->clear()V

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 277
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->finishTransition:Landroid/animation/ValueAnimator;

    .line 278
    new-instance v1, Lorg/telegram/ui/PinchToZoomHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PinchToZoomHelper$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/PinchToZoomHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 282
    iget-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->finishTransition:Landroid/animation/ValueAnimator;

    new-instance v1, Lorg/telegram/ui/PinchToZoomHelper$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/PinchToZoomHelper$1;-><init>(Lorg/telegram/ui/PinchToZoomHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 292
    iget-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->finishTransition:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xdc

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 293
    iget-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->finishTransition:Landroid/animation/ValueAnimator;

    sget-object v1, Lorg/telegram/ui/Components/CubicBezierInterpolator;->DEFAULT:Lorg/telegram/ui/Components/CubicBezierInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 294
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

    .line 781
    iget-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->child:Landroid/view/View;

    return-object v0
.end method

.method public getPhotoImage()Lorg/telegram/messenger/ImageReceiver;
    .locals 1

    .line 367
    iget-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->childImage:Lorg/telegram/messenger/ImageReceiver;

    return-object v0
.end method

.method public getVideoBitmap(II)Landroid/graphics/Bitmap;
    .locals 1

    .line 360
    iget-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->overlayView:Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 363
    :cond_0
    invoke-static {v0}, Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;->access$000(Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;)Landroid/view/TextureView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/TextureView;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected invalidateViews()V
    .locals 1

    .line 775
    iget-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->overlayView:Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;

    if-eqz v0, :cond_0

    .line 776
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method public isInOverlayMode()Z
    .locals 1

    .line 344
    iget-boolean v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->inOverlayMode:Z

    return v0
.end method

.method public isInOverlayModeFor(Landroid/view/View;)Z
    .locals 1

    .line 348
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

    .line 352
    invoke-direct {p0}, Lorg/telegram/ui/PinchToZoomHelper;->updateViewsLocation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->child:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 353
    iget v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->fragmentOffsetX:F

    neg-float v0, v0

    iget v1, p0, Lorg/telegram/ui/PinchToZoomHelper;->fragmentOffsetY:F

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 354
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

    .line 689
    iput-object p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->callback:Lorg/telegram/ui/PinchToZoomHelper$Callback;

    return-void
.end method

.method public setClipBoundsListener(Lorg/telegram/ui/PinchToZoomHelper$ClipBoundsListener;)V
    .locals 0

    .line 672
    iput-object p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->clipBoundsListener:Lorg/telegram/ui/PinchToZoomHelper$ClipBoundsListener;

    return-void
.end method

.method public startZoom(Landroid/view/View;Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/messenger/MessageObject;)V
    .locals 9

    .line 112
    iput-object p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->child:Landroid/view/View;

    .line 113
    iput-object p3, p0, Lorg/telegram/ui/PinchToZoomHelper;->messageObject:Lorg/telegram/messenger/MessageObject;

    .line 115
    iget-object p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->overlayView:Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 116
    new-instance p1, Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;

    iget-object v1, p0, Lorg/telegram/ui/PinchToZoomHelper;->parentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, p0, v1}, Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;-><init>(Lorg/telegram/ui/PinchToZoomHelper;Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->overlayView:Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;

    .line 117
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 118
    iget-object p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->overlayView:Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 119
    iget-object p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->overlayView:Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 122
    :cond_0
    iget-object p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->fullImage:Lorg/telegram/messenger/ImageReceiver;

    if-nez p1, :cond_1

    .line 123
    new-instance p1, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {p1}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->fullImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v1, 0x2

    .line 124
    invoke-virtual {p1, v1}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeAlpha(B)V

    .line 125
    iget-object p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->fullImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeWithOldImage(Z)V

    .line 126
    iget-object p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->fullImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 128
    new-instance p1, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {p1}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->blurImage:Lorg/telegram/messenger/ImageReceiver;

    .line 129
    invoke-virtual {p1, v1}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeAlpha(B)V

    .line 130
    iget-object p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->blurImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setCrossfadeWithOldImage(Z)V

    .line 131
    iget-object p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->blurImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p1}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    :cond_1
    const/4 p1, 0x1

    .line 134
    iput-boolean p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->inOverlayMode:Z

    .line 135
    iget-object v1, p0, Lorg/telegram/ui/PinchToZoomHelper;->parentView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lorg/telegram/ui/PinchToZoomHelper;->overlayView:Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 136
    iput v1, p0, Lorg/telegram/ui/PinchToZoomHelper;->finishProgress:F

    const/4 v2, 0x0

    .line 137
    iput v2, p0, Lorg/telegram/ui/PinchToZoomHelper;->progressToFullView:F

    if-eqz p3, :cond_2

    .line 139
    invoke-virtual {p3}, Lorg/telegram/messenger/MessageObject;->hasMediaSpoilers()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p3, Lorg/telegram/messenger/MessageObject;->isMediaSpoilersRevealed:Z

    if-nez v3, :cond_2

    move v3, p1

    goto :goto_0

    :cond_2
    move v3, v0

    :goto_0
    iput-boolean v3, p0, Lorg/telegram/ui/PinchToZoomHelper;->hasMediaSpoiler:Z

    .line 140
    iget-object v3, p0, Lorg/telegram/ui/PinchToZoomHelper;->blurImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 141
    iget-object v3, p0, Lorg/telegram/ui/PinchToZoomHelper;->blurImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 142
    iget-object v3, p0, Lorg/telegram/ui/PinchToZoomHelper;->blurImage:Lorg/telegram/messenger/ImageReceiver;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 145
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

    .line 146
    iget-object v3, p0, Lorg/telegram/ui/PinchToZoomHelper;->blurImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->stackBlurBitmapMax(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 149
    :cond_4
    invoke-direct {p0, p3}, Lorg/telegram/ui/PinchToZoomHelper;->setFullImage(Lorg/telegram/messenger/MessageObject;)V

    .line 151
    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v3

    iput v3, p0, Lorg/telegram/ui/PinchToZoomHelper;->imageX:F

    .line 152
    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v3

    iput v3, p0, Lorg/telegram/ui/PinchToZoomHelper;->imageY:F

    .line 153
    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v3

    iput v3, p0, Lorg/telegram/ui/PinchToZoomHelper;->imageHeight:F

    .line 154
    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v3

    iput v3, p0, Lorg/telegram/ui/PinchToZoomHelper;->imageWidth:F

    .line 155
    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getBitmapHeight()I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lorg/telegram/ui/PinchToZoomHelper;->fullImageHeight:F

    .line 156
    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getBitmapWidth()I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lorg/telegram/ui/PinchToZoomHelper;->fullImageWidth:F

    .line 158
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

    .line 160
    iput v3, p0, Lorg/telegram/ui/PinchToZoomHelper;->fullImageWidth:F

    .line 161
    iput v6, p0, Lorg/telegram/ui/PinchToZoomHelper;->fullImageHeight:F

    goto :goto_1

    :cond_5
    div-float/2addr v4, v3

    mul-float/2addr v4, v7

    .line 163
    iput v4, p0, Lorg/telegram/ui/PinchToZoomHelper;->fullImageHeight:F

    .line 164
    iput v7, p0, Lorg/telegram/ui/PinchToZoomHelper;->fullImageWidth:F

    goto :goto_1

    .line 167
    :cond_6
    iput v6, p0, Lorg/telegram/ui/PinchToZoomHelper;->fullImageHeight:F

    .line 168
    iput v7, p0, Lorg/telegram/ui/PinchToZoomHelper;->fullImageWidth:F

    :goto_1
    if-eqz p3, :cond_a

    .line 172
    invoke-virtual {p3}, Lorg/telegram/messenger/MessageObject;->isVideo()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    invoke-virtual {v3, p3}, Lorg/telegram/messenger/MediaController;->isPlayingMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 173
    iput-boolean p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->isHardwareVideo:Z

    .line 174
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/PinchToZoomHelper;->overlayView:Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;

    invoke-static {v4}, Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;->access$000(Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;)Landroid/view/TextureView;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/PinchToZoomHelper;->overlayView:Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;

    invoke-static {v5}, Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;->access$100(Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/PinchToZoomHelper;->overlayView:Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;

    invoke-static {v6}, Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;->access$200(Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;)Landroid/widget/FrameLayout;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6, p1}, Lorg/telegram/messenger/MediaController;->setTextureView(Landroid/view/TextureView;Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;Landroid/widget/FrameLayout;Z)V

    .line 175
    iget-object p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->overlayView:Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;

    invoke-static {p1}, Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;->access$200(Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 176
    iget-object v3, p0, Lorg/telegram/ui/PinchToZoomHelper;->overlayView:Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;

    invoke-static {v3}, Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;->access$200(Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;)Landroid/widget/FrameLayout;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/R$id;->parent_tag:I

    invoke-virtual {v3, v4, p2}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    .line 177
    iget v3, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float v3, v3

    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v4

    cmpl-float v3, v3, v4

    if-nez v3, :cond_7

    iget v3, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-float v3, v3

    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v4

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_8

    .line 178
    :cond_7
    iget-object v3, p0, Lorg/telegram/ui/PinchToZoomHelper;->overlayView:Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;

    invoke-static {v3}, Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;->access$100(Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;)Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setResizeMode(I)V

    .line 179
    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v3

    float-to-int v3, v3

    iput v3, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 180
    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v3

    float-to-int v3, v3

    iput v3, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 181
    iget-object v3, p0, Lorg/telegram/ui/PinchToZoomHelper;->overlayView:Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;

    invoke-static {v3}, Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;->access$200(Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->overlayView:Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;

    invoke-static {p1}, Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;->access$000(Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;)Landroid/view/TextureView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/TextureView;->setScaleX(F)V

    .line 184
    iget-object p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->overlayView:Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;

    invoke-static {p1}, Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;->access$000(Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;)Landroid/view/TextureView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/TextureView;->setScaleY(F)V

    .line 186
    iget-object p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->callback:Lorg/telegram/ui/PinchToZoomHelper$Callback;

    if-eqz p1, :cond_9

    .line 187
    iget-object p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->overlayView:Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;

    invoke-static {p1}, Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;->access$300(Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/PinchToZoomHelper;->callback:Lorg/telegram/ui/PinchToZoomHelper$Callback;

    invoke-interface {v1}, Lorg/telegram/ui/PinchToZoomHelper$Callback;->getCurrentTextureView()Landroid/view/TextureView;

    move-result-object v1

    iget v3, p0, Lorg/telegram/ui/PinchToZoomHelper;->fullImageWidth:F

    float-to-int v3, v3

    iget v4, p0, Lorg/telegram/ui/PinchToZoomHelper;->fullImageHeight:F

    float-to-int v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/view/TextureView;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Components/BackupImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 188
    iget-object p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->overlayView:Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;

    invoke-static {p1}, Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;->access$300(Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    iget v1, p0, Lorg/telegram/ui/PinchToZoomHelper;->fullImageWidth:F

    float-to-int v1, v1

    iget v3, p0, Lorg/telegram/ui/PinchToZoomHelper;->fullImageHeight:F

    float-to-int v3, v3

    invoke-virtual {p1, v1, v3}, Lorg/telegram/ui/Components/BackupImageView;->setSize(II)V

    .line 189
    iget-object p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->overlayView:Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;

    invoke-static {p1}, Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;->access$300(Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;)Lorg/telegram/ui/Components/BackupImageView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()[I

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius([I)V

    .line 191
    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->overlayView:Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;

    invoke-static {p1}, Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;->access$200(Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_2

    .line 193
    :cond_a
    iput-boolean v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->isHardwareVideo:Z

    .line 194
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->childImage:Lorg/telegram/messenger/ImageReceiver;

    .line 195
    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    .line 196
    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 197
    iget-object v1, p0, Lorg/telegram/ui/PinchToZoomHelper;->childImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    .line 198
    instance-of v1, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v1, :cond_b

    .line 199
    check-cast v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget-object v1, p0, Lorg/telegram/ui/PinchToZoomHelper;->overlayView:Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->addSecondParentView(Landroid/view/View;)V

    .line 200
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setInvalidateParentViewWithSecond(Z)V

    .line 202
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->childImage:Lorg/telegram/messenger/ImageReceiver;

    iget v0, p0, Lorg/telegram/ui/PinchToZoomHelper;->imageX:F

    iget v1, p0, Lorg/telegram/ui/PinchToZoomHelper;->imageY:F

    iget v3, p0, Lorg/telegram/ui/PinchToZoomHelper;->imageWidth:F

    iget v4, p0, Lorg/telegram/ui/PinchToZoomHelper;->imageHeight:F

    invoke-virtual {p1, v0, v1, v3, v4}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 203
    iget-object p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->childImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius([I)V

    .line 205
    iget-object p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->fullImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()[I

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setRoundRadius([I)V

    .line 206
    iget-object p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->overlayView:Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;

    invoke-static {p1}, Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;->access$200(Lorg/telegram/ui/PinchToZoomHelper$ZoomOverlayView;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 209
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/PinchToZoomHelper;->callback:Lorg/telegram/ui/PinchToZoomHelper$Callback;

    if-eqz p1, :cond_c

    .line 210
    invoke-interface {p1, p3}, Lorg/telegram/ui/PinchToZoomHelper$Callback;->onZoomStarted(Lorg/telegram/messenger/MessageObject;)V

    .line 212
    :cond_c
    iput v2, p0, Lorg/telegram/ui/PinchToZoomHelper;->enterProgress:F

    return-void
.end method

.method protected zoomEnabled(Landroid/view/View;Lorg/telegram/messenger/ImageReceiver;)Z
    .locals 0

    .line 371
    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 372
    instance-of p1, p1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz p1, :cond_1

    .line 373
    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isLoadingStream()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 379
    :cond_1
    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->hasNotThumb()Z

    move-result p1

    return p1
.end method
