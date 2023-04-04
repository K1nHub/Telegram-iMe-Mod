.class public final Lcom/iMe/ui/smartpanel/view/SmartBotContentView$listViewLayoutManager$1;
.super Lorg/telegram/ui/Components/ExtendedGridLayoutManager;
.source "SmartBotContentView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iMe/ui/smartpanel/view/SmartBotContentView;-><init>(Landroid/content/Context;Lcom/iMe/ui/smartpanel/model/SmartBotTab;Lcom/iMe/ui/smartpanel/view/SmartBotContentView$BotResponseType;Lcom/iMe/ui/smartpanel/SmartBotsView$Listener;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final size:Lorg/telegram/ui/Components/Size;

.field final synthetic this$0:Lcom/iMe/ui/smartpanel/view/SmartBotContentView;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/iMe/ui/smartpanel/view/SmartBotContentView;)V
    .locals 0

    iput-object p2, p0, Lcom/iMe/ui/smartpanel/view/SmartBotContentView$listViewLayoutManager$1;->this$0:Lcom/iMe/ui/smartpanel/view/SmartBotContentView;

    const/16 p2, 0x64

    .line 41
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 43
    new-instance p1, Lorg/telegram/ui/Components/Size;

    invoke-direct {p1}, Lorg/telegram/ui/Components/Size;-><init>()V

    iput-object p1, p0, Lcom/iMe/ui/smartpanel/view/SmartBotContentView$listViewLayoutManager$1;->size:Lorg/telegram/ui/Components/Size;

    return-void
.end method


