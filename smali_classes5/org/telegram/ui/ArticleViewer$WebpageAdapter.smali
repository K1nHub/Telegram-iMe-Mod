.class Lorg/telegram/ui/ArticleViewer$WebpageAdapter;
.super Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;
.source "ArticleViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebpageAdapter"
.end annotation


# instance fields
.field private anchors:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private anchorsOffset:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private anchorsParent:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/telegram/tgnet/TLRPC$TL_textAnchor;",
            ">;"
        }
    .end annotation
.end field

.field private audioBlocks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private audioMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private blocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$PageBlock;",
            ">;"
        }
    .end annotation
.end field

.field private channelBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;

.field private context:Landroid/content/Context;

.field private currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

.field private isRtl:Z

.field private localBlocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$PageBlock;",
            ">;"
        }
    .end annotation
.end field

.field private photoBlocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$PageBlock;",
            ">;"
        }
    .end annotation
.end field

.field private searchTextOffset:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private textBlocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private textToBlocks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Lorg/telegram/tgnet/TLRPC$PageBlock;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/telegram/ui/ArticleViewer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;)V
    .locals 0

    .line 5125
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView$SelectionAdapter;-><init>()V

    .line 5109
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->localBlocks:Ljava/util/ArrayList;

    .line 5110
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->blocks:Ljava/util/ArrayList;

    .line 5111
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->photoBlocks:Ljava/util/ArrayList;

    .line 5112
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->anchors:Ljava/util/HashMap;

    .line 5113
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->anchorsOffset:Ljava/util/HashMap;

    .line 5114
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->anchorsParent:Ljava/util/HashMap;

    .line 5115
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->audioBlocks:Ljava/util/HashMap;

    .line 5116
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->audioMessages:Ljava/util/ArrayList;

    .line 5117
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->textToBlocks:Ljava/util/HashMap;

    .line 5118
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->textBlocks:Ljava/util/ArrayList;

    .line 5119
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->searchTextOffset:Ljava/util/HashMap;

    .line 5126
    iput-object p2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$WebPage;
    .locals 0

    .line 5106
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    return-object p0
.end method

.method static synthetic access$002(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/tgnet/TLRPC$WebPage;)Lorg/telegram/tgnet/TLRPC$WebPage;
    .locals 0

    .line 5106
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    return-object p1
.end method

