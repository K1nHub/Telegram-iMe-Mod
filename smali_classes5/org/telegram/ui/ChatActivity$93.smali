.class Lorg/telegram/ui/ChatActivity$93;
.super Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->openVideoEditor(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;

.field final synthetic val$cameraPhoto:Ljava/util/ArrayList;

.field final synthetic val$thumb:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/graphics/Bitmap;Ljava/util/ArrayList;)V
    .locals 0

    .line 17715
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$93;->this$0:Lorg/telegram/ui/ChatActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$93;->val$thumb:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lorg/telegram/ui/ChatActivity$93;->val$cameraPhoto:Ljava/util/ArrayList;

    invoke-direct {p0}, Lorg/telegram/ui/PhotoViewer$EmptyPhotoViewerProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public canScrollAway()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getThumbForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Lorg/telegram/messenger/ImageReceiver$BitmapHolder;
    .locals 1

    .line 17718
    new-instance p1, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;

    iget-object p2, p0, Lorg/telegram/ui/ChatActivity$93;->val$thumb:Landroid/graphics/Bitmap;

    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-direct {p1, p2, p3, v0}, Lorg/telegram/messenger/ImageReceiver$BitmapHolder;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;I)V

    return-object p1
.end method

.method public sendButtonPressed(ILorg/telegram/messenger/VideoEditedInfo;ZIZLjava/lang/String;Z)V
    .locals 7

    .line 17723
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$93;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object p1, p0, Lorg/telegram/ui/ChatActivity$93;->val$cameraPhoto:Ljava/util/ArrayList;

    const/4 p7, 0x0

    invoke-virtual {p1, p7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/ui/ChatActivity;->sendMedia(Lorg/telegram/messenger/MediaController$PhotoEntry;Lorg/telegram/messenger/VideoEditedInfo;ZIZLjava/lang/String;)V

    return-void
.end method
