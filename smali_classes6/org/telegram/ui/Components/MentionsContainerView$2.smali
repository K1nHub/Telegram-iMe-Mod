.class Lorg/telegram/ui/Components/MentionsContainerView$2;
.super Lorg/telegram/ui/Components/ExtendedGridLayoutManager;
.source "MentionsContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/MentionsContainerView;-><init>(Landroid/content/Context;JILorg/telegram/ui/ChatActivity;Lorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private size:Lorg/telegram/ui/Components/Size;

.field final synthetic this$0:Lorg/telegram/ui/Components/MentionsContainerView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/MentionsContainerView;Landroid/content/Context;IZZ)V
    .locals 0

    .line 74
    iput-object p1, p0, Lorg/telegram/ui/Components/MentionsContainerView$2;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;-><init>(Landroid/content/Context;IZZ)V

    .line 75
    new-instance p1, Lorg/telegram/ui/Components/Size;

    invoke-direct {p1}, Lorg/telegram/ui/Components/Size;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/Components/MentionsContainerView$2;->size:Lorg/telegram/ui/Components/Size;

    return-void
.end method


# virtual methods
.method protected getFlowItemCount()I
    .locals 1

    .line 137
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView$2;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->access$200(Lorg/telegram/ui/Components/MentionsContainerView;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getBotContextSwitch()Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView$2;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->access$200(Lorg/telegram/ui/Components/MentionsContainerView;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getBotWebViewSwitch()Lorg/telegram/tgnet/TLRPC$TL_inlineBotWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    invoke-super {p0}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->getFlowItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 138
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    return v0
.end method

.method protected getSizeForItem(I)Lorg/telegram/ui/Components/Size;
    .locals 5

    if-nez p1, :cond_0

    .line 80
    iget-object p1, p0, Lorg/telegram/ui/Components/MentionsContainerView$2;->size:Lorg/telegram/ui/Components/Size;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p1, Lorg/telegram/ui/Components/Size;->width:F

    .line 81
    iget-object p1, p0, Lorg/telegram/ui/Components/MentionsContainerView$2;->size:Lorg/telegram/ui/Components/Size;

    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView$2;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->access$100(Lorg/telegram/ui/Components/MentionsContainerView;)Lorg/telegram/ui/Adapters/PaddedListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/PaddedListAdapter;->getPadding()I

    move-result v0

    int-to-float v0, v0

    iput v0, p1, Lorg/telegram/ui/Components/Size;->height:F

    .line 82
    iget-object p1, p0, Lorg/telegram/ui/Components/MentionsContainerView$2;->size:Lorg/telegram/ui/Components/Size;

    return-object p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 86
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView$2;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->access$200(Lorg/telegram/ui/Components/MentionsContainerView;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getBotContextSwitch()Lorg/telegram/tgnet/TLRPC$TL_inlineBotSwitchPM;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView$2;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->access$200(Lorg/telegram/ui/Components/MentionsContainerView;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getBotWebViewSwitch()Lorg/telegram/tgnet/TLRPC$TL_inlineBotWebView;

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 89
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView$2;->size:Lorg/telegram/ui/Components/Size;

    const/4 v1, 0x0

    iput v1, v0, Lorg/telegram/ui/Components/Size;->width:F

    .line 90
    iput v1, v0, Lorg/telegram/ui/Components/Size;->height:F

    .line 91
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView$2;->this$0:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-static {v0}, Lorg/telegram/ui/Components/MentionsContainerView;->access$200(Lorg/telegram/ui/Components/MentionsContainerView;)Lorg/telegram/ui/Adapters/MentionsAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Adapters/MentionsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    .line 92
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    if-eqz v0, :cond_e

    .line 93
    check-cast p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    .line 94
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 95
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumbs:Ljava/util/ArrayList;

    const/16 v2, 0x5a

    invoke-static {v0, v2}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v0

    .line 96
    iget-object v2, p0, Lorg/telegram/ui/Components/MentionsContainerView$2;->size:Lorg/telegram/ui/Components/Size;

    const/high16 v3, 0x42c80000    # 100.0f

    if-eqz v0, :cond_3

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    int-to-float v4, v4

    goto :goto_0

    :cond_3
    move v4, v3

    :goto_0
    iput v4, v2, Lorg/telegram/ui/Components/Size;->width:F

    if-eqz v0, :cond_4

    .line 97
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    int-to-float v3, v0

    :cond_4
    iput v3, v2, Lorg/telegram/ui/Components/Size;->height:F

    .line 98
    :goto_1
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_e

    .line 99
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 100
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;

    if-nez v2, :cond_6

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 101
    :cond_6
    :goto_2
    iget-object p1, p0, Lorg/telegram/ui/Components/MentionsContainerView$2;->size:Lorg/telegram/ui/Components/Size;

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    int-to-float v1, v1

    iput v1, p1, Lorg/telegram/ui/Components/Size;->width:F

    .line 102
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I

    int-to-float v0, v0

    iput v0, p1, Lorg/telegram/ui/Components/Size;->height:F

    goto/16 :goto_7

    .line 106
    :cond_7
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content:Lorg/telegram/tgnet/TLRPC$WebDocument;

    if-eqz v0, :cond_a

    .line 107
    :goto_3
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content:Lorg/telegram/tgnet/TLRPC$WebDocument;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebDocument;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_e

    .line 108
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->content:Lorg/telegram/tgnet/TLRPC$WebDocument;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebDocument;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 109
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;

    if-nez v2, :cond_9

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v2, :cond_8

    goto :goto_4

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 110
    :cond_9
    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/Components/MentionsContainerView$2;->size:Lorg/telegram/ui/Components/Size;

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    int-to-float v1, v1

    iput v1, p1, Lorg/telegram/ui/Components/Size;->width:F

    .line 111
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I

    int-to-float v0, v0

    iput v0, p1, Lorg/telegram/ui/Components/Size;->height:F

    goto :goto_7

    .line 115
    :cond_a
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->thumb:Lorg/telegram/tgnet/TLRPC$WebDocument;

    if-eqz v0, :cond_d

    .line 116
    :goto_5
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->thumb:Lorg/telegram/tgnet/TLRPC$WebDocument;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebDocument;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_e

    .line 117
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->thumb:Lorg/telegram/tgnet/TLRPC$WebDocument;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$WebDocument;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 118
    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;

    if-nez v2, :cond_c

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v2, :cond_b

    goto :goto_6

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 119
    :cond_c
    :goto_6
    iget-object p1, p0, Lorg/telegram/ui/Components/MentionsContainerView$2;->size:Lorg/telegram/ui/Components/Size;

    iget v1, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    int-to-float v1, v1

    iput v1, p1, Lorg/telegram/ui/Components/Size;->width:F

    .line 120
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I

    int-to-float v0, v0

    iput v0, p1, Lorg/telegram/ui/Components/Size;->height:F

    goto :goto_7

    .line 124
    :cond_d
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz p1, :cond_e

    .line 125
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    sget-object v0, Lorg/telegram/messenger/AndroidUtilities;->photoSize:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Lorg/telegram/messenger/FileLoader;->getClosestPhotoSizeWithSize(Ljava/util/ArrayList;I)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 127
    iget-object v0, p0, Lorg/telegram/ui/Components/MentionsContainerView$2;->size:Lorg/telegram/ui/Components/Size;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    int-to-float v1, v1

    iput v1, v0, Lorg/telegram/ui/Components/Size;->width:F

    .line 128
    iget p1, p1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    int-to-float p1, p1

    iput p1, v0, Lorg/telegram/ui/Components/Size;->height:F

    .line 132
    :cond_e
    :goto_7
    iget-object p1, p0, Lorg/telegram/ui/Components/MentionsContainerView$2;->size:Lorg/telegram/ui/Components/Size;

    return-object p1
.end method
