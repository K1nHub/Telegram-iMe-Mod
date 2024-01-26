.class Lorg/telegram/ui/ArticleViewer$PageBlocksPhotoViewerProvider;
.super Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;
.source "ArticleViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageBlocksPhotoViewerProvider"
.end annotation


# instance fields
.field private final pageBlocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/telegram/tgnet/TLRPC$PageBlock;",
            ">;"
        }
    .end annotation
.end field

.field private final tempArr:[I

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/telegram/tgnet/TLRPC$PageBlock;",
            ">;)V"
        }
    .end annotation

    .line 11715
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$PageBlocksPhotoViewerProvider;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;-><init>()V

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 11712
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$PageBlocksPhotoViewerProvider;->tempArr:[I

    .line 11716
    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$PageBlocksPhotoViewerProvider;->pageBlocks:Ljava/util/List;

    return-void
.end method

.method private getImageReceiverFromListView(Landroid/view/ViewGroup;Lorg/telegram/tgnet/TLRPC$PageBlock;[I)Lorg/telegram/messenger/ImageReceiver;
    .locals 3

    .line 11740
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 11742
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p2, p3}, Lorg/telegram/ui/ArticleViewer$PageBlocksPhotoViewerProvider;->getImageReceiverView(Landroid/view/View;Lorg/telegram/tgnet/TLRPC$PageBlock;[I)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getImageReceiverView(Landroid/view/View;Lorg/telegram/tgnet/TLRPC$PageBlock;[I)Lorg/telegram/messenger/ImageReceiver;
    .locals 2

    .line 11751
    instance-of v0, p1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;

    if-eqz v0, :cond_0

    .line 11752
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;

    .line 11753
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->access$17400(Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    move-result-object v1

    if-ne v1, p2, :cond_7

    .line 11754
    invoke-virtual {p1, p3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 11755
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->access$22000(Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    return-object p1

    .line 11757
    :cond_0
    instance-of v0, p1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;

    if-eqz v0, :cond_3

    .line 11758
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;

    .line 11759
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->access$17600(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    move-result-object v1

    if-ne v1, p2, :cond_7

    .line 11760
    invoke-virtual {p1, p3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 11761
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$PageBlocksPhotoViewerProvider;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object p2, p1, Lorg/telegram/ui/ArticleViewer;->currentPlayer:Lorg/telegram/ui/ArticleViewer$BlockVideoCell;

    if-ne v0, p2, :cond_2

    iget-object p1, p1, Lorg/telegram/ui/ArticleViewer;->videoPlayer:Lorg/telegram/messenger/video/VideoPlayerHolderBase;

    if-eqz p1, :cond_2

    iget-boolean p1, p1, Lorg/telegram/messenger/video/VideoPlayerHolderBase;->firstFrameRendered:Z

    if-eqz p1, :cond_2

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->access$14300(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Landroid/view/TextureView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 11762
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x18

    if-lt p1, p2, :cond_1

    .line 11763
    new-instance p1, Landroid/view/Surface;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->access$14300(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Landroid/view/TextureView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 11764
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->access$14300(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Landroid/view/TextureView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/TextureView;->getMeasuredWidth()I

    move-result p2

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->access$14300(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Landroid/view/TextureView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/TextureView;->getMeasuredHeight()I

    move-result p3

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 11765
    invoke-static {p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->getBitmapFromSurface(Landroid/view/Surface;Landroid/graphics/Bitmap;)V

    .line 11766
    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    .line 11767
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->access$22100(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 11769
    :cond_1
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->access$22100(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->access$14300(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Landroid/view/TextureView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    const/4 p1, 0x0

    .line 11771
    invoke-static {v0, p1}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->access$22202(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;Z)Z

    .line 11772
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->access$14300(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Landroid/view/TextureView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/TextureView;->setAlpha(F)V

    .line 11774
    :cond_2
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->access$22100(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    return-object p1

    .line 11776
    :cond_3
    instance-of v0, p1, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;

    if-eqz v0, :cond_4

    .line 11777
    check-cast p1, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->access$22300(Lorg/telegram/ui/ArticleViewer$BlockCollageCell;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ArticleViewer$PageBlocksPhotoViewerProvider;->getImageReceiverFromListView(Landroid/view/ViewGroup;Lorg/telegram/tgnet/TLRPC$PageBlock;[I)Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    if-eqz p1, :cond_7

    return-object p1

    .line 11781
    :cond_4
    instance-of v0, p1, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    if-eqz v0, :cond_5

    .line 11782
    check-cast p1, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->access$18000(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ArticleViewer$PageBlocksPhotoViewerProvider;->getImageReceiverFromListView(Landroid/view/ViewGroup;Lorg/telegram/tgnet/TLRPC$PageBlock;[I)Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    if-eqz p1, :cond_7

    return-object p1

    .line 11786
    :cond_5
    instance-of v0, p1, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;

    if-eqz v0, :cond_6

    .line 11787
    check-cast p1, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;

    .line 11788
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->access$6100(Lorg/telegram/ui/ArticleViewer$BlockListItemCell;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 11789
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->access$6100(Lorg/telegram/ui/ArticleViewer$BlockListItemCell;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ArticleViewer$PageBlocksPhotoViewerProvider;->getImageReceiverView(Landroid/view/View;Lorg/telegram/tgnet/TLRPC$PageBlock;[I)Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    if-eqz p1, :cond_7

    return-object p1

    .line 11794
    :cond_6
    instance-of v0, p1, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;

    if-eqz v0, :cond_7

    .line 11795
    check-cast p1, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;

    .line 11796
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->access$6200(Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 11797
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->access$6200(Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ArticleViewer$PageBlocksPhotoViewerProvider;->getImageReceiverView(Landroid/view/View;Lorg/telegram/tgnet/TLRPC$PageBlock;[I)Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    if-eqz p1, :cond_7

    return-object p1

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

.method private getViewFromListView(Landroid/view/ViewGroup;Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/ui/ArticleViewer$BlockVideoCell;
    .locals 4

    .line 11850
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 11852
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 11853
    instance-of v3, v2, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;

    if-eqz v3, :cond_0

    .line 11854
    check-cast v2, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;

    .line 11855
    invoke-static {v2}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->access$17600(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    move-result-object v3

    if-ne v3, p2, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getPlaceForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;IZ)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    .locals 1

    const/4 p1, 0x0

    if-ltz p3, :cond_2

    .line 11721
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$PageBlocksPhotoViewerProvider;->pageBlocks:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lt p3, p2, :cond_0

    goto :goto_0

    .line 11724
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$PageBlocksPhotoViewerProvider;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p2}, Lorg/telegram/ui/ArticleViewer;->access$3300(Lorg/telegram/ui/ArticleViewer;)[Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p2

    const/4 p4, 0x0

    aget-object p2, p2, p4

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$PageBlocksPhotoViewerProvider;->pageBlocks:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/tgnet/TLRPC$PageBlock;

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$PageBlocksPhotoViewerProvider;->tempArr:[I

    invoke-direct {p0, p2, p3, v0}, Lorg/telegram/ui/ArticleViewer$PageBlocksPhotoViewerProvider;->getImageReceiverFromListView(Landroid/view/ViewGroup;Lorg/telegram/tgnet/TLRPC$PageBlock;[I)Lorg/telegram/messenger/ImageReceiver;

    move-result-object p2

    if-nez p2, :cond_1

    return-object p1

    .line 11728
    :cond_1
    new-instance p1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    invoke-direct {p1}, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;-><init>()V

    .line 11729
    iget-object p3, p0, Lorg/telegram/ui/ArticleViewer$PageBlocksPhotoViewerProvider;->tempArr:[I

    aget v0, p3, p4

    iput v0, p1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewX:I

    const/4 v0, 0x1

    .line 11730
    aget p3, p3, v0

    iput p3, p1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    .line 11731
    iget-object p3, p0, Lorg/telegram/ui/ArticleViewer$PageBlocksPhotoViewerProvider;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p3}, Lorg/telegram/ui/ArticleViewer;->access$3300(Lorg/telegram/ui/ArticleViewer;)[Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p3

    aget-object p3, p3, p4

    iput-object p3, p1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    .line 11732
    iput-object p2, p1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 11733
    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getBitmapSafe()Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    move-result-object p3

    iput-object p3, p1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->thumb:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    .line 11734
    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()[I

    move-result-object p2

    iput-object p2, p1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->radius:[I

    .line 11735
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$PageBlocksPhotoViewerProvider;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p2}, Lorg/telegram/ui/ArticleViewer;->access$2700(Lorg/telegram/ui/ArticleViewer;)I

    move-result p2

    iput p2, p1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->clipTopAddition:I

    :cond_2
    :goto_0
    return-object p1
.end method

.method public onClose()V
    .locals 1

    .line 11808
    invoke-super {p0}, Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;->onClose()V

    .line 11809
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$PageBlocksPhotoViewerProvider;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$9200(Lorg/telegram/ui/ArticleViewer;)V

    return-void
.end method

.method public onReleasePlayerBeforeClose(I)V
    .locals 8

    if-ltz p1, :cond_0

    .line 11815
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$PageBlocksPhotoViewerProvider;->pageBlocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 11816
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$PageBlocksPhotoViewerProvider;->pageBlocks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$PageBlock;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 11818
    :goto_0
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/PhotoViewer;->getVideoPlayer()Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    .line 11819
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/PhotoViewer;->getVideoTextureView()Landroid/view/TextureView;

    move-result-object v1

    .line 11820
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/PhotoViewer;->getVideoSurfaceView()Landroid/view/SurfaceView;

    move-result-object v2

    .line 11821
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$PageBlocksPhotoViewerProvider;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer;->access$3300(Lorg/telegram/ui/ArticleViewer;)[Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-direct {p0, v3, p1}, Lorg/telegram/ui/ArticleViewer$PageBlocksPhotoViewerProvider;->getViewFromListView(Landroid/view/ViewGroup;Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/ui/ArticleViewer$BlockVideoCell;

    move-result-object p1

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 11823
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v5

    iput-wide v5, p1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->playFrom:J

    .line 11824
    invoke-static {p1, v4}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->access$22202(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;Z)Z

    .line 11825
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->access$14300(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Landroid/view/TextureView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/TextureView;->setAlpha(F)V

    .line 11826
    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 11827
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-lt v5, v6, :cond_1

    .line 11828
    new-instance v5, Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 11829
    invoke-virtual {v1}, Landroid/view/TextureView;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/TextureView;->getMeasuredHeight()I

    move-result v1

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v1, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 11830
    invoke-static {v5, v1}, Lorg/telegram/messenger/AndroidUtilities;->getBitmapFromSurface(Landroid/view/Surface;Landroid/graphics/Bitmap;)V

    .line 11831
    invoke-virtual {v5}, Landroid/view/Surface;->release()V

    .line 11832
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->access$22100(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v5

    invoke-virtual {v5, v1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 11834
    :cond_1
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->access$22100(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object v5

    invoke-virtual {v1}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v5, v1}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    .line 11839
    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v0

    iput-wide v0, p1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->playFrom:J

    .line 11840
    invoke-static {p1, v4}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->access$22202(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;Z)Z

    .line 11841
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->access$14300(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Landroid/view/TextureView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/TextureView;->setAlpha(F)V

    .line 11842
    invoke-virtual {v2}, Landroid/view/SurfaceView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getMeasuredHeight()I

    move-result v1

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 11843
    invoke-static {v2, v0}, Lorg/telegram/messenger/AndroidUtilities;->getBitmapFromSurface(Landroid/view/SurfaceView;Landroid/graphics/Bitmap;)V

    .line 11844
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->access$22100(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 11846
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$PageBlocksPhotoViewerProvider;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->access$9200(Lorg/telegram/ui/ArticleViewer;)V

    return-void
.end method
