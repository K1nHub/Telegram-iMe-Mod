.class Lorg/telegram/ui/ChatActivity$15;
.super Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/ChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    .line 2983
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$15;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getPlaceForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;IZ)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    .locals 4

    const/4 p1, 0x0

    if-ltz p3, :cond_4

    .line 2987
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$15;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$3000(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p3, p2, :cond_4

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$15;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p2, p2, Lorg/telegram/ui/ChatActivity;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lorg/telegram/ui/Components/MentionsContainerView;->getListView()Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    move-result-object p2

    if-nez p2, :cond_0

    goto/16 :goto_3

    .line 2990
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$15;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p2, p2, Lorg/telegram/ui/ChatActivity;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {p2}, Lorg/telegram/ui/Components/MentionsContainerView;->getListView()Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    .line 2991
    iget-object p4, p0, Lorg/telegram/ui/ChatActivity$15;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p4}, Lorg/telegram/ui/ChatActivity;->access$3000(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object p4

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    const/4 p4, 0x0

    move v0, p4

    :goto_0
    if-ge v0, p2, :cond_4

    .line 2995
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$15;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/MentionsContainerView;->getListView()Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2996
    instance-of v2, v1, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz v2, :cond_1

    .line 2997
    move-object v2, v1

    check-cast v2, Lorg/telegram/ui/Cells/ContextLinkCell;

    .line 2998
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ContextLinkCell;->getResult()Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    move-result-object v3

    if-ne v3, p3, :cond_1

    .line 2999
    invoke-virtual {v2}, Lorg/telegram/ui/Cells/ContextLinkCell;->getPhotoImage()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, p1

    :goto_1
    if-eqz v2, :cond_3

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 3005
    invoke-virtual {v1, p1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 3006
    new-instance p2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    invoke-direct {p2}, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;-><init>()V

    .line 3007
    aget p3, p1, p4

    iput p3, p2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewX:I

    const/4 p3, 0x1

    .line 3008
    aget p1, p1, p3

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p3, v0, :cond_2

    goto :goto_2

    :cond_2
    sget p4, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_2
    sub-int/2addr p1, p4

    iput p1, p2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    .line 3010
    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$15;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p1, Lorg/telegram/ui/ChatActivity;->mentionContainer:Lorg/telegram/ui/Components/MentionsContainerView;

    invoke-virtual {p1}, Lorg/telegram/ui/Components/MentionsContainerView;->getListView()Lorg/telegram/ui/Components/MentionsContainerView$MentionsListView;

    move-result-object p1

    iput-object p1, p2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    .line 3011
    iput-object v2, p2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 3012
    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getBitmapSafe()Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    move-result-object p1

    iput-object p1, p2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->thumb:Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    .line 3013
    invoke-virtual {v2}, Lorg/telegram/messenger/ImageReceiver;->getRoundRadius()[I

    move-result-object p1

    iput-object p1, p2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->radius:[I

    return-object p2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_3
    return-object p1
.end method

.method public sendButtonPressed(ILorg/telegram/messenger/VideoEditedInfo;ZIZLjava/lang/String;Z)V
    .locals 0

    if-ltz p1, :cond_1

    .line 3022
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$15;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$3000(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lt p1, p2, :cond_0

    goto :goto_0

    .line 3025
    :cond_0
    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$15;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {p2}, Lorg/telegram/ui/ChatActivity;->access$3000(Lorg/telegram/ui/ChatActivity;)Ljava/util/ArrayList;

    move-result-object p5

    invoke-virtual {p5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$BotInlineResult;

    invoke-static {p2, p1, p3, p4, p6}, Lorg/telegram/ui/ChatActivity;->access$3100(Lorg/telegram/ui/ChatActivity;Lorg/telegram/tgnet/TLRPC$BotInlineResult;ZILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