# virtual methods
.method protected getSizeForItem(I)Lorg/telegram/ui/Components/Size;
    .locals 5

    .line 49
    iget-object v0, p0, Lcom/iMe/ui/smartpanel/view/SmartBotContentView$listViewLayoutManager$1;->size:Lorg/telegram/ui/Components/Size;

    iget-object v1, p0, Lcom/iMe/ui/smartpanel/view/SmartBotContentView$listViewLayoutManager$1;->this$0:Lcom/iMe/ui/smartpanel/view/SmartBotContentView;

    invoke-static {v1}, Lcom/iMe/ui/smartpanel/view/SmartBotContentView;->access$getListView$p(Lcom/iMe/ui/smartpanel/view/SmartBotContentView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lorg/telegram/ui/Components/Size;->width:F

    .line 50
    iget-object v0, p0, Lcom/iMe/ui/smartpanel/view/SmartBotContentView$listViewLayoutManager$1;->size:Lorg/telegram/ui/Components/Size;

    iget-object v1, p0, Lcom/iMe/ui/smartpanel/view/SmartBotContentView$listViewLayoutManager$1;->this$0:Lcom/iMe/ui/smartpanel/view/SmartBotContentView;

    invoke-static {v1}, Lcom/iMe/ui/smartpanel/view/SmartBotContentView;->access$getListView$p(Lcom/iMe/ui/smartpanel/view/SmartBotContentView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Components/Size;->height:F

    .line 52
    iget-object v0, p0, Lcom/iMe/ui/smartpanel/view/SmartBotContentView$listViewLayoutManager$1;->this$0:Lcom/iMe/ui/smartpanel/view/SmartBotContentView;

    invoke-static {v0}, Lcom/iMe/ui/smartpanel/view/SmartBotContentView;->access$getListViewAdapter$p(Lcom/iMe/ui/smartpanel/view/SmartBotContentView;)Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->getItem(I)Lcom/iMe/ui/smartpanel/model/SmartPanelTabContent;

    move-result-object p1

    .line 53
    instance-of v0, p1, Lcom/iMe/ui/smartpanel/model/content/TabBotMediaAnswerItem;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/iMe/ui/smartpanel/model/content/TabBotMediaAnswerItem;

    invoke-virtual {p1}, Lcom/iMe/ui/smartpanel/model/content/TabBotMediaAnswerItem;->getMedia()Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_c

    .line 55
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 56
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 v2, 0x5a

    invoke-static {v0, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    .line 57
    iget-object v2, p0, Lcom/iMe/ui/smartpanel/view/SmartBotContentView$listViewLayoutManager$1;->size:Lorg/telegram/ui/Components/Size;

    const/16 v3, 0x64

    if-eqz v0, :cond_1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    int-to-float v4, v4

    iput v4, v2, Lorg/telegram/ui/Components/Size;->width:F

    if-eqz v0, :cond_2

    .line 58
    iget v3, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    :cond_2
    int-to-float v0, v3

    iput v0, v2, Lorg/telegram/ui/Components/Size;->height:F

    .line 59
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_c

    .line 60
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 61
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;

    if-nez v3, :cond_4

    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 62
    :cond_4
    :goto_3
    iget-object p1, p0, Lcom/iMe/ui/smartpanel/view/SmartBotContentView$listViewLayoutManager$1;->size:Lorg/telegram/ui/Components/Size;

    iget v0, v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    int-to-float v0, v0

    iput v0, p1, Lorg/telegram/ui/Components/Size;->width:F

    .line 63
    iget v0, v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I

    int-to-float v0, v0

    iput v0, p1, Lorg/telegram/ui/Components/Size;->height:F

    goto/16 :goto_8

    .line 67
    :cond_5
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content:Lorg/telegram/tgnet/TLRPC$WebDocument;

    if-eqz v0, :cond_8

    .line 68
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebDocument;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_4
    if-ge v1, v0, :cond_c

    .line 69
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content:Lorg/telegram/tgnet/TLRPC$WebDocument;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$WebDocument;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 70
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;

    if-nez v3, :cond_7

    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v3, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 71
    :cond_7
    :goto_5
    iget-object p1, p0, Lcom/iMe/ui/smartpanel/view/SmartBotContentView$listViewLayoutManager$1;->size:Lorg/telegram/ui/Components/Size;

    iget v0, v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    int-to-float v0, v0

    iput v0, p1, Lorg/telegram/ui/Components/Size;->width:F

    .line 72
    iget v0, v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I

    int-to-float v0, v0

    iput v0, p1, Lorg/telegram/ui/Components/Size;->height:F

    goto :goto_8

    .line 76
    :cond_8
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->thumb:Lorg/telegram/tgnet/TLRPC$WebDocument;

    if-eqz v0, :cond_b

    .line 77
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebDocument;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_6
    if-ge v1, v0, :cond_c

    .line 78
    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->thumb:Lorg/telegram/tgnet/TLRPC$WebDocument;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$WebDocument;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 79
    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;

    if-nez v3, :cond_a

    instance-of v3, v2, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v3, :cond_9

    goto :goto_7

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 80
    :cond_a
    :goto_7
    iget-object p1, p0, Lcom/iMe/ui/smartpanel/view/SmartBotContentView$listViewLayoutManager$1;->size:Lorg/telegram/ui/Components/Size;

    iget v0, v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    int-to-float v0, v0

    iput v0, p1, Lorg/telegram/ui/Components/Size;->width:F

    .line 81
    iget v0, v2, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I

    int-to-float v0, v0

    iput v0, p1, Lorg/telegram/ui/Components/Size;->height:F

    goto :goto_8

    .line 85
    :cond_b
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz p1, :cond_c

    .line 86
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->photoSize:Ljava/lang/Integer;

    const-string v1, "photoSize"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 88
    iget-object v0, p0, Lcom/iMe/ui/smartpanel/view/SmartBotContentView$listViewLayoutManager$1;->size:Lorg/telegram/ui/Components/Size;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    int-to-float v1, v1

    iput v1, v0, Lorg/telegram/ui/Components/Size;->width:F

    .line 89
    iget p1, p1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    int-to-float p1, p1

    iput p1, v0, Lorg/telegram/ui/Components/Size;->height:F

    .line 93
    :cond_c
    :goto_8
    iget-object p1, p0, Lcom/iMe/ui/smartpanel/view/SmartBotContentView$listViewLayoutManager$1;->size:Lorg/telegram/ui/Components/Size;

    return-object p1
.end method
