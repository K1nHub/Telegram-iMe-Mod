.class public final Lcom/iMe/ui/smartpanel/view/SmartBotContentView$gifContextProvider$1;
.super Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;
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
.field final synthetic $listener:Lcom/iMe/ui/smartpanel/SmartBotsView$Listener;

.field final synthetic this$0:Lcom/iMe/ui/smartpanel/view/SmartBotContentView;


# direct methods
.method constructor <init>(Lcom/iMe/ui/smartpanel/view/SmartBotContentView;Lcom/iMe/ui/smartpanel/SmartBotsView$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/iMe/ui/smartpanel/view/SmartBotContentView$gifContextProvider$1;->this$0:Lcom/iMe/ui/smartpanel/view/SmartBotContentView;

    iput-object p2, p0, Lcom/iMe/ui/smartpanel/view/SmartBotContentView$gifContextProvider$1;->$listener:Lcom/iMe/ui/smartpanel/SmartBotsView$Listener;

    .line 97
    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getPlaceForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;IZ)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    .locals 4

    const/4 p1, 0x0

    if-ltz p3, :cond_3

    .line 100
    iget-object p2, p0, Lcom/iMe/ui/smartpanel/view/SmartBotContentView$gifContextProvider$1;->this$0:Lcom/iMe/ui/smartpanel/view/SmartBotContentView;

    invoke-static {p2}, Lcom/iMe/ui/smartpanel/view/SmartBotContentView;->access$getListViewAdapter$p(Lcom/iMe/ui/smartpanel/view/SmartBotContentView;)Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->getMediaContent()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lt p3, p2, :cond_0

    goto :goto_2

    .line 103
    :cond_0
    iget-object p2, p0, Lcom/iMe/ui/smartpanel/view/SmartBotContentView$gifContextProvider$1;->this$0:Lcom/iMe/ui/smartpanel/view/SmartBotContentView;

    invoke-static {p2}, Lcom/iMe/ui/smartpanel/view/SmartBotContentView;->access$getListViewAdapter$p(Lcom/iMe/ui/smartpanel/view/SmartBotContentView;)Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->getItemCount()I

    move-result p2

    .line 104
    iget-object p4, p0, Lcom/iMe/ui/smartpanel/view/SmartBotContentView$gifContextProvider$1;->this$0:Lcom/iMe/ui/smartpanel/view/SmartBotContentView;

    invoke-static {p4}, Lcom/iMe/ui/smartpanel/view/SmartBotContentView;->access$getListViewAdapter$p(Lcom/iMe/ui/smartpanel/view/SmartBotContentView;)Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;

    move-result-object p4

    invoke-virtual {p4}, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->getMediaContent()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    const/4 p4, 0x0

    move v0, p4

    :goto_0
    if-ge v0, p2, :cond_3

    .line 108
    iget-object v1, p0, Lcom/iMe/ui/smartpanel/view/SmartBotContentView$gifContextProvider$1;->this$0:Lcom/iMe/ui/smartpanel/view/SmartBotContentView;

    invoke-static {v1}, Lcom/iMe/ui/smartpanel/view/SmartBotContentView;->access$getListView$p(Lcom/iMe/ui/smartpanel/view/SmartBotContentView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 109
    instance-of v2, v1, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz v2, :cond_1

    .line 110
    move-object v2, v1

    check-cast v2, Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ContextLinkCell;->getResult()Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-result-object v3

    invoke-static {v3, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 111
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ContextLinkCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, p1

    :goto_1
    if-eqz v2, :cond_2

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 117
    invoke-virtual {v1, p1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 118
    new-instance p2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    invoke-direct {p2}, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;-><init>()V

    .line 119
    aget p3, p1, p4

    iput p3, p2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewX:I

    const/4 p3, 0x1

    .line 120
    aget p1, p1, p3

    iput p1, p2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    .line 121
    iget-object p1, p0, Lcom/iMe/ui/smartpanel/view/SmartBotContentView$gifContextProvider$1;->this$0:Lcom/iMe/ui/smartpanel/view/SmartBotContentView;

    invoke-static {p1}, Lcom/iMe/ui/smartpanel/view/SmartBotContentView;->access$getListView$p(Lcom/iMe/ui/smartpanel/view/SmartBotContentView;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object p1

    iput-object p1, p2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    .line 122
    iput-object v2, p2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 123
    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getBitmapSafe()Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    move-result-object p1

    iput-object p1, p2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->thumb:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    .line 124
    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()[I

    move-result-object p1

    iput-object p1, p2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->radius:[I

    return-object p2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-object p1
.end method

.method public sendButtonPressed(ILorg/telegram/messenger/VideoEditedInfo;ZIZLjava/lang/String;Z)V
    .locals 0

    .line 132
    iget-object p2, p0, Lcom/iMe/ui/smartpanel/view/SmartBotContentView$gifContextProvider$1;->$listener:Lcom/iMe/ui/smartpanel/SmartBotsView$Listener;

    if-eqz p2, :cond_0

    iget-object p3, p0, Lcom/iMe/ui/smartpanel/view/SmartBotContentView$gifContextProvider$1;->this$0:Lcom/iMe/ui/smartpanel/view/SmartBotContentView;

    invoke-static {p3}, Lcom/iMe/ui/smartpanel/view/SmartBotContentView;->access$getListViewAdapter$p(Lcom/iMe/ui/smartpanel/view/SmartBotContentView;)Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;

    move-result-object p3

    invoke-virtual {p3}, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->getGifBotId()J

    move-result-wide p3

    iget-object p5, p0, Lcom/iMe/ui/smartpanel/view/SmartBotContentView$gifContextProvider$1;->this$0:Lcom/iMe/ui/smartpanel/view/SmartBotContentView;

    invoke-static {p5}, Lcom/iMe/ui/smartpanel/view/SmartBotContentView;->access$getListViewAdapter$p(Lcom/iMe/ui/smartpanel/view/SmartBotContentView;)Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;

    move-result-object p5

    invoke-virtual {p5}, Lcom/iMe/ui/smartpanel/adapter/SmartBotContentAdapter;->getGifBotName()Ljava/lang/String;

    move-result-object p5

    invoke-interface {p2, p1, p3, p4, p5}, Lcom/iMe/ui/smartpanel/SmartBotsView$Listener;->sendChosenGif(IJLjava/lang/String;)V

    :cond_0
    return-void
.end method