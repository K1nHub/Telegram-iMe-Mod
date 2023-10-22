.class Lorg/telegram/ui/ArticleViewer$BlockVideoCell;
.super Landroid/widget/FrameLayout;
.source "ArticleViewer.java"

# interfaces
.implements Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;
.implements Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlockVideoCell"
.end annotation


# instance fields
.field private TAG:I

.field private aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

.field private autoDownload:Z

.field private buttonPressed:I

.field private buttonState:I

.field private buttonX:I

.field private buttonY:I

.field private cancelLoading:Z

.field private captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

.field private channelCell:Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

.field private creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

.field private creditOffset:I

.field private currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

.field private currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

.field private currentType:I

.field private firstFrameRendered:Z

.field private groupPosition:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

.field private imageView:Lorg/telegram/messenger/ImageReceiver;

.field private isFirst:Z

.field private isGif:Z

.field private parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

.field private parentBlock:Lorg/telegram/tgnet/TLRPC$PageBlock;

.field private photoPressed:Z

.field public playFrom:J

.field private radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

.field private textX:I

.field private textY:I

.field private textureView:Landroid/view/TextureView;

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;I)V
    .locals 5

    .line 6211
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    .line 6212
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 6213
    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    const/4 p3, 0x0

    .line 6215
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 6216
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    const/4 v1, 0x1

    .line 6217
    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setNeedsQualityThumb(Z)V

    .line 6218
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setShouldGenerateQualityThumb(Z)V

    .line 6219
    iput p4, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentType:I

    .line 6220
    new-instance p4, Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p4, p0}, Lorg/telegram/ui/Components/RadialProgress2;-><init>(Landroid/view/View;)V

    iput-object p4, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    const/4 v0, -0x1

    .line 6221
    invoke-virtual {p4, v0}, Lorg/telegram/ui/Components/RadialProgress2;->setProgressColor(I)V

    .line 6222
    iget-object p4, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    const/high16 v2, 0x66000000

    const/high16 v3, 0x7f000000

    const v4, -0x262627

    invoke-virtual {p4, v2, v3, v0, v4}, Lorg/telegram/ui/Components/RadialProgress2;->setColors(IIII)V

    .line 6223
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->access$11500(Lorg/telegram/ui/ArticleViewer;)I

    move-result p4

    invoke-static {p4}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object p4

    invoke-virtual {p4}, Lorg/telegram/messenger/DownloadController;->generateObserverTag()I

    move-result p4

    iput p4, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->TAG:I

    .line 6224
    new-instance p4, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-direct {p4, p1, p2, v2, v1}, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;I)V

    iput-object p4, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->channelCell:Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

    .line 6226
    new-instance p1, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    .line 6227
    invoke-virtual {p1, p3}, Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;->setResizeMode(I)V

    .line 6228
    new-instance p1, Landroid/view/TextureView;

    invoke-direct {p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->textureView:Landroid/view/TextureView;

    .line 6229
    invoke-virtual {p1, p3}, Landroid/view/TextureView;->setOpaque(Z)V

    .line 6230
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->textureView:Landroid/view/TextureView;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 6232
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 6233
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->channelCell:Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

    const/4 p2, -0x2

    invoke-static {v0, p2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$10300(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)V
    .locals 0

    .line 6173
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->startVideoPlayer()V

    return-void
.end method

.method static synthetic access$14300(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Landroid/view/TextureView;
    .locals 0

    .line 6173
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->textureView:Landroid/view/TextureView;

    return-object p0
.end method

.method static synthetic access$17600(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;
    .locals 0

    .line 6173
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    return-object p0
.end method

.method static synthetic access$17802(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;)Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;
    .locals 0

    .line 6173
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->groupPosition:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    return-object p1
.end method

.method static synthetic access$22100(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Lorg/telegram/messenger/ImageReceiver;
    .locals 0

    .line 6173
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    return-object p0
.end method

.method static synthetic access$22202(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;Z)Z
    .locals 0

    .line 6173
    iput-boolean p1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->firstFrameRendered:Z

    return p1
.end method

.method private didPressedButton(Z)V
    .locals 13

    .line 6527
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 6528
    iput-boolean v1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->cancelLoading:Z

    .line 6529
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    .line 6530
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->isGif:Z

    if-eqz v0, :cond_0

    .line 6531
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 v1, 0x28

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    .line 6532
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0, v1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v6

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    const/4 v10, 0x0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$000(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v11

    const/4 v12, 0x1

    const-string v7, "80_80_b"

    invoke-virtual/range {v3 .. v12}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_0

    .line 6534
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$11500(Lorg/telegram/ui/ArticleViewer;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$000(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v2, v2}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;II)V

    .line 6536
    :goto_0
    iput v2, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonState:I

    .line 6537
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->getIconForCurrentState()I

    move-result v1

    invoke-virtual {v0, v1, v2, p1}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    .line 6538
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_2

    :cond_1
    if-ne v0, v2, :cond_3

    .line 6540
    iput-boolean v2, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->cancelLoading:Z

    .line 6541
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->isGif:Z

    if-eqz v0, :cond_2

    .line 6542
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->cancelLoadImage()V

    goto :goto_1

    .line 6544
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$11500(Lorg/telegram/ui/ArticleViewer;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 6546
    :goto_1
    iput v1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonState:I

    .line 6547
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->getIconForCurrentState()I

    move-result v2

    invoke-virtual {v0, v2, v1, p1}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    .line 6548
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_2

    :cond_3
    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    .line 6550
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/ImageReceiver;->setAllowStartAnimation(Z)V

    .line 6551
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->startAnimation()V

    const/4 v0, -0x1

    .line 6552
    iput v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonState:I

    .line 6553
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->getIconForCurrentState()I

    move-result v2

    invoke-virtual {v0, v2, v1, p1}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    goto :goto_2

    :cond_4
    const/4 p1, 0x3

    if-ne v0, p1, :cond_5

    .line 6555
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/ArticleViewer;->openPhoto(Lorg/telegram/tgnet/TLRPC$PageBlock;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Z

    :cond_5
    :goto_2
    return-void
.end method

.method private getIconForCurrentState()I
    .locals 4

    .line 6475
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonState:I

    const/4 v1, 0x2

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x3

    if-ne v0, v2, :cond_1

    return v3

    :cond_1
    if-ne v0, v1, :cond_2

    const/16 v0, 0x8

    return v0

    :cond_2
    if-ne v0, v3, :cond_3

    const/4 v0, 0x0

    return v0

    :cond_3
    const/4 v0, 0x4

    return v0
.end method

.method private startVideoPlayer()V
    .locals 4

    .line 6577
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 6583
    :cond_0
    new-instance v1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell$1;

    invoke-direct {v1, p0}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell$1;-><init>(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)V

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->textureView:Landroid/view/TextureView;

    .line 6597
    invoke-virtual {v1, v2}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->with(Landroid/view/TextureView;)Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    .line 6599
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    .line 6600
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$11500(Lorg/telegram/ui/ArticleViewer;)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$000(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lorg/telegram/messenger/FileStreamLoadOperation;->prepareUri(ILorg/telegram/tgnet/TLRPC$Document;Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 6605
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    iget-wide v2, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->playFrom:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->seekTo(J)V

    .line 6606
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, v1, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->preparePlayer(Landroid/net/Uri;Z)V

    .line 6607
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    invoke-virtual {v0}, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->play()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    .line 6238
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->pinchToZoomHelper:Lorg/telegram/ui/PinchToZoomHelper;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/PinchToZoomHelper;->isInOverlayModeFor(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 6241
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public fillTextLayoutBlocks(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/Cells/TextSelectionHelper$TextLayoutBlock;",
            ">;)V"
        }
    .end annotation

    .line 6659
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_0

    .line 6660
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6662
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_1

    .line 6663
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public getObserverTag()I
    .locals 1

    .line 6642
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->TAG:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 6571
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 6572
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onAttachedToWindow()Z

    const/4 v0, 0x0

    .line 6573
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->updateButtonState(Z)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 6562
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 6563
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->onDetachedFromWindow()V

    .line 6564
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$11500(Lorg/telegram/ui/ArticleViewer;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/DownloadController;->removeLoadingFileObserver(Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    const-wide/16 v0, 0x0

    .line 6565
    iput-wide v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->playFrom:J

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 6438
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    if-nez v0, :cond_0

    return-void

    .line 6441
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->hasBitmapImage()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getCurrentAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 6442
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getDrawRegion()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$14000()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 6444
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->pinchToZoomHelper:Lorg/telegram/ui/PinchToZoomHelper;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/PinchToZoomHelper;->isInOverlayModeFor(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 6445
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 6448
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 6449
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 6450
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->textX:I

    int-to-float v0, v0

    iget v2, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->textY:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6451
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v2, 0x1

    invoke-static {v0, p1, p0, v1}, Lorg/telegram/ui/ArticleViewer;->access$14100(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;I)V

    .line 6452
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v0, p1, p0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 6453
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_4
    move v2, v1

    .line 6455
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_5

    .line 6456
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 6457
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->textX:I

    int-to-float v0, v0

    iget v3, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->textY:I

    iget v4, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->creditOffset:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6458
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0, p1, p0, v2}, Lorg/telegram/ui/ArticleViewer;->access$14100(Lorg/telegram/ui/ArticleViewer;Landroid/graphics/Canvas;Lorg/telegram/ui/Cells/TextSelectionHelper$ArticleSelectableView;I)V

    .line 6459
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v0, p1, p0}, Lorg/telegram/ui/ArticleViewer$DrawingText;->draw(Landroid/graphics/Canvas;Landroid/view/View;)V

    .line 6460
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 6462
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->level:I

    if-lez v0, :cond_7

    const/16 v0, 0x12

    .line 6463
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v3, v0

    const/4 v4, 0x0

    const/16 v0, 0x14

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$PageBlock;->bottom:Z

    if-eqz v2, :cond_6

    const/4 v1, 0x6

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    :cond_6
    sub-int/2addr v0, v1

    int-to-float v6, v0

    invoke-static {}, Lorg/telegram/ui/ArticleViewer;->access$14200()Landroid/graphics/Paint;

    move-result-object v7

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 6465
    :cond_7
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 6467
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v0, v0, Lorg/telegram/ui/ArticleViewer;->pinchToZoomHelper:Lorg/telegram/ui/PinchToZoomHelper;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/PinchToZoomHelper;->isInOverlayModeFor(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 6468
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getVisible()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 6469
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/RadialProgress2;->draw(Landroid/graphics/Canvas;)V

    :cond_8
    return-void
.end method

.method public onFailedDownload(Ljava/lang/String;Z)V
    .locals 0

    const/4 p1, 0x0

    .line 6613
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->updateButtonState(Z)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 6647
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 v0, 0x1

    .line 6648
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 6649
    new-instance v0, Ljava/lang/StringBuilder;

    sget v1, Lorg/telegram/messenger/R$string;->AttachVideo:I

    const-string v2, "AttachVideo"

    invoke-static {v2, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6650
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v1, :cond_0

    const-string v1, ", "

    .line 6651
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6652
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 6654
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 31

    move-object/from16 v9, p0

    .line 6307
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 6309
    iget v1, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentType:I

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-ne v1, v12, :cond_0

    .line 6310
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 6311
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    :goto_0
    move v13, v0

    goto :goto_1

    :cond_0
    if-ne v1, v11, :cond_1

    .line 6313
    iget-object v1, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->groupPosition:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    iget v1, v1, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->ph:F

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    goto :goto_0

    :cond_1
    move v13, v0

    const/4 v1, 0x0

    .line 6316
    :goto_1
    iget-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    if-eqz v0, :cond_1a

    .line 6321
    iget v2, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentType:I

    const/16 v3, 0x12

    if-nez v2, :cond_2

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->level:I

    if-lez v0, :cond_2

    mul-int/lit8 v0, v0, 0xe

    .line 6322
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->textX:I

    .line 6323
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    add-int/2addr v2, v0

    sub-int v2, v13, v2

    move v8, v2

    goto :goto_2

    .line 6327
    :cond_2
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iput v0, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->textX:I

    const/16 v0, 0x24

    .line 6328
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    sub-int v0, v13, v0

    move v8, v0

    move v2, v13

    const/4 v0, 0x0

    .line 6330
    :goto_2
    iget-object v3, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v14, 0x4

    const/16 v15, 0x8

    if-eqz v3, :cond_13

    const/16 v3, 0x30

    .line 6331
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v4

    .line 6332
    iget-object v5, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {v5, v3}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v3

    .line 6333
    iget v5, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentType:I

    if-nez v5, :cond_b

    .line 6336
    iget-object v5, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_4

    .line 6337
    iget-object v7, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 6338
    instance-of v10, v7, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v10, :cond_3

    int-to-float v1, v2

    .line 6339
    iget v5, v7, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    int-to-float v5, v5

    div-float/2addr v1, v5

    .line 6340
    iget v5, v7, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I

    int-to-float v5, v5

    mul-float/2addr v1, v5

    float-to-int v1, v1

    move v5, v12

    goto :goto_4

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_4
    const/high16 v6, 0x42c80000    # 100.0f

    if-eqz v3, :cond_5

    .line 6345
    iget v7, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    int-to-float v7, v7

    goto :goto_5

    :cond_5
    move v7, v6

    :goto_5
    if-eqz v3, :cond_6

    .line 6346
    iget v6, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    int-to-float v6, v6

    :cond_6
    if-nez v5, :cond_7

    int-to-float v1, v2

    div-float/2addr v1, v7

    mul-float/2addr v1, v6

    float-to-int v1, v1

    .line 6351
    :cond_7
    iget-object v5, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->parentBlock:Lorg/telegram/tgnet/TLRPC$PageBlock;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCover;

    if-eqz v5, :cond_8

    .line 6352
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_6

    .line 6354
    :cond_8
    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v10, v5, Landroid/graphics/Point;->x:I

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/16 v10, 0x38

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v10

    sub-int/2addr v5, v10

    int-to-float v5, v5

    const v10, 0x3f666666    # 0.9f

    mul-float/2addr v5, v10

    float-to-int v5, v5

    if-le v1, v5, :cond_9

    int-to-float v1, v5

    div-float/2addr v1, v6

    mul-float/2addr v1, v7

    float-to-int v1, v1

    sub-int v2, v13, v0

    sub-int/2addr v2, v1

    .line 6359
    div-int/2addr v2, v11

    add-int/2addr v0, v2

    move v2, v1

    move v1, v5

    :cond_9
    :goto_6
    if-nez v1, :cond_a

    const/16 v1, 0x64

    .line 6363
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    goto :goto_7

    :cond_a
    if-ge v1, v4, :cond_d

    move v1, v4

    goto :goto_7

    :cond_b
    if-ne v5, v11, :cond_d

    .line 6369
    iget-object v5, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->groupPosition:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    iget v5, v5, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/2addr v5, v11

    if-nez v5, :cond_c

    .line 6370
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int/2addr v2, v5

    .line 6372
    :cond_c
    iget-object v5, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->groupPosition:Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;

    iget v5, v5, Lorg/telegram/messenger/MessageObject$GroupedMessagePosition;->flags:I

    and-int/2addr v5, v15

    if-nez v5, :cond_d

    .line 6373
    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    sub-int v5, v1, v5

    move/from16 v30, v2

    move v2, v1

    move v1, v5

    move/from16 v5, v30

    goto :goto_8

    :cond_d
    :goto_7
    move v5, v2

    move v2, v1

    .line 6376
    :goto_8
    iget-object v6, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    iget-object v7, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/ImageReceiver;->setQualityThumbDocument(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 6377
    iget-boolean v6, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->isFirst:Z

    if-nez v6, :cond_f

    iget v6, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentType:I

    if-eq v6, v12, :cond_f

    if-eq v6, v11, :cond_f

    iget-object v6, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$PageBlock;->level:I

    if-lez v6, :cond_e

    goto :goto_9

    :cond_e
    invoke-static {v15}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    goto :goto_a

    :cond_f
    :goto_9
    const/4 v6, 0x0

    .line 6378
    :goto_a
    iget-object v7, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    int-to-float v10, v0

    int-to-float v11, v6

    int-to-float v15, v5

    int-to-float v12, v1

    invoke-virtual {v7, v10, v11, v15, v12}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(FFFF)V

    .line 6379
    iget-boolean v7, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->isGif:Z

    const/4 v10, 0x0

    if-eqz v7, :cond_12

    .line 6380
    iget-object v7, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v7}, Lorg/telegram/ui/ArticleViewer;->access$11500(Lorg/telegram/ui/ArticleViewer;)I

    move-result v7

    invoke-static {v7}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v7

    iget-object v11, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v11, v11, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    invoke-virtual {v7, v14, v11, v12}, Lorg/telegram/messenger/DownloadController;->canDownloadMedia(IJ)Z

    move-result v7

    iput-boolean v7, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->autoDownload:Z

    .line 6381
    iget-object v7, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v7}, Lorg/telegram/ui/ArticleViewer;->access$11500(Lorg/telegram/ui/ArticleViewer;)I

    move-result v7

    invoke-static {v7}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v7

    iget-object v11, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v12, 0x1

    invoke-virtual {v7, v11, v12}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v7

    .line 6382
    iget-boolean v11, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->autoDownload:Z

    if-nez v11, :cond_11

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_10

    goto :goto_b

    .line 6387
    :cond_10
    iget-object v7, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    iget-object v10, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v10}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v10

    invoke-virtual {v7, v10}, Lorg/telegram/messenger/ImageReceiver;->setStrippedLocation(Lorg/telegram/messenger/ImageLocation;)V

    .line 6388
    iget-object v7, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    iget-object v10, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v3, v10}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v22

    const/16 v24, 0x0

    iget-object v3, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v10, v3, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    const/16 v27, 0x0

    iget-object v3, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$000(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v28

    const/16 v29, 0x1

    const-string v23, "80_80_b"

    move-object/from16 v17, v7

    move-wide/from16 v25, v10

    invoke-virtual/range {v17 .. v29}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    goto :goto_c

    .line 6383
    :cond_11
    :goto_b
    iget-object v7, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v7, v10}, Lorg/telegram/messenger/ImageReceiver;->setStrippedLocation(Lorg/telegram/messenger/ImageLocation;)V

    .line 6384
    iget-object v7, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 v10, 0x3e8

    invoke-static {v7, v10}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v7

    .line 6385
    iget-object v10, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    const/16 v18, 0x0

    const/16 v19, 0x0

    iget-object v11, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v7, v11}, Lorg/telegram/messenger/ImageLocation;->getForObject(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLObject;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v20

    iget-object v7, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v3, v7}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v22

    const/16 v24, 0x0

    iget-object v3, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v11, v3, Lorg/telegram/tgnet/TLRPC$Document;->size:J

    const/16 v27, 0x0

    iget-object v3, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$000(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v28

    const/16 v29, 0x1

    const-string v21, "200_200"

    const-string v23, "80_80_b"

    move-object/from16 v17, v10

    move-wide/from16 v25, v11

    invoke-virtual/range {v17 .. v29}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;Ljava/lang/Object;I)V

    .line 6390
    :goto_c
    iget-object v3, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->aspectRatioFrameLayout:Lcom/google/android/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 6391
    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 6392
    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 6393
    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 6394
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_d

    .line 6396
    :cond_12
    iget-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v10}, Lorg/telegram/messenger/ImageReceiver;->setStrippedLocation(Lorg/telegram/messenger/ImageLocation;)V

    .line 6397
    iget-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    const/16 v18, 0x0

    const/16 v19, 0x0

    iget-object v1, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v3, v1}, Lorg/telegram/messenger/ImageLocation;->getForDocument(Lorg/telegram/tgnet/TLRPC$PhotoSize;Lorg/telegram/tgnet/TLRPC$Document;)Lorg/telegram/messenger/ImageLocation;

    move-result-object v20

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    iget-object v1, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$000(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;

    move-result-object v25

    const/16 v26, 0x1

    const-string v21, "80_80_b"

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v26}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;Lorg/telegram/messenger/ImageLocation;Ljava/lang/String;JLjava/lang/String;Ljava/lang/Object;I)V

    .line 6400
    :goto_d
    iget-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageX()F

    move-result v0

    iget-object v1, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageWidth()F

    move-result v1

    int-to-float v3, v4

    sub-float/2addr v1, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v1, v5

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonX:I

    .line 6401
    iget-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v0

    iget-object v1, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v1

    sub-float/2addr v1, v3

    div-float/2addr v1, v5

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonY:I

    .line 6402
    iget-object v1, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    iget v3, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonX:I

    add-int v5, v3, v4

    add-int/2addr v4, v0

    invoke-virtual {v1, v3, v0, v5, v4}, Lorg/telegram/ui/Components/RadialProgress2;->setProgressRect(IIII)V

    move v10, v2

    goto :goto_e

    :cond_13
    move v10, v1

    .line 6404
    :goto_e
    iget-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0}, Lorg/telegram/messenger/ImageReceiver;->getImageY()F

    move-result v0

    iget-object v1, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v1

    add-float/2addr v0, v1

    const/16 v1, 0x8

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v1, v2

    add-float/2addr v0, v1

    float-to-int v5, v0

    iput v5, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->textY:I

    .line 6405
    iget v0, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentType:I

    if-nez v0, :cond_16

    .line 6406
    iget-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v2, 0x0

    iget-object v6, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    iget-object v1, v6, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    iget-object v7, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    move-object/from16 v1, p0

    move v4, v8

    invoke-static/range {v0 .. v7}, Lorg/telegram/ui/ArticleViewer;->access$13800(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v0

    iput-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_14

    .line 6408
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iget-object v1, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->creditOffset:I

    .line 6409
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v10, v0

    .line 6410
    iget-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v1, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->textX:I

    iput v1, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->x:I

    .line 6411
    iget v1, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->textY:I

    iput v1, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->y:I

    .line 6413
    :cond_14
    iget-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v2, 0x0

    iget-object v6, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    iget-object v1, v6, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->credit:Lorg/telegram/tgnet/TLRPC$RichText;

    iget v1, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->textY:I

    iget v4, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->creditOffset:I

    add-int v5, v1, v4

    iget-object v1, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$7100(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-static {}, Lorg/telegram/ui/Components/StaticLayoutEx;->ALIGN_RIGHT()Landroid/text/Layout$Alignment;

    move-result-object v1

    goto :goto_f

    :cond_15
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_f
    move-object v7, v1

    iget-object v11, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    move-object/from16 v1, p0

    move v4, v8

    move-object v8, v11

    invoke-static/range {v0 .. v8}, Lorg/telegram/ui/ArticleViewer;->access$13900(Lorg/telegram/ui/ArticleViewer;Landroid/view/View;Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$RichText;IILorg/telegram/tgnet/TLRPC$PageBlock;Landroid/text/Layout$Alignment;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/ui/ArticleViewer$DrawingText;

    move-result-object v0

    iput-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    if-eqz v0, :cond_16

    .line 6415
    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    iget-object v1, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    invoke-virtual {v1}, Lorg/telegram/ui/ArticleViewer$DrawingText;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v10, v0

    .line 6416
    iget-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v1, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->textX:I

    iput v1, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->x:I

    .line 6417
    iget v1, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->textY:I

    iget v2, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->creditOffset:I

    add-int/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/ArticleViewer$DrawingText;->y:I

    .line 6420
    :cond_16
    iget-boolean v0, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->isFirst:Z

    if-nez v0, :cond_17

    iget v0, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentType:I

    if-nez v0, :cond_17

    iget-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$PageBlock;->level:I

    if-gtz v0, :cond_17

    const/16 v0, 0x8

    .line 6421
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v1

    add-int/2addr v10, v1

    .line 6423
    :cond_17
    iget-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->parentBlock:Lorg/telegram/tgnet/TLRPC$PageBlock;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCover;

    if-eqz v0, :cond_18

    iget-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$8100(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_18

    iget-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$8100(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;

    if-eqz v0, :cond_18

    move/from16 v16, v1

    goto :goto_10

    :cond_18
    const/16 v16, 0x0

    .line 6424
    :goto_10
    iget v0, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_19

    if-nez v16, :cond_19

    const/16 v0, 0x8

    .line 6425
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v0

    add-int/2addr v10, v0

    :cond_19
    move v12, v10

    goto :goto_11

    :cond_1a
    move v1, v12

    .line 6430
    :goto_11
    iget-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->channelCell:Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->measure(II)V

    .line 6431
    iget-object v0, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->channelCell:Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

    iget-object v1, v9, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getImageHeight()F

    move-result v1

    const/16 v2, 0x27

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    const/high16 v0, 0x40000000    # 2.0f

    .line 6433
    invoke-static {v13, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v12, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {v9, v1, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onProgressDownload(Ljava/lang/String;JJ)V
    .locals 0

    .line 6634
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    long-to-float p2, p2

    long-to-float p3, p4

    div-float/2addr p2, p3

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-static {p3, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    .line 6635
    iget p1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonState:I

    if-eq p1, p3, :cond_0

    .line 6636
    invoke-virtual {p0, p3}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->updateButtonState(Z)V

    :cond_0
    return-void
.end method

.method public onProgressUpload(Ljava/lang/String;JJZ)V
    .locals 0

    return-void
.end method

.method public onSuccessDownload(Ljava/lang/String;)V
    .locals 2

    .line 6618
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    .line 6619
    iget-boolean p1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->isGif:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    .line 6620
    iput p1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonState:I

    .line 6621
    invoke-direct {p0, v1}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->didPressedButton(Z)V

    goto :goto_0

    .line 6623
    :cond_0
    invoke-virtual {p0, v1}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->updateButtonState(Z)V

    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 6269
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, v0, Lorg/telegram/ui/ArticleViewer;->pinchToZoomHelper:Lorg/telegram/ui/PinchToZoomHelper;

    iget-object v4, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->textureView:Landroid/view/TextureView;

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p0

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/ui/PinchToZoomHelper;->checkPinchToZoom(Landroid/view/MotionEvent;Landroid/view/View;Lorg/telegram/messenger/ImageReceiver;Landroid/view/TextureView;Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 6272
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 6273
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 6274
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->channelCell:Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->channelCell:Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->channelCell:Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v3

    const/16 v5, 0x27

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v3, v5

    cmpg-float v3, v2, v3

    if-gez v3, :cond_2

    .line 6275
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$7300(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_1

    .line 6276
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->access$11500(Lorg/telegram/ui/ArticleViewer;)I

    move-result p1

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$7300(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;->channel:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->getPublicUsername(Lorg/telegram/tgnet/TLRPC$Chat;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer;->access$13700(Lorg/telegram/ui/ArticleViewer;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {p1, v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->openByUserName(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;I)V

    .line 6277
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-virtual {p1, v4, v1}, Lorg/telegram/ui/ArticleViewer;->close(ZZ)V

    :cond_1
    return v1

    .line 6281
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->imageView:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3, v0, v2}, Lorg/telegram/messenger/ImageReceiver;->isInsideImage(FF)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 6282
    iget v3, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonState:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_3

    iget v3, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonX:I

    int-to-float v5, v3

    cmpl-float v5, v0, v5

    if-ltz v5, :cond_3

    const/16 v5, 0x30

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v6

    add-int/2addr v3, v6

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_3

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonY:I

    int-to-float v3, v0

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_3

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v0, v0

    cmpg-float v0, v2, v0

    if-lez v0, :cond_4

    :cond_3
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonState:I

    if-nez v0, :cond_5

    .line 6283
    :cond_4
    iput v1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonPressed:I

    .line 6284
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_0

    .line 6286
    :cond_5
    iput-boolean v1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->photoPressed:Z

    goto :goto_0

    .line 6288
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_8

    .line 6289
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->photoPressed:Z

    if-eqz v0, :cond_7

    .line 6290
    iput-boolean v4, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->photoPressed:Z

    .line 6291
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/ArticleViewer;->openPhoto(Lorg/telegram/tgnet/TLRPC$PageBlock;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Z

    goto :goto_0

    .line 6292
    :cond_7
    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonPressed:I

    if-ne v0, v1, :cond_9

    .line 6293
    iput v4, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonPressed:I

    .line 6294
    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->playSoundEffect(I)V

    .line 6295
    invoke-direct {p0, v1}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->didPressedButton(Z)V

    .line 6296
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_0

    .line 6298
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_9

    .line 6299
    iput-boolean v4, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->photoPressed:Z

    .line 6301
    :cond_9
    :goto_0
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->photoPressed:Z

    if-nez v0, :cond_b

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonPressed:I

    if-nez v0, :cond_b

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->captionLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v10, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->textX:I

    iget v11, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->textY:I

    move-object v7, p1

    move-object v8, p0

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/ArticleViewer;->access$8900(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Landroid/view/MotionEvent;Landroid/view/View;Lorg/telegram/ui/ArticleViewer$DrawingText;II)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v5, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v6, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    iget-object v9, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->creditLayout:Lorg/telegram/ui/ArticleViewer$DrawingText;

    iget v10, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->textX:I

    iget v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->textY:I

    iget v2, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->creditOffset:I

    add-int v11, v0, v2

    move-object v7, p1

    move-object v8, p0

    invoke-static/range {v5 .. v11}, Lorg/telegram/ui/ArticleViewer;->access$8900(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Landroid/view/MotionEvent;Landroid/view/View;Lorg/telegram/ui/ArticleViewer$DrawingText;II)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_1

    :cond_a
    move v1, v4

    :cond_b
    :goto_1
    return v1
.end method

.method public setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;ZZ)V
    .locals 2

    .line 6245
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    const/4 p3, 0x0

    .line 6246
    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->parentBlock:Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 6247
    iget-object p3, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->parentAdapter:Lorg/telegram/ui/ArticleViewer$WebpageAdapter;

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;->video_id:J

    invoke-static {p3, v0, v1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->access$13600(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;J)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    .line 6248
    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result p1

    const/4 p3, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {p1}, Lorg/telegram/messenger/MessageObject;->isGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, p3

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->isGif:Z

    .line 6249
    iput-boolean p2, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->isFirst:Z

    .line 6250
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->channelCell:Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 6251
    invoke-virtual {p0, p3}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->updateButtonState(Z)V

    .line 6252
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public setParentBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;Lorg/telegram/tgnet/TLRPC$PageBlock;)V
    .locals 0

    .line 6256
    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->parentBlock:Lorg/telegram/tgnet/TLRPC$PageBlock;

    if-eqz p1, :cond_0

    .line 6257
    instance-of p2, p2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCover;

    if-eqz p2, :cond_0

    .line 6258
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->channelCell:Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

    invoke-virtual {p2, p1}, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;)V

    .line 6259
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->channelCell:Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public updateButtonState(Z)V
    .locals 5

    .line 6488
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v0

    .line 6489
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$11500(Lorg/telegram/ui/ArticleViewer;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->currentDocument:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v1

    .line 6490
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    .line 6491
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 6492
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v4, v4}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    return-void

    :cond_0
    if-eqz v1, :cond_2

    .line 6496
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$11500(Lorg/telegram/ui/ArticleViewer;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/DownloadController;->removeLoadingFileObserver(Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    .line 6497
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->isGif:Z

    if-nez v0, :cond_1

    const/4 v0, 0x3

    .line 6498
    iput v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonState:I

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 6500
    iput v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonState:I

    .line 6502
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->getIconForCurrentState()I

    move-result v1

    invoke-virtual {v0, v1, v4, p1}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    goto :goto_2

    .line 6504
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$11500(Lorg/telegram/ui/ArticleViewer;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p0}, Lorg/telegram/messenger/DownloadController;->addLoadingFileObserver(Ljava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/DownloadController$FileDownloadProgressListener;)V

    .line 6507
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer;->access$11500(Lorg/telegram/ui/ArticleViewer;)I

    move-result v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/FileLoader;->isLoadingFile(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_4

    .line 6508
    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->cancelLoading:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->autoDownload:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->isGif:Z

    if-eqz v0, :cond_3

    .line 6510
    iput v3, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonState:I

    goto :goto_1

    .line 6512
    :cond_3
    iput v4, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonState:I

    move v3, v4

    goto :goto_1

    .line 6516
    :cond_4
    iput v3, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->buttonState:I

    .line 6517
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/messenger/ImageLoader;->getFileProgress(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 6518
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    move v2, v0

    .line 6520
    :cond_5
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->getIconForCurrentState()I

    move-result v1

    invoke-virtual {v0, v1, v3, p1}, Lorg/telegram/ui/Components/RadialProgress2;->setIcon(IZZ)V

    .line 6521
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->radialProgress:Lorg/telegram/ui/Components/RadialProgress2;

    invoke-virtual {p1, v2, v4}, Lorg/telegram/ui/Components/RadialProgress2;->setProgress(FZ)V

    .line 6523
    :goto_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
