.class public final Lcom/smedialink/ui/smartpanel/view/SmartBotContentView$listViewLayoutManager$1;
.super Lorg/telegram/ui/Components/ExtendedGridLayoutManager;
.source "SmartBotContentView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;-><init>(Landroid/content/Context;Lcom/smedialink/ui/smartpanel/model/SmartBotTab;Lcom/smedialink/ui/smartpanel/view/SmartBotContentView$BotResponseType;Lcom/smedialink/ui/smartpanel/SmartBotsView$Listener;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final size:Lorg/telegram/ui/Components/Size;

.field final synthetic this$0:Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;


# direct methods
.method constructor <init>(Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView$listViewLayoutManager$1;->this$0:Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;

    const/16 p1, 0x64

    .line 41
    invoke-direct {p0, p2, p1}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 43
    new-instance p1, Lorg/telegram/ui/Components/Size;

    invoke-direct {p1}, Lorg/telegram/ui/Components/Size;-><init>()V

    iput-object p1, p0, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView$listViewLayoutManager$1;->size:Lorg/telegram/ui/Components/Size;

    return-void
.end method


# virtual methods
.method protected getSizeForItem(I)Lorg/telegram/ui/Components/Size;
    .locals 5

    .line 49
    iget-object v0, p0, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView$listViewLayoutManager$1;->size:Lorg/telegram/ui/Components/Size;

    iget-object v1, p0, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView$listViewLayoutManager$1;->this$0:Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;

    invoke-static {v1}, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;->access$getListView$p(Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lorg/telegram/ui/Components/Size;->width:F

    .line 50
    iget-object v0, p0, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView$listViewLayoutManager$1;->size:Lorg/telegram/ui/Components/Size;

    iget-object v1, p0, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView$listViewLayoutManager$1;->this$0:Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;

    invoke-static {v1}, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;->access$getListView$p(Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Components/Size;->height:F

    .line 52
    iget-object v0, p0, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView$listViewLayoutManager$1;->this$0:Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;

    invoke-static {v0}, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;->access$getListViewAdapter$p(Lcom/smedialink/ui/smartpanel/view/SmartBotContentView;)Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/smedialink/ui/smartpanel/adapter/SmartBotContentAdapter;->getItem(I)Lcom/smedialink/ui/smartpanel/model/SmartPanelTabContent;

    move-result-object p1

    .line 53
    instance-of v0, p1, Lcom/smedialink/ui/smartpanel/model/content/TabBotMediaAnswerItem;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/smedialink/ui/smartpanel/model/content/TabBotMediaAnswerItem;

    invoke-virtual {p1}, Lcom/smedialink/ui/smartpanel/model/content/TabBotMediaAnswerItem;->getMedia()Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_f

    .line 55
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 56
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 v2, 0x5a

    invoke-static {v0, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    .line 57
    iget-object v2, p0, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView$listViewLayoutManager$1;->size:Lorg/telegram/ui/Components/Size;

    const/16 v3, 0x64

    if-nez v0, :cond_1

    const/16 v4, 0x64

    goto :goto_1

    :cond_1
    iget v4, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    :goto_1
    int-to-float v4, v4

    iput v4, v2, Lorg/telegram/ui/Components/Size;->width:F

    if-nez v0, :cond_2

    goto :goto_2

    .line 58
    :cond_2
    iget v3, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    :goto_2
    int-to-float v0, v3

    iput v0, v2, Lorg/telegram/ui/Components/Size;->height:F

    .line 59
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_f

    :goto_3
    add-int/lit8 v2, v1, 0x1

    .line 60
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 61
    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;

    if-nez v3, :cond_5

    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v3, :cond_3

    goto :goto_4

    :cond_3
    if-le v2, v0, :cond_4

    goto/16 :goto_9

    :cond_4
    move v1, v2

    goto :goto_3

    .line 62
    :cond_5
    :goto_4
    iget-object p1, p0, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView$listViewLayoutManager$1;->size:Lorg/telegram/ui/Components/Size;

    iget v0, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    int-to-float v0, v0

    iput v0, p1, Lorg/telegram/ui/Components/Size;->width:F

    .line 63
    iget v0, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I

    int-to-float v0, v0

    iput v0, p1, Lorg/telegram/ui/Components/Size;->height:F

    goto/16 :goto_9

    .line 67
    :cond_6
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content:Lorg/telegram/tgnet/TLRPC$WebDocument;

    if-eqz v0, :cond_a

    .line 68
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebDocument;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_f

    :goto_5
    add-int/lit8 v2, v1, 0x1

    .line 69
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content:Lorg/telegram/tgnet/TLRPC$WebDocument;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$WebDocument;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 70
    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;

    if-nez v3, :cond_9

    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v3, :cond_7

    goto :goto_6

    :cond_7
    if-le v2, v0, :cond_8

    goto/16 :goto_9

    :cond_8
    move v1, v2

    goto :goto_5

    .line 71
    :cond_9
    :goto_6
    iget-object p1, p0, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView$listViewLayoutManager$1;->size:Lorg/telegram/ui/Components/Size;

    iget v0, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    int-to-float v0, v0

    iput v0, p1, Lorg/telegram/ui/Components/Size;->width:F

    .line 72
    iget v0, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I

    int-to-float v0, v0

    iput v0, p1, Lorg/telegram/ui/Components/Size;->height:F

    goto :goto_9

    .line 76
    :cond_a
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->thumb:Lorg/telegram/tgnet/TLRPC$WebDocument;

    if-eqz v0, :cond_e

    .line 77
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebDocument;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_f

    :goto_7
    add-int/lit8 v2, v1, 0x1

    .line 78
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->thumb:Lorg/telegram/tgnet/TLRPC$WebDocument;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$WebDocument;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 79
    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;

    if-nez v3, :cond_d

    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v3, :cond_b

    goto :goto_8

    :cond_b
    if-le v2, v0, :cond_c

    goto :goto_9

    :cond_c
    move v1, v2

    goto :goto_7

    .line 80
    :cond_d
    :goto_8
    iget-object p1, p0, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView$listViewLayoutManager$1;->size:Lorg/telegram/ui/Components/Size;

    iget v0, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    int-to-float v0, v0

    iput v0, p1, Lorg/telegram/ui/Components/Size;->width:F

    .line 81
    iget v0, v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I

    int-to-float v0, v0

    iput v0, p1, Lorg/telegram/ui/Components/Size;->height:F

    goto :goto_9

    .line 85
    :cond_e
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz p1, :cond_f

    .line 86
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->photoSize:Ljava/lang/Integer;

    const-string v1, "photoSize"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 88
    iget-object v0, p0, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView$listViewLayoutManager$1;->size:Lorg/telegram/ui/Components/Size;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    int-to-float v1, v1

    iput v1, v0, Lorg/telegram/ui/Components/Size;->width:F

    .line 89
    iget p1, p1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    int-to-float p1, p1

    iput p1, v0, Lorg/telegram/ui/Components/Size;->height:F

    .line 93
    :cond_f
    :goto_9
    iget-object p1, p0, Lcom/smedialink/ui/smartpanel/view/SmartBotContentView$listViewLayoutManager$1;->size:Lorg/telegram/ui/Components/Size;

    return-object p1
.end method