.method static synthetic access$13600(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;J)Lorg/telegram/tgnet/TLRPC$Document;
    .locals 0

    .line 5106
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->getDocumentWithId(J)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$14400(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/HashMap;
    .locals 0

    .line 5106
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->audioBlocks:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$14700(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 5106
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->audioMessages:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$14800(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;J)Lorg/telegram/tgnet/TLRPC$Photo;
    .locals 0

    .line 5106
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->getPhotoWithId(J)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/HashMap;
    .locals 0

    .line 5106
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->searchTextOffset:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$21500(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 5106
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->photoBlocks:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$22400(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/HashMap;
    .locals 0

    .line 5106
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->textToBlocks:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$22500(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 5106
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->textBlocks:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/HashMap;
    .locals 0

    .line 5106
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->anchorsOffset:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$7100(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Z
    .locals 0

    .line 5106
    iget-boolean p0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->isRtl:Z

    return p0
.end method

.method static synthetic access$7102(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Z)Z
    .locals 0

    .line 5106
    iput-boolean p1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->isRtl:Z

    return p1
.end method

.method static synthetic access$7200(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V
    .locals 0

    .line 5106
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->cleanup()V

    return-void
.end method

.method static synthetic access$7300(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;
    .locals 0

    .line 5106
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->channelBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;

    return-object p0
.end method

.method static synthetic access$7302(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;
    .locals 0

    .line 5106
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->channelBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;

    return-object p1
.end method

.method static synthetic access$7400(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/tgnet/TLRPC$PageBlock;III)V
    .locals 0

    .line 5106
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addBlock(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/tgnet/TLRPC$PageBlock;III)V

    return-void
.end method

.method static synthetic access$7500(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/HashMap;
    .locals 0

    .line 5106
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->anchors:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$7600(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/HashMap;
    .locals 0

    .line 5106
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->anchorsParent:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$7700(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/tgnet/TLRPC$PageBlock;)I
    .locals 0

    .line 5106
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->getTypeForBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)I

    move-result p0

    return p0
.end method

.method static synthetic access$7800(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;Lorg/telegram/tgnet/TLRPC$PageBlock;II)V
    .locals 0

    .line 5106
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->bindBlockToHolder(ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;Lorg/telegram/tgnet/TLRPC$PageBlock;II)V

    return-void
.end method

.method static synthetic access$8100(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 5106
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->blocks:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$8200(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V
    .locals 0

    .line 5106
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->updateRows()V

    return-void
.end method

.method static synthetic access$8300(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 5106
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->localBlocks:Ljava/util/ArrayList;

    return-object p0
.end method

.method private addAllMediaFromBlock(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/tgnet/TLRPC$PageBlock;)V
    .locals 5

    .line 5633
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    const/16 v1, 0x38

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 5634
    move-object p1, p2

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    .line 5635
    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;->photo_id:J

    invoke-direct {p0, v3, v4}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->getPhotoWithId(J)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 5637
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    iput-object v1, p1, Lorg/telegram/tgnet/TLRPC$PageBlock;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 5638
    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$PageBlock;->thumbObject:Lorg/telegram/tgnet/TLObject;

    .line 5639
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->photoBlocks:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 5641
    :cond_0
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    invoke-static {v0, p2}, Lorg/telegram/ui/ArticleViewer$WebPageUtils;->isVideo(Lorg/telegram/tgnet/TLRPC$WebPage;Lorg/telegram/tgnet/TLRPC$PageBlock;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5642
    move-object p1, p2

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    .line 5643
    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;->video_id:J

    invoke-direct {p0, v3, v4}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->getDocumentWithId(J)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 5645
    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    invoke-static {v3, v1, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v1

    iput-object v1, p1, Lorg/telegram/tgnet/TLRPC$PageBlock;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 5646
    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$PageBlock;->thumbObject:Lorg/telegram/tgnet/TLObject;

    .line 5647
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->photoBlocks:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 5649
    :cond_1
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 5650
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    .line 5651
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 5653
    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 5654
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer;->access$13500(Lorg/telegram/ui/ArticleViewer;)I

    move-result v3

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$PageBlock;->groupId:I

    .line 5655
    invoke-direct {p0, p1, v2}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addAllMediaFromBlock(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5657
    :cond_2
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->access$13508(Lorg/telegram/ui/ArticleViewer;)I

    goto :goto_2

    .line 5658
    :cond_3
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    if-eqz v0, :cond_5

    .line 5659
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    .line 5660
    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_4

    .line 5662
    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 5663
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v3}, Lorg/telegram/ui/ArticleViewer;->access$13500(Lorg/telegram/ui/ArticleViewer;)I

    move-result v3

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$PageBlock;->groupId:I

    .line 5664
    invoke-direct {p0, p1, v2}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addAllMediaFromBlock(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5666
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer;->access$13508(Lorg/telegram/ui/ArticleViewer;)I

    goto :goto_2

    .line 5667
    :cond_5
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCover;

    if-eqz v0, :cond_6

    .line 5668
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCover;

    .line 5669
    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCover;->cover:Lorg/telegram/tgnet/TLRPC$PageBlock;

    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addAllMediaFromBlock(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    :cond_6
    :goto_2
    return-void
.end method

.method private addBlock(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/tgnet/TLRPC$PageBlock;III)V
    .locals 24

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p2

    move/from16 v9, p4

    .line 5344
    instance-of v10, v8, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;

    if-eqz v10, :cond_0

    .line 5345
    move-object v1, v8

    check-cast v1, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;

    .line 5346
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;->access$6600(Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v8

    .line 5348
    :goto_0
    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;

    if-nez v2, :cond_1

    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockOrderedList;

    if-nez v2, :cond_1

    .line 5349
    invoke-direct {v7, v1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    .line 5350
    invoke-direct {v7, v0, v1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addAllMediaFromBlock(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    .line 5352
    :cond_1
    iget-object v2, v7, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v2, v1}, Lorg/telegram/ui/ArticleViewer;->access$11400(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v1

    .line 5353
    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockUnsupported;

    if-eqz v2, :cond_2

    return-void

    .line 5355
    :cond_2
    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAnchor;

    if-eqz v2, :cond_3

    .line 5356
    iget-object v0, v7, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->anchors:Ljava/util/HashMap;

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAnchor;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAnchor;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v7, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 5359
    :cond_3
    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;

    if-nez v2, :cond_4

    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockOrderedList;

    if-nez v3, :cond_4

    .line 5360
    iget-object v3, v7, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5363
    :cond_4
    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v3, :cond_8

    .line 5364
    move-object v0, v1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;

    .line 5365
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 5366
    iput-boolean v12, v2, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 5367
    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;->audio_id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->hashCode()I

    move-result v3

    neg-int v3, v3

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$PageBlock;->mid:I

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    .line 5368
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 5369
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->from_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 5370
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$Message;->peer_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget-object v5, v7, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v5}, Lorg/telegram/ui/ArticleViewer;->access$11500(Lorg/telegram/ui/ArticleViewer;)I

    move-result v5

    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v5

    iput-wide v5, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    iput-wide v5, v3, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:J

    .line 5371
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v3, v3

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    const-string v3, ""

    .line 5372
    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 5373
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 5374
    iget-object v4, v7, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 5375
    iget v4, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    or-int/lit8 v4, v4, 0x3

    iput v4, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    .line 5376
    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;->audio_id:J

    invoke-direct {v7, v4, v5}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->getDocumentWithId(J)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v4

    iput-object v4, v3, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 5377
    iget v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v3, v3, 0x300

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 5378
    new-instance v3, Lorg/telegram/messenger/MessageObject;

    sget v4, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-direct {v3, v4, v2, v11, v12}, Lorg/telegram/messenger/MessageObject;-><init>(ILorg/telegram/tgnet/TLRPC$Message;ZZ)V

    .line 5379
    iget-object v2, v7, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->audioMessages:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5380
    iget-object v2, v7, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->audioBlocks:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5382
    invoke-virtual {v3, v11}, Lorg/telegram/messenger/MessageObject;->getMusicAuthor(Z)Ljava/lang/String;

    move-result-object v0

    .line 5383
    invoke-virtual {v3, v11}, Lorg/telegram/messenger/MessageObject;->getMusicTitle(Z)Ljava/lang/String;

    move-result-object v2

    .line 5384
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_29

    .line 5386
    :cond_5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v11

    aput-object v2, v3, v12

    const-string v0, "%s - %s"

    .line 5387
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0, v1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    goto/16 :goto_15

    .line 5388
    :cond_6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 5389
    invoke-direct {v7, v2, v1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    goto/16 :goto_15

    .line 5391
    :cond_7
    invoke-direct {v7, v0, v1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    goto/16 :goto_15

    .line 5395
    :cond_8
    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    const/4 v13, 0x0

    if-eqz v3, :cond_e

    .line 5396
    move-object v2, v1

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    .line 5397
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_29

    const/4 v3, -0x1

    .line 5398
    iput v3, v1, Lorg/telegram/tgnet/TLRPC$PageBlock;->level:I

    .line 5399
    :goto_1
    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v11, v1, :cond_c

    .line 5400
    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 5401
    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockUnsupported;

    if-eqz v3, :cond_9

    goto :goto_2

    .line 5403
    :cond_9
    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAnchor;

    if-eqz v3, :cond_a

    .line 5404
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAnchor;

    .line 5405
    iget-object v3, v7, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->anchors:Ljava/util/HashMap;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAnchor;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iget-object v4, v7, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 5408
    :cond_a
    iput v12, v1, Lorg/telegram/tgnet/TLRPC$PageBlock;->level:I

    .line 5409
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v12

    if-ne v11, v3, :cond_b

    .line 5410
    iput-boolean v12, v1, Lorg/telegram/tgnet/TLRPC$PageBlock;->bottom:Z

    .line 5412
    :cond_b
    iget-object v3, v7, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5413
    invoke-direct {v7, v0, v1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addAllMediaFromBlock(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 5415
    :cond_c
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->getPlainText(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->credit:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer;->getPlainText(Lorg/telegram/tgnet/TLRPC$RichText;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 5416
    :cond_d
    new-instance v0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockEmbedPostCaption;

    invoke-direct {v0, v13}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockEmbedPostCaption;-><init>(Lorg/telegram/ui/ArticleViewer$1;)V

    .line 5417
    invoke-static {v0, v2}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockEmbedPostCaption;->access$11702(Lorg/telegram/ui/ArticleViewer$TL_pageBlockEmbedPostCaption;Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    .line 5418
    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    .line 5419
    iget-object v1, v7, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_15

    .line 5422
    :cond_e
    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockRelatedArticles;

    if-eqz v3, :cond_10

    .line 5423
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockRelatedArticles;

    .line 5425
    new-instance v0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesShadow;

    invoke-direct {v0, v13}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesShadow;-><init>(Lorg/telegram/ui/ArticleViewer$1;)V

    .line 5426
    invoke-static {v0, v1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesShadow;->access$11902(Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesShadow;Lorg/telegram/tgnet/TLRPC$TL_pageBlockRelatedArticles;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockRelatedArticles;

    .line 5427
    iget-object v2, v7, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v12

    invoke-virtual {v2, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5429
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockRelatedArticles;->articles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_3
    if-ge v11, v0, :cond_f

    .line 5430
    new-instance v2, Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;

    invoke-direct {v2, v13}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;-><init>(Lorg/telegram/ui/ArticleViewer$1;)V

    .line 5431
    invoke-static {v2, v1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;->access$8602(Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;Lorg/telegram/tgnet/TLRPC$TL_pageBlockRelatedArticles;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockRelatedArticles;

    .line 5432
    invoke-static {v2, v11}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;->access$8502(Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;I)I

    .line 5433
    iget-object v3, v7, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_f
    if-nez p5, :cond_29

    .line 5436
    new-instance v0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesShadow;

    invoke-direct {v0, v13}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesShadow;-><init>(Lorg/telegram/ui/ArticleViewer$1;)V

    .line 5437
    invoke-static {v0, v1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesShadow;->access$11902(Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesShadow;Lorg/telegram/tgnet/TLRPC$TL_pageBlockRelatedArticles;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockRelatedArticles;

    .line 5438
    iget-object v1, v7, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_15

    .line 5440
    :cond_10
    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;

    if-eqz v3, :cond_11

    .line 5441
    move-object v10, v1

    check-cast v10, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;

    .line 5442
    iget-object v1, v10, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v14

    :goto_4
    if-ge v11, v14, :cond_29

    .line 5443
    new-instance v1, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;

    invoke-direct {v1, v13}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;-><init>(Lorg/telegram/ui/ArticleViewer$1;)V

    .line 5444
    invoke-static {v1, v8}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;->access$6502(Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 5445
    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$PageBlock;

    invoke-static {v1, v2}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;->access$6602(Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 5446
    iget-object v2, v7, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v2, v8, v1}, Lorg/telegram/ui/ArticleViewer;->access$12200(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLRPC$PageBlock;Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v3

    add-int/lit8 v4, p3, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addBlock(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/tgnet/TLRPC$PageBlock;III)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_11
    const-string v14, " "

    const-string v15, ".%d"

    const-string v6, "%d."

    if-eqz v2, :cond_1b

    .line 5462
    move-object v5, v1

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;

    .line 5464
    new-instance v4, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;

    iget-object v1, v7, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {v4, v1, v13}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;-><init>(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$1;)V

    .line 5465
    invoke-static {v4, v5}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;->access$8702(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;

    .line 5466
    invoke-static {v4, v9}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;->access$12402(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;I)I

    .line 5468
    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v2, v11

    :goto_5
    if-ge v2, v3, :cond_29

    .line 5469
    iget-object v1, v5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$PageListItem;

    .line 5471
    new-instance v11, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    iget-object v12, v7, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-direct {v11, v12, v13}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;-><init>(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$1;)V

    .line 5472
    invoke-static {v11, v2}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->access$12502(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;I)I

    .line 5473
    invoke-static {v11, v4}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->access$6802(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;

    .line 5474
    iget-boolean v12, v5, Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;->ordered:Z

    if-eqz v12, :cond_13

    .line 5475
    iget-boolean v12, v7, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->isRtl:Z

    if-eqz v12, :cond_12

    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/Object;

    add-int/lit8 v17, v2, 0x1

    .line 5476
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v16, 0x0

    aput-object v17, v13, v16

    invoke-static {v15, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->access$12602(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_6

    :cond_12
    const/4 v12, 0x1

    const/16 v16, 0x0

    new-array v13, v12, [Ljava/lang/Object;

    add-int/lit8 v12, v2, 0x1

    .line 5478
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v13, v16

    invoke-static {v6, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->access$12602(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_6

    :cond_13
    const-string v12, "\u2022"

    .line 5481
    invoke-static {v11, v12}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->access$12602(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;Ljava/lang/String;)Ljava/lang/String;

    .line 5483
    :goto_6
    invoke-static {v4}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;->access$12700(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5485
    instance-of v12, v1, Lorg/telegram/tgnet/TLRPC$TL_pageListItemText;

    if-eqz v12, :cond_14

    .line 5486
    move-object v12, v1

    check-cast v12, Lorg/telegram/tgnet/TLRPC$TL_pageListItemText;

    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$TL_pageListItemText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-static {v11, v12}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->access$11202(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    goto :goto_7

    .line 5487
    :cond_14
    instance-of v12, v1, Lorg/telegram/tgnet/TLRPC$TL_pageListItemBlocks;

    if-eqz v12, :cond_16

    .line 5488
    move-object v12, v1

    check-cast v12, Lorg/telegram/tgnet/TLRPC$TL_pageListItemBlocks;

    .line 5489
    iget-object v13, v12, Lorg/telegram/tgnet/TLRPC$TL_pageListItemBlocks;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_15

    .line 5490
    iget-object v12, v12, Lorg/telegram/tgnet/TLRPC$TL_pageListItemBlocks;->blocks:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$PageBlock;

    invoke-static {v11, v12}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->access$6302(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    goto :goto_7

    .line 5492
    :cond_15
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_pageListItemText;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_pageListItemText;-><init>()V

    .line 5493
    new-instance v12, Lorg/telegram/tgnet/TLRPC$TL_textPlain;

    invoke-direct {v12}, Lorg/telegram/tgnet/TLRPC$TL_textPlain;-><init>()V

    .line 5494
    iput-object v14, v12, Lorg/telegram/tgnet/TLRPC$TL_textPlain;->text:Ljava/lang/String;

    .line 5495
    iput-object v12, v1, Lorg/telegram/tgnet/TLRPC$TL_pageListItemText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    :cond_16
    :goto_7
    move-object v12, v1

    if-eqz v10, :cond_17

    .line 5500
    move-object v1, v8

    check-cast v1, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;

    .line 5501
    new-instance v13, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;

    const/4 v0, 0x0

    invoke-direct {v13, v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;-><init>(Lorg/telegram/ui/ArticleViewer$1;)V

    .line 5502
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;->access$6500(Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v0

    invoke-static {v13, v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;->access$6502(Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 5503
    invoke-static {v13, v11}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;->access$6602(Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    add-int/lit8 v0, v9, 0x1

    move-object/from16 v1, p0

    move/from16 v19, v2

    move-object/from16 v2, p1

    move/from16 v20, v3

    move-object v3, v13

    move-object v13, v4

    move/from16 v4, p3

    move-object/from16 v21, v5

    move v5, v0

    move-object v0, v6

    move/from16 v6, p5

    .line 5504
    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addBlock(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/tgnet/TLRPC$PageBlock;III)V

    goto :goto_9

    :cond_17
    move/from16 v19, v2

    move/from16 v20, v3

    move-object v13, v4

    move-object/from16 v21, v5

    move-object v0, v6

    if-nez v19, :cond_18

    .line 5508
    iget-object v1, v7, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v1, v8, v11}, Lorg/telegram/ui/ArticleViewer;->access$12800(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLRPC$PageBlock;Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v1

    move-object v3, v1

    goto :goto_8

    :cond_18
    move-object v3, v11

    :goto_8
    add-int/lit8 v5, v9, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v4, p3

    move/from16 v6, p5

    .line 5512
    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addBlock(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/tgnet/TLRPC$PageBlock;III)V

    .line 5515
    :goto_9
    instance-of v1, v12, Lorg/telegram/tgnet/TLRPC$TL_pageListItemBlocks;

    if-eqz v1, :cond_1a

    .line 5516
    check-cast v12, Lorg/telegram/tgnet/TLRPC$TL_pageListItemBlocks;

    .line 5517
    iget-object v1, v12, Lorg/telegram/tgnet/TLRPC$TL_pageListItemBlocks;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v6, 0x1

    :goto_a
    if-ge v6, v11, :cond_1a

    .line 5518
    new-instance v5, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    iget-object v1, v7, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v2, 0x0

    invoke-direct {v5, v1, v2}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;-><init>(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$1;)V

    .line 5519
    iget-object v1, v12, Lorg/telegram/tgnet/TLRPC$TL_pageListItemBlocks;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$PageBlock;

    invoke-static {v5, v1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->access$6302(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 5520
    invoke-static {v5, v13}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->access$6802(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;

    if-eqz v10, :cond_19

    .line 5523
    move-object v1, v8

    check-cast v1, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;

    .line 5524
    new-instance v3, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;

    invoke-direct {v3, v2}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;-><init>(Lorg/telegram/ui/ArticleViewer$1;)V

    .line 5525
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;->access$6500(Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v1

    invoke-static {v3, v1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;->access$6502(Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 5526
    invoke-static {v3, v5}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;->access$6602(Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    add-int/lit8 v22, v9, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v4, p3

    move-object/from16 v23, v5

    move/from16 v5, v22

    move/from16 v22, v6

    move/from16 v6, p5

    .line 5527
    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addBlock(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/tgnet/TLRPC$PageBlock;III)V

    goto :goto_b

    :cond_19
    move-object/from16 v23, v5

    move/from16 v22, v6

    add-int/lit8 v5, v9, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v23

    move/from16 v4, p3

    move/from16 v6, p5

    .line 5529
    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addBlock(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/tgnet/TLRPC$PageBlock;III)V

    .line 5531
    :goto_b
    invoke-static {v13}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;->access$12700(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;)Ljava/util/ArrayList;

    move-result-object v1

    move-object/from16 v2, v23

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v22, 0x1

    goto :goto_a

    :cond_1a
    add-int/lit8 v2, v19, 0x1

    move-object v6, v0

    move-object v4, v13

    move/from16 v3, v20

    move-object/from16 v5, v21

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object/from16 v0, p1

    goto/16 :goto_5

    :cond_1b
    move-object v0, v6

    .line 5535
    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockOrderedList;

    if-eqz v2, :cond_29

    .line 5536
    move-object v11, v1

    check-cast v11, Lorg/telegram/tgnet/TLRPC$TL_pageBlockOrderedList;

    .line 5538
    new-instance v12, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;

    iget-object v1, v7, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v2, 0x0

    invoke-direct {v12, v1, v2}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;-><init>(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$1;)V

    .line 5539
    invoke-static {v12, v11}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;->access$13002(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;Lorg/telegram/tgnet/TLRPC$TL_pageBlockOrderedList;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockOrderedList;

    .line 5540
    invoke-static {v12, v9}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;->access$13102(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;I)I

    .line 5542
    iget-object v1, v11, Lorg/telegram/tgnet/TLRPC$TL_pageBlockOrderedList;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v6, 0x0

    :goto_c
    if-ge v6, v13, :cond_29

    .line 5543
    iget-object v1, v11, Lorg/telegram/tgnet/TLRPC$TL_pageBlockOrderedList;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$PageListOrderedItem;

    .line 5545
    new-instance v2, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    iget-object v3, v7, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;-><init>(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$1;)V

    .line 5546
    invoke-static {v2, v6}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$13202(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;I)I

    .line 5547
    invoke-static {v2, v12}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$7002(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;

    .line 5548
    invoke-static {v12}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;->access$13300(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5550
    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_pageListOrderedItemText;

    const-string v4, "."

    if-eqz v3, :cond_1f

    .line 5551
    move-object v3, v1

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_pageListOrderedItemText;

    .line 5552
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_pageListOrderedItemText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-static {v2, v5}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$11302(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;Lorg/telegram/tgnet/TLRPC$RichText;)Lorg/telegram/tgnet/TLRPC$RichText;

    .line 5554
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_pageListOrderedItemText;->num:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 5555
    iget-boolean v3, v7, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->isRtl:Z

    if-eqz v3, :cond_1c

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    add-int/lit8 v5, v6, 0x1

    .line 5556
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v16, 0x0

    aput-object v5, v4, v16

    invoke-static {v15, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$13402(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_f

    :cond_1c
    const/4 v3, 0x1

    const/16 v16, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    add-int/lit8 v3, v6, 0x1

    .line 5558
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v16

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$13402(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_f

    .line 5561
    :cond_1d
    iget-boolean v5, v7, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->isRtl:Z

    if-eqz v5, :cond_1e

    .line 5562
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_pageListOrderedItemText;->num:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$13402(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_f

    .line 5564
    :cond_1e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_pageListOrderedItemText;->num:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$13402(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_f

    .line 5567
    :cond_1f
    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_pageListOrderedItemBlocks;

    if-eqz v3, :cond_24

    .line 5568
    move-object v3, v1

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_pageListOrderedItemBlocks;

    .line 5569
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_pageListOrderedItemBlocks;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_20

    .line 5570
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_pageListOrderedItemBlocks;->blocks:Ljava/util/ArrayList;

    move-object/from16 v19, v1

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$PageBlock;

    invoke-static {v2, v5}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$6402(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-object/from16 v1, v19

    goto :goto_d

    .line 5572
    :cond_20
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_pageListOrderedItemText;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_pageListOrderedItemText;-><init>()V

    .line 5573
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_textPlain;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_textPlain;-><init>()V

    .line 5574
    iput-object v14, v5, Lorg/telegram/tgnet/TLRPC$TL_textPlain;->text:Ljava/lang/String;

    .line 5575
    iput-object v5, v1, Lorg/telegram/tgnet/TLRPC$TL_pageListOrderedItemText;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    .line 5579
    :goto_d
    iget-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_pageListOrderedItemBlocks;->num:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 5580
    iget-boolean v3, v7, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->isRtl:Z

    if-eqz v3, :cond_21

    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/Object;

    add-int/lit8 v4, v6, 0x1

    .line 5581
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v16, 0x0

    aput-object v4, v3, v16

    invoke-static {v15, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$13402(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_e

    :cond_21
    const/4 v5, 0x1

    const/16 v16, 0x0

    new-array v3, v5, [Ljava/lang/Object;

    add-int/lit8 v4, v6, 0x1

    .line 5583
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v16

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$13402(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_e

    :cond_22
    const/16 v16, 0x0

    .line 5586
    iget-boolean v5, v7, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->isRtl:Z

    if-eqz v5, :cond_23

    .line 5587
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_pageListOrderedItemBlocks;->num:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$13402(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_e

    .line 5589
    :cond_23
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_pageListOrderedItemBlocks;->num:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$13402(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;Ljava/lang/String;)Ljava/lang/String;

    :goto_e
    move-object v5, v1

    goto :goto_10

    :cond_24
    :goto_f
    move-object/from16 v19, v1

    const/16 v16, 0x0

    move-object/from16 v5, v19

    :goto_10
    if-eqz v10, :cond_25

    .line 5594
    move-object v1, v8

    check-cast v1, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;

    .line 5595
    new-instance v3, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;-><init>(Lorg/telegram/ui/ArticleViewer$1;)V

    .line 5596
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;->access$6500(Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v1

    invoke-static {v3, v1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;->access$6502(Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 5597
    invoke-static {v3, v2}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;->access$6602(Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    add-int/lit8 v19, v9, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v4, p3

    move-object/from16 v20, v0

    move-object v0, v5

    const/16 v17, 0x1

    move/from16 v5, v19

    move/from16 v19, v6

    move/from16 v6, p5

    .line 5598
    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addBlock(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/tgnet/TLRPC$PageBlock;III)V

    goto :goto_12

    :cond_25
    move-object/from16 v20, v0

    move-object v0, v5

    move/from16 v19, v6

    const/16 v17, 0x1

    if-nez v19, :cond_26

    .line 5602
    iget-object v1, v7, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v1, v8, v2}, Lorg/telegram/ui/ArticleViewer;->access$12800(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLRPC$PageBlock;Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v1

    move-object v3, v1

    goto :goto_11

    :cond_26
    move-object v3, v2

    :goto_11
    add-int/lit8 v5, v9, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v4, p3

    move/from16 v6, p5

    .line 5606
    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addBlock(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/tgnet/TLRPC$PageBlock;III)V

    .line 5609
    :goto_12
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_pageListOrderedItemBlocks;

    if-eqz v1, :cond_28

    .line 5610
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageListOrderedItemBlocks;

    .line 5611
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_pageListOrderedItemBlocks;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 v5, v17

    :goto_13
    if-ge v5, v6, :cond_28

    .line 5612
    new-instance v4, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    iget-object v1, v7, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    const/4 v3, 0x0

    invoke-direct {v4, v1, v3}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;-><init>(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$1;)V

    .line 5613
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_pageListOrderedItemBlocks;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$PageBlock;

    invoke-static {v4, v1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$6402(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 5614
    invoke-static {v4, v12}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$7002(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;)Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;

    if-eqz v10, :cond_27

    .line 5617
    move-object v1, v8

    check-cast v1, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;

    .line 5618
    new-instance v2, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;

    invoke-direct {v2, v3}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;-><init>(Lorg/telegram/ui/ArticleViewer$1;)V

    .line 5619
    invoke-static {v1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;->access$6500(Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v1

    invoke-static {v2, v1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;->access$6502(Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 5620
    invoke-static {v2, v4}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;->access$6602(Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    add-int/lit8 v18, v9, 0x1

    move-object/from16 v1, p0

    move-object/from16 v21, v2

    move-object/from16 v2, p1

    move-object/from16 v22, v3

    move-object/from16 v3, v21

    move-object/from16 v21, v4

    move/from16 v4, p3

    move/from16 v23, v5

    move/from16 v5, v18

    move/from16 v18, v6

    move/from16 v6, p5

    .line 5621
    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addBlock(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/tgnet/TLRPC$PageBlock;III)V

    goto :goto_14

    :cond_27
    move-object/from16 v22, v3

    move-object/from16 v21, v4

    move/from16 v23, v5

    move/from16 v18, v6

    add-int/lit8 v5, v9, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v21

    move/from16 v4, p3

    move/from16 v6, p5

    .line 5623
    :try_start_0
    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addBlock(Lorg/telegram/ui/ArticleViewer$WebpageAdapter;Lorg/telegram/tgnet/TLRPC$PageBlock;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5625
    :goto_14
    invoke-static {v12}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;->access$13300(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListParent;)Ljava/util/ArrayList;

    move-result-object v1

    move-object/from16 v2, v21

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v23, 0x1

    move/from16 v6, v18

    goto :goto_13

    :cond_28
    const/16 v22, 0x0

    add-int/lit8 v6, v19, 0x1

    move-object/from16 v0, v20

    goto/16 :goto_c

    :cond_29
    :goto_15
    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 5623
    throw v1
.end method

.method private addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V
    .locals 1

    .line 5187
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textEmpty;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->textToBlocks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5190
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->textToBlocks:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5191
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->textBlocks:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private bindBlockToHolder(ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;Lorg/telegram/tgnet/TLRPC$PageBlock;II)V
    .locals 3

    .line 5839
    instance-of v0, p3, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCover;

    if-eqz v0, :cond_0

    .line 5840
    move-object v0, p3

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCover;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCover;->cover:Lorg/telegram/tgnet/TLRPC$PageBlock;

    goto :goto_0

    .line 5841
    :cond_0
    instance-of v0, p3, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;

    if-eqz v0, :cond_1

    .line 5842
    move-object v0, p3

    check-cast v0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;

    .line 5843
    invoke-static {v0}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;->access$6600(Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p3

    :goto_0
    const/16 v1, 0x64

    if-eq p1, v1, :cond_a

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_5

    .line 5983
    :pswitch_0
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ArticleViewer$BlockDetailsBottomCell;

    goto/16 :goto_5

    .line 5978
    :pswitch_1
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesHeaderCell;

    .line 5979
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockRelatedArticles;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesHeaderCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockRelatedArticles;)V

    goto/16 :goto_5

    .line 5973
    :pswitch_2
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ArticleViewer$BlockTableCell;

    .line 5974
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ArticleViewer$BlockTableCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;)V

    goto/16 :goto_5

    .line 5968
    :pswitch_3
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ArticleViewer$BlockDetailsCell;

    .line 5969
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ArticleViewer$BlockDetailsCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;)V

    goto/16 :goto_5

    .line 5963
    :pswitch_4
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;

    .line 5964
    check-cast v0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;->setBlock(Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;)V

    goto/16 :goto_5

    .line 5958
    :pswitch_5
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ArticleViewer$BlockMapCell;

    .line 5959
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockMap;

    if-nez p4, :cond_2

    move p2, v2

    goto :goto_1

    :cond_2
    move p2, v1

    :goto_1
    sub-int/2addr p5, v2

    if-ne p4, p5, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {p1, v0, p2, v1}, Lorg/telegram/ui/ArticleViewer$BlockMapCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockMap;ZZ)V

    goto/16 :goto_5

    .line 5953
    :pswitch_6
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;

    .line 5954
    check-cast v0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;->setBlock(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)V

    goto/16 :goto_5

    .line 5948
    :pswitch_7
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ArticleViewer$BlockKickerCell;

    .line 5949
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockKicker;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ArticleViewer$BlockKickerCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockKicker;)V

    goto/16 :goto_5

    .line 5943
    :pswitch_8
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;

    .line 5944
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;

    if-nez p4, :cond_4

    move p2, v2

    goto :goto_2

    :cond_4
    move p2, v1

    :goto_2
    sub-int/2addr p5, v2

    if-ne p4, p5, :cond_5

    move v1, v2

    :cond_5
    invoke-virtual {p1, v0, p2, v1}, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;ZZ)V

    goto/16 :goto_5

    .line 5938
    :pswitch_9
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

    .line 5939
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;)V

    goto/16 :goto_5

    .line 5933
    :pswitch_a
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;

    .line 5934
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;)V

    goto/16 :goto_5

    .line 5928
    :pswitch_b
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;

    .line 5929
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;)V

    goto/16 :goto_5

    .line 5923
    :pswitch_c
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ArticleViewer$BlockSubheaderCell;

    .line 5924
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubheader;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ArticleViewer$BlockSubheaderCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubheader;)V

    goto/16 :goto_5

    .line 5918
    :pswitch_d
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;

    .line 5919
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPreformatted;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockPreformatted;)V

    goto/16 :goto_5

    .line 5913
    :pswitch_e
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ArticleViewer$BlockFooterCell;

    .line 5914
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockFooter;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ArticleViewer$BlockFooterCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockFooter;)V

    goto/16 :goto_5

    .line 5908
    :pswitch_f
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;

    .line 5909
    check-cast v0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;->setBlock(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)V

    goto/16 :goto_5

    .line 5903
    :pswitch_10
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;

    .line 5904
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;)V

    goto/16 :goto_5

    .line 5898
    :pswitch_11
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;

    .line 5899
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;)V

    goto/16 :goto_5

    .line 5892
    :pswitch_12
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;

    .line 5893
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    if-nez p4, :cond_6

    move p2, v2

    goto :goto_3

    :cond_6
    move p2, v1

    :goto_3
    sub-int/2addr p5, v2

    if-ne p4, p5, :cond_7

    move v1, v2

    :cond_7
    invoke-virtual {p1, v0, p2, v1}, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;ZZ)V

    .line 5894
    invoke-virtual {p1, p3}, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;->setParentBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    goto/16 :goto_5

    .line 5887
    :pswitch_13
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    .line 5888
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;)V

    goto/16 :goto_5

    .line 5882
    :pswitch_14
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;

    .line 5883
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;)V

    goto/16 :goto_5

    .line 5877
    :pswitch_15
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;

    .line 5878
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;)V

    goto :goto_5

    .line 5871
    :pswitch_16
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;

    .line 5872
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    if-nez p4, :cond_8

    move p2, v2

    goto :goto_4

    :cond_8
    move p2, v1

    :goto_4
    sub-int/2addr p5, v2

    if-ne p4, p5, :cond_9

    move v1, v2

    :cond_9
    invoke-virtual {p1, v0, p2, v1}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;ZZ)V

    .line 5873
    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->channelBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;

    invoke-virtual {p1, p2, p3}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;->setParentBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    goto :goto_5

    .line 5866
    :pswitch_17
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ArticleViewer$BlockSubtitleCell;

    .line 5867
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubtitle;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ArticleViewer$BlockSubtitleCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubtitle;)V

    goto :goto_5

    .line 5861
    :pswitch_18
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    .line 5862
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;)V

    goto :goto_5

    .line 5857
    :pswitch_19
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ArticleViewer$BlockDividerCell;

    goto :goto_5

    .line 5852
    :pswitch_1a
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;

    .line 5853
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockHeader;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockHeader;)V

    goto :goto_5

    .line 5847
    :pswitch_1b
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;

    .line 5848
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;

    invoke-virtual {p1, v0}, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;->setBlock(Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;)V

    goto :goto_5

    .line 5987
    :cond_a
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Landroid/widget/TextView;

    .line 5988
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unsupported block "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private cleanup()V
    .locals 2

    const/4 v0, 0x0

    .line 6112
    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 6113
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 6114
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->photoBlocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 6115
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->audioBlocks:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 6116
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->audioMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 6117
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->anchors:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 6118
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->anchorsParent:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 6119
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->anchorsOffset:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 6120
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->textBlocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 6121
    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->textToBlocks:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 6122
    iput-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->channelBlock:Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;

    .line 6123
    invoke-virtual {p0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private getDocumentWithId(J)Lorg/telegram/tgnet/TLRPC$Document;
    .locals 1

    .line 5134
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/ArticleViewer$WebPageUtils;->getDocumentWithId(Lorg/telegram/tgnet/TLRPC$WebPage;J)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object p1

    return-object p1
.end method

.method private getPhotoWithId(J)Lorg/telegram/tgnet/TLRPC$Photo;
    .locals 1

    .line 5130
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    invoke-static {v0, p1, p2}, Lorg/telegram/ui/ArticleViewer$WebPageUtils;->getPhotoWithId(Lorg/telegram/tgnet/TLRPC$WebPage;J)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object p1

    return-object p1
.end method

.method private getTypeForBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)I
    .locals 1

    .line 5995
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 5997
    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockHeader;

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 5999
    :cond_1
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDivider;

    if-eqz v0, :cond_2

    const/4 p1, 0x2

    return p1

    .line 6001
    :cond_2
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    if-eqz v0, :cond_3

    const/4 p1, 0x3

    return p1

    .line 6003
    :cond_3
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubtitle;

    if-eqz v0, :cond_4

    const/4 p1, 0x4

    return p1

    .line 6005
    :cond_4
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    if-eqz v0, :cond_5

    const/4 p1, 0x5

    return p1

    .line 6007
    :cond_5
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;

    if-eqz v0, :cond_6

    const/4 p1, 0x6

    return p1

    .line 6009
    :cond_6
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;

    if-eqz v0, :cond_7

    const/4 p1, 0x7

    return p1

    .line 6011
    :cond_7
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    if-eqz v0, :cond_8

    const/16 p1, 0x8

    return p1

    .line 6013
    :cond_8
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    if-eqz v0, :cond_9

    const/16 p1, 0x9

    return p1

    .line 6015
    :cond_9
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;

    if-eqz v0, :cond_a

    const/16 p1, 0xa

    return p1

    .line 6017
    :cond_a
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;

    if-eqz v0, :cond_b

    const/16 p1, 0xb

    return p1

    .line 6019
    :cond_b
    instance-of v0, p1, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    if-eqz v0, :cond_c

    const/16 p1, 0xc

    return p1

    .line 6021
    :cond_c
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockFooter;

    if-eqz v0, :cond_d

    const/16 p1, 0xd

    return p1

    .line 6023
    :cond_d
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPreformatted;

    if-eqz v0, :cond_e

    const/16 p1, 0xe

    return p1

    .line 6025
    :cond_e
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubheader;

    if-eqz v0, :cond_f

    const/16 p1, 0xf

    return p1

    .line 6027
    :cond_f
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    if-eqz v0, :cond_10

    const/16 p1, 0x10

    return p1

    .line 6029
    :cond_10
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    if-eqz v0, :cond_11

    const/16 p1, 0x11

    return p1

    .line 6031
    :cond_11
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockChannel;

    if-eqz v0, :cond_12

    const/16 p1, 0x12

    return p1

    .line 6033
    :cond_12
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;

    if-eqz v0, :cond_13

    const/16 p1, 0x13

    return p1

    .line 6035
    :cond_13
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockKicker;

    if-eqz v0, :cond_14

    const/16 p1, 0x14

    return p1

    .line 6037
    :cond_14
    instance-of v0, p1, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    if-eqz v0, :cond_15

    const/16 p1, 0x15

    return p1

    .line 6039
    :cond_15
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockMap;

    if-eqz v0, :cond_16

    const/16 p1, 0x16

    return p1

    .line 6041
    :cond_16
    instance-of v0, p1, Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesChild;

    if-eqz v0, :cond_17

    const/16 p1, 0x17

    return p1

    .line 6043
    :cond_17
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;

    if-eqz v0, :cond_18

    const/16 p1, 0x18

    return p1

    .line 6045
    :cond_18
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;

    if-eqz v0, :cond_19

    const/16 p1, 0x19

    return p1

    .line 6047
    :cond_19
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockRelatedArticles;

    if-eqz v0, :cond_1a

    const/16 p1, 0x1a

    return p1

    .line 6051
    :cond_1a
    instance-of v0, p1, Lorg/telegram/ui/ArticleViewer$TL_pageBlockRelatedArticlesShadow;

    if-eqz v0, :cond_1b

    const/16 p1, 0x1c

    return p1

    .line 6053
    :cond_1b
    instance-of v0, p1, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;

    if-eqz v0, :cond_1c

    .line 6054
    check-cast p1, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;

    .line 6055
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;->access$6600(Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->getTypeForBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)I

    move-result p1

    return p1

    .line 6056
    :cond_1c
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCover;

    if-eqz v0, :cond_1d

    .line 6057
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCover;

    .line 6058
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCover;->cover:Lorg/telegram/tgnet/TLRPC$PageBlock;

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->getTypeForBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)I

    move-result p1

    return p1

    :cond_1d
    const/16 p1, 0x64

    return p1
.end method

.method private isBlockOpened(Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;)Z
    .locals 3

    .line 6082
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;->access$6500(Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/telegram/ui/ArticleViewer;->access$11400(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object p1

    .line 6083
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;

    if-eqz v0, :cond_0

    .line 6084
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;->open:Z

    return p1

    .line 6085
    :cond_0
    instance-of v0, p1, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 6086
    check-cast p1, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;

    .line 6087
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;->access$6600(Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/telegram/ui/ArticleViewer;->access$11400(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v0

    .line 6088
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;

    if-eqz v2, :cond_1

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;->open:Z

    if-nez v0, :cond_1

    return v1

    .line 6091
    :cond_1
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->isBlockOpened(Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;)Z

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method private setRichTextParents(Lorg/telegram/tgnet/TLRPC$PageBlock;)V
    .locals 9

    .line 5195
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5196
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;

    .line 5197
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 5198
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->credit:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 5199
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    .line 5200
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbedPost;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->credit:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    goto/16 :goto_5

    .line 5201
    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;

    if-eqz v0, :cond_1

    .line 5202
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;

    .line 5203
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 5204
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockParagraph;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    goto/16 :goto_5

    .line 5205
    :cond_1
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockKicker;

    if-eqz v0, :cond_2

    .line 5206
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockKicker;

    .line 5207
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockKicker;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 5208
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockKicker;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    goto/16 :goto_5

    .line 5209
    :cond_2
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockFooter;

    if-eqz v0, :cond_3

    .line 5210
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockFooter;

    .line 5211
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockFooter;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 5212
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockFooter;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    goto/16 :goto_5

    .line 5213
    :cond_3
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockHeader;

    if-eqz v0, :cond_4

    .line 5214
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockHeader;

    .line 5215
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockHeader;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 5216
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockHeader;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    goto/16 :goto_5

    .line 5217
    :cond_4
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPreformatted;

    if-eqz v0, :cond_5

    .line 5218
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPreformatted;

    .line 5219
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPreformatted;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 5220
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPreformatted;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    goto/16 :goto_5

    .line 5221
    :cond_5
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubheader;

    if-eqz v0, :cond_6

    .line 5222
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubheader;

    .line 5223
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubheader;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 5224
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubheader;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    goto/16 :goto_5

    .line 5225
    :cond_6
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 5226
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;

    .line 5227
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 5228
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->credit:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 5229
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    .line 5230
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->credit:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    .line 5231
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v2, v0, :cond_1b

    .line 5232
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSlideshow;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$PageBlock;

    invoke-direct {p0, v1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5234
    :cond_7
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    if-eqz v0, :cond_8

    .line 5235
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;

    .line 5236
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 5237
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->credit:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 5238
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    .line 5239
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPhoto;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->credit:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    goto/16 :goto_5

    .line 5240
    :cond_8
    instance-of v0, p1, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    if-eqz v0, :cond_a

    .line 5241
    check-cast p1, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;

    .line 5242
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->access$11200(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 5243
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->access$11200(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 5244
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->access$11200(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    goto/16 :goto_5

    .line 5245
    :cond_9
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->access$6300(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 5246
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;->access$6300(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    goto/16 :goto_5

    .line 5248
    :cond_a
    instance-of v0, p1, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    if-eqz v0, :cond_c

    .line 5249
    check-cast p1, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;

    .line 5250
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$11300(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 5251
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$11300(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 5252
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$11300(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/tgnet/TLRPC$RichText;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    goto/16 :goto_5

    .line 5253
    :cond_b
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$6400(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 5254
    invoke-static {p1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;->access$6400(Lorg/telegram/ui/ArticleViewer$TL_pageBlockOrderedListItem;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    goto/16 :goto_5

    .line 5256
    :cond_c
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    if-eqz v0, :cond_d

    .line 5257
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;

    .line 5258
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 5259
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->credit:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 5260
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    .line 5261
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->credit:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    .line 5262
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v2, v0, :cond_1b

    .line 5263
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCollage;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$PageBlock;

    invoke-direct {p0, v1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5265
    :cond_d
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    if-eqz v0, :cond_e

    .line 5266
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;

    .line 5267
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 5268
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->credit:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 5269
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    .line 5270
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockEmbed;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->credit:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    goto/16 :goto_5

    .line 5271
    :cond_e
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubtitle;

    if-eqz v0, :cond_f

    .line 5272
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubtitle;

    .line 5273
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubtitle;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 5274
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockSubtitle;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    goto/16 :goto_5

    .line 5275
    :cond_f
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;

    if-eqz v0, :cond_10

    .line 5276
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;

    .line 5277
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 5278
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;->caption:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 5279
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    .line 5280
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockBlockquote;->caption:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    goto/16 :goto_5

    .line 5281
    :cond_10
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;

    if-eqz v0, :cond_11

    .line 5282
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;

    .line 5283
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;->title:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 5284
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;->title:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    .line 5285
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_2
    if-ge v2, v0, :cond_1b

    .line 5286
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockDetails;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$PageBlock;

    invoke-direct {p0, v1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 5288
    :cond_11
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    if-eqz v0, :cond_12

    .line 5289
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;

    .line 5290
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 5291
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->credit:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 5292
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    .line 5293
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockVideo;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->credit:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    goto/16 :goto_5

    .line 5294
    :cond_12
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;

    if-eqz v0, :cond_13

    .line 5295
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;

    .line 5296
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 5297
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;->caption:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 5298
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    .line 5299
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockPullquote;->caption:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    goto/16 :goto_5

    .line 5300
    :cond_13
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;

    if-eqz v0, :cond_14

    .line 5301
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;

    .line 5302
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 5303
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->credit:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 5304
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    .line 5305
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAudio;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->credit:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    goto/16 :goto_5

    .line 5306
    :cond_14
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;

    if-eqz v0, :cond_16

    .line 5307
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;

    .line 5308
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;->title:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 5309
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;->title:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    .line 5310
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v3, v2

    :goto_3
    if-ge v3, v0, :cond_1b

    .line 5311
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTable;->rows:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_pageTableRow;

    .line 5312
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_pageTableRow;->cells:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v2

    :goto_4
    if-ge v6, v5, :cond_15

    .line 5313
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$TL_pageTableRow;->cells:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;

    .line 5314
    iget-object v8, v7, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v1, v8}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 5315
    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$TL_pageTableCell;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v7, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 5318
    :cond_16
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;

    if-eqz v0, :cond_17

    .line 5319
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;

    .line 5320
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 5321
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockTitle;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    goto :goto_5

    .line 5322
    :cond_17
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCover;

    if-eqz v0, :cond_18

    .line 5323
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCover;

    .line 5324
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockCover;->cover:Lorg/telegram/tgnet/TLRPC$PageBlock;

    :try_start_0
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$PageBlock;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    .line 5325
    :cond_18
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;

    if-eqz v0, :cond_19

    .line 5326
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;

    .line 5327
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;->author:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 5328
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockAuthorDate;->author:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    goto :goto_5

    .line 5329
    :cond_19
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockMap;

    if-eqz v0, :cond_1a

    .line 5330
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockMap;

    .line 5331
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockMap;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 5332
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockMap;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->credit:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 5333
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockMap;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    .line 5334
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockMap;->caption:Lorg/telegram/tgnet/TLRPC$TL_pageCaption;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_pageCaption;->credit:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    goto :goto_5

    .line 5335
    :cond_1a
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockRelatedArticles;

    if-eqz v0, :cond_1b

    .line 5336
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockRelatedArticles;

    .line 5337
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockRelatedArticles;->title:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v1, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    .line 5338
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_pageBlockRelatedArticles;->title:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, v0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->addTextBlock(Ljava/lang/Object;Lorg/telegram/tgnet/TLRPC$PageBlock;)V

    :cond_1b
    :goto_5
    return-void

    :catchall_0
    move-exception p1

    .line 5324
    throw p1
.end method

.method private setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 5141
    :cond_0
    iput-object p1, p2, Lorg/telegram/tgnet/TLRPC$RichText;->parentRichText:Lorg/telegram/tgnet/TLRPC$RichText;

    .line 5142
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_textFixed;

    if-eqz p1, :cond_1

    .line 5143
    move-object p1, p2

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_textFixed;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_textFixed;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    goto/16 :goto_2

    .line 5144
    :cond_1
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_textItalic;

    if-eqz p1, :cond_2

    .line 5145
    move-object p1, p2

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_textItalic;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_textItalic;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    goto/16 :goto_2

    .line 5146
    :cond_2
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_textBold;

    if-eqz p1, :cond_3

    .line 5147
    move-object p1, p2

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_textBold;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_textBold;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    goto/16 :goto_2

    .line 5148
    :cond_3
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_textUnderline;

    if-eqz p1, :cond_4

    .line 5149
    move-object p1, p2

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_textUnderline;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_textUnderline;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    goto/16 :goto_2

    .line 5150
    :cond_4
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_textStrike;

    if-eqz p1, :cond_5

    .line 5151
    move-object p1, p2

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_textStrike;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_textStrike;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    goto/16 :goto_2

    .line 5152
    :cond_5
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_textEmail;

    if-eqz p1, :cond_6

    .line 5153
    move-object p1, p2

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_textEmail;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_textEmail;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    goto/16 :goto_2

    .line 5154
    :cond_6
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_textPhone;

    if-eqz p1, :cond_7

    .line 5155
    move-object p1, p2

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_textPhone;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_textPhone;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    goto/16 :goto_2

    .line 5156
    :cond_7
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_textUrl;

    if-eqz p1, :cond_8

    .line 5157
    move-object p1, p2

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_textUrl;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_textUrl;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    goto/16 :goto_2

    .line 5158
    :cond_8
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_textConcat;

    if-eqz p1, :cond_9

    .line 5159
    iget-object p1, p2, Lorg/telegram/tgnet/TLRPC$RichText;->texts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_f

    .line 5161
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$RichText;->texts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p2, v1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5163
    :cond_9
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_textSubscript;

    if-eqz p1, :cond_a

    .line 5164
    move-object p1, p2

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_textSubscript;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_textSubscript;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    goto :goto_2

    .line 5165
    :cond_a
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_textSuperscript;

    if-eqz p1, :cond_b

    .line 5166
    move-object p1, p2

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_textSuperscript;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_textSuperscript;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    goto :goto_2

    .line 5167
    :cond_b
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_textMarked;

    if-eqz p1, :cond_c

    .line 5168
    move-object p1, p2

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_textMarked;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_textMarked;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V

    goto :goto_2

    .line 5169
    :cond_c
    instance-of p1, p2, Lorg/telegram/tgnet/TLRPC$TL_textAnchor;

    if-eqz p1, :cond_f

    .line 5170
    move-object p1, p2

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_textAnchor;

    .line 5171
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textAnchor;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    :try_start_0
    invoke-direct {p0, p2, v0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->setRichTextParents(Lorg/telegram/tgnet/TLRPC$RichText;Lorg/telegram/tgnet/TLRPC$RichText;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5172
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_textAnchor;->name:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 5173
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->anchors:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5174
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_textAnchor;->text:Lorg/telegram/tgnet/TLRPC$RichText;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_textPlain;

    if-eqz v1, :cond_d

    .line 5175
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_textPlain;

    .line 5176
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_textPlain;->text:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 5177
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->anchorsParent:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 5179
    :cond_d
    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_textEmpty;

    if-nez v0, :cond_e

    .line 5180
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->anchorsParent:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5182
    :cond_e
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->anchorsOffset:Ljava/util/HashMap;

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    :goto_2
    return-void

    :catchall_0
    move-exception p1

    .line 5171
    throw p1
.end method

.method private updateRows()V
    .locals 5

    .line 6097
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->localBlocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6098
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 6099
    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 6100
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    invoke-static {v3, v2}, Lorg/telegram/ui/ArticleViewer;->access$11400(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/tgnet/TLRPC$PageBlock;)Lorg/telegram/tgnet/TLRPC$PageBlock;

    move-result-object v3

    .line 6101
    instance-of v4, v3, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;

    if-eqz v4, :cond_0

    .line 6102
    check-cast v3, Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;

    .line 6103
    invoke-direct {p0, v3}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->isBlockOpened(Lorg/telegram/ui/ArticleViewer$TL_pageBlockDetailsChild;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 6107
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->localBlocks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 6078
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->localBlocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 6066
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->localBlocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/16 p1, 0x5a

    return p1

    .line 6069
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->localBlocks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$PageBlock;

    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->getTypeForBlock(Lorg/telegram/tgnet/TLRPC$PageBlock;)I

    move-result p1

    return p1
.end method

.method public isEnabled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 5814
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/16 v0, 0x17

    if-eq p1, v0, :cond_1

    const/16 v0, 0x18

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 6128
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->updateRows()V

    .line 6129
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public notifyItemChanged(I)V
    .locals 0

    .line 6134
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->updateRows()V

    .line 6135
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public notifyItemInserted(I)V
    .locals 0

    .line 6158
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->updateRows()V

    .line 6159
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    return-void
.end method

.method public notifyItemMoved(II)V
    .locals 0

    .line 6164
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->updateRows()V

    .line 6165
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    return-void
.end method

.method public notifyItemRangeChanged(II)V
    .locals 0

    .line 6146
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->updateRows()V

    .line 6147
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public notifyItemRangeChanged(IILjava/lang/Object;)V
    .locals 0

    .line 6152
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->updateRows()V

    .line 6153
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public notifyItemRangeInserted(II)V
    .locals 0

    .line 6170
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->updateRows()V

    .line 6171
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public notifyItemRangeRemoved(II)V
    .locals 0

    .line 6182
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->updateRows()V

    .line 6183
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    return-void
.end method

.method public notifyItemRemoved(I)V
    .locals 0

    .line 6176
    invoke-direct {p0}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->updateRows()V

    .line 6177
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    .line 5823
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->localBlocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 5824
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->localBlocks:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lorg/telegram/tgnet/TLRPC$PageBlock;

    .line 5825
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->localBlocks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move-object v1, p0

    move-object v3, p1

    move v5, p2

    invoke-direct/range {v1 .. v6}, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->bindBlockToHolder(ILandroidx/recyclerview/widget/RecyclerView$ViewHolder;Lorg/telegram/tgnet/TLRPC$PageBlock;II)V

    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    const/16 p1, 0x5a

    const/4 v0, 0x1

    if-eq p2, p1, :cond_0

    const/4 p1, 0x0

    packed-switch p2, :pswitch_data_0

    .line 5799
    new-instance p1, Landroid/widget/TextView;

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 p2, -0x10000

    .line 5800
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const/high16 p2, -0x1000000

    .line 5801
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 p2, 0x41a00000    # 20.0f

    .line 5802
    invoke-virtual {p1, v0, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_1

    .line 5790
    :pswitch_0
    new-instance p1, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesShadowCell;

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesShadowCell;-><init>(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 5786
    :pswitch_1
    new-instance p1, Lorg/telegram/ui/ArticleViewer$BlockDetailsBottomCell;

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/ArticleViewer$BlockDetailsBottomCell;-><init>(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 5782
    :pswitch_2
    new-instance p1, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesHeaderCell;

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2, v1, p0}, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesHeaderCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V

    goto/16 :goto_1

    .line 5778
    :pswitch_3
    new-instance p1, Lorg/telegram/ui/ArticleViewer$BlockTableCell;

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2, v1, p0}, Lorg/telegram/ui/ArticleViewer$BlockTableCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V

    goto/16 :goto_1

    .line 5774
    :pswitch_4
    new-instance p1, Lorg/telegram/ui/ArticleViewer$BlockDetailsCell;

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2, v1, p0}, Lorg/telegram/ui/ArticleViewer$BlockDetailsCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V

    goto/16 :goto_1

    .line 5770
    :pswitch_5
    new-instance p1, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2, v1, p0}, Lorg/telegram/ui/ArticleViewer$BlockRelatedArticlesCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V

    goto/16 :goto_1

    .line 5766
    :pswitch_6
    new-instance p2, Lorg/telegram/ui/ArticleViewer$BlockMapCell;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {p2, v1, v2, p0, p1}, Lorg/telegram/ui/ArticleViewer$BlockMapCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;I)V

    goto/16 :goto_0

    .line 5762
    :pswitch_7
    new-instance p1, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2, v1, p0}, Lorg/telegram/ui/ArticleViewer$BlockOrderedListItemCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V

    goto/16 :goto_1

    .line 5758
    :pswitch_8
    new-instance p1, Lorg/telegram/ui/ArticleViewer$BlockKickerCell;

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2, v1, p0}, Lorg/telegram/ui/ArticleViewer$BlockKickerCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V

    goto/16 :goto_1

    .line 5754
    :pswitch_9
    new-instance p1, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2, v1, p0}, Lorg/telegram/ui/ArticleViewer$BlockAudioCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V

    goto/16 :goto_1

    .line 5750
    :pswitch_a
    new-instance p2, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {p2, v1, v2, p0, p1}, Lorg/telegram/ui/ArticleViewer$BlockChannelCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;I)V

    goto/16 :goto_0

    .line 5746
    :pswitch_b
    new-instance p1, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2, v1, p0}, Lorg/telegram/ui/ArticleViewer$BlockCollageCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V

    goto/16 :goto_1

    .line 5742
    :pswitch_c
    new-instance p1, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2, v1, p0}, Lorg/telegram/ui/ArticleViewer$BlockEmbedPostCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V

    goto/16 :goto_1

    .line 5738
    :pswitch_d
    new-instance p1, Lorg/telegram/ui/ArticleViewer$BlockSubheaderCell;

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2, v1, p0}, Lorg/telegram/ui/ArticleViewer$BlockSubheaderCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V

    goto/16 :goto_1

    .line 5734
    :pswitch_e
    new-instance p1, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2, v1, p0}, Lorg/telegram/ui/ArticleViewer$BlockPreformattedCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V

    goto/16 :goto_1

    .line 5730
    :pswitch_f
    new-instance p1, Lorg/telegram/ui/ArticleViewer$BlockFooterCell;

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2, v1, p0}, Lorg/telegram/ui/ArticleViewer$BlockFooterCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V

    goto/16 :goto_1

    .line 5726
    :pswitch_10
    new-instance p1, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2, v1, p0}, Lorg/telegram/ui/ArticleViewer$BlockListItemCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V

    goto/16 :goto_1

    .line 5722
    :pswitch_11
    new-instance p1, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2, v1, p0}, Lorg/telegram/ui/ArticleViewer$BlockTitleCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V

    goto/16 :goto_1

    .line 5718
    :pswitch_12
    new-instance p1, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2, v1, p0}, Lorg/telegram/ui/ArticleViewer$BlockAuthorDateCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V

    goto/16 :goto_1

    .line 5714
    :pswitch_13
    new-instance p2, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {p2, v1, v2, p0, p1}, Lorg/telegram/ui/ArticleViewer$BlockPhotoCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;I)V

    goto :goto_0

    .line 5710
    :pswitch_14
    new-instance p1, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2, v1, p0}, Lorg/telegram/ui/ArticleViewer$BlockSlideshowCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V

    goto :goto_1

    .line 5706
    :pswitch_15
    new-instance p1, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2, v1, p0}, Lorg/telegram/ui/ArticleViewer$BlockBlockquoteCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V

    goto :goto_1

    .line 5702
    :pswitch_16
    new-instance p1, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2, v1, p0}, Lorg/telegram/ui/ArticleViewer$BlockPullquoteCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V

    goto :goto_1

    .line 5698
    :pswitch_17
    new-instance p2, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {p2, v1, v2, p0, p1}, Lorg/telegram/ui/ArticleViewer$BlockVideoCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;I)V

    :goto_0
    move-object p1, p2

    goto :goto_1

    .line 5694
    :pswitch_18
    new-instance p1, Lorg/telegram/ui/ArticleViewer$BlockSubtitleCell;

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2, v1, p0}, Lorg/telegram/ui/ArticleViewer$BlockSubtitleCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V

    goto :goto_1

    .line 5690
    :pswitch_19
    new-instance p1, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2, v1, p0}, Lorg/telegram/ui/ArticleViewer$BlockEmbedCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V

    goto :goto_1

    .line 5686
    :pswitch_1a
    new-instance p1, Lorg/telegram/ui/ArticleViewer$BlockDividerCell;

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/ArticleViewer$BlockDividerCell;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 5682
    :pswitch_1b
    new-instance p1, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2, v1, p0}, Lorg/telegram/ui/ArticleViewer$BlockHeaderCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V

    goto :goto_1

    .line 5678
    :pswitch_1c
    new-instance p1, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->this$0:Lorg/telegram/ui/ArticleViewer;

    iget-object v1, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2, v1, p0}, Lorg/telegram/ui/ArticleViewer$BlockParagraphCell;-><init>(Lorg/telegram/ui/ArticleViewer;Landroid/content/Context;Lorg/telegram/ui/ArticleViewer$WebpageAdapter;)V

    goto :goto_1

    .line 5794
    :cond_0
    new-instance p1, Lorg/telegram/ui/ArticleViewer$ReportCell;

    iget-object p2, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->context:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/telegram/ui/ArticleViewer$ReportCell;-><init>(Landroid/content/Context;)V

    .line 5807
    :goto_1
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {p2, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5808
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 5809
    new-instance p2, Lorg/telegram/ui/Components/RecyclerListView$Holder;

    invoke-direct {p2, p1}, Lorg/telegram/ui/Components/RecyclerListView$Holder;-><init>(Landroid/view/View;)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 5831
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_1

    .line 5832
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Lorg/telegram/ui/ArticleViewer$ReportCell;

    .line 5833
    iget-object v0, p0, Lorg/telegram/ui/ArticleViewer$WebpageAdapter;->currentPage:Lorg/telegram/tgnet/TLRPC$WebPage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    if-eqz v0, :cond_0

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Page;->views:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ArticleViewer$ReportCell;->setViews(I)V

    :cond_1
    return-void
.end method
