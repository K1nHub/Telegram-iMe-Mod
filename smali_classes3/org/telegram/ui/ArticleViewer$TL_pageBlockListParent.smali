.class Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;
.super Lorg/telegram/tgnet/TLRPC$PageBlock;
.source "ArticleViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ArticleViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TL_pageBlockListParent"
.end annotation


# instance fields
.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/ui/ArticleViewer$TL_pageBlockListItem;",
            ">;"
        }
    .end annotation
.end field

.field private lastFontSize:I

.field private lastMaxNumCalcWidth:I

.field private level:I

.field private maxNumWidth:I

.field private pageBlockList:Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;


# direct methods
.method private constructor <init>(Lorg/telegram/ui/ArticleViewer;)V
    .locals 0

    .line 394
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$PageBlock;-><init>()V

    .line 396
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;->items:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/ArticleViewer;Lorg/telegram/ui/ArticleViewer$1;)V
    .locals 0

    .line 394
    invoke-direct {p0, p1}, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;-><init>(Lorg/telegram/ui/ArticleViewer;)V

    return-void
.end method

.method static synthetic access$12200(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;)I
    .locals 0

    .line 394
    iget p0, p0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;->level:I

    return p0
.end method

.method static synthetic access$12202(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;I)I
    .locals 0

    .line 394
    iput p1, p0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;->level:I

    return p1
.end method

.method static synthetic access$12500(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;)Ljava/util/ArrayList;
    .locals 0

    .line 394
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;->items:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$18800(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;)I
    .locals 0

    .line 394
    iget p0, p0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;->lastMaxNumCalcWidth:I

    return p0
.end method

.method static synthetic access$18802(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;I)I
    .locals 0

    .line 394
    iput p1, p0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;->lastMaxNumCalcWidth:I

    return p1
.end method

.method static synthetic access$18900(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;)I
    .locals 0

    .line 394
    iget p0, p0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;->lastFontSize:I

    return p0
.end method

.method static synthetic access$18902(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;I)I
    .locals 0

    .line 394
    iput p1, p0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;->lastFontSize:I

    return p1
.end method

.method static synthetic access$19000(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;)I
    .locals 0

    .line 394
    iget p0, p0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;->maxNumWidth:I

    return p0
.end method

.method static synthetic access$19002(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;I)I
    .locals 0

    .line 394
    iput p1, p0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;->maxNumWidth:I

    return p1
.end method

.method static synthetic access$8700(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;
    .locals 0

    .line 394
    iget-object p0, p0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;->pageBlockList:Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;

    return-object p0
.end method

.method static synthetic access$8702(Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;)Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;
    .locals 0

    .line 394
    iput-object p1, p0, Lorg/telegram/ui/ArticleViewer$TL_pageBlockListParent;->pageBlockList:Lorg/telegram/tgnet/TLRPC$TL_pageBlockList;

    return-object p1
.end method
