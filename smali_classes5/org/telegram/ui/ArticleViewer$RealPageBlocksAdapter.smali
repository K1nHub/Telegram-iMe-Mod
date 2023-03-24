.class Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;
.super Ljava/lang/Object;
.source "ArticleViewer.java"

# interfaces
.implements Lorg/telegram/ui/PhotoViewer$PageBlocksAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RealPageBlocksAdapter"
.end annotation


# instance fields
.field private final page:Lorg/telegram/tgnet/TLRPC$WebPage;

.field private final pageBlocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/telegram/tgnet/TLRPC$PageBlock;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLRPC$WebPage;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$WebPage;",
            "Ljava/util/List<",
            "Lorg/telegram/tgnet/TLRPC$PageBlock;",
            ">;)V"
        }
    .end annotation

    .line 11396
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11397
    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;->page:Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 11398
    iput-object p3, p0, Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;->pageBlocks:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLRPC$WebPage;Ljava/util/List;Lorg/telegram/ui/ArticleViewer$1;)V
    .locals 0

    .line 11391
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;-><init>(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLRPC$WebPage;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public get(I)Lorg/telegram/tgnet/TLRPC$PageBlock;
    .locals 1

    .line 11408
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;->pageBlocks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$PageBlock;

    return-object p1
.end method

.method public getAll()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/telegram/tgnet/TLRPC$PageBlock;",
            ">;"
        }
    .end annotation

    .line 11413
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;->pageBlocks:Ljava/util/List;

    return-object v0
.end method

.method public getCaption(I)Ljava/lang/CharSequence;
    .locals 8

    .line 11449
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;->get(I)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v5

    .line 11450
    instance-of p1, v5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    .line 11451
    move-object p1, v5

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;->url:Ljava/lang/String;

    .line 11452
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11453
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 11454
    new-instance v1, Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter$1;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter$1;-><init>(Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;Ljava/lang/String;)V

    .line 11459
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v2, 0x22

    .line 11454
    invoke-virtual {v0, v1, v7, p1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 11464
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v0, 0x2

    invoke-static {p1, v5, v0}, Lorg/telegram/ui/ArticleViewer;->access$21400(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLRPC$PageBlock;I)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v4

    .line 11465
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;->page:Lorg/telegram/tgnet/TLRPC$WebPage;

    const/4 v2, 0x0

    const/16 p1, 0x64

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(I)I

    move-result p1

    neg-int v6, p1

    move-object v3, v4

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/ArticleViewer;->access$21500(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLRPC$WebPage;Landroid/view/View;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$PageBlock;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 11466
    instance-of p1, v0, Landroid/text/Spannable;

    if-eqz p1, :cond_2

    .line 11467
    move-object p1, v0

    check-cast p1, Landroid/text/Spannable;

    .line 11468
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v2, Lorg/telegram/ui/Components/TextPaintUrlSpan;

    invoke-interface {p1, v7, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/telegram/ui/Components/TextPaintUrlSpan;

    .line 11469
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_1

    .line 11471
    array-length v0, v1

    if-lez v0, :cond_1

    .line 11472
    :goto_1
    array-length v0, v1

    if-ge v7, v0, :cond_1

    .line 11473
    new-instance v0, Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter$2;

    aget-object v3, v1, v7

    invoke-virtual {v3}, Lorg/telegram/ui/Components/TextPaintUrlSpan;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter$2;-><init>(Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;Ljava/lang/String;)V

    aget-object v3, v1, v7

    .line 11478
    invoke-interface {p1, v3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    aget-object v4, v1, v7

    invoke-interface {p1, v4}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    const/16 v5, 0x21

    .line 11473
    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v2

    :cond_2
    return-object v0
.end method

.method public getFile(I)Ljava/io/File;
    .locals 1

    .line 11431
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;->pageBlocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 11434
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;->page:Lorg/telegram/tgnet/TLRPC$WebPage;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;->get(I)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/telegram/ui/ArticleViewer$WebPageUtils;->getMediaFile(Lorg/telegram/tgnet/TLRPC$WebPage;Lorg/telegram/tgnet/TLRPC$PageBlock;)Ljava/io/File;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFileLocation(Lorg/telegram/tgnet/TLObject;[I)Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .locals 3

    .line 11488
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$Photo;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 11489
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Photo;

    .line 11490
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 11492
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    aput v0, p2, v2

    .line 11493
    aget v0, p2, v2

    if-nez v0, :cond_0

    .line 11494
    aput v1, p2, v2

    :cond_0
    return-object p1

    .line 11498
    :cond_1
    aput v1, p2, v2

    goto :goto_0

    .line 11500
    :cond_2
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v0, :cond_4

    .line 11501
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Document;

    .line 11502
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 v0, 0x5a

    invoke-static {p1, v0}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 11504
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    aput v0, p2, v2

    .line 11505
    aget v0, p2, v2

    if-nez v0, :cond_3

    .line 11506
    aput v1, p2, v2

    :cond_3
    return-object p1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFileName(I)Ljava/lang/String;
    .locals 1

    .line 11439
    invoke-virtual {p0, p1}, Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;->getMedia(I)Lorg/telegram/tgnet/TLObject;

    move-result-object p1

    .line 11440
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v0, :cond_0

    .line 11441
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object p1

    .line 11443
    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getItemsCount()I
    .locals 1

    .line 11403
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;->pageBlocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMedia(I)Lorg/telegram/tgnet/TLObject;
    .locals 1

    .line 11423
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;->pageBlocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 11426
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;->page:Lorg/telegram/tgnet/TLRPC$WebPage;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;->get(I)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/telegram/ui/ArticleViewer$WebPageUtils;->getMedia(Lorg/telegram/tgnet/TLRPC$WebPage;Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/tgnet/TLObject;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getParentObject()Ljava/lang/Object;
    .locals 1

    .line 11532
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;->page:Lorg/telegram/tgnet/TLRPC$WebPage;

    return-object v0
.end method

.method public isVideo(I)Z
    .locals 1

    .line 11418
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;->pageBlocks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;->page:Lorg/telegram/tgnet/TLRPC$WebPage;

    invoke-virtual {p0, p1}, Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;->get(I)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/telegram/ui/ArticleViewer$WebPageUtils;->isVideo(Lorg/telegram/tgnet/TLRPC$WebPage;Lorg/telegram/tgnet/TLRPC$PageBlock;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public updateSlideshowCell(Lorg/telegram/tgnet/TLRPC$PageBlock;)V
    .locals 6

    .line 11516
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->access$3300(Lorg/telegram/ui/ArticleViewer;)[Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 11518
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$RealPageBlocksAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer;->access$3300(Lorg/telegram/ui/ArticleViewer;)[Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 11519
    instance-of v4, v3, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    if-eqz v4, :cond_0

    .line 11520
    check-cast v3, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    .line 11521
    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->access$18100(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    move-result-object v4

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;->items:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 11523
    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->access$17700(Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    invoke-virtual {p1, v4, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
