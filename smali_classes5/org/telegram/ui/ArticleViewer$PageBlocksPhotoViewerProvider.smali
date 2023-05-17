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

    .line 11552
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$PageBlocksPhotoViewerProvider;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;-><init>()V

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 11549
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$PageBlocksPhotoViewerProvider;->tempArr:[I

    .line 11553
    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$PageBlocksPhotoViewerProvider;->pageBlocks:Ljava/util/List;

    return-void
.end method

.method private getImageReceiverFromListView(Landroid/view/ViewGroup;Lorg/telegram/tgnet/TLRPC$PageBlock;[I)Lorg/telegram/messenger/ImageReceiver;
    .locals 3

    .line 11577
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 11579
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

    .line 11588
    instance-of v0, p1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;

    if-eqz v0, :cond_0

    .line 11589
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;

    .line 11590
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->access$17100(Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    move-result-object v1

    if-ne v1, p2, :cond_5

    .line 11591
    invoke-virtual {p1, p3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 11592
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->access$21600(Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    return-object p1

    .line 11594
    :cond_0
    instance-of v0, p1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;

    if-eqz v0, :cond_1

    .line 11595
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;

    .line 11596
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->access$17300(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    move-result-object v1

    if-ne v1, p2, :cond_5

    .line 11597
    invoke-virtual {p1, p3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 11598
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->access$21700(Lorg/telegram/ui/ArticleViewer$BlockVideoCell;)Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    return-object p1

    .line 11600
    :cond_1
    instance-of v0, p1, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;

    if-eqz v0, :cond_2

    .line 11601
    check-cast p1, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->access$21800(Lorg/telegram/ui/ArticleViewer$BlockCollageCell;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ArticleViewer$PageBlocksPhotoViewerProvider;->getImageReceiverFromListView(Landroid/view/ViewGroup;Lorg/telegram/tgnet/TLRPC$PageBlock;[I)Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    if-eqz p1, :cond_5

    return-object p1

    .line 11605
    :cond_2
    instance-of v0, p1, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    if-eqz v0, :cond_3

    .line 11606
    check-cast p1, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->access$17700(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ArticleViewer$PageBlocksPhotoViewerProvider;->getImageReceiverFromListView(Landroid/view/ViewGroup;Lorg/telegram/tgnet/TLRPC$PageBlock;[I)Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    if-eqz p1, :cond_5

    return-object p1

    .line 11610
    :cond_3
    instance-of v0, p1, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;

    if-eqz v0, :cond_4

    .line 11611
    check-cast p1, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;

    .line 11612
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->access$6100(Lorg/telegram/ui/ArticleViewer$BlockListItemCell;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 11613
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->access$6100(Lorg/telegram/ui/ArticleViewer$BlockListItemCell;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ArticleViewer$PageBlocksPhotoViewerProvider;->getImageReceiverView(Landroid/view/View;Lorg/telegram/tgnet/TLRPC$PageBlock;[I)Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    if-eqz p1, :cond_5

    return-object p1

    .line 11618
    :cond_4
    instance-of v0, p1, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;

    if-eqz v0, :cond_5

    .line 11619
    check-cast p1, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;

    .line 11620
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->access$6200(Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 11621
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->access$6200(Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ArticleViewer$PageBlocksPhotoViewerProvider;->getImageReceiverView(Landroid/view/View;Lorg/telegram/tgnet/TLRPC$PageBlock;[I)Lorg/telegram/messenger/ImageReceiver;

    move-result-object p1

    if-eqz p1, :cond_5

    return-object p1

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getPlaceForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;IZ)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    .locals 1

    const/4 p1, 0x0

    if-ltz p3, :cond_2

    .line 11558
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$PageBlocksPhotoViewerProvider;->pageBlocks:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lt p3, p2, :cond_0

    goto :goto_0

    .line 11561
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

    .line 11565
    :cond_1
    new-instance p1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    invoke-direct {p1}, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;-><init>()V

    .line 11566
    iget-object p3, p0, Lorg/telegram/ui/ArticleViewer$PageBlocksPhotoViewerProvider;->tempArr:[I

    aget v0, p3, p4

    iput v0, p1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewX:I

    const/4 v0, 0x1

    .line 11567
    aget p3, p3, v0

    iput p3, p1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    .line 11568
    iget-object p3, p0, Lorg/telegram/ui/ArticleViewer$PageBlocksPhotoViewerProvider;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p3}, Lorg/telegram/ui/ArticleViewer;->access$3300(Lorg/telegram/ui/ArticleViewer;)[Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p3

    aget-object p3, p3, p4

    iput-object p3, p1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    .line 11569
    iput-object p2, p1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 11570
    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getBitmapSafe()Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    move-result-object p3

    iput-object p3, p1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->thumb:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    .line 11571
    invoke-virtual {p2}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()[I

    move-result-object p2

    iput-object p2, p1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->radius:[I

    .line 11572
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$PageBlocksPhotoViewerProvider;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p2}, Lorg/telegram/ui/ArticleViewer;->access$2700(Lorg/telegram/ui/ArticleViewer;)I

    move-result p2

    iput p2, p1, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->clipTopAddition:I

    :cond_2
    :goto_0
    return-object p1
.end method
